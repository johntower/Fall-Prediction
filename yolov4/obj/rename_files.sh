#!/bin/bash

# Define source and destination directories
SRC_DIR="."       # Replace with your source folder path
DEST_DIR="frames"         # Replace with your destination folder path

# Create the destination directory if it does not exist
mkdir -p "$DEST_DIR"

# Step 1: Copy all video files from the source directory to the destination
# (assuming video files have .mp4 extension)
cp "$SRC_DIR"/*.jpg "$DEST_DIR"

# Step 2: Rename the .jpg files in the destination directory in the required format
counter=0
for img in "$DEST_DIR"/*.jpg; do
    # Format the number with leading zeros (000000 format)
    new_name=$(printf "frame%06d.jpg" "$counter")
    
    # Rename the file
    mv "$img" "$DEST_DIR/$new_name"

    # Increment the counter
    ((counter++))
done

echo "Video files copied and .jpg files renamed successfully."

