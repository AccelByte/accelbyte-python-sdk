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
ams-auth-check --login_with_auth "Bearer foo"
ams-portal-health-check --login_with_auth "Bearer foo"
ams-admin-account-get --login_with_auth "Bearer foo"
ams-admin-account-create '{"name": "EAxcVpFrttufHIRd"}' --login_with_auth "Bearer foo"
ams-admin-account-link-token-get --login_with_auth "Bearer foo"
ams-admin-account-link-token-post '{"token": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ams-artifact-get --login_with_auth "Bearer foo"
ams-artifact-usage-get --login_with_auth "Bearer foo"
ams-artifact-delete 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
ams-artifact-get-url 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ams-development-server-configuration-list --login_with_auth "Bearer foo"
ams-development-server-configuration-create '{"commandLineArguments": "BZLCXLx8bbgorQeF", "imageId": "bQ1g7qbPngUNB1vR", "name": "odwpzS6DaDpv8N7Z"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'QVqGj6oDLjWjkY1a' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'XlFcDtgOjchIua5t' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": false, "claimKeys": ["EIC32ogW7olvbTgr", "hRTcPiSuL0Sly6XM", "4OI18mAQLnzjMf8G"], "dsHostConfiguration": {"instanceId": "Z2WBZqxYG3aREAu2", "instanceType": "D6QVKNCWP75TB0i7", "serversPerVm": 31}, "imageDeploymentProfile": {"commandLine": "x4c8OumKtPDKJDXn", "imageId": "7Z4U68su8XfqlqNi", "portConfigurations": [{"name": "TvB6SdAdIhUDrwoZ", "protocol": "5MecdKi5r6QEa1ys"}, {"name": "LEzth6mXhzkzWkFe", "protocol": "ZSoEAcBdW19m4eu6"}, {"name": "d5tA5jUmiTqpyhPF", "protocol": "dxLzFQN05MYzYiKW"}], "timeout": {"creation": 9, "drain": 7, "session": 6, "unresponsive": 80}}, "name": "FLIAjGGJddVCvu9v", "onDemand": true, "regions": [{"bufferSize": 91, "maxServerCount": 9, "minServerCount": 76, "region": "vkLGMS0lyuI9a2I9"}, {"bufferSize": 42, "maxServerCount": 52, "minServerCount": 86, "region": "Vpbsx5w8hqUI06Up"}, {"bufferSize": 83, "maxServerCount": 56, "minServerCount": 66, "region": "y5WUlrMdI4sNveab"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 37}, "success": {"collect": true, "percentage": 74}}, "logs": {"crashed": {"collect": true, "percentage": 12}, "success": {"collect": false, "percentage": 47}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'uRkgghGoYupD391C' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["qtPYokahFjkQsfCa", "Tmt1d67FXGk2s9Q0", "mPVo3twu0MesTCf9"], "dsHostConfiguration": {"instanceId": "x4rt69lna7qxNeIx", "instanceType": "Pz6MbwL6IY69z1Ua", "serversPerVm": 78}, "imageDeploymentProfile": {"commandLine": "slpJSqGAXQ0yYoNR", "imageId": "Kd3IL5TAQ6iiPlSC", "portConfigurations": [{"name": "2uE4o5Vwdo3fePqI", "protocol": "JA8IHtrkmu0hpDDW"}, {"name": "VAla2l5BYNtIuS5S", "protocol": "5XUdjsoqwGyzzWi9"}, {"name": "gwQYv7t1o7TTr1Dm", "protocol": "rhZv15T7quIOvBMc"}], "timeout": {"creation": 1, "drain": 90, "session": 25, "unresponsive": 56}}, "name": "vCkGZ5dAgqxpBFma", "onDemand": true, "regions": [{"bufferSize": 29, "maxServerCount": 73, "minServerCount": 49, "region": "MdalwSyliWMNW5Ny"}, {"bufferSize": 77, "maxServerCount": 43, "minServerCount": 41, "region": "qtlB2jJCSQT279ZZ"}, {"bufferSize": 86, "maxServerCount": 3, "minServerCount": 86, "region": "Gu0rdlgdWyOtXi3c"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 22}, "success": {"collect": false, "percentage": 94}}, "logs": {"crashed": {"collect": true, "percentage": 31}, "success": {"collect": true, "percentage": 5}}}}' 'DBU5SepjChB3V0v5' --login_with_auth "Bearer foo"
ams-fleet-delete '2Dlym6puQ23xoJ8a' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get 'eCnaLpUKp44YUDja' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 44}, "success": {"collect": false, "percentage": 84}}, "logs": {"crashed": {"collect": false, "percentage": 44}, "success": {"collect": false, "percentage": 37}}}' 'EejtGeoyIPa8ZRrv' --login_with_auth "Bearer foo"
ams-fleet-servers 'jj7il35MXbN9oCMN' --login_with_auth "Bearer foo"
ams-fleet-server-history 'qq98SjTvhZNkSQ70' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get 'D0H6BXksUC9b6i5l' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["ZC9xv32e8c5csSov", "oqsZNBdte9NDUPVJ", "f6c2Z0QZxfgPubTD"], "isProtected": true, "name": "HrvqAThuwjRHpKKT", "removedTags": ["lmVr9XuoJbRFQSKV", "PHbn4Xxtu7LQRENj", "EEztx1WsYSiZqan0"]}' 'nSBJroav91GXlvPG' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "6bFYReVHQipcCx9Z"}' 'w5D2L7vIYhGGSyEW' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info '4ZJJ42d3PBddN8S4' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info '8l9lyNApflxqMrj3' --login_with_auth "Bearer foo"
ams-server-history 'oZk03QXcKMDYDDxH' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "SZjtqXyJ58f7Gc26", "sessionId": "SaiGVkydwYWQG26y"}' 'UZNmTBcvrbYCwZtx' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'FHyPLtI8ilbyDPUI' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["j88cekdqCt81P1kt", "fIovmv9gsR5cJcHm", "3SZLxoRDFuuuySj2"], "regions": ["9a9LJE8HoRS1X2PF", "AAMwzHPxB1UskYs4", "Yw20DOqOBSC2DKHR"], "sessionId": "uPMMWH8Yb33T5UBJ"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'CjfcnLRfxeCSz9WE' --login_with_auth "Bearer foo"
ams-upload-url-get --login_with_auth "Bearer foo"
ams-func1 --login_with_auth "Bearer foo"
ams-basic-health-check --login_with_auth "Bearer foo"
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
echo "1..42"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AuthCheck
$PYTHON -m $MODULE 'ams-auth-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
$PYTHON -m $MODULE 'ams-portal-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AdminAccountGet
$PYTHON -m $MODULE 'ams-admin-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
$PYTHON -m $MODULE 'ams-admin-account-create' \
    '{"name": "i8KlloeH0JT1ydua"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
