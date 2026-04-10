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
$ cd [path]
```

This shows the **l**i**s**ts of directories or files in a directory. You can use `-a` to list all information and `-l` to lists paths and combining them like `-ali` will do both

```bash
$ ls
```

piping content is using the pipe `|` to send a process to another process

```bash
$ [command] | [the command that the previous command is sending to]
```

For example, if you use `ps aux`, you can pipe it to less to use less

```bash
$ ps aux | less

Output: the output of ps aux but able to use less manipulation
```


## Asking help from the system

This is the **man**ual of a command. This shows what operations the command does and do. Only works for **external commands**

```bash
$ man [command]
```

This shows information of an internal command when you need **HELP**

```bash
$ help [command]
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
$ cp [source] [newname] # Copies with a new name
$ cp -u [source] [destination] # Copies with an update 
$ cp -i [source] [destination] # Initializes a prompt
$ cp -r [source directory] # Copies directory and its content recursively
```

This just moves files. `mv` meaning the short hand for **m**o**v**e. Unfortunately not a free movie command

```bash
$ mv [source] [destination]
$ mv [source] [newname] # changes the source name
```

This repeats a line or input from the input 

```bash
$ echo [message]
```

This will zip a file using the `g` app

```bash
$ gzip [source]
```

This will unzip a file
```bash
4 gunzip [file]
```

## Keyboard shortcuts

- `ctrl` + `r` this searches information in the terminal
- `ctrl` + `shift` + `c` copies from the command
- `ctrl` + `shift` + `v`  or `right click` pastes from the command

## Working with terminal vi

In the terminal's vi, there is the multiple modes, there is the; `Last Line mode`, `Command mode`, `Input mode`

When you use `vi` solely, you will be able to edit files that are already existing or create a new file if it doesnt exist

```bash
$ vi [fileName]
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
$ apt install sudo
```

You also need to add users using sudo to give priveleges 

```bash
$ sudo usermod -aG sudo username
```

## Control and monitor processes

To see all of the processes with a command, you ue `top`, similar to task manager in windows. It displays the processes of the current operating system

```bash
$ top
```

This gives a snapshot of the processes 

```bash
$ ps
$ ps a # Shows all of the processes
$ ps aux # Shows all of the processes as a snapshot
```

to kill a process, you use `kill` against the process id `pID`, and to force kill, it is `-9` which is the highest levels which goes from `-1` to `-9`

```bash
$ kill [pID]
or
$ kill %[jobID]
or to force
$ kill -9
```

`sleep` delays a process, the number afterwards is the amount of time a process, by default, it is by seconds

```bash
$ sleep [number]
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


# Type of file: -rwxr
# File access permissions: -xr
# ACL flag: x+
# number: 1
# file owner: sam
# Groups: pubs
# size: 1048
# Date (and time) of modification: 06-10 10:44
# filename: memo
```

For shortcuts
`ctrl + c`: Closes a job
`ctrl + z`: Put a job in the background

### chmod and file permission changes 

For the file permission values, it goes to \[user\]\[group\]\[other\]

the values are three  values

| numeric value | alphabet numbers | meaning |
|---------------|------------------|---------|
| 1 | --x | means execute |
| 2 | -w- | means write |
| 4 | r-- | means read |

#### Changing permissions

In bash, you can change permissions of a file through `chmod`

```Bash
$ chmod [values] [FILE NAME]
```

If you want to change, you do the values based on \[owner\]\[group\]\[other\]

For numeric values, it means if you want to only include read and write permissions for the owner, and no permissions for the group and others for a text.txt file, you do
```Bash
$ chmod 600 text.txt
```

If you are using symbolic mode, you do

```bash 
$ chmod u+rw text.txt # We take into account the file's default permission is none for everyone
```

| Symbol | meaning |
|--------|---------|
| u | user |
| g | group |
| o | other |

And for modes 
| symbol | meaning |
|--------|---------|
| `+` | add permissions |
| `-` | Remove permissions |
| `=` | set exact permissiom|

## Links


### Hard Links

create a hard link with
```bash
$ ln [target_file] [name of the new file]
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
ln -s [target_file] [name_of_soft]
```

## Globbing

Globbing is the act of using wildcards

- `*` This searches for all possible characters from the beginning or end 

For example:
```bash
$ ls file.*
```
This will look for every extensions from `txt` to `docx` and so on

- `?` This searches for all characters but only one character 

For example:
```bash
$ ls file?.txt
```
This will look for every file.txt file that can fill the void, so from `file0.txt` to `filez.txt` and even `file!.txt`

- `[ - ]` will read the filename for everything within the range

For example:
```bash
$ ls file[0-9]

# To exclude, you do

$ ls file[^0-9]
```
This will look for every file between 0 to 9 in the end so file1, file2, file0, file9 and so on

- `{ }` instead of reading this will write new files based on the range or parameters

```bash
$ touch file{a,b,c,d}.txt

# To create a range, you do

