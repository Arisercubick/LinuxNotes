# Linux I – Bash Cheat Sheet

A Cheat Sheet for `bash` commands. 

In the prompt (or command prompt), the trailing `$` symbol is normally associated with a standard user account:

```
username@shadow:~$
```

The trailing `#` symbol is associated with the root user:

```
[root@shadow: ~]#
```

## Git Commands

This git gets your file then proceeds to do some version control

```
$ git
```

this checks the status of the local git repository 

```
$ git status
```

This adds any changes into the repository. the dot means all

```
$ git add .
```

This adds a commit point for the git repository

```
$ git commit -m "message"
```

This pushes any changes made through commits into an online repository

```
$ git push
```

This brings any changes made to the online repository into the local

```
$ git pull
```

This clones an online repository for local use

```
$ git clone
```

## Reading file content

This concatenates files and output something standard in a standard yet terrible way

```
$ cat [file]
```

displays the content of the file into the terminal

```
$ more [file]
```

Contrary to popular belief, less does more than more. It can go both backwards and forwards unlike more

```
$ less [file]
```

This ouputs the head of the files. Which is why it is called head, since it outputs the first 10 lines

```
$ head [file]
```

This prints into the terminal the tail of the file, so the last 10 lines

```
$ tail [file]
```

## Working with files and directories

This creates a new empty directory. "mk" meaning make, "dir" meaning directory

```
$ mkdir [name]
```

This removes an **empty** directory. "rm" meaning remove, "dir" meaning directory. Got be forceful and recursive to remove all contents (note, dir decided to not exist)

```
$ rmdir [directory]
```

This removes files and directories, and to repeat said action within a content, you need to do be forceful and recursive "rf". Showing some more utility

```
$ rm [options] [content]
```

This copies content from one place to another. This is from the name **c**o**p**y This is contrary to another popular version of this abbreviation

```
$ cp [source] [destination]
```

This just moves files. "mv" meaning the short hand for **m**o**v**e. Unfortunately not a free movie command

```
$ mv [source] [destination]
```