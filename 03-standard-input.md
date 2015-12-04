##Input

####Getting input from a file w/ `<`

####*here-document* with `<<EOF `
- a *here-document* is a script file that contains the data along with the script

an example with a file called `here_ext`:

```
# ------
# this is the command
# ------
grep $1 <<EOF
# ----
# this is the data section
# ----
travis x.123
ben x.321
ed x.444
connie x.535
jason x.314
janet x.101
EOF
```

and we would execute like so:
```
sh here_ext x.4 | cat
```

if you have data that has bash syntax (like the `$`):
```
gennex $100
bucks $212
contos $333
pmto $621
```

then you can escape the bash syntax with a `\`
```
...<<\EOF
gennex $100
bucks $212
contos $333
pmto $621
EOF
```

you can indent with *tabs* if you put a `-` before `EOF`
```
$ grep $1<<-'EOF'
    look at all
    this tabbed
    area
    i love it
    EOF
```

####Getting input from the user with `read`
Consider the `get_info.sh`:
```
echo "Hi what's your name?"
read first last


echo "....."
echo "nice to meet you, $first $middle $last"
```

Thus you can capture multiple arguments with `read`

Note if you want to set environment variables in the shell, then run the script preceded by a `.`:

`. ./get_info.sh`
