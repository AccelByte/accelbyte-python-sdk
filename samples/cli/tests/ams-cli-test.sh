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
ams-admin-account-link '{"token": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ams-artifact-get --login_with_auth "Bearer foo"
ams-artifact-bulk-delete --login_with_auth "Bearer foo"
ams-artifact-usage-get --login_with_auth "Bearer foo"
ams-artifact-delete 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
ams-artifact-get-url 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ams-development-server-configuration-list --login_with_auth "Bearer foo"
ams-development-server-configuration-create '{"commandLineArguments": "BZLCXLx8bbgorQeF", "expiresAt": "1971-12-17T00:00:00Z", "imageId": "hkspInrAip6lyzSx", "name": "wElFHHdgs21Jub74"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'CUkNmKJfh5pUkHOD' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'poMF78NY4YkHs1cn' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": true, "claimKeys": ["IC32ogW7olvbTgrh", "RTcPiSuL0Sly6XM4", "OI18mAQLnzjMf8GZ"], "dsHostConfiguration": {"instanceId": "2WBZqxYG3aREAu2D", "serversPerVm": 15}, "fallbackFleet": "QVKNCWP75TB0i7pK", "imageDeploymentProfile": {"commandLine": "xR8dl0zRVW4EZG9m", "imageId": "0XcgGVbMqSszE8GH", "portConfigurations": [{"name": "avj7AorKsxwkosAV", "protocol": "erXpc1C8XfwHuKeb"}, {"name": "9l3rGN9A3sNm84hd", "protocol": "dSpHt0P7MIIR7Cky"}, {"name": "F6C7duuyZ0GhDogq", "protocol": "rhBRd8lDR6qVNPRZ"}], "timeout": {"claim": 7, "creation": 6, "drain": 80, "session": 65, "unresponsive": 90}}, "name": "LIAjGGJddVCvu9vx", "onDemand": false, "regions": [{"bufferSize": 76, "dynamicBuffer": true, "maxServerCount": 88, "minServerCount": 22, "region": "7KYnIuMBvaO35llz"}, {"bufferSize": 86, "dynamicBuffer": false, "maxServerCount": 0, "minServerCount": 2, "region": "T5kPxUfofvnnSuB0"}, {"bufferSize": 50, "dynamicBuffer": false, "maxServerCount": 96, "minServerCount": 59, "region": "lrMdI4sNveabntBS"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 41}}, "logs": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": false, "percentage": 43}, "unclaimed": {"collect": false, "percentage": 15}}}}' --login_with_auth "Bearer foo"
ams-fleet-get '3HGCiljvjKoyD6SC' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["kahFjkQsfCaTmt1d", "67FXGk2s9Q0mPVo3", "twu0MesTCf9x4rt6"], "dsHostConfiguration": {"instanceId": "9lna7qxNeIxPz6Mb", "serversPerVm": 46}, "fallbackFleet": "TqGkE7wcWfDslpJS", "imageDeploymentProfile": {"commandLine": "qGAXQ0yYoNRKd3IL", "imageId": "5TAQ6iiPlSC2uE4o", "portConfigurations": [{"name": "5Vwdo3fePqIJA8IH", "protocol": "trkmu0hpDDWVAla2"}, {"name": "l5BYNtIuS5S5XUdj", "protocol": "soqwGyzzWi9gwQYv"}, {"name": "7t1o7TTr1DmrhZv1", "protocol": "5T7quIOvBMcaYmvC"}], "timeout": {"claim": 22, "creation": 52, "drain": 67, "session": 29, "unresponsive": 79}}, "name": "dAgqxpBFmaLoxozr", "onDemand": true, "regions": [{"bufferSize": 45, "dynamicBuffer": false, "maxServerCount": 50, "minServerCount": 80, "region": "liWMNW5NyLu0M3VH"}, {"bufferSize": 16, "dynamicBuffer": true, "maxServerCount": 61, "minServerCount": 92, "region": "I8JlDbPWbQ6Q9lNm"}, {"bufferSize": 34, "dynamicBuffer": false, "maxServerCount": 90, "minServerCount": 99, "region": "BaAkLnvxkT1X68cm"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 95}}, "logs": {"crashed": {"collect": false, "percentage": 92}, "success": {"collect": false, "percentage": 9}, "unclaimed": {"collect": true, "percentage": 31}}}}' 'U8MyKrQpM4hkkK6K' --login_with_auth "Bearer foo"
ams-fleet-delete 'KXNB3Gv0IqmF51Tk' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get 'hjYnaq6foWvXa3bM' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 62}}, "logs": {"crashed": {"collect": false, "percentage": 38}, "success": {"collect": false, "percentage": 61}, "unclaimed": {"collect": true, "percentage": 35}}}' 'GeoyIPa8ZRrvjj7i' --login_with_auth "Bearer foo"
ams-fleet-servers 'l35MXbN9oCMNqq98' --login_with_auth "Bearer foo"
ams-fleet-server-history 'SjTvhZNkSQ70D0H6' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get 'BXksUC9b6i5lZC9x' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'v32e8c5csSovoqsZ' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["NBdte9NDUPVJf6c2", "Z0QZxfgPubTDIHrv", "qAThuwjRHpKKTlmV"], "isProtected": true, "name": "VSZ6pf3vneSD2Tb3", "removedTags": ["g7mSQUhAEtrmjqU6", "YE3p4lSck0ZHn5GI", "39YBHqaTHeKtW18i"]}' 'GeUlc9d9sogWa24C' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'KNS0GqVvUfHQvsHX' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "NUNe4mhgo5QB65lS"}' 'AiYnNjkfZrQvGgbL' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'dLsFzHkBMr1yrOMl' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'NFSrUEirnjX9fDmI' --login_with_auth "Bearer foo"
ams-server-history 'beZxzfTcyiuATus9' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "hsfpFDcSDG8aMVGL", "sessionId": "iBNrDjqoxcwgGLXp"}' 'UL4pp2ncYAHdNzDm' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'eIP6rOvDz9KOsb39' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["2k6YmJFfRByjlBiu", "FM3FIoVk8T3GpAnk", "CmBUqg2SCnqntX9y"], "regions": ["1aZSWMiVi10sG6vx", "kfUcmqRRbceJ5i0E", "eDxOgBnhhqElIaDm"], "sessionId": "l48wdNFLTm5T50x9"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'WT0GfH2rtOa4EXsX' --login_with_auth "Bearer foo"
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
echo "1..46"

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
    '{"name": "zOXQAk4mqrxzTtuL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
