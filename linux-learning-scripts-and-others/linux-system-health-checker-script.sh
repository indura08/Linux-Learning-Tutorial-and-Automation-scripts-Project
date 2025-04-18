#!/bin/bash

echo "System Health Report - $(date), $(whoami)"
echo "---------------------------------------------------------------------"

echo "Uptime:"
uptime 
echo

echo "CPU load"

top -bn1 | grep "load average"
top -bn1 | grep "avil Mem"

echo

echo "Memeory Usage"
free -h
echo

echo "disk usage"
df -h
echo
echo

: '

	about free command

🧠 What is the free command?
The free command in Linux shows you how much memory is available and used on your system — including RAM and swap space.

Think of it as a quick snapshot of your system's memory situation 🧾.

-h means human readable kiyna ekai

'



: '

➤ -b: Batch mode
Normally, top runs interactively (keeps updating the screen).

With -b (batch mode), it runs just once and prints the output to the terminal.

Useful for scripts, because you don’t want it to keep updating.

➤ -n 1: Number of iterations
This tells top how many times it should run before quitting.

-n 1 means: "Run just once, then exit."

'


