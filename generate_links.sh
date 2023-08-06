#!/bin/bash

# Function to generate links to all pdf files in the repository
generate_links() {
  echo "# PDF Files" > links.md
  find . -type f -name "*.pdf" | while read -r file; do
    filename=$(basename "$file")
    link="[${filename}]($file)"
    echo "- $link" >> links.md
  done
}

# Call the function to generate links
generate_links

