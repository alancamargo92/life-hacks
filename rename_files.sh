# Recursively renames all files in a directory
# from a value to another
# Author: Alan Camargo

#!/bin/bash

if [ "$#" != 4 ]; then
	echo "You must pass the following 4 arguments: target directory, extension (i.e.: *.c), name to replace, new name"
	exit
fi

DIR_NAME="$1"
echo "Target directory: ${DIR_NAME}"
cd DIR_NAME

EXTENSION="$2" # must be something like *.c
echo "Extension: ${EXTENSION}"

WRONG_NAME="$3"
echo "Wrong name: ${WRONG_NAME}"

CORRECT_NAME="$4"
echo "Correct name: ${CORRECT_NAME}"

FILES=$(find "$DIR_NAME" -type f -name "$EXTENSION" | grep "$WRONG_NAME")

count=0
for file in ${FILES}
do
    echo "Renaming ${file}..."
    new_name="${file//$WRONG_NAME/$CORRECT_NAME}"
    mv ${file} ${new_name}
    ((count++))
done

echo "${count} files renamed."