$ touch file{a..d}.txt
```

## Redirections

### Standard I/O descriptors

In this context, `std` stands for standard
`>`, `>>` stdout - 1 (Standard output)
`<` stdin - 0 (Standard input)
`2>`, `2>>` stderr - 2 (Standard error)
`&>`, `&>>` stdout+stderr (Standard output and Standard error)

### Explanations

This will redirect output

- `<` This will redirect the input of the command

```bash
$ mail exampleMail@exampleService.com < message.txt
```
In this example, all input inside `message.txt` will be redirected to the command mail

- `>` This will redirect the ouput of a command. This will flush all information of the target then add the new one.
- `>>` This will append the output to the target

```bash
$ cat example.txt > message.txt
```
This will flush the content of the `message.txt` and add the new cat of the `example.txt`

```bash
$ cat example.txt >> message.txt
```
This will add on the information in the `message.txt` and add the new information of the `example.txt`


- `2>` This will redirect all errors of the command. This will also flush the information first
- `2>>` This will append the error to the target

```bash
$ copy x y 2> error.txt
```
This will flush all information in the `error.txt` and create the new error

```bash
$ copy x y 2>> error.txt
```
This will append the error message created into the `error.txt`


- `&>` This will function both as the error redirection and output redirection. Also flushes the target
- `&>>` This will function both as the error redirection and output redirection but appending the output to the target

These will redirect only to with files

### Pipping

Similar to redirection, piping brings the ouput to another command
```bash
$ <cmd1> | <cmd2>
```

It is basically an output redirection but for commands since the standard `>` wont bring an output to another command

### More information about globbing

You can use quotations or backslashes to prevent globbing

For example:
```bash
$ echo "?"
$ echo \?
```


## Alias

Alias is a temporary way to execute a specific command

```bash
$ alias [alias_name]=`[command]`
```

You can also overwrite commands in the system

In here, you can also make it permanent via

```bash
$ vi ~/bashrc
```
And put you in the new alias in the place


## Algorithms

In bash or terminal, there is a way where you can execute the command first then return it, similar to calling a method or function

```bash
$ echo $(date)

or

$ echo $`date`
```
Both of these will output the string date and outting it into a variable

One could also store into a variable like
```bash
$ variable_name=$([command])
```

## Environment Variables

Environment variables are variables that are used by the entire system for apps or interaction

Default environmental variables are
```bash
$PATH
$PWD
$HOME
$USER
```
By convention, they are all uppercase

### Temporary variables

To make your own environmental variable, you can do 
```bash
$ export variable_name=[variable_name]
```
This will make the variable the default for the current process

To make it default for the system, you need to access the `.profile` in `/etc/`

#### Script exclusive environment variable

To make a variable temporary to a current script, you need to pass it through a specfic script

This is used to make sure it is only passed to a specific script

```bash
$ temp_value=[value] [script_name]
```

## Bash Processing

In Bash, there is steps that bash takes before processing

### 1

### 2: Set up & Lookup

After Bash sets up the environments and commands

### 3: Execution

Once the bash finds the command, it executes it


### Exit code

In bash, after doing a command, bash creating an exit status in `$?` from the previous command

so for example, when you ran

```bash
$ echo $?
```

It will output a number which indicated what happened. For some;
- `0` means the command was a success
- `1` means an error in the command
- `126` means the command is not executable

## Command substitution

Command substition is the way to substitute commands in the string

```bash
$ echo "This is the result $(find ~ -name "*.sh" | wc -l)"

# Output: this is the result: 5
```

To do command substitution, you need to put a command inside `$()`

## Looking in Files

In linux systems, there are two commands called `files` and `grep`

It applies globbing.
- `find`: Search by file attribute
- `grep`: Search inside files

### grep

grep goes into files and find matchines

```bash
$ grep [options...] "pattern" [filename]
```

Options include:
- `-i` for ignore case sensitivity so `grep -i "error"` will include "Error", "ERROR" and "ErRoR"
- `-v` for invert the match so lines that dont contain the patter
- `-w` matches whole words in the line

### Find 

find looks for patterns based on the value provided 

```bash
$ wc [path] [options...] [value for the option] 
```

Options:
- `-name` to find by name
- `-l` to search for links
- `-d` to search for directories


### wc

`wc` counts the words, lines or so on in a file

```bash
$ wc [options...] [path]  
```

Options:
- `-w` shows the amount of words (Default)
- `-l` shows the amount of lines

## Basic Regex and Extended Regex

### Basic Regex

| Pattern | Explanations |
|---------|--------------|
| * | 0 or more of the previous character |
| [list] | Matches any one (1) in the list of characters, e.g. [abc] matches one a or one b or one c |
| [^list] | This is the inverted form and works with ! or ^ at the start which matches places without the patterns |
| . | One character of any character. Basically the `?` for globbing |

### Extended Regex

To use these, we need to do `egrep` or `grep -E`

| Pattern | Explanations |
|---------|--------------|
| ? | Matches 0 or 1 ouccurences of the previous character |
| + | One or more ouccurrences of the previous character |
| {n, m} | A minimum of `n` and a maximum of `m` f the previous character |
| (ab \| cd) | The parenthesis represents a grouping \| and represents a or. So in this case, it is ab OR cd |

### POSIX

POSIX, meaning  **P**ortable **O**perating **S**ystem **I**nterface, is a standard within Linux to define character group

| POSIX | Expression they represent |
|-------|---------------------------|
| \[\[:alnum:\]\] | [a-zA-Z0-9] |
| \[\[:alpha:\]\] | [a-zA-Z] |
| \[\[:digit:\]\] | [0-9] |
| \[\[:lower:\]\] | [a-z] |
| \[\[:blank:\]\] | [ \t] (Note, there is a space before \\t) |
| \[\[:space:\]\] | [ \t\n\r] etc. (Note, there is an space before \t)
| \[\[:upper:\]\] | [A-Z] |

Example:
```bash
$ grep [[:digit:]] word.txt
```

## Programming and Scripting Language

Important Note: shellcheck is important to check scripts
```bash
$ sudo apt install shellcheck
```

And inside vi makes lines in vi for one to count 
```bash
# In vi
:setnumber
```

### Code structure

In bash, there is code structure to put inside the code
`#` is a comment, so the program wont execute
`#!\bin\bash` is a Shebang

