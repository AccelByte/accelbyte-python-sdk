#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

FILE_NAME='test-results.md'
PIP='pip3'
PYTHON='python3'

activate_venv() {
  $PYTHON -m venv venv
  source venv/bin/activate
  $PIP install -r requirements.txt
  $PIP list
}

append_to_file() {
  echo $1 >> $2
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

run_script() {
  chmod 755 $1
  echo "Running script $1"
  append_to_file '```tap' $FILE_NAME
  append_to_file $1 $FILE_NAME
  append_to_file '' $FILE_NAME
  $1 >> $FILE_NAME
  append_to_file '```' $FILE_NAME
  append_to_file '' $FILE_NAME
}

activate_venv

delete_file $FILE_NAME

append_to_file '# Test Results' $FILE_NAME
append_to_file '' $FILE_NAME

run_script sh/run-python-cli-dsmc-unit-test.sh
run_script sh/run-python-cli-achievement-unit-test.sh
run_script sh/run-python-cli-iam-unit-test.sh
run_script sh/run-python-cli-seasonpass-unit-test.sh
run_script sh/run-python-cli-lobby-unit-test.sh
run_script sh/run-python-cli-gdpr-unit-test.sh
run_script sh/run-python-cli-social-unit-test.sh
run_script sh/run-python-cli-platform-unit-test.sh
run_script sh/run-python-cli-sessionbrowser-unit-test.sh
run_script sh/run-python-cli-leaderboard-unit-test.sh
run_script sh/run-python-cli-eventlog-unit-test.sh
run_script sh/run-python-cli-ugc-unit-test.sh
run_script sh/run-python-cli-group-unit-test.sh
run_script sh/run-python-cli-qosm-unit-test.sh
run_script sh/run-python-cli-legal-unit-test.sh
run_script sh/run-python-cli-matchmaking-unit-test.sh
run_script sh/run-python-cli-cloudsave-unit-test.sh
run_script sh/run-python-cli-dslogmanager-unit-test.sh
run_script sh/run-python-cli-basic-unit-test.sh
run_script sh/run-python-cli-gametelemetry-unit-test.sh
run_script sh/run-python-cli-lobby-ws-unit-test.sh
