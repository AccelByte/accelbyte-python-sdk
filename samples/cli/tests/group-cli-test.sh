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
group-index-handler --login_with_auth "Bearer foo"
group-block-handler --login_with_auth "Bearer foo"
group-cmdline-handler --login_with_auth "Bearer foo"
group-goroutine-handler --login_with_auth "Bearer foo"
group-heap-handler --login_with_auth "Bearer foo"
group-profile --login_with_auth "Bearer foo"
group-symbol-handler --login_with_auth "Bearer foo"
group-threadcreate-handler --login_with_auth "Bearer foo"
group-list-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-create-group-configuration-admin-v1 '{"allowMultiple": true, "configurationCode": "twYCA9kPI6LZrkq6", "description": "Dc09nIW0Oaiw9B0D", "globalRules": [{"allowedAction": "7eHpzSn3ZPUdc0qh", "ruleDetail": [{"ruleAttribute": "4n8mzZ0m8SAMTwE6", "ruleCriteria": "MINIMUM", "ruleValue": 0.8361575896005451}, {"ruleAttribute": "LCXLx8bbgorQeFbQ", "ruleCriteria": "EQUAL", "ruleValue": 0.10746196877264103}, {"ruleAttribute": "7qbPngUNB1vRodwp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5117419415425165}]}, {"allowedAction": "HHdgs21Jub74CUkN", "ruleDetail": [{"ruleAttribute": "mKJfh5pUkHODpoMF", "ruleCriteria": "EQUAL", "ruleValue": 0.9759929228724943}, {"ruleAttribute": "NY4YkHs1cnz1JSDg", "ruleCriteria": "MINIMUM", "ruleValue": 0.2297591328238191}, {"ruleAttribute": "lvbTgrhRTcPiSuL0", "ruleCriteria": "MINIMUM", "ruleValue": 0.6774488850034576}]}, {"allowedAction": "kT7NvyE3cwyALczN", "ruleDetail": [{"ruleAttribute": "IicXm7agSrjJW2OQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.49352689579304554}, {"ruleAttribute": "Au2D6QVKNCWP75TB", "ruleCriteria": "EQUAL", "ruleValue": 0.14128417150585826}, {"ruleAttribute": "7pKxR8dl0zRVW4EZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.22093008448613038}]}], "groupAdminRoleId": "7Z4U68su8XfqlqNi", "groupMaxMember": 93, "groupMemberRoleId": "Havj7AorKsxwkosA", "name": "VerXpc1C8XfwHuKe"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'b9l3rGN9A3sNm84h' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'ddSpHt0P7MIIR7Ck' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "yF6C7duuyZ0GhDog", "groupMaxMember": 34, "name": "xLzFQN05MYzYiKWe"}' '5dNRljv7IPrDQQRg' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "at0SevkLGMS0lyuI", "ruleCriteria": "MINIMUM", "ruleValue": 0.0034393586456924474}, {"ruleAttribute": "2I9u6Vpbsx5w8hqU", "ruleCriteria": "MINIMUM", "ruleValue": 0.3537103075117948}, {"ruleAttribute": "nnSuB0y5WUlrMdI4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6107156845446877}]}' 'lkvR8sKgnuRkgghG' 'oYupD391C2qtPYok' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'ahFjkQsfCaTmt1d6' '7FXGk2s9Q0mPVo3t' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'wu0MesTCf9x4rt69' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'lna7qxNeIxPz6Mbw' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'L6IY69z1UaLqYSYW' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "ytLPziZMdjxcBZuf", "memberRolePermissions": [{"action": 86, "resourceName": "TAQ6iiPlSC2uE4o5"}, {"action": 97, "resourceName": "1ZBm3MqHcUmLZZbS"}, {"action": 34, "resourceName": "kmu0hpDDWVAla2l5"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'BYNtIuS5S5XUdjso' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'qwGyzzWi9gwQYv7t' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "1o7TTr1DmrhZv15T"}' '7quIOvBMcaYmvCkG' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 29, "resourceName": "5dAgqxpBFmaLoxoz"}, {"action": 36, "resourceName": "lwSyliWMNW5NyLu0"}, {"action": 79, "resourceName": "lB2jJCSQT279ZZPY"}]}' 'Gu0rdlgdWyOtXi3c' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "hoQrpOsDBU5SepjC", "customAttributes": {"hB3V0v52Dlym6puQ": {}, "23xoJ8aeCnaLpUKp": {}, "44YUDjasWIPUvmEe": {}}, "groupDescription": "jtGeoyIPa8ZRrvjj", "groupIcon": "7il35MXbN9oCMNqq", "groupMaxMember": 84, "groupName": "8SjTvhZNkSQ70D0H", "groupRegion": "6BXksUC9b6i5lZC9", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "xv32e8c5csSovoqs", "ruleDetail": [{"ruleAttribute": "ZNBdte9NDUPVJf6c", "ruleCriteria": "EQUAL", "ruleValue": 0.6869676890533988}, {"ruleAttribute": "ZxfgPubTDIHrvqAT", "ruleCriteria": "EQUAL", "ruleValue": 0.4937779406724534}, {"ruleAttribute": "eERmDnyeFoF7VSZ6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5798659927346115}]}, {"allowedAction": "bRFQSKVPHbn4Xxtu", "ruleDetail": [{"ruleAttribute": "7LQRENjEEztx1WsY", "ruleCriteria": "MINIMUM", "ruleValue": 0.7170828739779086}, {"ruleAttribute": "ck0ZHn5GI39YBHqa", "ruleCriteria": "MINIMUM", "ruleValue": 0.7925144772154641}, {"ruleAttribute": "lvPG6bFYReVHQipc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.23761844917164}]}, {"allowedAction": "gWa24CKNS0GqVvUf", "ruleDetail": [{"ruleAttribute": "HQvsHXNUNe4mhgo5", "ruleCriteria": "MINIMUM", "ruleValue": 0.7139788005559538}, {"ruleAttribute": "48l9lyNApflxqMrj", "ruleCriteria": "MINIMUM", "ruleValue": 0.2286067389432801}, {"ruleAttribute": "Zk03QXcKMDYDDxHS", "ruleCriteria": "MINIMUM", "ruleValue": 0.14893701811610782}]}]}, "groupType": "PRIVATE"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'NFSrUEirnjX9fDmI' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "beZxzfTcyiuATus9", "groupIcon": "hsfpFDcSDG8aMVGL", "groupName": "iBNrDjqoxcwgGLXp", "groupRegion": "UL4pp2ncYAHdNzDm", "groupType": "OPEN"}' 'mv9gsR5cJcHm3SZL' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'xoRDFuuuySj29a9L' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "JE8HoRS1X2PFAAMw", "groupIcon": "zHPxB1UskYs4Yw20", "groupName": "DOqOBSC2DKHRuPMM", "groupRegion": "WH8Yb33T5UBJCjfc", "groupType": "OPEN"}' 'DxOgBnhhqElIaDml' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"48wdNFLTm5T50x9W": {}, "T0GfH2rtOa4EXsXz": {}, "OXQAk4mqrxzTtuLl": {}}}' '4XlbGL8QOxtjzm8y' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 '2wNhmwoYZyI4EFZK' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'BcYrCEAE7WIsfmx4' --login_with_auth "Bearer foo"
group-join-group-v1 '0NLRc6m8heKnWhzf' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'e2NubeoKFeIaFQCY' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'oDPICpnduEEQlULd' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'Jz4mnRBkMNxvvKgA' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"T8mJrYq6hRkloqxM": {}, "3gpwxcfMy9XzjjI5": {}, "YbsKoADkzJEN2VHz": {}}}' 'ih3bit0VWn3CO39P' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "XDNxtXgeO3FgkXhj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4234150082718341}, {"ruleAttribute": "2yyd4mbqoOfADMMA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8987200111790901}, {"ruleAttribute": "e5dC9XIBudfZgrbH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35497965335840387}]}' 'rAP2aMlu7WtjCtoY' 'etOO847g8OudOfjn' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'CuHZ3c46IjGa23Yv' 'YmmDg7VYPXIuvUYT' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "ZBRujIUE1Tq5jyAZ"}' 'vkRCMNFIurjh2imd' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "b4rbkXj0ZwsVC0gL"}' '97ZVJSPqJiwv1qlY' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'B1RSKs6gQxC3Gb7S' --login_with_auth "Bearer foo"
group-invite-group-public-v1 '0o4zGYY7KQI1AeFg' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'PqaOkvo1aolB4lkK' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'B4EYOkQ1jMD3cym8' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'xIfkOVW2grREOLx0' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-admin-v2 '{"groupIDs": ["KOww3HICQLfl7MUB", "G7qtPu64yAtURKLR", "kb738HGS6rDgMdII"]}' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 'lhS1fSiM9331m7Ta' --login_with_auth "Bearer foo"
group-admin-get-user-group-status-information-v2 '1PsKc50Kv6ecnEev' 'cAx2K2zkRenmPZnG' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "Bt4P7WnbdSJtjX7Z", "customAttributes": {"shZyZl5x4bRXBHUT": {}, "rDzZSKscfOcYu3dp": {}, "CROYqUiGKXVFCmpo": {}}, "groupDescription": "6sPwVOEDSJsEK5Qp", "groupIcon": "NhlI2iS5EpGhhvXY", "groupMaxMember": 6, "groupName": "mkk9QM0NBMA9ORxp", "groupRegion": "zwLR2AK6eXUGPJsw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "1fiP80G9Pclxcft2", "ruleDetail": [{"ruleAttribute": "ulIJzPyrVEiOG4Uc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.006470458958401926}, {"ruleAttribute": "rv8mnfHK8CCmE2lP", "ruleCriteria": "EQUAL", "ruleValue": 0.32732078659658204}, {"ruleAttribute": "IpomM8sm1MiaI1mX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3261061203877309}]}, {"allowedAction": "gBp3HBvepnDCjgyJ", "ruleDetail": [{"ruleAttribute": "lXe36mgWjLfFmteu", "ruleCriteria": "EQUAL", "ruleValue": 0.5248849689882613}, {"ruleAttribute": "ezKsDwG2omOR2nvY", "ruleCriteria": "MINIMUM", "ruleValue": 0.5720707997241974}, {"ruleAttribute": "qU0jZpjvsugAOS7u", "ruleCriteria": "MINIMUM", "ruleValue": 0.5760450820310191}]}, {"allowedAction": "Ml5LL4bTxBmZjdrr", "ruleDetail": [{"ruleAttribute": "IxsB0NRsB1fPqqRR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7398768900447187}, {"ruleAttribute": "Ahd2wrS0uPdjhdin", "ruleCriteria": "EQUAL", "ruleValue": 0.21727708142550595}, {"ruleAttribute": "wVBOqOHi8pWGd1ju", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11309448299149916}]}]}, "groupType": "OPEN"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["kY9Rf4wP57dBZNR8", "8YbCtmKy8M9zVrjf", "GXZnqAQUoY1GjlII"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "k0iKoTTS1j02o7Jj", "groupIcon": "TXAQN0qdskdQV0Tq", "groupName": "I8EFnmDbxIxi4YKl", "groupRegion": "ONk2Q5Y4Jvaizwii", "groupType": "OPEN"}' 'ekp18lOC3mNqF7Bl' --login_with_auth "Bearer foo"
group-delete-group-public-v2 '0LcghVHfPEspxwhR' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "ON0bc1eMbEIjowLq", "groupIcon": "c3ecjXJbZDKKoxLE", "groupName": "1Y3Dymtj3giPg4x4", "groupRegion": "yiPX6ues1Hhhkg1y", "groupType": "PUBLIC"}' 'UfcYHJbBfAKSiPW3' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"VgsZXiR1DJ7HVWqM": {}, "kNSawQUWDFJvJBWi": {}, "c7UkBeIXuqDuAXI6": {}}}' '6bQ71w0deoV9Lx5R' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 'DA1l2XcrciYNEzvS' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 'ZIPkhSgORcz5S5Bv' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 'mgBLxh4ijFnE3Tam' --login_with_auth "Bearer foo"
group-join-group-v2 '69qSZ7PC6f6QkmZX' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'ElW9YfRSse6AAz3S' --login_with_auth "Bearer foo"
group-leave-group-public-v2 '4czz0QKFlAVmVLu4' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"AOec0z8eBeeoip68": {}, "J1nsv4W2OJhtafxM": {}, "SJlHeb34sZKHcl5L": {}}}' 'LLOexL4fZvWtND2t' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "cBFpX8lNtFEJ7tnk", "ruleCriteria": "EQUAL", "ruleValue": 0.9441648528477075}, {"ruleAttribute": "Mca5afj12K2IzrBv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5811444728258598}, {"ruleAttribute": "vgatOEBM70TdlNBJ", "ruleCriteria": "EQUAL", "ruleValue": 0.648655403937449}]}' 'mpu1VCarzBsV6xnZ' '5Jrzzjrcaug6CWVG' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 '8SWP3glU6muswVJn' 'NnN7kAa7j0riFc5H' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "THQIoVsGo7dwV9DB"}' 'qFKHQkETJyTlUrwD' 'TnoujQD4IEiH9Z5q' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "Xn3aoRtlqOECohVi"}' 'HA5CzgFSy8X1A3Pr' 'Ifapq5AAeMe4L3mD' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 'WORBVXTIIJM9XsYI' 'IZxiXNMR9BgaWcFX' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 '3SUBhyoTsMWPAxUM' 'kawaGpAyrIwMif3B' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 'OdkocVTd4BxqGWV6' 'mTJ0sQs6XNbjvqhn' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 'UVLWu8olKdxL6ozR' 'mDD0jJvlfV5OemPY' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'dYT7DROCjtuzFMbA' 'G9YI89hmguB8FOTj' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 'MLo4b9rIzqYkEpst' 'yVTBcrM8rG0rH0zc' --login_with_auth "Bearer foo"
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
echo "1..82"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 IndexHandler
$PYTHON -m $MODULE 'group-index-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'IndexHandler' test.out