$PYTHON -m $MODULE 'ams-admin-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLink
$PYTHON -m $MODULE 'ams-admin-account-link' \
    '{"token": "l4XlbGL8QOxtjzm8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
$PYTHON -m $MODULE 'ams-artifact-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
$PYTHON -m $MODULE 'ams-artifact-bulk-delete' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
$PYTHON -m $MODULE 'ams-artifact-usage-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
$PYTHON -m $MODULE 'ams-artifact-delete' \
    'y2wNhmwoYZyI4EFZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'KBcYrCEAE7WIsfmx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
$PYTHON -m $MODULE 'ams-development-server-configuration-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
$PYTHON -m $MODULE 'ams-development-server-configuration-create' \
    '{"commandLineArguments": "40NLRc6m8heKnWhz", "expiresAt": "1973-02-09T00:00:00Z", "imageId": "z3LNUj7fdgLA84Z8", "name": "YYk6QEgJjBbEDoNf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    '3n0hEoRCAcf80zfF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'yabWAgIUXiI07A68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["gpwxcfMy9XzjjI5Y", "bsKoADkzJEN2VHzi", "h3bit0VWn3CO39PX"], "dsHostConfiguration": {"instanceId": "DNxtXgeO3FgkXhjD", "serversPerVm": 52}, "fallbackFleet": "2yyd4mbqoOfADMMA", "imageDeploymentProfile": {"commandLine": "XFaY9eKa699bRVhy", "imageId": "aKwwrAP2aMlu7Wtj", "portConfigurations": [{"name": "CtoYetOO847g8Oud", "protocol": "OfjnCuHZ3c46IjGa"}, {"name": "23YvYmmDg7VYPXIu", "protocol": "vUYTZBRujIUE1Tq5"}, {"name": "jyAZvkRCMNFIurjh", "protocol": "2imdb4rbkXj0ZwsV"}], "timeout": {"claim": 58, "creation": 93, "drain": 13, "session": 41, "unresponsive": 78}}, "name": "4Tv207Y2QD3oD5fL", "onDemand": true, "regions": [{"bufferSize": 57, "dynamicBuffer": true, "maxServerCount": 90, "minServerCount": 82, "region": "SKs6gQxC3Gb7S0o4"}, {"bufferSize": 51, "dynamicBuffer": false, "maxServerCount": 66, "minServerCount": 31, "region": "YY7KQI1AeFgPqaOk"}, {"bufferSize": 43, "dynamicBuffer": false, "maxServerCount": 100, "minServerCount": 34, "region": "aolB4lkKB4EYOkQ1"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 22}}, "logs": {"crashed": {"collect": true, "percentage": 61}, "success": {"collect": false, "percentage": 4}, "unclaimed": {"collect": true, "percentage": 53}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'm8xIfkOVW2grREOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["vNXTwGBCtohLtl9Z", "uhytm5UDrT6QXCs5", "SPBbRPZTF6oQAXVG"], "dsHostConfiguration": {"instanceId": "7tnsZg5QgXjvyGJP", "serversPerVm": 80}, "fallbackFleet": "a1PsKc50Kv6ecnEe", "imageDeploymentProfile": {"commandLine": "vcAx2K2zkRenmPZn", "imageId": "GBt4P7WnbdSJtjX7", "portConfigurations": [{"name": "ZshZyZl5x4bRXBHU", "protocol": "TrDzZSKscfOcYu3d"}, {"name": "pCROYqUiGKXVFCmp", "protocol": "o6sPwVOEDSJsEK5Q"}, {"name": "pNhlI2iS5EpGhhvX", "protocol": "Yck0upMzUYnb76tF"}], "timeout": {"claim": 21, "creation": 32, "drain": 63, "session": 51, "unresponsive": 83}}, "name": "wLR2AK6eXUGPJsw1", "onDemand": false, "regions": [{"bufferSize": 16, "dynamicBuffer": true, "maxServerCount": 85, "minServerCount": 29, "region": "80G9Pclxcft2ulIJ"}, {"bufferSize": 53, "dynamicBuffer": true, "maxServerCount": 86, "minServerCount": 22, "region": "yrVEiOG4UcqsuGKH"}, {"bufferSize": 15, "dynamicBuffer": false, "maxServerCount": 78, "minServerCount": 69, "region": "RWLVd3DlhLuIpomM"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 38}}, "logs": {"crashed": {"collect": false, "percentage": 25}, "success": {"collect": false, "percentage": 47}, "unclaimed": {"collect": true, "percentage": 16}}}}' \
    'UccE536ugBp3HBve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'pnDCjgyJlXe36mgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'jLfFmteue9nzJ6fH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": false, "percentage": 93}}, "logs": {"crashed": {"collect": false, "percentage": 83}, "success": {"collect": true, "percentage": 26}, "unclaimed": {"collect": true, "percentage": 13}}}' \
    'YI9TVqJdvzcWbfUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'aXp5JMl5LL4bTxBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'ZjdrrIxsB0NRsB1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