### Variables

In bash, it can hold variables 
```bash
$ [variable name]="[variable value]"
```

To call a variable content, you do `$[variable name]`
for example:
```Bash
$ echo $[variable name] #This prints the contents in the variable
```

#### Special Variables

In bash, there is special variables that one could hold if there is passing variables

for example, when you do

```
$ bash script.sh Hello
```

It passes the variable Hello into the script

Special variables include
| symbol | meaning |
|--------|---------|
| $0 | script name |
| $1 | first argument |
| $6 | sixth argument | 
| ... | and so on in ${n} format |
| $* | expands all the armguments into a string |
| $@ | This expands all arguments but seperated from each other |
| $# | Number of arguments |
| $$ | process ID of the script |
| $? | expands the return code of the last command |

`basename` command removes the directory and suffixes from file names

example
```bash
echo $0 # ./script.sh
echo $(basename $0) # script.sh
```

**DEBUG**

You can use debug before activating the script to know commands that are running

You can use the shell’s -x option to help debug a script
This option causes the shell to display each command after it expands it, but before it runs the command.

Example:
```bash
$ bash -x welcome.sh # displays the command and argument as the script runs
+ name=Bob
+ echo 'Hello Bob'
Hello Bob
+ echo Goodbye
Goodbye
$
```

For a script like 
```bash
$ cat welcome.sh
#!/bin/sh
#simple program to greet users
name=“Bob”
echo “Hello $name”
echo “Goodbye”
```

Other debugging options include
- `-n` to check for syntax of the script but does not execute the commands
- `-v` means verbose, displays the lines of code while executing the shell script

Tracing only part(s) of the script
```bash
set –x # start debugging
echo “hello $USER”
set +x # stop debugging
```

Using set -x causes traces of the following commands and
arguments between to be shown until EOF or set +x

We can also pass temporary values 
```bash
#!/bin/bash
if [[ -n “$DEBUG” ]]; then # also: [[ “$DEBUG” == “1” ]]
 echo “Entering debug mode…”
 set –x # start debugging
fi
```

And outside, execute the script like
```bash
$ DEBUG=1 ./my_script.sh
```


### Conditional expressions

In the conditional expressions, it is always evaluated to true `0` or false `1`

| expression | its value |
|------------|-----------|
| `true` | 0 |
| `false` | 1 |

#### Using conditional expressions

To do a conditional expression, you create a double square brackets `[[ ]]` and two values inside to evaluate

For example,
```Bash
$ [[ 4 -eq 5]] # This evaluated to false since 4 isn't equal to 5
```

for numeric values:
| symbol | meaning `in java` |
|--------|-------------------|
| -eq | Equals to `==` |
| -gt | greater than `>` |
| -ge | greater than or equal `>=` |
| -lt | less than `<` |
| -le | less than or equal `<=` |

Logic operators
| symbol | meaning |
|--------|---------|
| `&&` | AND |
| `\|\|` | OR |
| `!` | NOT |

For string values:
| symbol | meaning |
|--------|---------|
| = | arguments are equal |
| == | arguments are equal (same as =) |
| != | arguments are not equal |
| < | left argument is smaller than right arugment |
| > | right argument is smaller than the left hand atgument |
| -n | String is not null |
| -z | String is null |

For Files
Like
```bash
[[ -x ~/myfile ]]
```
| symbol | meaning |
|--------|---------|
| -x | file is executable |
| -d | file is a directory |
| -e | the file exists |
| -f | the file is a regular file on the device |
| -s | the file is not empty (size greater than 0) |
| -h | the file is a symbolic link |

for If Statements 

To use if statements, you need to use `if...then...else`

Example:
```bash
if [conditional expression];
	then 
		commands
	else 
		commands 
fi
```

for else if

```bash
if [conditional expression]; then 
	commands
elif; then
	commands 
fi
```

In bash, there is also general expression operator to see if it is true or false

| symbol | meaning |
|--------|---------|
| =~ | comparing a string to a regex |

To do this, you need to do:
```bash
[[ "String" =~ regex_expression ]]
```