##Shell Basics
Bash is a **shell** -- an interface that lets you give commands to your operating system to execute. IOW, the shell is a program that allows you to execute other programs.

Unix operating system popularized the concept of separating the *shell* (the place where you type the commands) from the *operating system*(scheduler, memory management, input/output). 

####Different Unix shells:
- Bourne shell (*sh*)
- C shell (*csh*)
- bash shell (*bash*)
- Korn shell (*ksh*)

####Modern shells
Some benefits of modern shells:
- Remember commands you've typed
- Edit existing commands
- Define command abbreviations

Examples
- Perl
- Python
- Ruby

####Why bash?
It is freaking everywhere. Provides the programming features that shell programmers need plus the conveniences that command-line users like.

Available to windows via Cygwin. 

Main purpose of bash is to let you interact with the OS to do what you wanna do - typically involves launching programs. **Shell scripts** allow you to automate these tasks.
 
Example bash commands: `ls`, `cd`, `grep`, `cat`, `pwd`


###Finding and Running Commands
Bash keeps a list of directories in which it should look for commands in an environment variable called `$PATH`

#####`which`
searches `$PATH` (a list of directories in which it should look for commands in an environment called `$PATH`)

#####`man` & `apropos`
short for *manual*....gives you documentation about the command you're using

`apropos` will search manpage names for descriptions

#####`locate`
consults database files about the system

###Getting Information About Files
Sometimes you need info about a file, who owns it, permissions,
#####`ls`
- shows filenames in the directory
- `ls -d «regex»` : shows only hidden files that pass the regex test
  - e.g.: `$ ls -d .szsh*` --->  *.zsh-update* , *.zsh_history* , *.zshrc*
- `ls -l` : long listing
- `ls -R` : Recurse through subdirectories
- `ls -S` : sort by file size
- `ls -F` : type of file 

###Shell Quoting
Enclose a string in *single quotes* if you want a string literal without interpolation
```
$ echo 'I really like earning $50 per month'
```

Enclose a string in *double quotes* if you want a string to get interpolated. Also useful for single quotes.
```
$ HI='Travis'
$ echo "I just want to say $HI"
```

If you need to escape sth...use `\`