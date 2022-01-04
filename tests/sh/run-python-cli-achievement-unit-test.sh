#!/bin/bash

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=14

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 AdminListAchievements
$PYTHON -m $MODULE 'achievement-admin-list-achievements' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListAchievements'
delete_file $TEMP_FILE

#- 2 AdminCreateNewAchievement
$PYTHON -m $MODULE 'achievement-admin-create-new-achievement' \
    '{"achievementCode": "FtBxyZcD", "defaultLanguage": "XBpGlsQu", "description": {"Ju8vMf0I": "sJkTrd8I"}, "goalValue": 0.46848625686278056, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "XnTKjXY1", "url": "bPqamiBx"}], "name": {"x9Cs18EY": "84ekItqR"}, "statCode": "zHU1oh57", "tags": ["0KQBVaew"], "unlockedIcons": [{"slug": "c72krSha", "url": "68n3Ynoz"}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateNewAchievement'
delete_file $TEMP_FILE

#- 3 ExportAchievements
$PYTHON -m $MODULE 'achievement-export-achievements' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExportAchievements'
delete_file $TEMP_FILE

#- 4 ImportAchievements
$PYTHON -m $MODULE 'achievement-import-achievements' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ImportAchievements'
delete_file $TEMP_FILE

#- 5 AdminGetAchievement
$PYTHON -m $MODULE 'achievement-admin-get-achievement' \
    'p1C2KmIQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAchievement'
delete_file $TEMP_FILE

#- 6 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "TuBdNEUs", "description": {"xFb8CJ17": "M7DJZaMS"}, "goalValue": 0.3723261689885863, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Zbygyoar", "url": "ORoeNHSb"}], "name": {"8Rh3kgs9": "qqJbnQso"}, "statCode": "BgiVpP8C", "tags": ["m3yvASUo"], "unlockedIcons": [{"slug": "xdxxFqmA", "url": "GTJ8IEda"}]}' \
    'gEtp4w29' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAchievement'
delete_file $TEMP_FILE

#- 7 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'KOu9c19R' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteAchievement'
delete_file $TEMP_FILE

#- 8 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 98}' \
    'DqWHkkP8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateAchievementListOrder'
delete_file $TEMP_FILE

#- 9 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    'npLEKMfj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminListUserAchievements'
delete_file $TEMP_FILE

#- 10 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'iX7jpkVZ' \
    'k3IaQYEm' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUnlockAchievement'
delete_file $TEMP_FILE

#- 11 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'qGodOEGt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListAchievements'
delete_file $TEMP_FILE

#- 12 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    '9gPOj0c6' \
    'i0JkvIas' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetAchievement'
delete_file $TEMP_FILE

#- 13 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    '73ucYnFA' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicListUserAchievements'
delete_file $TEMP_FILE

#- 14 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'J3DK5T4E' \
    'ogg0Y39U' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUnlockAchievement'
delete_file $TEMP_FILE

delete_file 'tmp.dat'