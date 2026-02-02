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

this checks the status of the local git repository 

```
$ git status
```

This adds any changes into the repository 

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

This concatenates files and output something standard in terrible

```
$ cat
```
displays the content of the file into the terminal

```
$ more
```

Contrary to popular belief, less does more than more. It can go both backwards and forwards unlike more

```
$ less
```