
# TASK 5

## Process Management in Linux

---

## 1️⃣ List Running Processes Also Use WSL In windows 

### Commands used

```bash
ps
ps -e
ps aux
top
htop   # (if installed)
```

### What each actually does (don’t BS this in interview)

* `ps` → shows processes of current shell only
* `ps -e` → shows **all** running processes
* `ps aux` → detailed view (CPU, MEM, USER, PID)
* `top` → real-time process & resource monitor
* `htop` → better interactive version of top

📌 **Why this matters:**
You can’t manage what you can’t see. Any DevOps engineer who doesn’t live in `top/htop` is useless during incidents.

---

## 2️⃣ Kill Processes (Normal vs Force)

### Commands used

```bash
kill <PID>
kill -9 <PID>
pkill <process_name>
```

### Reality check

* `kill <PID>` → sends **SIGTERM (15)** → asks process to exit cleanly
* `kill -9 <PID>` → sends **SIGKILL (9)** → kernel kills it immediately
* `pkill` → kills by process name

❗ Brutal truth:

* **Using `kill -9` blindly is bad practice**
* It can corrupt files, DBs, and logs
* Use it **only when process is stuck**

---

## 3️⃣ Process States (You WILL be asked this)

| State | Meaning                          |
| ----- | -------------------------------- |
| R     | Running                          |
| S     | Sleeping (waiting)               |
| D     | Uninterruptible sleep (I/O wait) |
| T     | Stopped                          |
| Z     | Zombie (dead but not cleaned up) |

### Command to view state

```bash
ps aux | grep <process>
```

📌 Zombie processes = bad parent process.
You don’t kill zombies — you fix the parent.

---

## 4️⃣ Start / Stop Services Using systemctl

### Commands used

```bash
systemctl status ssh
systemctl start ssh
systemctl stop ssh
systemctl restart ssh
```

### Check all services

```bash
systemctl list-units --type=service
```

📌 **systemctl ≠ ps**

* `ps` → processes
* `systemctl` → services (daemons)

---

## 5️⃣ Enable Service at Boot

### Commands used

```bash
systemctl enable ssh
systemctl disable ssh
```

### Verify

```bash
systemctl is-enabled ssh
```

❗ Interview trap:

* `start` ≠ `enable`
* `start` → now
* `enable` → on boot

---

## 6️⃣ Monitor Resource Usage

### Commands used

```bash
top
htop
free -h
uptime
vmstat
```

### What to actually observe

* CPU usage %
* Memory consumption
* Load average
* Swap usage

📌 **High CPU ≠ bad always**

* Short spike → OK
* Constant 90–100% → problem

---

