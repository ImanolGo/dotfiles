#!/bin/sh

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Loop over the directories
for d in $DIR/*/
do
  # Check if an install script exists
  if [ -f $d/install.sh ]; then
    # Run the install script
    sh $d/install.sh
  fi
done

echo "Installation complete. Please restart your terminal session."
