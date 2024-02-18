#!/bin/bash

# Check for package managers
# > redirection operator to /dev/null which assigns an exit status of 0 (success) or non-zero (fail)
if command -v apt > /dev/null; then
	echo "apt package manager is available"
else
	echo "apt package manager is not available"
fi


if command -v apt-get > /dev/null; then
	echo "apt-get package manager is available"
else
	echo "apt-get package manager is not available"
fi


if command -v yum > /dev/null; then
	echo "yum package is available"
else
	echo "yum package is not available"
fi


# Check for CLI editors
if command -v nano > /dev/null; then
	echo "nano editor is available"
else
	echo "nano editor is not available"
fi


if command -v vi > /dev/null; then
	echo "vi editor is available"
else
	echo "vi editor is not available"
fi


if command -v vim > /dev/null; then
	echo "vim editor is available"
else
	echo "vim editor is not available"
fi


# Check for Ubuntu Software Center
# &> is also a redirection operator but it will redirect both stdout and stderr. > only redirects stout
if dpkg-query -W gnome-software &> /dev/null; then
	echo "Ubuntu Software Center is installed"
else
	echo "Ubuntu Software Center is not installed"
fi


# Check for the current user's shell
echo "The current user's shell is: $SHELL"