#- 3 BlockHandler
$PYTHON -m $MODULE 'group-block-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'BlockHandler' test.out

#- 4 CmdlineHandler
$PYTHON -m $MODULE 'group-cmdline-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CmdlineHandler' test.out

#- 5 GoroutineHandler
$PYTHON -m $MODULE 'group-goroutine-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GoroutineHandler' test.out

#- 6 HeapHandler
$PYTHON -m $MODULE 'group-heap-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'HeapHandler' test.out

#- 7 Profile
$PYTHON -m $MODULE 'group-profile' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'Profile' test.out

#- 8 SymbolHandler
$PYTHON -m $MODULE 'group-symbol-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SymbolHandler' test.out

#- 9 ThreadcreateHandler
$PYTHON -m $MODULE 'group-threadcreate-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ThreadcreateHandler' test.out

#- 10 ListGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-list-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ListGroupConfigurationAdminV1' test.out

#- 11 CreateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-create-group-configuration-admin-v1' \
    '{"allowMultiple": true, "configurationCode": "wK7PpUlcIW32iK7M", "description": "Gt1ixY5rA1WoVeJI", "globalRules": [{"allowedAction": "ePF8ZrQzP4zvtdxd", "ruleDetail": [{"ruleAttribute": "bZUpd6FJtHJ1pyVw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9847358360609146}, {"ruleAttribute": "tmmOnYnOpas6ghP1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6115316220844614}, {"ruleAttribute": "M8IlsHqffnrfsGlf", "ruleCriteria": "MINIMUM", "ruleValue": 0.5255558268132179}]}, {"allowedAction": "ZgKg4uKxaCgcGLuC", "ruleDetail": [{"ruleAttribute": "3brWdTYCfHkIySok", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47096372448529067}, {"ruleAttribute": "iXZtLW87rGysryod", "ruleCriteria": "EQUAL", "ruleValue": 0.8005263257356966}, {"ruleAttribute": "3viLvtEk4mTIpUA9", "ruleCriteria": "EQUAL", "ruleValue": 0.31021638499520243}]}, {"allowedAction": "2ecozL0TOg54vCE4", "ruleDetail": [{"ruleAttribute": "8L5oLF6M4lNa4JUM", "ruleCriteria": "MINIMUM", "ruleValue": 0.39131786334503205}, {"ruleAttribute": "welu01nryEJ0NqoT", "ruleCriteria": "EQUAL", "ruleValue": 0.1777912479785706}, {"ruleAttribute": "OX9Sfo95HgXqKhTP", "ruleCriteria": "EQUAL", "ruleValue": 0.6052719381773668}]}], "groupAdminRoleId": "kLOsp0LZ5njN86Hl", "groupMaxMember": 45, "groupMemberRoleId": "kUXzt6bSc6bWvgpV", "name": "yW9dD1kOmvrAejcq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateGroupConfigurationAdminV1' test.out

