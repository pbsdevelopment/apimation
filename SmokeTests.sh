#!/bin/bash
#!/usr/bin/expect

source "./assert.sh"

new_email="some_user@testdevlab.com"
email_exist="boris.panteleev@testdevlab.com"
invalid_email="qwerty"

project="apimation"
pass="qwerty"

apimation_dir=/var/apimation

TXT="Script Run Finished"
PASS="Tests passed"
WORKING_DIR="/var/apimation"

cd $WORKING_DIR

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send "$new_email\n"
#send "\n"
expect "Enter project name:"
send "$project\n"
#send "\n"
expect "Create new password:"
send "$pass\n"
#send "\n"
expect "Re-type Password:"
send "$pass\n"
#send "\n"
sleep 10
EOF

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send "$email_exist\n"
#send "\n"
expect "Enter project name:"
send "$project\n"
#send "\n"
expect "Create new password:"
send "$pass\n"
#send "\n"
expect "Re-type Password:"
send "$pass\n"
#send "\n"
sleep 10
EOF

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send "$invalid_email\n"
#send "\n"
expect "Enter project name:"
send "$project\n"
#send "\n"
expect "Create new password:"
send "$pass\n"
#send "\n"
expect "Re-type Password:"
send "$pass\n"
#send "\n"
sleep 10
EOF

echo $TXT
echo $PASS