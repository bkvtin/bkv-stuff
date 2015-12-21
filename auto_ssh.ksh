#!/usr/bin/expect -f
# Purpose : Automatically connect to server linux in SDL               
# Author  : Tin Tran                     
           

set user [lindex $argv 0]
set machine [lindex $argv 1]
set password [lindex $argv 2]

spawn ssh $user@$machine
expect "*password: "
send "$password\r"

interact