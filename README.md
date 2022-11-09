# API

## Define various test cases that you want to be included in test

- Focus on happy path cases
- Try to group APIs into end to end scenario. (In "e2e-tests" folder)

# WEB

- Step 5,6,7, need to interact with CHART to get values, automation script for it will be unstable, and take much time to do. I would prefer manual test for these steps

## Steps to run both API & WEB

- Install docker
- Clone the repository
- docker run --shm-size=1g -v {full path to the repo folder}:/opt/robotframework/tests:Z -e BROWSER=chrome vuongvvv/robot-framework-real-browser:latest /opt/robotframework/bin/run-tests-in-virtual-screen.sh