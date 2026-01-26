# 🚀 DevOps Tasks & Learning Repository

## 📌 Overview
This repository is a **hands-on DevOps learning workspace**, not a tutorial dump or copied notes.  
It contains **practical tasks, experiments, and implementations** covering the **core skills required for a DevOps Engineer**.

Each task is organized into its own directory and focuses on **real-world DevOps workflows**, tools, and concepts that are actually used in production environments.

---

## 🎯 Purpose
The goal of this repository is simple:
- Build **strong fundamentals**
- Practice **industry-relevant DevOps tools**
- Understand **how things work under the hood**, not just how to run commands
- Create a **portfolio-ready proof of skills**

This repo is meant to show **learning-by-doing**, not just theory.

---

## 🧩 What This Repository Covers

### 🔧 Version Control & Collaboration
- Git fundamentals (init, clone, commit, branch, merge, rebase)
- GitHub workflows
- Repository structuring
- Commit hygiene & best practices

### ⚙️ CI/CD (Continuous Integration & Deployment)
- CI/CD concepts and pipelines
- Automating build, test, and deployment workflows
- GitHub Actions (and related tooling)
- Understanding pipeline failures and logs

### 🐧 Linux & System Basics
- Linux command-line usage
- File permissions & ownership
- Process management
- Package management
- Basic system administration concepts

### 📦 DevOps Tooling & Practices
- Task-based learning aligned with DevOps roles
- Infrastructure & automation fundamentals
- Hands-on experimentation instead of copy-paste setups

---

## 📁 Repository Structure
DevOps-Tasks/
│
├── task1/
│ └── README.md # Task-specific objectives, steps, and outcomes
│
├── task2/
│ └── README.md
│
├── task3/
│ └── README.md
│
└── ...


Each task folder contains:
- Clear task objectives
- Commands or configurations used
- What was learned
- Problems faced and solutions (when applicable)

---

## 🧠 Learning Approach
- **No shortcuts**
- **No blind copying**
- Every task is done to understand:
  - *Why* it works
  - *How* it fails
  - *What* happens behind the scenes

This approach mirrors how real DevOps engineers learn on the job.

---

## 📈 Who This Is For
- DevOps beginners building fundamentals
- Students preparing for DevOps roles or internships
- Anyone transitioning into DevOps from another IT domain

If you’re looking for a polished production framework — this isn’t it.  
If you’re looking for **real learning and proof of effort** — this is.

---

## 📬 Notes
This repository will evolve as more tools and tasks are added.  
Expect incremental improvements, refactoring, and better practices over time — just like real DevOps work.

---

## 🛠️ Tech Stack (varies by task)
- Git & GitHub
- Linux (Ubuntu-based environments)
- CI/CD tools
- Shell scripting
- DevOps utilities as required per task


Environment Variables & PATH (Linux)
📌 Task Focus

This task focuses on understanding runtime configuration in Linux using environment variables and the PATH variable — a fundamental DevOps concept that directly affects how applications and commands are executed in real systems.

🔍 What Was Done

Inspected existing system and user environment variables

Created custom environment variables

Temporary (session-based)

Permanent (persistent across sessions)

Used export to expose variables to child processes

Modified the PATH variable safely (without breaking existing paths)

Created a custom executable and validated PATH configuration

Debugged common PATH-related issues

Persisted configuration using .bashrc

🛠 Tools & Environment

Linux (Ubuntu on WSL)

Bash shell

✅ Key Learnings

How Linux resolves commands using PATH

Difference between local, exported, and persistent variables

Why misconfigured PATH variables break systems

How runtime configuration is managed without hardcoding values

📂 Task Location
task7-env-vars/


Each task directory includes:

Commands used

Configuration details

Screenshots as proof

Short explanation of outcomes

🔎 Why This Task Matters

Environment variables and PATH misconfigurations are a common cause of production failures.
This task builds the foundation needed to:

Debug broken pipelines

Fix “command not found” errors

Understand container, CI/CD, and server runtime behavior

---

## 📄 License
This project is for **learning and educational purposes**.

##Author: Nilotpal Sarma