#- 12 InitiateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-initiate-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'InitiateGroupConfigurationAdminV1' test.out

#- 13 GetGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-get-group-configuration-admin-v1' \
    '2LgkQuaS7RBx3vim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetGroupConfigurationAdminV1' test.out

#- 14 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    '02jBOxrZDyvpcLYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteGroupConfigurationV1' test.out

#- 15 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "WA8NjxOnaEok4nOO", "groupMaxMember": 58, "name": "2faBcAXXKlhvyH8p"}' \
    'aOJtxqMPpcVfRwNj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateGroupConfigurationAdminV1' test.out

#- 16 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "547fH0XrKEDpEY8V", "ruleCriteria": "EQUAL", "ruleValue": 0.7345909494141726}, {"ruleAttribute": "U0Am4DZhl0bQxFJ3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5285978226297563}, {"ruleAttribute": "KXphn50c9tNLDljh", "ruleCriteria": "MINIMUM", "ruleValue": 0.8797476583204074}]}' \
    'jxLRX3z46OCaGBeM' \
    'fPlNos4yBRjrERHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 17 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'onAZR8GmEu0q1p6Q' \
    'CyY6vSkVFWdsbYuV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 18 GetGroupListAdminV1
$PYTHON -m $MODULE 'group-get-group-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetGroupListAdminV1' test.out

