# Task 7: Environment Variables & PATH

## Objective
Understand environment variables, PATH, and runtime configuration in Linux.

## What I Did
- Viewed system environment variables
- Created temporary and permanent variables
- Modified PATH and tested with a custom command
- Debugged PATH issues

## Tools Used
- Ubuntu (WSL)
- Bash shell

🎯 INTERVIEW QUESTIONS — STRAIGHT ANSWERS

What is PATH?
→ A list of directories the shell searches for executables.

Why env vars used?
→ Externalize configuration from code.

Temporary vs permanent vars?
→ Temporary: session only
→ Permanent: stored in shell config files
How to export variable?
export VAR=value
Where env vars stored?

User: ~/.bashrc, ~/.profile

System: /etc/environment, /etc/profile