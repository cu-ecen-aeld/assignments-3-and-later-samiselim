#!/bin/bash

filesdir=$1
searchstr=$2

#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Invalid number of parameters"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "'$filesdir' is not a valid directory"
    exit 1
fi


echo "The number of files are $(find "$filesdir" -type f | wc -l) and the number of matching lines are $(grep "$searchstr" "$filesdir" -r | wc -l)"
