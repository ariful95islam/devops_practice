#!/bin/bash

# Update the package lists for upgrades and new packages
sudo apt-get update

# Install Java. It installs the latest available version.
sudo apt-get install -y default-jdk

# Verify Java installaion
if command -v java > /dev/null; then
	JAVA_VERSION=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}' | awk -F'.' '{print $1}')

	if [ -z "$JAVA_VERSION" ]; then
        	echo "Java is installed but the version could not be determined."
    	else
        	if [ "$JAVA_VERSION" -lt 11 ]; then
            		echo "An older Java version ($JAVA_VERSION) is installed. Please upgrade to a newer version."
        	else
            		echo "Java version $JAVA_VERSION is installed successfully."
        	fi
    	fi
else
    echo "Java is not installed."
fi