```
OUTPUTS:
PS C:\WINDOWS\system32> wsl
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ ps
    PID TTY          TIME CMD
    280 pts/0    00:00:00 bash
    360 pts/0    00:00:00 ps
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ ps -e
    PID TTY          TIME CMD
      1 ?        00:00:00 systemd
      2 ?        00:00:00 init-systemd(Ub
     10 ?        00:00:00 init
     45 ?        00:00:00 systemd-journal
     88 ?        00:00:00 systemd-udevd
    102 ?        00:00:00 systemd-resolve
    103 ?        00:00:00 systemd-timesyn
    151 ?        00:00:00 cron
    152 ?        00:00:00 dbus-daemon
    158 ?        00:00:00 snapd
    159 ?        00:00:00 systemd-logind
    162 ?        00:00:00 wsl-pro-service
    167 hvc0     00:00:00 agetty
    179 tty1     00:00:00 agetty
    183 ?        00:00:00 rsyslogd
    188 ?        00:00:00 unattended-upgr
    235 ?        00:00:00 systemd-timedat
    278 ?        00:00:00 SessionLeader
    279 ?        00:00:00 Relay(280)
    280 pts/0    00:00:00 bash
    281 pts/1    00:00:00 login
    333 ?        00:00:00 systemd
    334 ?        00:00:00 (sd-pam)
    345 pts/1    00:00:00 bash
    361 pts/0    00:00:00 ps
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  2.1  0.3  21628 12932 ?        Ss   13:24   0:00 /sbin/init
root           2  0.0  0.0   2776  1920 ?        Sl   13:24   0:00 /init
root          10  0.0  0.0   2776     4 ?        Sl   13:24   0:00 plan9 --control-socket 7 --log-level 4 --server-fd 8
root          45  0.6  0.4  42100 16036 ?        S<s  13:24   0:00 /usr/lib/systemd/systemd-journald
root          88  0.6  0.1  24104  6112 ?        Ss   13:24   0:00 /usr/lib/systemd/systemd-udevd
systemd+     102  0.6  0.3  21456 12028 ?        Ss   13:24   0:00 /usr/lib/systemd/systemd-resolved
systemd+     103  0.5  0.1  91024  6432 ?        Ssl  13:24   0:00 /usr/lib/systemd/systemd-timesyncd
root         151  0.0  0.0   4236  2724 ?        Ss   13:24   0:00 /usr/sbin/cron -f -P
message+     152  0.1  0.1   9536  5124 ?        Ss   13:24   0:00 @dbus-daemon --system --address=systemd: --nofork --n
root         158  0.7  0.9 2069672 36808 ?       Ssl  13:24   0:00 /usr/lib/snapd/snapd
root         159  0.3  0.2  17980  8280 ?        Ss   13:24   0:00 /usr/lib/systemd/systemd-logind
root         162  0.5  0.4 1755840 16112 ?       Ssl  13:24   0:00 /usr/libexec/wsl-pro-service -vv
root         167  0.0  0.0   3160  1160 hvc0     Ss+  13:24   0:00 /sbin/agetty -o -p -- \u --noclear --keep-baud - 1152
root         179  0.0  0.0   3116  1184 tty1     Ss+  13:24   0:00 /sbin/agetty -o -p -- \u --noclear - linux
syslog       183  0.2  0.1 222508  5192 ?        Ssl  13:24   0:00 /usr/sbin/rsyslogd -n -iNONE
root         188  0.6  0.5 107012 22692 ?        Ssl  13:24   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unatt
root         235  0.2  0.1  17280  6664 ?        Ss   13:24   0:00 /usr/lib/systemd/systemd-timedated
root         278  0.0  0.0   2776   204 ?        Ss   13:24   0:00 /init
root         279  0.0  0.0   2776   204 ?        S    13:24   0:00 /init
ilotpal      280  0.2  0.1   6068  5172 pts/0    Ss   13:24   0:00 -bash
root         281  0.0  0.1   6688  4564 pts/1    Ss   13:24   0:00 /bin/login -f
ilotpal      333  0.4  0.2  20276 11516 ?        Ss   13:24   0:00 /usr/lib/systemd/systemd --user
ilotpal      334  0.0  0.0  21152  1728 ?        S    13:24   0:00 (sd-pam)
ilotpal      345  0.0  0.1   6072  4880 pts/1    S+   13:24   0:00 -bash
ilotpal      362  0.0  0.1   8280  4212 pts/0    R+   13:25   0:00 ps aux
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ top
top - 13:25:39 up 10 min,  1 user,  load average: 0.08, 0.03, 0.01
Tasks:  23 total,   1 running,  22 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   3832.8 total,   3194.5 free,    523.9 used,    266.8 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.   3308.9 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
      1 root      20   0   21628  12932   9656 S   0.0   0.3   0:00.61 systemd
      2 root      20   0    2776   1920   1796 S   0.0   0.0   0:00.00 init-systemd(Ub
     10 root      20   0    2776      4      0 S   0.0   0.0   0:00.00 init
     45 root      19  -1   42232  16100  15032 S   0.0   0.4   0:00.16 systemd-journal
     88 root      20   0   24104   6112   4824 S   0.0   0.2   0:00.16 systemd-udevd
    102 systemd+  20   0   21456  12028   9832 S   0.0   0.3   0:00.18 systemd-resolve
    103 systemd+  20   0   91024   6432   5584 S   0.0   0.2   0:00.14 systemd-timesyn
    151 root      20   0    4236   2724   2488 S   0.0   0.1   0:00.01 cron
    152 message+  20   0    9536   5124   4496 S   0.0   0.1   0:00.05 dbus-daemon
    159 root      20   0   17980   8280   7252 S   0.0   0.2   0:00.10 systemd-logind
    162 root      20   0 1755840  16112   9524 S   0.0   0.4   0:00.13 wsl-pro-service
    167 root      20   0    3160   1160   1068 S   0.0   0.0   0:00.01 agetty
    179 root      20   0    3116   1184   1096 S   0.0   0.0   0:00.01 agetty
    183 syslog    20   0  222508   5192   4604 S   0.0   0.1   0:00.07 rsyslogd
    188 root      20   0  107012  22692  13360 S   0.0   0.6   0:00.18 unattended-upgr
    278 root      20   0    2776    204     80 S   0.0   0.0   0:00.00 SessionLeader
    279 root      20   0    2776    204     80 S   0.0   0.0   0:00.01 Relay(280)
    280 ilotpal   20   0    6068   5172   3452 S   0.0   0.1   0:00.07 bash
    281 root      20   0    6688   4564   3784 S   0.0   0.1   0:00.01 login
    333 ilotpal   20   0   20276  11516   9420 S   0.0   0.3   0:00.10 systemd
    334 ilotpal   20   0   21152   1728      0 S   0.0   0.0   0:00.00 (sd-pam)
    345 ilotpal   20   0    6072   4880   3380 S   0.0   0.1   0:00.01 bash
    366 ilotpal   20   0    9272   5324   3188 R   0.0   0.1   0:00.01 top
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ systemctl status ssh
Unit ssh.service could not be found.
ilotpal@CyberNikkY:/mnt/c/WINDOWS/system32$ systemctl list-units --type=service
  UNIT                                     LOAD   ACTIVE SUB     DESCRIPTION
  console-getty.service                    loaded active running Console Getty
  console-setup.service                    loaded active exited  Set console font and keymap
  cron.service                             loaded active running Regular background program processing daemon
  dbus.service                             loaded active running D-Bus System Message Bus
  getty@tty1.service                       loaded active running Getty on tty1
  keyboard-setup.service                   loaded active exited  Set the console keyboard layout
  rsyslog.service                          loaded active running System Logging Service
  setvtrgb.service                         loaded active exited  Set console scheme
  snapd.seeded.service                     loaded active exited  Wait until snapd is fully seeded
  systemd-binfmt.service                   loaded active exited  Set Up Additional Binary Formats
  systemd-journal-flush.service            loaded active exited  Flush Journal to Persistent Storage
  systemd-journald.service                 loaded active running Journal Service
  systemd-logind.service                   loaded active running User Login Management
  systemd-modules-load.service             loaded active exited  Load Kernel Modules
  systemd-remount-fs.service               loaded active exited  Remount Root and Kernel File Systems
  systemd-resolved.service                 loaded active running Network Name Resolution
  systemd-sysctl.service                   loaded active exited  Apply Kernel Variables
  systemd-timesyncd.service                loaded active running Network Time Synchronization
  systemd-tmpfiles-setup-dev-early.service loaded active exited  Create Static Device Nodes in /dev gracefully
  systemd-tmpfiles-setup-dev.service       loaded active exited  Create Static Device Nodes in /dev
  systemd-tmpfiles-setup.service           loaded active exited  Create Volatile Files and Directories
  systemd-udev-trigger.service             loaded active exited  Coldplug All udev Devices
  systemd-udevd.service                    loaded active running Rule-based Manager for Device Events and Files
  systemd-update-utmp.service              loaded active exited  Record System Boot/Shutdown in UTMP
  systemd-user-sessions.service            loaded active exited  Permit User Sessions
  unattended-upgrades.service              loaded active running Unattended Upgrades Shutdown
  user-runtime-dir@1000.service            loaded active exited  User Runtime Directory /run/user/1000
  user@1000.service                        loaded active running User Manager for UID 1000
  wsl-pro.service                          loaded active running Bridge to Ubuntu Pro agent on Windows

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

29 loaded units listed. Pass --all to see loaded but inactive units, too.
To show all installed unit files use 'systemctl list-unit-files'.
lines 9-37/37 (END)

```
# 🎯 Interview Questions 
### ❓ What is PID?

A **Process ID** — unique number assigned by kernel to identify a process.

---

### ❓ Difference between `kill` and `kill -9`?

* `kill` → graceful termination (SIGTERM)
* `kill -9` → force kill (SIGKILL), no cleanup

---

### ❓ What is a daemon?

A **background service** that runs without user interaction
Example: `sshd`, `cron`, `nginx`

---

### ❓ What is systemctl?

A command-line tool to **manage systemd services**, states, and boot behavior.

---

### ❓ What happens when CPU spikes?

* Slower response
* High load average
* Possible service failure
* Indicates infinite loops, traffic surge, or bad code

---
