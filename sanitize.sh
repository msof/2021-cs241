#!/bin/bash
if [ $# -ne 2 ]
then
    echo "sanitize.sh -- Sanitize white spaces, new-lines and upper case character"
    echo "Usage: sanitize.sh <input_file> <output_file>"
else
    cat $1 | tr -d "\v\r\t\n " | tr '[:upper:]' '[:lower:]' > $2
fi;