#- 19 GetSingleGroupAdminV1
$PYTHON -m $MODULE 'group-get-single-group-admin-v1' \
    'EGVxYheR3j5mNZ6v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetSingleGroupAdminV1' test.out

#- 20 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'wv7K8Asvt1j1Rx59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteGroupAdminV1' test.out

#- 21 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'hesNWy2NvZ85DDKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGroupMembersListAdminV1' test.out

#- 22 GetMemberRolesListAdminV1
$PYTHON -m $MODULE 'group-get-member-roles-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMemberRolesListAdminV1' test.out

#- 23 CreateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-create-member-role-admin-v1' \
    '{"memberRoleName": "AF8KDsBZOuYQJ03B", "memberRolePermissions": [{"action": 54, "resourceName": "HpATHccee9GXhKcj"}, {"action": 25, "resourceName": "x6RVBrop9v7aZK3h"}, {"action": 0, "resourceName": "hbN15zfQSfQrtfF3"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateMemberRoleAdminV1' test.out

#- 24 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'TQN0OcNDLr36vzoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetSingleMemberRoleAdminV1' test.out

#- 25 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'ZyjMQAg5mPYhrLTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteMemberRoleAdminV1' test.out

#- 26 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "U8OhgfY9JQYGF4bY"}' \
    'XEcENx9xZlAchob4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateMemberRoleAdminV1' test.out

