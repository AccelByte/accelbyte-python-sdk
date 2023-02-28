#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

EXIT_CODE=0
PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

touch "tmp.dat"

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
social-get-namespace-slot-config --login_with_auth "Bearer foo"
social-update-namespace-slot-config --body '{"maxSlotSize": 43, "maxSlots": 27}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'h0MVk97h' --login_with_auth "Bearer foo"
social-update-user-slot-config 'DK18J4dd' --body '{"maxSlotSize": 67, "maxSlots": 18}' --login_with_auth "Bearer foo"
social-delete-user-slot-config '4a4eRjqp' --login_with_auth "Bearer foo"
social-get-user-profiles 'NrkSBz1Z' --login_with_auth "Bearer foo"
social-get-profile 'QOxOGdm8' '17ng33Nc' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'AvuCGIG8' --login_with_auth "Bearer foo"
social-get-slot-data 'aVBAvxyE' 'rNK2tK54' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["TrRIpXcF", "rdCPchjy", "ykC5VKtk"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'm2PRLwmJ' --login_with_auth "Bearer foo"
social-public-create-profile 'GvmWXyqg' --body '{"achievements": ["9ISnlbF7", "uz6s4KDV", "2Fm66M1j"], "attributes": {"EUafyfr9": "zG5AG5w5", "UHOj53YJ": "bkzp5ukd", "KwctXnqy": "aZkOXRIH"}, "avatarUrl": "5VLOnjIF", "inventories": ["nF48bcU7", "PkiA9HW4", "gWKJXJAt"], "label": "lPDxZ7OL", "profileName": "OIQiN3dI", "statistics": ["JuuOjLMS", "bbfMXTWi", "JIFEQvTE"], "tags": ["ylUCgXph", "jwwqEylE", "S8EinHSt"]}' --login_with_auth "Bearer foo"
social-public-get-profile '5M3yUvkK' 'Vo2SvNCO' --login_with_auth "Bearer foo"
social-public-update-profile 'hgVg8LyB' 'b1RoxcE1' --body '{"achievements": ["tVcUVrDK", "8juVVUVi", "kYppdv9j"], "attributes": {"wcpub6jH": "AvYGJe0h", "4QAvFf0g": "TAooaixt", "63LXVfUB": "T6frh4MV"}, "avatarUrl": "3ZVHQ25u", "inventories": ["3yiEyn8I", "YwGYXtB5", "K0I0b7xI"], "label": "Bunwd0Y8", "profileName": "XkM3wW4V", "statistics": ["k8elBgDH", "C8H8fNfy", "Cpc81nSV"], "tags": ["V4Mn50fe", "FtOJ0uVy", "s0ITDrhb"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'yUXWqM6d' 'L4wEkDIc' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'm7LrmqI2' 'oy1AEBxP' 'psokzi6u' --login_with_auth "Bearer foo"
social-public-update-attribute 'wYIsDQf3' 'bq2N31eY' '9oWIc8Gn' --body '{"name": "GKJ0SRW3", "value": "rtomtMZx"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots '6K8YVRkg' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'uSN4tTo2' --login_with_auth "Bearer foo"
social-public-get-slot-data 'x2S5Onjb' 'j2hz6Jjj' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'prKbNcGO' 'epdSLoCX' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'AcwUmFkg' '6iK5XhiI' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'sDLzKcvu' '9j58keq0' --body '{"customAttribute": "ivOHVMDC", "label": "9JUM8Bk6", "tags": ["Et3shF8M", "SBxbCChy", "pnZDwwr7"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'MG2DWSZj' --login_with_auth "Bearer foo"
social-get-stat-cycles --login_with_auth "Bearer foo"
social-create-stat-cycle --body '{"cycleType": "ANNUALLY", "description": "RHGd6exJ", "end": "1988-01-16T00:00:00Z", "name": "89NvVrMm", "resetDate": 85, "resetDay": 42, "resetMonth": 65, "resetTime": "LoEdc8yC", "seasonPeriod": 4, "start": "1995-01-24T00:00:00Z"}' --login_with_auth "Bearer foo"
social-get-stat-cycle 'SJrWK3Bm' --login_with_auth "Bearer foo"
social-update-stat-cycle '6xfxCCTz' --body '{"cycleType": "MONTHLY", "description": "JOjPZ5LB", "end": "1999-04-01T00:00:00Z", "name": "4l8BL0h7", "resetDate": 84, "resetDay": 91, "resetMonth": 24, "resetTime": "y3JBkIrt", "seasonPeriod": 26, "start": "1999-02-24T00:00:00Z"}' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'yrVlZHkj' --login_with_auth "Bearer foo"
social-bulk-add-stats 'ZRrHoQY3' --body '{"statCodes": ["u5W6mfqu", "yj4qBBCM", "rhhK0ZIW"]}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'MvVuuHLk' 'HB65UnZs' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.4062285624535109, "statCode": "CJUnQMnB", "userId": "viFgiJGG"}, {"inc": 0.8142010146333408, "statCode": "9QjQZEd5", "userId": "xdI2DATm"}, {"inc": 0.5502321786101052, "statCode": "ofEL1ob9", "userId": "0s4xh5sQ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.8799621651745461, "statCode": "ZWbKcmeS", "userId": "iF8OrCT5"}, {"inc": 0.8258514095836611, "statCode": "3aBWufPt", "userId": "BxDMHNw7"}, {"inc": 0.7061575828891614, "statCode": "MxcrwQS3", "userId": "vb6Q4Zej"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'uInLOM2c' '["DjFI9lbZ", "4YOxnabs", "018ZeKBB"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "Cih2amhm", "userId": "ZuLg5NOt"}, {"statCode": "aOenPvJz", "userId": "7vycP9lT"}, {"statCode": "mbVXSVbL", "userId": "w0Pcd3He"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["1nwaWMEE", "IyZs9E1y", "7N17mBPs"], "defaultValue": 0.9963502889356374, "description": "MrS9gL7D", "incrementOnly": false, "maximum": 0.2292124999259647, "minimum": 0.4871998998456354, "name": "YMJhgWNN", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "HSLuDRHn", "tags": ["KSg39Ph5", "QHTAzJVK", "fHg7HHhR"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'mkg8PBop' --login_with_auth "Bearer foo"
social-get-stat 'v9ktGKWP' --login_with_auth "Bearer foo"
social-delete-stat '2g6P6MWF' --login_with_auth "Bearer foo"
social-update-stat 'zJ6Jp3oz' --body '{"cycleIds": ["X3dZLn9V", "WdNuRWvX", "hL93G8xr"], "defaultValue": 0.4789801193148798, "description": "4MUzbDUG", "name": "9bdKm3UT", "tags": ["Zi77olUU", "zAcftmTm", "pLz0jP64"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'nScKSqlO' --login_with_auth "Bearer foo"
social-get-user-stat-items '4ZAs58tu' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'UimEFafq' --body '[{"statCode": "N3ry0w7J"}, {"statCode": "3SF9ViSn"}, {"statCode": "oDYo9Pl1"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '19hYTST7' --body '[{"inc": 0.05309207656848702, "statCode": "txEX1J4Z"}, {"inc": 0.3362836706457252, "statCode": "1xYdEwEs"}, {"inc": 0.44372861862016044, "statCode": "eGH3kQRy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'Bc1GtTi9' --body '[{"inc": 0.9719746959613579, "statCode": "bOYmtMai"}, {"inc": 0.48764318413879737, "statCode": "TfLxuzIb"}, {"inc": 0.901088708912024, "statCode": "igCIp5DD"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'DmTSl2N1' --body '[{"statCode": "GxnuqocL"}, {"statCode": "GXHaXhyB"}, {"statCode": "drgb2Z8p"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'hCyywxw4' 'LPIabjXf' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'ARuiWWnf' 'Q7RyF35v' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'wKka6WpJ' 'VYESfBU5' --body '{"inc": 0.7436949823342835}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'y6siMVR1' 'yqzQfbsX' --body '{"additionalData": {"KHbLZBqA": {}, "akkvOiTu": {}, "rMWYe6gI": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'iI9YVBSf' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'I2Y8CUQI' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'zYa0ALZn' 'obUPFRSB' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.2747067848827264, "statCode": "US1vHmiq", "userId": "i3IL8dO4"}, {"inc": 0.5114294812765308, "statCode": "b9YQMqiK", "userId": "4eic2Q6r"}, {"inc": 0.14565858090706585, "statCode": "WJtZJTAG", "userId": "CF0HtxyR"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.9845590659441495, "statCode": "8z4PtLMV", "userId": "74lUWbgB"}, {"inc": 0.6347983536675126, "statCode": "485dmKcg", "userId": "e2XAiDQt"}, {"inc": 0.16959733327257187, "statCode": "HLywiQGk", "userId": "vbjMUy88"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "AAdCXFW6", "userId": "Dp3biCn4"}, {"statCode": "YO0DOMj8", "userId": "q7iClTEs"}, {"statCode": "ahwjfgjs", "userId": "PR084xU0"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["XAIQCL6k", "GLFYD2qd", "CQieAGqb"], "defaultValue": 0.7015383811262026, "description": "C7d2FrQt", "incrementOnly": true, "maximum": 0.9415432125040066, "minimum": 0.4236268831640799, "name": "dxUDI6J6", "setAsGlobal": true, "setBy": "SERVER", "statCode": "qq3lVkjw", "tags": ["gp2YkUNY", "j2JtqZQB", "Ql7TA5XF"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'pcsw52FF' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'ngTzRGZn' --body '[{"statCode": "v2haatIk"}, {"statCode": "erLsoklj"}, {"statCode": "Ci2mbFNZ"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 '5WkTuJBb' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'Pa5s6ylO' --body '[{"inc": 0.49456746261076057, "statCode": "6XZJ4rNh"}, {"inc": 0.7137727228312452, "statCode": "3y6JpodR"}, {"inc": 0.2944540817170228, "statCode": "j1lcPsV6"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'SOQV8k1p' --body '[{"inc": 0.125709012401794, "statCode": "VkogiR7s"}, {"inc": 0.1311506880753892, "statCode": "YTxrnOqA"}, {"inc": 0.7353258826736297, "statCode": "kHu3ZV0i"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'mkKIj15F' --body '[{"statCode": "DeFiqaoP"}, {"statCode": "VVDXyp2k"}, {"statCode": "0hVubmMM"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'xB7Nfl5M' '07LfvkhI' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'qP8qxbnw' 'KfbIeCfG' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'tOOpVKIu' '5jIYU9V8' --body '{"inc": 0.24224586781758262}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'NfmRtcnR' '3PbkEvGk' --body '{"inc": 0.7083065264703833}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'IeqjGf30' 'n9KaRaRg' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"cbyQ5sBQ": {}, "qDAJRKCI": {}, "aDm2VG4N": {}}, "additionalKey": "5U1pEoHz", "statCode": "LOOmBKD6", "updateStrategy": "MIN", "userId": "b5z3PNe1", "value": 0.7336674264164433}, {"additionalData": {"vbdNbt0M": {}, "8cLrUnSe": {}, "6th42Ahg": {}}, "additionalKey": "6Sfh7t68", "statCode": "UU32oJfE", "updateStrategy": "INCREMENT", "userId": "eDARCWoZ", "value": 0.0498430513872703}, {"additionalData": {"Tug9w0oA": {}, "Jz62hVhV": {}, "2jZA09rO": {}}, "additionalKey": "utHBl0LD", "statCode": "tYw0ho7A", "updateStrategy": "INCREMENT", "userId": "imPDT84l", "value": 0.03316167424741834}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'ZYv6QgLb' '["5Dc4YocD", "UHjyHiyg", "hJfBdlpu"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'HU6ddjq8' --body '[{"additionalData": {"1HCXmWVH": {}, "7XSDZpSA": {}, "kjjt10BJ": {}}, "statCode": "MHiSOpd2", "updateStrategy": "OVERRIDE", "value": 0.11700109976240325}, {"additionalData": {"AZ7O7Ih1": {}, "6ghGiu0G": {}, "SewnUz3o": {}}, "statCode": "qYDRDBAO", "updateStrategy": "OVERRIDE", "value": 0.05586948210211029}, {"additionalData": {"xGBWwaUe": {}, "YcHwzJyS": {}, "WQGNKT3c": {}}, "statCode": "1r8gNwT6", "updateStrategy": "MIN", "value": 0.8820698013839435}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'Jh15wEzh' --body '[{"additionalData": {"QdMC81tV": {}, "4jvzY8f6": {}, "rsREBs9L": {}}, "statCode": "G6uInRYo"}, {"additionalData": {"FugDbEmk": {}, "fueW9F94": {}, "8jbCctbR": {}}, "statCode": "WZJyyU9l"}, {"additionalData": {"cyRv9aNU": {}, "mvcoEQmq": {}, "lsPq2FHj": {}}, "statCode": "CDH8VkZJ"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '3UXMVubM' 'v2PRZl1o' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'xSCOZaxb' 'WAQkRZQq' --body '{"additionalData": {"hruWyEEX": {}, "jBPlZyBy": {}, "TcMJ9WUK": {}}, "updateStrategy": "MAX", "value": 0.785182308460248}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"K8UZAIGb": {}, "nvrYGlWe": {}, "fnsFhVym": {}}, "additionalKey": "TAtACzIP", "statCode": "FpxsY7aD", "updateStrategy": "INCREMENT", "userId": "JEPMMStv", "value": 0.08703573971768652}, {"additionalData": {"KMUGAmpc": {}, "vSskolm6": {}, "DglrtB5X": {}}, "additionalKey": "MeEPPYhj", "statCode": "mP7rMPcg", "updateStrategy": "MIN", "userId": "Cj2SvOAq", "value": 0.31233728186690213}, {"additionalData": {"VXYtEJQv": {}, "2yeKpS2y": {}, "sv6djbdD": {}}, "additionalKey": "t8kBaQGU", "statCode": "eeCUD1m5", "updateStrategy": "INCREMENT", "userId": "XtfUuLVU", "value": 0.6990472722066764}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'ydu4VsTx' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'v3wkhZCs' --body '[{"additionalData": {"5YMPDNDN": {}, "5l8zIW27": {}, "T1uuU27i": {}}, "statCode": "ZKF0pKXV", "updateStrategy": "MAX", "value": 0.8864144757496232}, {"additionalData": {"g68g51S6": {}, "ZjzRmxWx": {}, "iIM4e66x": {}}, "statCode": "4SYVRqd8", "updateStrategy": "MIN", "value": 0.46853793149557266}, {"additionalData": {"k0D8aWtg": {}, "0elE1Fwe": {}, "rjDLnzkr": {}}, "statCode": "CcAKBBp6", "updateStrategy": "MIN", "value": 0.22946664438887798}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '2YspVy1I' 'w5Wm3n7A' --body '{"additionalData": {"r2NqdQtN": {}, "JYpiXCn2": {}, "SBjCUxty": {}}, "updateStrategy": "OVERRIDE", "value": 0.8990532024868194}' --login_with_auth "Bearer foo"
exit()
END

EXIT_CODE=$?

else

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..86"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 25, "maxSlots": 27}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
$PYTHON -m $MODULE 'social-delete-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
$PYTHON -m $MODULE 'social-get-user-slot-config' \
    '9Y9FzGzR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'kSR7Jit9' \
    --body '{"maxSlotSize": 31, "maxSlots": 92}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'Iu6AEn4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'hh5StaUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'l4eCu3xT' \
    '92nkoVAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'ZpRt6wI0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    '0DTPHlbN' \
    'JNVNjvxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["PSMt3MnY", "ZXhehT9n", "2WmJnzkm"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'ynkDZtdC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'UiL4NsKz' \
    --body '{"achievements": ["C2SssTS2", "rlbV9MEF", "SpaY92Ne"], "attributes": {"bK9Uq9mN": "BbzZfLmO", "3jh8T0Xe": "zbLraDoV", "8PBHbDpg": "dTx3Gw0q"}, "avatarUrl": "YJeRGl3F", "inventories": ["8iKqMjf1", "gjsI5F4k", "LLWIuoIt"], "label": "QXFUY9sJ", "profileName": "TfJBNa6W", "statistics": ["qopLEdYG", "9NX6fIqu", "Ktfc9lYL"], "tags": ["J02MJBDO", "exPUHbFj", "2KUQW19G"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'bEdnzqMH' \
    'Mf6yu9uv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'lgODx0eI' \
    'umsCRwLI' \
    --body '{"achievements": ["pGfM25HS", "Byp7NgEE", "VssuCesA"], "attributes": {"AIkbKHpx": "Oop976tu", "94szv7em": "TBtZBRxS", "4ruqgdVi": "ondUC1Hg"}, "avatarUrl": "4zSwz6uT", "inventories": ["POKxTSIC", "d4svwUaw", "5el86upy"], "label": "oJGpDTF5", "profileName": "2J9bkqkZ", "statistics": ["RN6752PA", "v9zZg7Rr", "gsKjs2Tj"], "tags": ["5kRzoBQv", "RW3zazc4", "RkbDm2Zw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'xIhi1wep' \
    'bYWev1Fp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'ygY40Kox' \
    'sdbuW813' \
    '7c0ICRJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'bC4m8v8i' \
    'JxxuCQlA' \
    'OjV8hHsu' \
    --body '{"name": "ALr1EKb7", "value": "E5vW9FJh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '9uQzB0mq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'M5CkmQ4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'tAWiVgzl' \
    'Twxej6SL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'ixbO1s1d' \
    'I3RPIhY4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'WHW0E0ph' \
    'CHaC0s7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    '9NzZ7N6P' \
    'Ibi4GN5n' \
    --body '{"customAttribute": "fIPnJEOf", "label": "Kf2VqhM0", "tags": ["Vt85BH3H", "4sd2Slex", "Sj96BeKB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code' \
    'zVSn521b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
$PYTHON -m $MODULE 'social-get-stat-cycles' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
$PYTHON -m $MODULE 'social-create-stat-cycle' \
    --body '{"cycleType": "DAILY", "description": "60H9kiK0", "end": "1993-12-19T00:00:00Z", "name": "4lESoZQt", "resetDate": 41, "resetDay": 99, "resetMonth": 46, "resetTime": "Bi0QA6Mq", "seasonPeriod": 6, "start": "1983-11-15T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'OXheC5hO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'zmqKgh3V' \
    --body '{"cycleType": "ANNUALLY", "description": "RPnLiJ3F", "end": "1994-08-12T00:00:00Z", "name": "12VosUR2", "resetDate": 95, "resetDay": 66, "resetMonth": 83, "resetTime": "WtAJshJ9", "seasonPeriod": 83, "start": "1979-07-06T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    '65bHsSbx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'dHjbfAGa' \
    --body '{"statCodes": ["78Uc7pkT", "LYSrt0jE", "BYPD2dMQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'oNChQJLP' \
    'y8jJpTOq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.6653798377801391, "statCode": "gjKYJ4aT", "userId": "bbPhd9Co"}, {"inc": 0.06817607025482397, "statCode": "6kE7zYdi", "userId": "m1GAjK7s"}, {"inc": 0.507136351002083, "statCode": "OUgt84QY", "userId": "HY1DLLBh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.19535144868550136, "statCode": "R0MEJMJE", "userId": "ZvHo2EXJ"}, {"inc": 0.2816093126936833, "statCode": "ONVoSRpS", "userId": "lvhX66Uv"}, {"inc": 0.13557103231844259, "statCode": "xGO3Zxzf", "userId": "1vSsR3Lj"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'J1nV2Y1v' \
    '["29NcO7vr", "rLhsdTWE", "GE7XKypM"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "59UNYU5G", "userId": "jmifCE0O"}, {"statCode": "swRuiG5P", "userId": "UvGJVJSp"}, {"statCode": "pu4eWiQh", "userId": "flD7zGub"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"cycleIds": ["gPOfIIVg", "NQw1gx6P", "OHQJr0tG"], "defaultValue": 0.11878667503513607, "description": "iWcNBqoe", "incrementOnly": true, "maximum": 0.23846938581232024, "minimum": 0.34853333283963284, "name": "sx0EYyNA", "setAsGlobal": true, "setBy": "SERVER", "statCode": "xdw6N19d", "tags": ["UZY1XpbY", "qFWK7Da6", "Yj8f6viX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'InHjh4YQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '2w4kqE8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'uFbUtmPO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'jjRovEeD' \
    --body '{"cycleIds": ["KIWEIxn4", "NRmxg7BJ", "Z7bOaxcu"], "defaultValue": 0.962525654678381, "description": "7gPYSXaA", "name": "sXMvuN7N", "tags": ["hWMwnJ6U", "xTrLk64Z", "tdOUy84d"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'S81Oz5fJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '2SNUBJBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatItems' test.out

#- 49 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '7d5QCJEp' \
    --body '[{"statCode": "GRYC0om2"}, {"statCode": "3IgAGXWH"}, {"statCode": "BrfhrCd4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'BulkCreateUserStatItems' test.out

#- 50 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '9HKWKNF3' \
    --body '[{"inc": 0.9715037596518321, "statCode": "2229t3Nz"}, {"inc": 0.7849601333239596, "statCode": "kvXbYTRT"}, {"inc": 0.3069791591019838, "statCode": "Kv7SOvxv"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkIncUserStatItem1' test.out

#- 51 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'ETQehfc2' \
    --body '[{"inc": 0.03843585234835922, "statCode": "fOQ2qKhc"}, {"inc": 0.6343454230397646, "statCode": "dpMFDG9Q"}, {"inc": 0.714342759952026, "statCode": "rKiJdpv3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItemValue1' test.out

#- 52 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'Ro33MA6f' \
    --body '[{"statCode": "7l7alkXd"}, {"statCode": "gzU1AXEe"}, {"statCode": "Kl98eboD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem1' test.out

#- 53 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'vMqCFzk9' \
    'annnJbN7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'CreateUserStatItem' test.out

#- 54 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'jnDXl4W9' \
    'Dqn25U52' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserStatItems' test.out

#- 55 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'OLOmIJ9G' \
    'uIkY3AoQ' \
    --body '{"inc": 0.29049401622734217}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'IncUserStatItemValue' test.out

#- 56 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '6WjKYspG' \
    'uLUnZkpg' \
    --body '{"additionalData": {"5fGwTQ7r": {}, "ODOl0ZKE": {}, "taiMtpTZ": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ResetUserStatItemValue' test.out

#- 57 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGlobalStatItems1' test.out

#- 58 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    '9GzIC9XV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItemByStatCode1' test.out

#- 59 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetStatCycles1' test.out

#- 60 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'SIDtgcoj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycle1' test.out

#- 61 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'GklaFu6e' \
    'DyEMoLSF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'BulkFetchStatItems1' test.out

#- 62 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.15017467447322574, "statCode": "W9p1E8Bh", "userId": "3xEZgEUy"}, {"inc": 0.27439067607440726, "statCode": "hfIltDDo", "userId": "vQgLNBEQ"}, {"inc": 0.5494023791589181, "statCode": "qour0QUh", "userId": "Gj0Huhni"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicBulkIncUserStatItem' test.out

#- 63 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.994338713649502, "statCode": "SWfngES5", "userId": "jdV646gd"}, {"inc": 0.15583772045992017, "statCode": "uuqILgNa", "userId": "LtO1Sd65"}, {"inc": 0.8207337978190621, "statCode": "UWFHS2Tf", "userId": "7x4EQtJm"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItemValue' test.out

#- 64 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "G6ktG4rm", "userId": "z3ht8FZ0"}, {"statCode": "pKRrdKG7", "userId": "SD8aPcKf"}, {"statCode": "1WTXrllO", "userId": "VLt7KB01"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'BulkResetUserStatItem2' test.out

#- 65 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["aNm5wfsv", "69QFZ91V", "WC5OOkyp"], "defaultValue": 0.40366108073115126, "description": "txBSm1Kk", "incrementOnly": true, "maximum": 0.9786273773492516, "minimum": 0.4792410537800945, "name": "GRc3SZ4v", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "3cVUrn7x", "tags": ["ZOd7DDV2", "vReAAyP1", "uQbew2bS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'CreateStat1' test.out

#- 66 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'PNHzO2fT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryUserStatItems' test.out

#- 67 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'An34HK3R' \
    --body '[{"statCode": "J5Fge4FZ"}, {"statCode": "rgnao7LE"}, {"statCode": "p8gXqhBz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkCreateUserStatItems' test.out

#- 68 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'bVmT8zcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems1' test.out

#- 69 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'acTpf7EK' \
    --body '[{"inc": 0.6441544068937637, "statCode": "X3W02jpv"}, {"inc": 0.6823169763868439, "statCode": "z4L5zNcK"}, {"inc": 0.6958734655039742, "statCode": "2kRdgPxT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem1' test.out

#- 70 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'YLCKIBoH' \
    --body '[{"inc": 0.7757146476686259, "statCode": "ctg5lHVs"}, {"inc": 0.7475212937784738, "statCode": "rMce60Vb"}, {"inc": 0.18316582249955216, "statCode": "FKVlOdEq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkIncUserStatItemValue2' test.out

#- 71 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'TLeh2UoU' \
    --body '[{"statCode": "jCq6XDYT"}, {"statCode": "VC9PeWvO"}, {"statCode": "kCe3ToGH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem3' test.out

#- 72 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'L8BHtGI8' \
    'fWZhgvQh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicCreateUserStatItem' test.out

#- 73 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'OsJnps0q' \
    'Uv8iC70a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems1' test.out

#- 74 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'FhV7kTUo' \
    '92WnWM5j' \
    --body '{"inc": 0.368229650488043}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicIncUserStatItem' test.out

#- 75 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'uxe0f2vY' \
    'loJnWMAg' \
    --body '{"inc": 0.22532609010893856}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicIncUserStatItemValue' test.out

#- 76 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'defWYeLJ' \
    'uzYoVYva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'ResetUserStatItemValue1' test.out

#- 77 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"BQkAuLNS": {}, "dC6lVusx": {}, "EgfTiNZn": {}}, "additionalKey": "mYhbw4mK", "statCode": "YklUCq3K", "updateStrategy": "OVERRIDE", "userId": "rFMDlck3", "value": 0.48291041184059535}, {"additionalData": {"nh93xxrE": {}, "nMejl5zm": {}, "tE3Unu1H": {}}, "additionalKey": "a8Ekny6P", "statCode": "Si1xl42p", "updateStrategy": "MAX", "userId": "pBv8zNEf", "value": 0.18971319909396045}, {"additionalData": {"hJeu3wES": {}, "PVVP8TMf": {}, "oWlO9sZ2": {}}, "additionalKey": "GCg79hg7", "statCode": "01c8gnNl", "updateStrategy": "INCREMENT", "userId": "Acx8qTHf", "value": 0.45447525474993977}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItemV2' test.out

#- 78 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '5Wdyzhy5' \
    '["RyQvAmTr", "o3MqI91P", "0NYWethG"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkFetchOrDefaultStatItems1' test.out

#- 79 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'iwBWi18p' \
    --body '[{"additionalData": {"mK0rSluh": {}, "VC6jsZBj": {}, "9BIRtPRI": {}}, "statCode": "9kTbi8ZD", "updateStrategy": "OVERRIDE", "value": 0.49065252506702695}, {"additionalData": {"d4LpXyWR": {}, "vxVY8Eif": {}, "bQqgWH1T": {}}, "statCode": "Z9RaPnGm", "updateStrategy": "MAX", "value": 0.6747829299558828}, {"additionalData": {"EbCdqsLX": {}, "WwIGOYBr": {}, "QK3KCGka": {}}, "statCode": "11izLWNj", "updateStrategy": "MAX", "value": 0.5132665641808916}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItem' test.out

#- 80 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'GnEmCsOA' \
    --body '[{"additionalData": {"Zz2haZmH": {}, "c8qBeIAA": {}, "g5t6HGf9": {}}, "statCode": "cfEEgZwV"}, {"additionalData": {"KuqtpFqn": {}, "fp0TUiSG": {}, "Pcw9eja0": {}}, "statCode": "h0gBNVjo"}, {"additionalData": {"h2uT12K2": {}, "rRtotJH2": {}, "CZJC4s8l": {}}, "statCode": "Egi9bvk1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItemValues' test.out

#- 81 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'T6YmCgai' \
    'TbxK6QAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems2' test.out

#- 82 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'tCwCnr0a' \
    'K5amd0FQ' \
    --body '{"additionalData": {"3CYLKyV3": {}, "4gU8Fkzs": {}, "C1yRbNNM": {}}, "updateStrategy": "MIN", "value": 0.7931312253146744}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserStatItemValue' test.out

#- 83 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"WFWB6JIG": {}, "8ji09bFH": {}, "i8DmNYhH": {}}, "additionalKey": "Q1OT82BY", "statCode": "83AKlUeG", "updateStrategy": "OVERRIDE", "userId": "yRpKsfeZ", "value": 0.2397999973143502}, {"additionalData": {"UpRsME7K": {}, "Fbmxzqm3": {}, "PmUpWHfR": {}}, "additionalKey": "oTIyWbNZ", "statCode": "ebH3ndka", "updateStrategy": "MIN", "userId": "2dxhyiDi", "value": 0.6781025869493654}, {"additionalData": {"ahgwP6OF": {}, "eUQ7dJI6": {}, "4jxIwkQe": {}}, "additionalKey": "q4ve5wPx", "statCode": "M9O1JRxG", "updateStrategy": "MIN", "userId": "evKXstl2", "value": 0.962014288186029}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkUpdateUserStatItem1' test.out

#- 84 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'aJ5kHZKr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryUserStatItems2' test.out

#- 85 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'qVlISGtn' \
    --body '[{"additionalData": {"1QZ0mDEQ": {}, "Z5HkOElb": {}, "FwYNo9oe": {}}, "statCode": "O49i7nbF", "updateStrategy": "MAX", "value": 0.034266613874092466}, {"additionalData": {"XFi7KCec": {}, "5EXMVuQq": {}, "PhwX9b3D": {}}, "statCode": "1GjPd22U", "updateStrategy": "MAX", "value": 0.7859559152005479}, {"additionalData": {"6cB2EEkm": {}, "t6Y8qjHA": {}, "2pQZUH4J": {}}, "statCode": "Un3RzVYE", "updateStrategy": "MIN", "value": 0.04391195336325482}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem2' test.out

#- 86 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'UMgE0QqZ' \
    'FNSf2zVO' \
    --body '{"additionalData": {"caYPukMQ": {}, "m5OFHIVN": {}, "iLTk4LAN": {}}, "updateStrategy": "MAX", "value": 0.7602883295558911}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
