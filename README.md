# apimation
------------------------------------------------------
This is test automation for the apimation
------------------------------------------------------
Short description of Apimation - API Testing Redefined
------------------------------------------------------
A simple way of producing tests from API documentation, both functional and performance scenarios 
without additional coding and test architecture setup.
------------------------------------------------------
Description of test automation:
------------------------------------------------------
Install.sh - to download and install appimation
------------------------------------------------------
SmokeTests.sh - to run smoke tests on basic application run, user create with existing login, 
user creating with not-existing login, enter correct pass, enter incorrect pass, enter invalid email, enter valid email
------------------------------------------------------
AcceptanceTests.sh - to run tests for generating test assets and executing tests
------------------------------------------------------
RegressionTests.sh - contains all regression tests for extended testing on different input parameters
Can use Data Driven Testing (not implemented currently)
------------------------------------------------------
Requirements:
------------------------------------------------------
Linux - any version
Bash - last version
Expect - install it with apt, yum or any other repository packaging tool
------------------------------------------------------
|---------|
|COPYRIGHT|
|---------|
--------------------
Panteleev Borys
--------------------
TestDevLab, 2019
--------------------