#- 27 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 0, "resourceName": "lONDDwMvgI0HlyPR"}, {"action": 23, "resourceName": "wZNiVsF6xG2mXEQd"}, {"action": 3, "resourceName": "F5wWaDhukU4khGG4"}]}' \
    'vZFTYnPkmSu4PWam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateMemberRolePermissionAdminV1' test.out

#- 28 GetGroupListPublicV1
$PYTHON -m $MODULE 'group-get-group-list-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetGroupListPublicV1' test.out

#- 29 CreateNewGroupPublicV1
$PYTHON -m $MODULE 'group-create-new-group-public-v1' \
    '{"configurationCode": "1jxR7SETWjteoc8f", "customAttributes": {"gvZDDhoO05oKqymx": {}, "LD1Lcvw6T6mZEiwx": {}, "xElpMYSWIeVzm7z9": {}}, "groupDescription": "noowmlTIKVowi0RY", "groupIcon": "2VN4ZONJREdUQ3z9", "groupMaxMember": 65, "groupName": "90ETtYmGukz3Mnlr", "groupRegion": "jcHp6B8Vj7rXFgDn", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "DkdZ9bpjb1tdA3Qh", "ruleDetail": [{"ruleAttribute": "jCMW64f4XhIjSoTB", "ruleCriteria": "MINIMUM", "ruleValue": 0.4354652287039458}, {"ruleAttribute": "tYoFzLAATPY8P8P3", "ruleCriteria": "EQUAL", "ruleValue": 0.3869150957524179}, {"ruleAttribute": "BGtEJIYppuUSsKoH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8491886025176203}]}, {"allowedAction": "KK5rgAGO0dW8rX2M", "ruleDetail": [{"ruleAttribute": "VUGKSZ4GcLkt4pK3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29624768992677086}, {"ruleAttribute": "JxlZcCTpTdRtCHvu", "ruleCriteria": "EQUAL", "ruleValue": 0.300322390684687}, {"ruleAttribute": "S1lnaO2m9vqjhbeK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3816832127939891}]}, {"allowedAction": "iKdV57GvRyd9UuL0", "ruleDetail": [{"ruleAttribute": "2Le8HSCslsDd4M1F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7106086812643022}, {"ruleAttribute": "QDUDoWBZVGLlkUet", "ruleCriteria": "MAXIMUM", "ruleValue": 0.632852922773085}, {"ruleAttribute": "jfBoldFOyqA2clJ5", "ruleCriteria": "EQUAL", "ruleValue": 0.85908795519473}]}]}, "groupType": "PUBLIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateNewGroupPublicV1' test.out

