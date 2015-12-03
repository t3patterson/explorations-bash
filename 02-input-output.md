##Output
####Crude output: `echo`
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

######Handling errors
the default output is STDOUT but you can send the errors (STDERR) with `2>`. Example:
`$ myprog 1> messages.txt 2> messages-errors.txt`

thus `messages-errors.txt` will show:
```
sh: command not found: myprogram
```

####Skipping a Header in a file with `tail`
- `tail «filename»` : takes trailing 10 lines from end
- `tail -5 «filename»` : take trailing 5 lines from end
- `tail +2 «filename»` : skip first line of a file 
  - `+1` gives you the entire file  
  - `+3` would skip the first 2 lines