$PYTHON -m $MODULE 'ams-admin-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
$PYTHON -m $MODULE 'ams-admin-account-link-token-post' \
    '{"token": "t2vQR3biBfsu4jms"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
$PYTHON -m $MODULE 'ams-artifact-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
$PYTHON -m $MODULE 'ams-artifact-usage-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
$PYTHON -m $MODULE 'ams-artifact-delete' \
    'RE2w1yEkLgh3tIYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    '4SqYUTLDx9gIiDan' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
$PYTHON -m $MODULE 'ams-development-server-configuration-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
$PYTHON -m $MODULE 'ams-development-server-configuration-create' \
    '{"commandLineArguments": "dpGT2t24aOMh5eC3", "imageId": "IHeHSKLCa3xreNDU", "name": "WehwH3q31A806DJg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'as4b6z3LNUj7fdgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'A84Z8YYk6QEgJjBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationDelete' test.out

#- 16 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'FleetList' test.out

#- 17 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": true, "claimKeys": ["lULdJz4mnRBkMNxv", "vKgAT8mJrYq6hRkl", "oqxM3gpwxcfMy9Xz"], "dsHostConfiguration": {"instanceId": "jjI5YbsKoADkzJEN", "instanceType": "2VHzih3bit0VWn3C", "serversPerVm": 83}, "imageDeploymentProfile": {"commandLine": "tU4RwTqUXlTDBzOu", "imageId": "YsaZA2yyd4mbqoOf", "portConfigurations": [{"name": "ADMMAXFaY9eKa699", "protocol": "bRVhyaKwwrAP2aMl"}, {"name": "u7WtjCtoYetOO847", "protocol": "g8OudOfjnCuHZ3c4"}, {"name": "6IjGa23YvYmmDg7V", "protocol": "YPXIuvUYTZBRujIU"}], "timeout": {"creation": 63, "drain": 94, "session": 34, "unresponsive": 25}}, "name": "jyAZvkRCMNFIurjh", "onDemand": false, "regions": [{"bufferSize": 18, "maxServerCount": 26, "minServerCount": 93, "region": "db4rbkXj0ZwsVC0g"}, {"bufferSize": 78, "maxServerCount": 93, "minServerCount": 45, "region": "ZVJSPqJiwv1qlYB1"}, {"bufferSize": 90, "maxServerCount": 82, "minServerCount": 92, "region": "OlXVv8ZGF7uYnGzp"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 66}, "success": {"collect": false, "percentage": 81}}, "logs": {"crashed": {"collect": true, "percentage": 17}, "success": {"collect": false, "percentage": 87}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'NJma1MbqqZtfNWql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["nmwAft4gqkNNlWkD", "9eOziYRFOn0jJLHC", "9LxhvNXTwGBCtohL"], "dsHostConfiguration": {"instanceId": "tl9Zuhytm5UDrT6Q", "instanceType": "XCs5SPBbRPZTF6oQ", "serversPerVm": 54}, "imageDeploymentProfile": {"commandLine": "gMdIIlhS1fSiM933", "imageId": "1m7Ta1PsKc50Kv6e", "portConfigurations": [{"name": "cnEevcAx2K2zkRen", "protocol": "mPZnGBt4P7WnbdSJ"}, {"name": "tjX7ZshZyZl5x4bR", "protocol": "XBHUTrDzZSKscfOc"}, {"name": "Yu3dpCROYqUiGKXV", "protocol": "FCmpo6sPwVOEDSJs"}], "timeout": {"creation": 62, "drain": 74, "session": 8, "unresponsive": 4}}, "name": "QpNhlI2iS5EpGhhv", "onDemand": false, "regions": [{"bufferSize": 6, "maxServerCount": 25, "minServerCount": 22, "region": "kk9QM0NBMA9ORxpz"}, {"bufferSize": 45, "maxServerCount": 89, "minServerCount": 77, "region": "V3bu1bNCtX7W40V6"}, {"bufferSize": 60, "maxServerCount": 85, "minServerCount": 29, "region": "80G9Pclxcft2ulIJ"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 49}, "success": {"collect": false, "percentage": 51}}, "logs": {"crashed": {"collect": true, "percentage": 35}, "success": {"collect": true, "percentage": 62}}}}' \
    'XuNFviMarv8mnfHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    '8CCmE2lPnsbD3SGE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'dlwuUccE536ugBp3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": false, "percentage": 57}, "success": {"collect": false, "percentage": 45}}, "logs": {"crashed": {"collect": true, "percentage": 8}, "success": {"collect": false, "percentage": 32}}}' \
    '7udsMrok0WvGYYnx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    '4V709xbnGezKsDwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    '2omOR2nvYI9TVqJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'vzcWbfUpaXp5JMl5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["LL4bTxBmZjdrrIxs", "B0NRsB1fPqqRRulp", "qpymDkQhtrHWwRVn"], "isProtected": true, "name": "g5BLy8wbhMssAHja", "removedTags": ["pIkY9Rf4wP57dBZN", "R88YbCtmKy8M9zVr", "jfGXZnqAQUoY1Gjl"]}' \
    'IIk0iKoTTS1j02o7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "JjTXAQN0qdskdQV0"}' \
    'TqI8EFnmDbxIxi4Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QoSRegionsUpdate' test.out

#- 30 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'InfoRegions' test.out

#- 31 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'KlONk2Q5Y4Jvaizw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'iilatuUjjt9lIMGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'l5ElEa9EIIlGcHB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ServerHistory' test.out

#- 34 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'InfoSupportedInstances' test.out

#- 35 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AccountGet' test.out

#- 36 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "CfR3ncDlwi3v3MFF", "sessionId": "J1KesKoELCpobBEG"}' \
    '8X645xpdXpai0rYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'T5hOPjaf3H0tYigh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["U0VUfcYHJbBfAKSi", "PW3VgsZXiR1DJ7HV", "WqMkNSawQUWDFJvJ"], "regions": ["BWic7UkBeIXuqDuA", "XI66bQ71w0deoV9L", "x5RDA1l2XcrciYNE"], "sessionId": "zvSZIPkhSgORcz5S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '5BvmgBLxh4ijFnE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'WatchdogConnect' test.out

#- 40 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UploadURLGet' test.out

#- 41 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Func1' test.out

#- 42 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