#- 30 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    '7XIZRZ7tZdIs0xf4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetSingleGroupPublicV1' test.out

#- 31 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "czdt7zqmSKxOEQlV", "groupIcon": "cx6GqsBq8vdhWVnu", "groupName": "YLgpZehK0G2nmyuV", "groupRegion": "iB9kRTcSQdTnNYGe", "groupType": "PRIVATE"}' \
    '9FmYel0kOw72o8Zk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateSingleGroupV1' test.out

#- 32 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'gk0jS6rDWUwfhKvr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteGroupPublicV1' test.out

#- 33 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "f2AaH4yCWrHSppnI", "groupIcon": "ZkNnTn3rzH5NvAtc", "groupName": "vNedgS1fUfKmihDb", "groupRegion": "mu8ePWlQMVDXEHei", "groupType": "PUBLIC"}' \
    'sQgb64ELbzDMwyo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdatePatchSingleGroupPublicV1' test.out

#- 34 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"nIRysQdbufXjYnSo": {}, "IFeouC2m38kXrDZW": {}, "lGVE9sJ4NpUtKp6M": {}}}' \
    '9I6nEwnZhsjwJeGw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupCustomAttributesPublicV1' test.out

#- 35 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'aPSDMZz95OYKiqaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AcceptGroupInvitationPublicV1' test.out

#- 36 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'D63xe5rruJVfLGea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RejectGroupInvitationPublicV1' test.out

#- 37 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    '0ZtlzUcuHAXz0UV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'JoinGroupV1' test.out

#- 38 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '1MfuGaXsAuGsZaSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CancelGroupJoinRequestV1' test.out

#- 39 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'evO0TQNEI3kfabxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetGroupJoinRequestPublicV1' test.out

#- 40 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'WWSI1ECUo1NPpeFh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGroupMembersListPublicV1' test.out

#- 41 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"UztXDgB7n4C97uAP": {}, "P8PATLpUpxeJlsBJ": {}, "T6Hh3OMjAjq2mK8l": {}}}' \
    'bSEEelxnb5QxWG2H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateGroupCustomRulePublicV1' test.out

#- 42 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "FnZlA6HKWW4fI1IQ", "ruleCriteria": "EQUAL", "ruleValue": 0.05843194748976366}, {"ruleAttribute": "twCVUrYQue84dwmb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6337406822234742}, {"ruleAttribute": "wvm4e5GX6H742Oix", "ruleCriteria": "EQUAL", "ruleValue": 0.5650856220243614}]}' \
    'K5PX9UcOvhPyE11T' \
    'RT2SKseoe8VLie0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateGroupPredefinedRulePublicV1' test.out

#- 43 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'Ba36KNzjf005CXNG' \
    'ehQ2aTjTDfKFDXC7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteGroupPredefinedRulePublicV1' test.out

#- 44 LeaveGroupPublicV1
$PYTHON -m $MODULE 'group-leave-group-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'LeaveGroupPublicV1' test.out

#- 45 GetMemberRolesListPublicV1
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetMemberRolesListPublicV1' test.out

#- 46 UpdateMemberRolePublicV1
$PYTHON -m $MODULE 'group-update-member-role-public-v1' \
    '{"userId": "eGL5YhJDWh9YWqc0"}' \
    'qgV6d9yOfIMLds2D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateMemberRolePublicV1' test.out

