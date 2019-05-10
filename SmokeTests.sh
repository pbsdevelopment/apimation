#!/bin/bash
#!/usr/bin/expect

source "./assert.sh"

email="pbstech.ukraine@gmail.com"
project="appimation"
pass="qwerty"

apimation_dir=/var/apimation

TXT="Script Run Finished"
WORKING_DIR="/var/apimation"

cd $WORKING_DIR

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send $email
send "\n"
expect "Enter project name:"
send $project
send "\n"
expect "Create new password:"
send $pass
send "\n"
EOF

echo $TXT