$PYTHON -m $MODULE 'ams-images-storage' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'PqqRRulpqpymDkQh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'trHWwRVnwVBOqOHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["8pWGd1juYhiqjRJO", "qB5F93zFQbJndUDp", "dONneAczbBdHb2sl"], "isProtected": true, "name": "QUoY1GjlIIk0iKoT", "removedTags": ["TS1j02o7JjTXAQN0", "qdskdQV0TqI8EFnm", "DbxIxi4YKlONk2Q5"]}' \
    'Y4JvaizwiilatuUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'jt9lIMGql5ElEa9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "IIlGcHB3CfR3ncDl"}' \
    'wi3v3MFFJ1KesKoE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsUpdate' test.out

#- 34 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'InfoRegions' test.out

#- 35 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'LCpobBEG8X645xpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'Xpai0rYaT5hOPjaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    '3H0tYighU0VUfcYH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'ServerHistory' test.out

#- 38 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'InfoSupportedInstances' test.out

#- 39 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AccountGet' test.out

#- 40 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "JbBfAKSiPW3VgsZX", "sessionId": "iR1DJ7HVWqMkNSaw"}' \
    'QUWDFJvJBWic7UkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'eIXuqDuAXI66bQ71' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["w0deoV9Lx5RDA1l2", "XcrciYNEzvSZIPkh", "SgORcz5S5BvmgBLx"], "regions": ["h4ijFnE3Tam69qSZ", "7PC6f6QkmZXElW9Y", "fRSse6AAz3S4czz0"], "sessionId": "QKFlAVmVLu4AOec0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'z8eBeeoip68J1nsv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'WatchdogConnect' test.out

#- 44 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UploadURLGet' test.out

#- 45 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'Func1' test.out

#- 46 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