#- 47 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "bPcaoMdtRLTmSvTk"}' \
    'QQgB7exYvmHMxr5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteMemberRolePublicV1' test.out

#- 48 GetGroupInvitationRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-invitation-request-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetGroupInvitationRequestPublicV1' test.out

#- 49 GetUserGroupInformationPublicV1
$PYTHON -m $MODULE 'group-get-user-group-information-public-v1' \
    'PCJJztJBg0tTJg46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetUserGroupInformationPublicV1' test.out

#- 50 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'IewOXE2AkCh3QIZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'InviteGroupPublicV1' test.out

#- 51 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'Uf8lGFXcmwTERHcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AcceptGroupJoinRequestPublicV1' test.out

#- 52 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'OdxIwqejxe18rNdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'RejectGroupJoinRequestPublicV1' test.out

#- 53 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    '8Otq6j1mqUav7k05' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'KickGroupMemberPublicV1' test.out

#- 54 GetListGroupByIDsAdminV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-admin-v2' \
    '{"groupIDs": ["HAQltnSojV4jT65y", "clX2FtAz0vJjFIYW", "OaNdsimmkW2miH3x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetListGroupByIDsAdminV2' test.out

#- 55 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    'RHAKy4QxZkaXZ7vm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetUserJoinedGroupInformationPublicV2' test.out

#- 56 AdminGetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-admin-get-user-group-status-information-v2' \
    'iEd0JPxVyQpshaDw' \
    'NqTbbFMXAMfVXe0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetUserGroupStatusInformationV2' test.out

#- 57 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "ZeMgsRsmH1EQrYmk", "customAttributes": {"PKTPOlhTtSiZNCxu": {}, "ogFteTHJe4BhSSQk": {}, "QD6WmOt6D7ufFVTO": {}}, "groupDescription": "hvQpfbBke8aEdd36", "groupIcon": "xj6wySoltDxsbzxr", "groupMaxMember": 24, "groupName": "cMdiS76YApGJ9ufw", "groupRegion": "LYkqIgLuZS6hsQry", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "iEtOAbpeUNf26Uqk", "ruleDetail": [{"ruleAttribute": "CfgCUYBn2xaOBdPF", "ruleCriteria": "MINIMUM", "ruleValue": 0.7949016407326461}, {"ruleAttribute": "EwP2b4gd3xOeii8J", "ruleCriteria": "EQUAL", "ruleValue": 0.4699612795906344}, {"ruleAttribute": "vPRCzBrVUxmDOj3c", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3053130410179361}]}, {"allowedAction": "9yxahld1pO0Gyf5P", "ruleDetail": [{"ruleAttribute": "O3COyMvczgEpzZ3F", "ruleCriteria": "EQUAL", "ruleValue": 0.6145311617551358}, {"ruleAttribute": "vr9TsvcMQ7dBsaIe", "ruleCriteria": "EQUAL", "ruleValue": 0.5076911873984365}, {"ruleAttribute": "RYNn3SHiWxF0YbuU", "ruleCriteria": "MINIMUM", "ruleValue": 0.004866207975241621}]}, {"allowedAction": "r5qTLWUCy0Afgc05", "ruleDetail": [{"ruleAttribute": "0XIZRW491e94mQjV", "ruleCriteria": "MINIMUM", "ruleValue": 0.4812069955982615}, {"ruleAttribute": "2VXidT7w0Oc15N8W", "ruleCriteria": "MINIMUM", "ruleValue": 0.4515341529379546}, {"ruleAttribute": "Pp17PAewqSm5x3B4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21109259838885708}]}]}, "groupType": "PUBLIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateNewGroupPublicV2' test.out

#- 58 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["WQnp8jXZedgt5cyN", "e27HLtwtVOaxgP6J", "bct8puMybYGxD9IP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetListGroupByIDsV2' test.out

#- 59 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "mmsLmu3kaPj0O4zd", "groupIcon": "8Tb7cUNGPTBxiFFC", "groupName": "rn7djjs69FTFVGUV", "groupRegion": "hvKhJCmeisql14mU", "groupType": "PUBLIC"}' \
    'okKwcQ0baDT9OyJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdatePutSingleGroupPublicV2' test.out

