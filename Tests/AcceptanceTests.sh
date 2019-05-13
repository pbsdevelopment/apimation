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
# TBD - assert
echo "Generating test step:"
./apimation generate step step_1 -f feature_1
echo "Finished!"
# TBD - assert
echo "Generating test case:"
./apimation generate case case_1 -f feature_1
echo "Finished!"
# TBD - assert
echo "Executing test:"
./apimation run case case_1

# TBD - assert
echo "Generating test step:"
./apimation generate step step_1 -f feature_1
./apimation generate step step_1 -f feature_2
./apimation generate step step_1 -f feature_3
./apimation generate step step_1 -f feature_4
echo "Finished!"
# TBD - assert
echo "Generating test case:"
./apimation generate case case_1 -f feature_1
./apimation generate case case_2 -f feature_1
./apimation generate case case_1 -f feature_2
./apimation generate case case_1 -f feature_4
echo "Finished!"
# TBD - assert
echo "Executing test:"
./apimation run case case_1
./apimation run case case_2
./apimation run case case_3
echo "Finished!"
echo $TXT
echo $PASS
