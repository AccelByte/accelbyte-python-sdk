FILE_NAME='test-results.md'

append_to_file() {
  echo $1 >> $2
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

run_script() {
  echo "Running script $1"
  append_to_file '```tap' $FILE_NAME
  append_to_file $1 $FILE_NAME
  append_to_file '' $FILE_NAME
  $1 >> $FILE_NAME
  append_to_file '```' $FILE_NAME
  append_to_file '' $FILE_NAME
}

delete_file $FILE_NAME

append_to_file '# Test Results' $FILE_NAME
append_to_file '' $FILE_NAME

run_script ./../../tests/sh/run-python-cli-dsmc-unit-test.sh
run_script ./../../tests/sh/run-python-cli-achievement-unit-test.sh
run_script ./../../tests/sh/run-python-cli-iam-unit-test.sh
run_script ./../../tests/sh/run-python-cli-seasonpass-unit-test.sh
run_script ./../../tests/sh/run-python-cli-lobby-unit-test.sh
run_script ./../../tests/sh/run-python-cli-gdpr-unit-test.sh
run_script ./../../tests/sh/run-python-cli-social-unit-test.sh
run_script ./../../tests/sh/run-python-cli-platform-unit-test.sh
run_script ./../../tests/sh/run-python-cli-sessionbrowser-unit-test.sh
run_script ./../../tests/sh/run-python-cli-leaderboard-unit-test.sh
run_script ./../../tests/sh/run-python-cli-eventlog-unit-test.sh
run_script ./../../tests/sh/run-python-cli-ugc-unit-test.sh
run_script ./../../tests/sh/run-python-cli-group-unit-test.sh
run_script ./../../tests/sh/run-python-cli-qosm-unit-test.sh
run_script ./../../tests/sh/run-python-cli-legal-unit-test.sh
run_script ./../../tests/sh/run-python-cli-matchmaking-unit-test.sh
run_script ./../../tests/sh/run-python-cli-cloudsave-unit-test.sh
run_script ./../../tests/sh/run-python-cli-dslogmanager-unit-test.sh
run_script ./../../tests/sh/run-python-cli-basic-unit-test.sh
run_script ./../../tests/sh/run-python-cli-gametelemetry-unit-test.sh