#- 60 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'h23GUS2amU7syGlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteGroupPublicV2' test.out

#- 61 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "lXdEAOrVSnLocLVV", "groupIcon": "YamQc4wcG5nDBLJo", "groupName": "JHbiQ5duE5p4cfs2", "groupRegion": "E41cK8QTwiIAvxSv", "groupType": "PUBLIC"}' \
    '7AODbi9BzupBsFpY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdatePatchSingleGroupPublicV2' test.out

#- 62 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"c77GtRUcCFeY5g4X": {}, "gBsbfzqxBPNe8ae1": {}, "Il4aAtEbu4IjGdqt": {}}}' \
    'hRxTjQ7gkZEY8rG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupCustomAttributesPublicV2' test.out

#- 63 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    'q0Q2Qd2JzRbkF2I0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AcceptGroupInvitationPublicV2' test.out

#- 64 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    '3dIjvBbA6bfbYaJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RejectGroupInvitationPublicV2' test.out

#- 65 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    'Jjfk2TUvn95FhO7V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGroupInviteRequestPublicV2' test.out

#- 66 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    'W3mbDVMDu87t0ldW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'JoinGroupV2' test.out

#- 67 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    'f7iSGIiKFtWtn4Yr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetGroupJoinRequestPublicV2' test.out

#- 68 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    '2svKM6pqLGZ0TBuj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'LeaveGroupPublicV2' test.out

#- 69 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"ELAUK6mQ5iZgbwwm": {}, "5iGzXtcknrgidKup": {}, "vXO6aj4hCmTC34jx": {}}}' \
    'W4pIDwdqXpmRmut9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateGroupCustomRulePublicV2' test.out

#- 70 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "H9XyWI8bp8fQxRuX", "ruleCriteria": "MINIMUM", "ruleValue": 0.8600563626188485}, {"ruleAttribute": "uYmtrHJbEGTUj7Yj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.40522590798220337}, {"ruleAttribute": "iXV8HwSmvcvcDKF1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.398191219470714}]}' \
    'VRafCjOuSYht83Ad' \
    'vBaagTiRJ8daGTVX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateGroupPredefinedRulePublicV2' test.out

#- 71 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    '3Bb7jlz5IfHgKjI9' \
    'mwJSrN8jkIykR2zb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteGroupPredefinedRulePublicV2' test.out

#- 72 GetMemberRolesListPublicV2
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetMemberRolesListPublicV2' test.out

#- 73 UpdateMemberRolePublicV2
$PYTHON -m $MODULE 'group-update-member-role-public-v2' \
    '{"userId": "aI6PD7fEscShnGUG"}' \
    'UtV9GJ279GDbLNwj' \
    'm3FK0nnX2poMfZ1h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateMemberRolePublicV2' test.out

#- 74 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "DHtbh4HtMlFgvh2D"}' \
    'p2SoiIPp1yvfAHS0' \
    'VgLu11A3HTovFi4t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteMemberRolePublicV2' test.out

#- 75 GetUserGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-group-information-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'GetUserGroupInformationPublicV2' test.out

#- 76 GetMyGroupJoinRequestV2
$PYTHON -m $MODULE 'group-get-my-group-join-request-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetMyGroupJoinRequestV2' test.out

#- 77 InviteGroupPublicV2
$PYTHON -m $MODULE 'group-invite-group-public-v2' \
    'PAGfleyCA6jEtcqs' \
    'nzoVILjkwW61duF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'InviteGroupPublicV2' test.out

#- 78 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    '7aUyrdt4XSpWBAet' \
    'sanzqP8oxfrtbECD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CancelInvitationGroupMemberV2' test.out

#- 79 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    '1CYPwaiBAxfYL8Av' \
    't70ZUT2fSk3LL0ca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'AcceptGroupJoinRequestPublicV2' test.out

#- 80 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'lqxEewuGS469k2hG' \
    '0WKt4sUmanYxM0UH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'RejectGroupJoinRequestPublicV2' test.out

#- 81 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    'ZVNYzGMNIpWoSLkU' \
    'rfuf4U3WeYeA9t2E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'KickGroupMemberPublicV2' test.out

#- 82 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    'NKKWrFtHIi1CMgKA' \
    'OG5iDcCR5PbCvDLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
