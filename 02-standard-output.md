##Output
####Crude outpstandut: `echo`
Simple bash command that prints the command line argmuments to the screen...i.e. it writes to the standard output

Use the `-cd ..n` flag to create output w/o the newline

####Control output format:  `printf`
**Structure:** `printf «format-string» [arguments]`
**Example**
`printf '%10.10s = %4.2f\n' 'GigaHerz' 1.92735`
   - first number: **width** characters wide for the field
   - second number : **precision** digits printed to the right of the decimal point (for %f) or start of field (for %s)

####Saving output to a file `>` and `>>`
`>` redirects and writes to a pathname/file (must be explicit with `./` for relatve pathname, if file only starts with `/`, it will do absolute and be placed in the /tmp directory)

`>>` appends to the file

**Examples**
```
echo "hey there dude" > file.txt
ls > files-and-dirs.txt
```

######Outputting errors with `>2`
the default output is STDOUT but you can send the errors (STDERR) with `2>`. Example:
`$ myprog 1> messages.txt 2> messages-errors.txt`

thus `messages-errors.txt` will show:
```
sh: command not found: myprog
```

####Skipping a Header in a file with `tail`
- `tail «filename»` : takes trailing 10 lines from end
- `tail -5 «filename»` : take trailing 5 lines from end
- `tail +2 «filename»` : skip first line of a file 
  - `+1` gives you the entire file  
  - `+3` would skip the first 2 lines

####Grouping output of several commands and saving
Use parentheses: i.e. :: `(«your series of commands here»)`
```
$ (pwd; ls; cd ..; ls -l; pwd;) > cmd_output.txt     
```

will generate a file `my_output.txt` with something like this: 
```
/Users/thubbard/Explorations/Bash-Cookbook/sandbox
cmd_output.txt
hi.txt
prnt.txt
wow.txt
total 32
-rw-r--r--  1 thubbard  staff  2337 Nov 30 17:41 01-bash-basics.md
-rw-r--r--  1 thubbard  staff  1393 Dec  1 13:53 02-input-output.md
-rw-r--r--  1 thubbard  staff   263 Dec  1 13:48 README.md
-rw-r--r--  1 thubbard  staff    65 Dec  1 12:54 ls_d.txt
drwxr-xr-x  6 thubbard  staff   204 Dec  2 11:48 sandbox
/Users/thubbard/Explorations/Bash-Cookbook
```


####Piping: Using Output as Input for another command with `|` 
Considering the `my_output.txt` file above. 

```
$ cat my_outupt.txt | tail -3 | wc
```

will output: 

```
 3      19     158
 
```

Note: `wc` is wordcount and gives the lines / words / bytes

####Using `$()` to use output as an argument
Let's say we have a file structure like this: 
- `a.file`
- `b.file`
- `c.file`

and a `delete.info`  file with other files to be deleted
```
a.file
c.file
```

We could delete `c.file` by running a command like this and passing the output inside of `$()` as an argument:
```
$ rm $(cat delete.info | tail -1)
```


####Using `noclobber` to avoid dangerous overwriting files
Sometimes it's dangerous to overwrite files. You can set your terminal to `snoclobber` to avoid overwriting
```
$ set +o noclobber
```

To set dangerous-overwriting back:
```
$ set -o noclobber
```
