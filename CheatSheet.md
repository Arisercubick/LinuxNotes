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
$ git commit -m "[message]"
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
$ cat [file]
```

displays the content of the file into the terminal

```bash
$ more [file]
```

Contrary to popular belief, less does more than more. It can go both backwards and forwards unlike more

```bash
$ less [file]
```

This ouputs the head of the files. Which is why it is called head, since it outputs the first 10 lines

```bash
$ head [file]
```

This prints into the terminal the tail of the file, so the last 10 lines

```bash
$ tail [file]
```

## Basic commands to handle the terminal

This changes the directory/locations where you are in. As the name implies, **C**hange **D**irectory or **C**ontrolling **D**irectory. The path can be absolute or not

```bash
cd [path]
```

This shows the **l**i**s**ts of directories or files in a directory. You can use `-a` to list all information and `-l` to lists paths and combining them like `-ali` will do both

```bash
ls
```

This is the **man**ual of a command. This shows what operations the command does and do.

```bash
man [command]
```

## Working with files and directories

This creates a new empty directory. `mk` meaning make, `dir` meaning directory

```bash
$ mkdir [name]
```

This removes an **empty** directory. `rm` meaning remove, `dir` meaning directory. Got be forceful and recursive to remove all contents (note, dir decided to not exist)

```bash
$ rmdir [directory]
```

This removes files and directories, and to repeat said action within a content, you need to do be forceful and recursive `rf`. Showing some more utility

```bash
$ rm [content]
$ rm -rf [content] (Recursively remove forcefully the data)
```

This copies content from one place to another. This is from the name **c**o**p**y This is contrary to another popular version of this abbreviation

```bash
$ cp [source] [destination]
$ cp [source] [newname] (Copies with a new name) 
$ cp -u [source] [destination] (Copies with an update)
$ cp -i [source] [destination] (Initializes a prompt)
$ cp -r [source directory] (Copies directory and its content recursively)
```

This just moves files. `mv` meaning the short hand for **m**o**v**e. Unfortunately not a free movie command

```bash
$ mv [source] [destination]
$ mv [source] [newname] (changes the source's name)
```

## Working with terminal vi

In the terminal's vi, there is the multiple modes, there is the; `Last Line mode`, `Command mode`, `Input mode`

### buttons in the command mode

- `i` means to **i**nsert an input within the line and change to the Input mode before the cursor
- `a` means to **a**ppend, similar to `i` but it is after the cursor
- `o` means to **o**pen a new line 
- `dd` means to **d**elete a line
