#!/bin/bash
# This script demonstrates file testing

# Test for the existence of the /etc/resolv.conf file
# TASK 1: Add a test to see if the /etc/resolv.conf file is a regular file
# TASK 2: Add a test to see if the /etc/resolv.conf file is a symbolic link
# TASK 3: Add a test to see if the /etc/resolv.conf file is a directory
# TASK 4: Add a test to see if the /etc/resolv.conf file is readable
# TASK 5: Add a test to see if the /etc/resolv.conf file is writable
# TASK 6: Add a test to see if the /etc/resolv.conf file is executable
[ -e /etc/resolv.conf ] && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"
#task1 checking weather it is a regular file
[ -f /etc/resolv.conf ] && echo "yes /etc/resolv.conf is a regular file" || echo "no /etc/resolv.conf is not a regular file"
#Task-2 checking if it is a symbolic link
[ -L /etc/resolv.conf ] && echo "yes /etc/resolv.conf is a symbolic link" || echo "no /etc/resolv.conf is not a symbolic link"
#Task-3 checking if it is a directory
[ -d /etc/resolv.conf ] && echo "yes /etc/resolv.conf is a directory" || echo "no /etc/resolv.conf is not a directory"
#Task-4 checking if it is  readable
[ -r /etc/resolv.conf ] && echo "yes /etc/resolv.conf is readable" || echo "no /etc/resolv.conf is not readable"
#Task-5 checking if it is writable
[ -w /etc/resolv.conf ] && echo "yes /etc/resolv.conf is writable" || echo "no /etc/resolv.conf is not writable"
#Task-6 checking if it is executable
[ -x /etc/resolv.conf ] && echo "yes /etc/resolv.conf is executable" || echo "no /etc/resolv.conf is not executable"

# Tests if /tmp is a directory
# TASK 4: Add a test to see if the /tmp directory is readable
# TASK 5: Add a test to see if the /tmp directory is writable
# TASK 6: Add a test to see if the /tmp directory can be accessed
[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

#Task-4 weather temp is readable
[ -r /tmp ] && echo "yes /tmp is a readable directory" || echo "no /tmp is not a readable directory"
#Task-5 weather temp is writable
[ -w /tmp ] && echo "yes /tmp is a writable directory" || echo "no /tmp is not a writable directory"
#Task-6 weather temp can be accessed
[ -x /tmp ] && echo "yes /tmp is a accessible directory" || echo "no /tmp is not a accessible directory"
# Tests if one file is newer than another
# TASK 7: Add testing to print out which file newest, or if they are the same age
[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"
