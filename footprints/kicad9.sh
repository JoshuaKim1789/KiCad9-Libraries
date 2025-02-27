#!/bin/bash

# Set the string to find and the replacement string
search="KICAD8"
replace="KICAD9"

echo "Scanning subdirectories in: $(pwd)"

# Recursively find files with names matching "*_mod"
find . -type f -name "*_mod" | while IFS= read -r file; do
    dir=$(dirname "$file")
    filename=$(basename "$file")
    echo "Modifying file: $filename in directory: $dir"
    
    # In-place replace using sed
    sed -i "s/${search}/${replace}/g" "$file"
done

echo "Done."

