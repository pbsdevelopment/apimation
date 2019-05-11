#!/bin/bash
#!/usr/bin/expect

source "./assert.sh"

email="email@dev.com"
blank_email=""
email_bad="thisisbademail"
email_with_error="qwerty@1.1@"

project="apimation"

pass="qwerty"
blank_pass=""

apimation_dir=/var/apimation

TXT="Script Run Finished"
FAIL="Tests failed"
PASS="Tests passed"
WORKING_DIR="/var/apimation"

cd $WORKING_DIR

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send "$blank_email\n"
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
send "$email_with_error\n"
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

expect - <<EOF
spawn ./apimation user create
expect "Enter user email:"
send "$email\n"
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
send "$email\n"
#send "\n"
expect "Enter project name:"
send "$project\n"
#send "\n"
expect "Create new password:"
send "$blank_pass\n"
#send "\n"
expect "Re-type Password:"
send "$pass\n"
#send "\n"
sleep 10
EOF

echo $TXT
echo $PASS