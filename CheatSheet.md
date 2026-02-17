# Linux I – Bash Cheat Sheet

A Cheat Sheet for `bash` commands. 

In the prompt (or command prompt), the trailing `$` symbol is normally associated with a standard user account:

```bash
username@shadow:~$
```

The trailing `#` symbol is associated with the root user:

```bash
[root@shadow: ~]#
```

## Git Commands

This git gets your file then proceeds to do some version control

```bash
$ git
```

this checks the status of the local git repository 

```bash
$ git status
```

This adds any changes into the repository. the dot means all

```bash
$ git add .
```

This adds a commit point for the git repository

```bash
$ git commit -m "<message>"
```

This pushes any changes made through commits into an online repository

```bash
$ git push
```

This brings any changes made to the online repository into the local

```bash
$ git pull
```

This clones an online repository for local use

```bash
$ git clone
```

## Reading file content

This concatenates files and output something standard in a standard yet terrible way

```bash
$ cat <file>
```

displays the content of the file into the terminal

```bash
$ more <file>
```

Contrary to popular belief, less does more than more. It can go both backwards and forwards unlike more

```bash
$ less <file>
```

This ouputs the head of the files. Which is why it is called head, since it outputs the first 10 lines

```bash
$ head <file>
```

This prints into the terminal the tail of the file, so the last 10 lines

```bash
$ tail <file>
```

## Basic commands to handle the terminal

This changes the directory/locations where you are in. As the name implies, **C**hange **D**irectory or **C**ontrolling **D**irectory. The path can be absolute or not

```bash
$ cd <path>
```

This shows the **l**i**s**ts of directories or files in a directory. You can use `-a` to list all information and `-l` to lists paths and combining them like `-ali` will do both

```bash
$ ls
```

piping content is using the pipe `|` to send a process to another process

```bash
$ <command> | <the command that the previous command is sending to>
```

For example, if you use `ps aux`, you can pipe it to less to use less

```bash
$ ps aux | less

Output: the output of ps aux but able to use less manipulation
```


## Asking help from the system

This is the **man**ual of a command. This shows what operations the command does and do. Only works for **external commands**

```bash
$ man <command>
```

This shows information of an internal command when you need **HELP**

```bash
$ help <command>
```

## Working with files and directories

This creates a new empty directory. `mk` meaning make, `dir` meaning directory

```bash
$ mkdir <name>
```

This removes an **empty** directory. `rm` meaning remove, `dir` meaning directory. Got be forceful and recursive to remove all contents (note, dir decided to not exist)

```bash
$ rmdir <directory>
```

This removes files and directories, and to repeat said action within a content, you need to do be forceful and recursive `rf`. Showing some more utility

```bash
$ rm <content>
$ rm -rf <content> (Recursively remove forcefully the data)
```

This copies content from one place to another. This is from the name **c**o**p**y This is contrary to another popular version of this abbreviation

```bash
$ cp <source> <destination>
$ cp <source> <newname> (Copies with a new name) 
$ cp -u <source> <destination> (Copies with an update)
$ cp -i <source> <destination> (Initializes a prompt)
$ cp -r <source directory>(Copies directory and its content recursively)
```

This just moves files. `mv` meaning the short hand for **m**o**v**e. Unfortunately not a free movie command

```bash
$ mv <source> <destination>
$ mv <source> <newname> (changes the source name)
```

This repeats a line or input from the input 

```bash
$ echo <message>
```

## Keyboard shortcuts

- `ctrl` + `r` this searches information in the terminal
- `ctrl` + `shift` + `c` copies from the command
- `ctrl` + `shift` + `v`  or `right click` pastes from the command

## Working with terminal vi

In the terminal's vi, there is the multiple modes, there is the; `Last Line mode`, `Command mode`, `Input mode`

When you use `vi` solely, you will be able to edit files that are already existing or create a new file if it doesnt exist

```bash
$ vi <fileName>
```

### buttons in the command mode

The command mode is where you can do general executions in the file, to enter here, you either return through `last line mode` or escape from `input mode`, to enter, it is the buttons or press return respectively

- `i` means to **i**nsert an input within the line and change to the Input mode before the cursor
- `a` means to **a**ppend, similar to `i` but it is after the cursor
- `o` means to **o**pen a new line 
- `dd` means to **d**elete a line

### Working in the Last Line mode

The last line mode is the global control over the file. To enter this, you need to press colon `:` and press return to exit

- `w` means to write the new input contents of the file into memory
- `q` means to quit from the file
- `!` means to forcefully quit from a specific task

## Creating scripts

Scripting in bash is usually in a .sh file for bash

```
filename.sh
```

Shebang, it represents the interpreter used to interpret the script of the file
By convention in Unix systems, it is on the top

In this example, this will execute bash

```sh
#!/bin/bash
```

## Sudo and installing software

### Package management

This is application management as an utility to manage software

```bash
$ apt
```

To install applications, you can do apt install

```bash
$ apt install
```

### Sudo

Sudo is not as powerful as the root. However, it helps manages with alot of priorities 

```bash
$ sudo
```

to install sudo, you need to install it via the root. This is the case as sudo will give commands to the user

```bash
# apt install sudo
```

You also need to add users using sudo to give priveleges 

```bash
# sudo usermod -aG sudo username
```

## Control and monitor processes

To see all of the processes with a command, you ue `top`, similar to task manager in windows. It displays the processes of the current operating system

```bash
$ top
```

This gives a snapshot of the processes 

```bash
$ ps
$ ps a (Shows all of the processes)
$ ps aux (Shows all of the processes as a snapshot)
```

to kill a process, you use `kill` against the process id `pID`, and to force kill, it is `-9` which is the highest levels which goes from `-1` to `-9`

```bash
$ kill <pID>
or
$ kill %<jobID>
or to force
$ kill -9
```

`sleep` delays a process, the number afterwards is the amount of time a process, by default, it is by seconds

```bash
$ sleep <number>
```

In sleep, it will be delayed in the background to allow multitasking, to see the jobs, you can do `jobs`

```bash
$ jobs
```
## Linux file system - Filename

- On linux, **everthing is a file**. The term file is commonly used to denote a file of any type:
	- Documents, directories, drives, etc are addressed as fuke
	- Devces (NIC, printer) are considered as device files

To look at the files in a directory, you use `ls`

```bash
$ ls -l
```

This is to see long names
Each file has an associated user ID and group that define the owner of the file of the group

```bash
$ ls -l

-rwxr-x-x+ 1 sam pubs 1048 06-10 10:44 memo

Type of file: -rwxr
File access ermissions: -xr
ACL flag: x+
number: 1
file owner: sam
Groups: pubs
size: 1048
Date (and time) of modification: 06-10 10:44
filename: memo

For shortcuts
`ctrl + c`: Closes a job
`ctrl + z`: Put a job in the background


## Links


### Hard Links

create a hard link with
```bash
$ ln <target_file> <name of the new file>
```

Hard links is the aboslute path to the file

You can check the pointers by doing
```bash
$ ls -ali
```

### Soft links

It works as like aliases for a file

To create one you do

```bash
ln -s <target_file> <name_of_soft
