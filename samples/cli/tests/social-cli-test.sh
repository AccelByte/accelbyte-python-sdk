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
social-update-namespace-slot-config --body '{"maxSlotSize": 91, "maxSlots": 84}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'RvQp0NJt' --login_with_auth "Bearer foo"
social-update-user-slot-config 'iWEaE65K' --body '{"maxSlotSize": 12, "maxSlots": 93}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'rW7L2dN1' --login_with_auth "Bearer foo"
social-get-user-profiles 'VwfnvTic' --login_with_auth "Bearer foo"
social-get-profile 'yIVCE5PX' '8bgR7WlW' --login_with_auth "Bearer foo"
social-get-user-namespace-slots '4XC7yNEo' --login_with_auth "Bearer foo"
social-get-slot-data 'OIIxdWVY' 'trhg3Y9b' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["sZGlY32x", "abkRBbBX", "inEexIC6"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'pdcbmVLq' --login_with_auth "Bearer foo"
social-public-create-profile '9yjSmzNU' --body '{"achievements": ["1vVfgf7t", "brTPr2vN", "Dsp7qEa9"], "attributes": {"lrHWXXz4": "sJPRCHQr", "oYVLU5it": "63LiBN7T", "rXzQWXBP": "Slu17w7F"}, "avatarUrl": "SGYI6sgg", "inventories": ["Y1ss3X7W", "8BOFRD53", "pqAVmbeX"], "label": "o6Xgif5F", "profileName": "okStSXNS", "statistics": ["2VLRoa8q", "KnPn7Wnm", "HXhnUvlR"], "tags": ["8bbsRlge", "lV2ZS6um", "gKk54qMB"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'pswEtdT1' 'gKxZm8um' --login_with_auth "Bearer foo"
social-public-update-profile 'IlxNM5VW' 'rmFc2A9t' --body '{"achievements": ["wuZaaaqy", "8HhBE991", "iDD2AUoy"], "attributes": {"BwKjqj99": "H4ZBomIn", "wZwBLcRW": "lqlGLsjf", "EqBu6bRm": "ZLHPxeFZ"}, "avatarUrl": "qWymkfoz", "inventories": ["LcxlSjCf", "nxDtUh13", "S1P3FuTG"], "label": "9faqOGW6", "profileName": "ycXpM5JS", "statistics": ["LYIrAZGL", "xUiIff86", "BYgKQkQm"], "tags": ["zcF8wTKG", "d4RB287V", "Or4iTM4g"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'XFiuU0kj' 'p2YmNwdI' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'IJBsQCdI' '0jmeZya4' 'WlSlC6bw' --login_with_auth "Bearer foo"
social-public-update-attribute 'wwfioh3j' 'CIEx0u9I' 'MKyeGWTA' --body '{"name": "pDwMNLGI", "value": "dJR85eFJ"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'METaeMic' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot '57ZDnF6g' --login_with_auth "Bearer foo"
social-public-get-slot-data 'p5NNH3dp' 'NZ9x7QVq' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'LGr0Z6gD' 'GVXzzDDw' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'LgXenz76' '5BcWA4eT' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'eqVyFTZg' 'zBSx7MfZ' --body '{"customAttribute": "m71cfjww", "label": "NfQGxNlV", "tags": ["dSerbyMI", "C2eK1HLU", "JRz7gfmF"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'qi8iIHUD' 'uLQXanXZ' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.7944393697574275, "statCode": "wpnSs8Ow", "userId": "sjLPhT1i"}, {"inc": 0.47229036784095024, "statCode": "LKRh0QxM", "userId": "sZobRvd9"}, {"inc": 0.45414033168767676, "statCode": "2ZXYKZug", "userId": "5aW4YsK2"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.6687086417470581, "statCode": "uFNSqedB", "userId": "1HjfxYlC"}, {"inc": 0.3161373843597356, "statCode": "5YjmMRGc", "userId": "ARZf2fOW"}, {"inc": 0.6001562788756445, "statCode": "yf1UHdTR", "userId": "7JQ64sDg"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'ROASAOqy' '["9SZWPdoJ", "J0wcxUP5", "73EqLIdT"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "YW9ph4Ua", "userId": "FwOd6RJf"}, {"statCode": "sR0lt7YD", "userId": "WzcFdWUu"}, {"statCode": "aE9SwLja", "userId": "GlLFgn1W"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.005553634560361176, "description": "lcpQ38RI", "incrementOnly": true, "maximum": 0.3332049911719217, "minimum": 0.6695145388441911, "name": "8v6sceGm", "setAsGlobal": true, "setBy": "SERVER", "statCode": "6CgtzSz1", "tags": ["piFPGzFn", "97AW4mdn", "eCGeAhCx"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats '5OYPrEJH' --login_with_auth "Bearer foo"
social-get-stat '2dzoCiGI' --login_with_auth "Bearer foo"
social-delete-stat 'SlFCPCWe' --login_with_auth "Bearer foo"
social-update-stat '5h0Fgeou' --body '{"defaultValue": 0.059138092859114755, "description": "ILbBvupU", "name": "qeoP2GRW", "tags": ["sES5faM4", "i01hzzIw", "XMlIAzkW"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat '7ZlGkad7' --login_with_auth "Bearer foo"
social-get-user-stat-items 'p0NREyba' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'se3lVIeB' --body '[{"statCode": "EnxrWa6A"}, {"statCode": "kIJpMz9y"}, {"statCode": "1eKY61i7"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'C6FkOmAJ' --body '[{"inc": 0.579751881106859, "statCode": "xqGpQ8oT"}, {"inc": 0.5721768386141085, "statCode": "9n4eZtEL"}, {"inc": 0.5847072844398351, "statCode": "0asIxiD0"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'k68vcAmK' --body '[{"inc": 0.4488021369778804, "statCode": "7iiaV6jm"}, {"inc": 0.07534198137886161, "statCode": "qtPdDzKA"}, {"inc": 0.6215433106029817, "statCode": "0ixqusnw"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'e81W0Tbk' --body '[{"statCode": "dMyRPg3I"}, {"statCode": "7TrujDLV"}, {"statCode": "kebDkWXm"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'LsAtRJDV' '966NiOhN' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'S48uwAtm' 'KpDmYZWX' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'e0hJJMkT' 'DEzbL8Ms' --body '{"inc": 0.5593499839038057}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'j0eUSWXf' 'VugS3nOe' --body '{"additionalData": {"ULrq1nUG": {}, "lIbBAE5A": {}, "JeGjkZCl": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'GHeLvrXB' 'QhQ7PbIm' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.6205333865804531, "statCode": "ZK82P3pq", "userId": "5lEnMhbm"}, {"inc": 0.6305173234893755, "statCode": "G69mUZ8o", "userId": "lGZ8cO0t"}, {"inc": 0.28003331709525936, "statCode": "RtGw533q", "userId": "wHkSwkTM"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.061919727262103486, "statCode": "1UCdj2GC", "userId": "mWR0Q9Jw"}, {"inc": 0.8705723690279856, "statCode": "T4NTOWNm", "userId": "XcUoM1FP"}, {"inc": 0.8467951644555065, "statCode": "9yjlvWuS", "userId": "j0PkinFq"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "acD5Gnmg", "userId": "ZQmtZecm"}, {"statCode": "MskupRej", "userId": "Mrw3NpYL"}, {"statCode": "ndvAlH4u", "userId": "0g1ewxe8"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.26714212054066266, "description": "fVdTr23g", "incrementOnly": true, "maximum": 0.16028798840558045, "minimum": 0.699074074461763, "name": "yS8vcyP2", "setAsGlobal": true, "setBy": "SERVER", "statCode": "iJECNcpm", "tags": ["bjDywRxB", "iHF2YK68", "VLYou2JO"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'm1lZsV9q' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '1gpzFklb' --body '[{"statCode": "qxPuwuUo"}, {"statCode": "jM8illUq"}, {"statCode": "MWd08PbG"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'ZZLN0Eqo' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'eGedcvKM' --body '[{"inc": 0.6533642845799608, "statCode": "2vXC9w2l"}, {"inc": 0.7771990163505559, "statCode": "I2WBipRM"}, {"inc": 0.1677174253406597, "statCode": "aWkNiE6j"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'mjsPhzhD' --body '[{"inc": 0.21182873052437257, "statCode": "DBg9hTtO"}, {"inc": 0.40402464167679564, "statCode": "0krK0T1P"}, {"inc": 0.7386405541422875, "statCode": "QmMHBZg2"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'uSDvS7sC' --body '[{"statCode": "f0H1o3j0"}, {"statCode": "mttKXYHz"}, {"statCode": "GhdbBBY1"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'b4aQYgVM' '6NeALJtt' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'S5EcqDGz' 'OtB95Kzj' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '18VHGoZt' 'xeBRoMFj' --body '{"inc": 0.5079421872665628}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'KFZiJz1k' 'mYsJ11Pa' --body '{"inc": 0.586860988516499}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'SKvpPq26' 'lN6ANUL9' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"X91Xe5yq": {}, "Abmdppoa": {}, "sAYXQHre": {}}, "additionalKey": "ZefFLm7e", "statCode": "Z1wZsSQb", "updateStrategy": "INCREMENT", "userId": "VLeiVali", "value": 0.5368380429927877}, {"additionalData": {"uIw1U4PV": {}, "yjOJhgz6": {}, "P4GFlnhy": {}}, "additionalKey": "medKnzNg", "statCode": "VQJbC2aG", "updateStrategy": "MAX", "userId": "D6xtAHdt", "value": 0.09621277472018952}, {"additionalData": {"W6omCWJF": {}, "6kCOzzvB": {}, "BI5AaSqo": {}}, "additionalKey": "IkquxSeY", "statCode": "Q5tpS5io", "updateStrategy": "MAX", "userId": "4Z0vvBjJ", "value": 0.5615711814488346}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'dkrCwvcY' '["uTlUukM0", "w6ADm0x1", "rr7sQDlQ"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'rqMAsFHd' --body '[{"additionalData": {"vaeIIgs7": {}, "4NqFM0WE": {}, "s4qrPMdd": {}}, "statCode": "oEUg2WIK", "updateStrategy": "MIN", "value": 0.07280464965019373}, {"additionalData": {"WKdPdH7t": {}, "pfAHnGqB": {}, "cZHFmGA3": {}}, "statCode": "04ZndlAf", "updateStrategy": "INCREMENT", "value": 0.8494168566756024}, {"additionalData": {"m51Kciyd": {}, "zQa1U1DT": {}, "4g94AlYH": {}}, "statCode": "AS6ag6TL", "updateStrategy": "MAX", "value": 0.06097279619956697}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'ZWREDFRD' --body '[{"additionalData": {"w9VT4cem": {}, "QA1crF85": {}, "ppsED1rK": {}}, "statCode": "tQIkDgkT"}, {"additionalData": {"6S8SyX8v": {}, "g6nBIUAT": {}, "hziPw0jt": {}}, "statCode": "5kt3tBuD"}, {"additionalData": {"ELA37pf0": {}, "XcNe9TTh": {}, "6lYzdKCV": {}}, "statCode": "fPKvY3Wb"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '6AB7MMZU' 'UoL5VyL1' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'J2Uy5bSk' 'iPjTlkZJ' --body '{"additionalData": {"aCcCavAb": {}, "w58d1UP3": {}, "Wt4gannR": {}}, "updateStrategy": "INCREMENT", "value": 0.9427596481403616}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"Boi2OVso": {}, "IONPzf5f": {}, "cb1AZwfv": {}}, "additionalKey": "Rbi3z6pI", "statCode": "lE1ZgWgd", "updateStrategy": "MAX", "userId": "aosLw36k", "value": 0.9686268053952223}, {"additionalData": {"kCYSON8a": {}, "jdGPuvRw": {}, "ziSf58Iy": {}}, "additionalKey": "baaUDKjf", "statCode": "HaVO1APP", "updateStrategy": "INCREMENT", "userId": "GzhkyiIx", "value": 0.9427158305484231}, {"additionalData": {"r5gu55Ex": {}, "CsPTXmSt": {}, "4EmjU01b": {}}, "additionalKey": "emVGf0HO", "statCode": "658viqz1", "updateStrategy": "MAX", "userId": "jQ19F2iL", "value": 0.3189530859605406}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'K7XJNYVN' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'BbKns1PU' --body '[{"additionalData": {"1NsbhCUy": {}, "lwUYpNdb": {}, "NINUvKfr": {}}, "statCode": "SwwDYHOP", "updateStrategy": "MIN", "value": 0.6860284061812699}, {"additionalData": {"le56EUYq": {}, "teL7D8Qx": {}, "5flqrwcT": {}}, "statCode": "Wm3TrAPg", "updateStrategy": "MIN", "value": 0.34264555125015217}, {"additionalData": {"j20nmKQq": {}, "PWbYXuYK": {}, "R5R537Tp": {}}, "statCode": "TdzmBQq8", "updateStrategy": "MIN", "value": 0.2061535763823492}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'VMoDZA8Q' 'gWdTVcQw' --body '{"additionalData": {"76zjmagP": {}, "Un4ZazyQ": {}, "fjuLz9gu": {}}, "updateStrategy": "MIN", "value": 0.041737459623620965}' --login_with_auth "Bearer foo"
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
echo "1..75"

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
    --body '{"maxSlotSize": 96, "maxSlots": 19}' \
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
    'na2AonvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'ji5YoHaG' \
    --body '{"maxSlotSize": 35, "maxSlots": 43}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'dpGXGCYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'b74GlJfN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'm4FzoeOO' \
    'OXKO351m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'WpvXUbS1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'Bqkm7DML' \
    'k737odSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["JBBXECcf", "weL9UV9r", "vDbKlON8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'YPzUTSew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    '2BxEOD4l' \
    --body '{"achievements": ["38x8Pn6W", "bysw7pvG", "t2MC7DwS"], "attributes": {"tfNtIObx": "pEGm9NR1", "3AjDT2cS": "XgnfW4Sj", "RhjJ8eyQ": "iR9rtYFu"}, "avatarUrl": "kGU4cPUI", "inventories": ["ujKKH87H", "ZmXQolmF", "KspmLl35"], "label": "rcX0dGrJ", "profileName": "UGJ01qWM", "statistics": ["VlX2B9k3", "KbHHiolv", "vkDxDYqf"], "tags": ["2ypOJqrk", "LTBSlQWX", "zv3bgHZM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'jfqy8pKh' \
    'i51eFqUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    '0EAMjuBD' \
    'iykkPD5e' \
    --body '{"achievements": ["91nSP4yi", "F1WijUGS", "VcwNSR2n"], "attributes": {"6Q4Utb9i": "UcmM7rld", "Ay7Rk49F": "eO82R4Wu", "2FdmdcAY": "IhuCVWqQ"}, "avatarUrl": "0xPjiduw", "inventories": ["AQmzfGpO", "ykro49r5", "w5g2bUeB"], "label": "cFboPYbH", "profileName": "s1GDAXLO", "statistics": ["UIxO035R", "L3qGQ933", "luIWIaAU"], "tags": ["zDjA6vSq", "zwnRqntk", "dMVE85Y3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'lL5wXFVM' \
    'Es7WL6yG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'SGibEaKl' \
    '5AgulUNo' \
    'xlyRBSsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'VtcFzRXU' \
    'JbcnkASn' \
    '9VYDCdtC' \
    --body '{"name": "Ko5FR5GC", "value": "kmQ8wQun"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '9SGkr6jV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    '5RoI4l7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'fIZLBXaK' \
    'PsnPiGcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'EUlfBmo5' \
    'ZEsHhsAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    '5uXMvbT6' \
    '5XNBzdt0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    '4PNiGPUE' \
    'uucATYIU' \
    --body '{"customAttribute": "zzFruBBB", "label": "VrDganJT", "tags": ["262BVFSP", "snt681ZS", "LBoMxn5G"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'AfxN8oEW' \
    'EGiY5o56' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkFetchStatItems' test.out

#- 28 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.8507173822714875, "statCode": "XDPoipwm", "userId": "UKt82oHY"}, {"inc": 0.0010575695048011813, "statCode": "o1flVRH0", "userId": "VCfRdk4o"}, {"inc": 0.9451874432332332, "statCode": "OlnAU8e2", "userId": "4vMGVrfV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkIncUserStatItem' test.out

#- 29 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.9769705304269389, "statCode": "UhlGTsNJ", "userId": "QkuofGYu"}, {"inc": 0.3291101470433947, "statCode": "qJXC8oXy", "userId": "HxKAJryr"}, {"inc": 0.8574279911284836, "statCode": "ZGbFvcMo", "userId": "PSwS4MqK"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItemValue' test.out

#- 30 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'OzDHtq0x' \
    '["kjUge9E2", "Yb3FCHPx", "XSrlVgNd"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkFetchOrDefaultStatItems' test.out

#- 31 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "q1t4AsuX", "userId": "xJi9fjbY"}, {"statCode": "PCOeMm2M", "userId": "2wbpAMoV"}, {"statCode": "uBPb7nCv", "userId": "JxVsUQmi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkResetUserStatItem' test.out

#- 32 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetStats' test.out

#- 33 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"defaultValue": 0.8304158242651088, "description": "5bJfqLdJ", "incrementOnly": false, "maximum": 0.5471210348237966, "minimum": 0.9615064281292112, "name": "fzck6UVc", "setAsGlobal": false, "setBy": "SERVER", "statCode": "2omrgGla", "tags": ["2zfAIsX9", "7BUewDp8", "n9IrnYwp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateStat' test.out

#- 34 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'ExportStats' test.out

#- 35 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ImportStats' test.out

#- 36 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    '5PvKDtSk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'QueryStats' test.out

#- 37 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '68F8GHkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetStat' test.out

#- 38 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'fi9D24ge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteStat' test.out

#- 39 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'suYxhBKA' \
    --body '{"defaultValue": 0.4196511912818479, "description": "riuT4hdq", "name": "BhlpayMj", "tags": ["YNGdz46E", "snzXLeO3", "8WqxfSNy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateStat' test.out

#- 40 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'JsPcAFtx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteTiedStat' test.out

#- 41 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'UYfZ1D6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserStatItems' test.out

#- 42 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'u3CBGeIU' \
    --body '[{"statCode": "Bq4ErdLI"}, {"statCode": "1rrf4OSZ"}, {"statCode": "zxvt2msC"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkCreateUserStatItems' test.out

#- 43 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'mlb5Pvsf' \
    --body '[{"inc": 0.4612504785128887, "statCode": "Y4qlM3aR"}, {"inc": 0.21490914000422157, "statCode": "SNKJrSMr"}, {"inc": 0.2659521639429996, "statCode": "yfGCHdYq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkIncUserStatItem1' test.out

#- 44 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'edPOlnqJ' \
    --body '[{"inc": 0.0678597445845267, "statCode": "tOVrKQLo"}, {"inc": 0.6579546914685156, "statCode": "jpNTqnQJ"}, {"inc": 0.24581299980683013, "statCode": "ZP3gRUFr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItemValue1' test.out

#- 45 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'pwNWXfZa' \
    --body '[{"statCode": "Rm5nuZ6H"}, {"statCode": "zgeL5XRF"}, {"statCode": "zCIyj9Er"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkResetUserStatItem1' test.out

#- 46 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'fdVt5zcL' \
    'rFVqGcyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CreateUserStatItem' test.out

#- 47 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'yCHn7vya' \
    'jzxBycfe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteUserStatItems' test.out

#- 48 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '8Sd5eWqT' \
    'Ly62AL5x' \
    --body '{"inc": 0.22264735148255765}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'IncUserStatItemValue' test.out

#- 49 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'KdGNH50B' \
    'xljKPtHK' \
    --body '{"additionalData": {"AgzrXm0p": {}, "LqPlaMZG": {}, "dL3Loa8N": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'ResetUserStatItemValue' test.out

#- 50 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'SvKZhHAn' \
    'zXiSq9Y5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkFetchStatItems1' test.out

#- 51 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.751481493205416, "statCode": "KaxrAIEn", "userId": "Kzc3AUQa"}, {"inc": 0.49274689699710594, "statCode": "PX5I9K59", "userId": "UsvQyui7"}, {"inc": 0.027341164492798442, "statCode": "gqlrCEzK", "userId": "qCprtLOf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicBulkIncUserStatItem' test.out

#- 52 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.09757306167786117, "statCode": "92sJsqfV", "userId": "dkphtJp0"}, {"inc": 0.7350930811927284, "statCode": "3WPh3ojN", "userId": "iDYmkjbr"}, {"inc": 0.010661170975874934, "statCode": "3FPfSaSO", "userId": "yxe0AbXk"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicBulkIncUserStatItemValue' test.out

#- 53 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "y0y1klta", "userId": "B3LOcYh2"}, {"statCode": "g5zmssEg", "userId": "eEOMQpqP"}, {"statCode": "bLwMQxrE", "userId": "Z5mbE3J6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem2' test.out

#- 54 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.293809582439611, "description": "NXUWMLnm", "incrementOnly": false, "maximum": 0.581515167644674, "minimum": 0.6885872597771368, "name": "eSbhofFy", "setAsGlobal": false, "setBy": "SERVER", "statCode": "TIksU4cz", "tags": ["ReADcIjQ", "YCDslLr2", "QUCOAqEe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateStat1' test.out

#- 55 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'nVnQiG11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryUserStatItems' test.out

#- 56 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'oKA8AkXF' \
    --body '[{"statCode": "8BXNcSGC"}, {"statCode": "dWKDdYrA"}, {"statCode": "2Z5WmIkx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicBulkCreateUserStatItems' test.out

#- 57 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'HMaCrnsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryUserStatItems1' test.out

#- 58 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'g0duppUJ' \
    --body '[{"inc": 0.4820643139326236, "statCode": "eHbJtwtU"}, {"inc": 0.03103331908740181, "statCode": "bp59GP9B"}, {"inc": 0.17138332647155163, "statCode": "ZFAJpQSW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicBulkIncUserStatItem1' test.out

#- 59 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'GRc2qbYg' \
    --body '[{"inc": 0.7962802552430113, "statCode": "7zKycvXq"}, {"inc": 0.5391009063942166, "statCode": "WvHudev4"}, {"inc": 0.6490181492621836, "statCode": "Rwkf1pYb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkIncUserStatItemValue2' test.out

#- 60 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'c3yWczp2' \
    --body '[{"statCode": "Ool3CbWK"}, {"statCode": "UP66XTTZ"}, {"statCode": "Yrtr92Bn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'BulkResetUserStatItem3' test.out

#- 61 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'XJsf0xBm' \
    'pqXRfMlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicCreateUserStatItem' test.out

#- 62 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'Bt2mSBqv' \
    '6NZBGcnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteUserStatItems1' test.out

#- 63 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '9cHLYwSS' \
    'I4UMuDI6' \
    --body '{"inc": 0.09352971870544802}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicIncUserStatItem' test.out

#- 64 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'YHtw4o6L' \
    'oyTl83EA' \
    --body '{"inc": 0.26669925447514187}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicIncUserStatItemValue' test.out

#- 65 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'JEoCm2Zb' \
    'iOci3KmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ResetUserStatItemValue1' test.out

#- 66 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"LxV7qKDo": {}, "6XBrFuRq": {}, "R5U9Unc5": {}}, "additionalKey": "GIC9cDuQ", "statCode": "yJuRDSnG", "updateStrategy": "MAX", "userId": "1uDWjx2Y", "value": 0.43944420011275565}, {"additionalData": {"f6YDEHwE": {}, "0aSHiCgh": {}, "emsxmngn": {}}, "additionalKey": "h3PaaHae", "statCode": "XSnLZbQV", "updateStrategy": "MIN", "userId": "9BXzvLpk", "value": 0.8443575010049469}, {"additionalData": {"xL21EgRM": {}, "KrDUaEhS": {}, "E0mRlDVG": {}}, "additionalKey": "kGxm9Yrb", "statCode": "AiJHjadu", "updateStrategy": "INCREMENT", "userId": "FVk1bsUI", "value": 0.6276270442143513}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkUpdateUserStatItemV2' test.out

#- 67 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '3Aktt722' \
    '["70nNZVCP", "JyE8FwoG", "tFX673fs"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkFetchOrDefaultStatItems1' test.out

#- 68 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'eyrp8SXe' \
    --body '[{"additionalData": {"NKIDTsyA": {}, "6EzQBGYp": {}, "reYhvyT4": {}}, "statCode": "aCpXW2rX", "updateStrategy": "INCREMENT", "value": 0.8327767030977438}, {"additionalData": {"SIBrYWiM": {}, "rUiX5MUu": {}, "HDrkXbNW": {}}, "statCode": "IxyDPEz5", "updateStrategy": "INCREMENT", "value": 0.9712045141173645}, {"additionalData": {"Kul6yzHn": {}, "rJiNWY7B": {}, "YkRkiI0j": {}}, "statCode": "5YlszFb6", "updateStrategy": "MIN", "value": 0.7870749387685445}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkUpdateUserStatItem' test.out

#- 69 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'os9HZKYU' \
    --body '[{"additionalData": {"TU3rrynf": {}, "PIYSPmEv": {}, "goffxSxE": {}}, "statCode": "dtooWsXb"}, {"additionalData": {"qp5LpNcN": {}, "rvujSdc0": {}, "QJnPCt0h": {}}, "statCode": "0luTDpDp"}, {"additionalData": {"wcHjEXi9": {}, "Nnb7vgwy": {}, "ZdWvyhfH": {}}, "statCode": "1MJq0NR2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItemValues' test.out

#- 70 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    '6YLYFpi1' \
    '099LckSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteUserStatItems2' test.out

#- 71 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'Zh1cHt8b' \
    'OUrlnjBC' \
    --body '{"additionalData": {"OUhFS6mu": {}, "hZCTGghH": {}, "83tlyagW": {}}, "updateStrategy": "MAX", "value": 0.46448811010058233}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateUserStatItemValue' test.out

#- 72 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"Es9xAjGf": {}, "u5MIBRbc": {}, "zV1gDuGX": {}}, "additionalKey": "rfxw65Wq", "statCode": "WI3dj8vb", "updateStrategy": "MAX", "userId": "YbaOnUGJ", "value": 0.1353452890839919}, {"additionalData": {"VOn6MlRN": {}, "ivMbpPvR": {}, "mawNg4av": {}}, "additionalKey": "Po4tCR3V", "statCode": "TKYPRypf", "updateStrategy": "OVERRIDE", "userId": "dhmlmABP", "value": 0.905880433456425}, {"additionalData": {"ZASZCOur": {}, "YG53lFqK": {}, "hce6qknz": {}}, "additionalKey": "OVoY0TFG", "statCode": "PWlE3VAh", "updateStrategy": "INCREMENT", "userId": "cUDN5IVt", "value": 0.8990637679978701}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkUpdateUserStatItem1' test.out

#- 73 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'cjLochTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryUserStatItems2' test.out

#- 74 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'ZtnR9P5r' \
    --body '[{"additionalData": {"SH3nFEvH": {}, "U5u7RMVP": {}, "Tqanmvse": {}}, "statCode": "M5MqKGe3", "updateStrategy": "MIN", "value": 0.6965015697681544}, {"additionalData": {"4WC5Ni1d": {}, "2JCTDrUT": {}, "trnaAwdO": {}}, "statCode": "LOgJjVJp", "updateStrategy": "INCREMENT", "value": 0.1643406341372139}, {"additionalData": {"EtZtAbNz": {}, "8dLIJoZ8": {}, "j98M1mGa": {}}, "statCode": "0N6j8B00", "updateStrategy": "OVERRIDE", "value": 0.884501668665758}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkUpdateUserStatItem2' test.out

#- 75 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'md2UndOT' \
    'vLiIRXhK' \
    --body '{"additionalData": {"a26Sbpei": {}, "r9YPPM34": {}, "T1GXabIH": {}}, "updateStrategy": "OVERRIDE", "value": 0.9561127038591374}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
