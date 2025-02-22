#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Define the source and destination paths
SOURCE_FILE="./motd-raspberrypi"
DEST_DIR="/etc/update-motd.d"
DEST_FILE="$DEST_DIR/motd-raspberrypi"

# Remove any existing files to prevent confusion
echo "Removing existing MOTD..."
if rm -rf "$DEST_DIR"/*; then
    echo "Existing MOTD removed."
else
    echo "Failed to remove existing MOTD."
    exit 1
fi

# Copy the new MOTD
echo "Copying new scripts to $DEST_DIR..."
if cp "$SOURCE_FILE" "$DEST_FILE"; then
    echo "Scripts copied successfully."
else
    echo "Failed to copy scripts."
    exit 1
fi

# Set the appropriate permissions
echo "Setting permissions for $DEST_FILE..."
if chmod 755 "$DEST_FILE"; then
    echo "Permissions set successfully."
else
    echo "Failed to set permissions."
    exit 1
fi

echo "Installation complete."
