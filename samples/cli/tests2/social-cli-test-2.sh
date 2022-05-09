#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
social-get-namespace-slot-config --login_with_auth "Bearer foo"
social-update-namespace-slot-config --body '{"maxSlotSize": 62, "maxSlots": 39}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'BxyZcDXB' --login_with_auth "Bearer foo"
social-update-user-slot-config 'pGlsQuJu' --body '{"maxSlotSize": 42, "maxSlots": 77}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'f0IsJkTr' --login_with_auth "Bearer foo"
social-get-user-profiles 'd8IDcV2z' --login_with_auth "Bearer foo"
social-get-profile 'XnTKjXY1' 'bPqamiBx' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'x9Cs18EY' --login_with_auth "Bearer foo"
social-get-slot-data '84ekItqR' 'zHU1oh57' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["0KQBVaew"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'c72krSha' --login_with_auth "Bearer foo"
social-public-create-profile '68n3Ynoz' --body '{"achievements": ["p1C2KmIQ"], "attributes": {"TuBdNEUs": "xFb8CJ17"}, "avatarUrl": "M7DJZaMS", "inventories": ["xECbZbyg"], "label": "yoarORoe", "profileName": "NHSb8Rh3", "statistics": ["kgs9qqJb"], "tags": ["nQsoBgiV"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'pP8Cm3yv' 'ASUoxdxx' --login_with_auth "Bearer foo"
social-public-update-profile 'FqmAGTJ8' 'IEdagEtp' --body '{"achievements": ["4w29KOu9"], "attributes": {"c19R6XDq": "WHkkP8np"}, "avatarUrl": "LEKMfjiX", "inventories": ["7jpkVZk3"], "label": "IaQYEmqG", "profileName": "odOEGt9g", "statistics": ["POj0c6i0"], "tags": ["JkvIas73"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'ucYnFAJ3' 'DK5T4Eog' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'g0Y39UoY' 'lpv5bVAg' 'tsDhUTDU' --login_with_auth "Bearer foo"
social-public-update-attribute 'scbQDjbT' 'QuPMz2PT' 'RlkyU89Z' --body '{"name": "POw6zPFJ", "value": "42cwmzBB"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'SMNcoAAO' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'jKNjfcYH' --login_with_auth "Bearer foo"
social-public-get-slot-data 'm093aYgB' 'U1sqjyK0' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'XH45PaRS' 'OFQBtu23' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'REZ8hRVX' '7LGOvDdY' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'iQS9i7mV' '1C91pjG9' --body '{"customAttribute": "gpxL6ycT", "label": "Qdvln2LA", "tags": ["uSQWEXL6"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'LFE1YHo9' 'm126ZWc8' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.11136021441968946, "statCode": "HtWvbNYq", "userId": "gUqslArF"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.6410856766936045, "statCode": "iHUIvaCv", "userId": "8kU9dBBp"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'dsJLhsVy' '["Exrkxoot"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "0B7WOfer", "userId": "cZdpMci3"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.9303222928912993, "description": "s7YSfExa", "incrementOnly": true, "maximum": 0.400082786263968, "minimum": 0.2982316246014147, "name": "MbFAlt4h", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "OYiBA5lt", "tags": ["AOXmlG6e"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'h1dTdoTF' --login_with_auth "Bearer foo"
social-get-stat 'pBIcuC1d' --login_with_auth "Bearer foo"
social-delete-stat 'QY93OJnJ' --login_with_auth "Bearer foo"
social-update-stat '6Te9vD8l' --body '{"description": "dz7Hu8AD", "name": "79kdWunv", "tags": ["izU0q1pH"]}' --login_with_auth "Bearer foo"
social-get-user-stat-items 'yhhERoGg' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'drysMizB' --body '[{"statCode": "GSRdP2l7"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'DNSZ8Aq0' --body '[{"inc": 0.7676543081601597, "statCode": "PLQXSe07"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'ZddOGTMl' --body '[{"inc": 0.5513019275367755, "statCode": "Bwj9HJHQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'KseEdSXR' --body '[{"statCode": "DSvguauw"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item '1xT7eMwS' 'l9MLH0Nn' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'TJ2ulNzB' 'vwJaQa54' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '7JllvA8R' 'WSpabUt7' --body '{"inc": 0.3747526419829623}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '6QxyWhfq' 'oWfJw2o8' --body '{"additionalData": {"oWUqvPCZ": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 '2HzT7NXm' 'WDlXsuNI' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.0487454805996449, "statCode": "JR5lsNOl", "userId": "vkfwaSbn"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.29191831733638607, "statCode": "LCgToxuV", "userId": "TekJgvg6"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "h5HIpH0D", "userId": "viplEk4v"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.9966084446877017, "description": "3LDp4yqD", "incrementOnly": true, "maximum": 0.95058096695822, "minimum": 0.7238665506808695, "name": "DpxlHasi", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "jrkmRMtt", "tags": ["gjDSaIVB"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'mft3Udg7' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'p9PGmY2H' --body '[{"statCode": "5kX4Msis"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'SX28nARx' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'WRpv5ou5' --body '[{"inc": 0.36968420675412095, "statCode": "vd28OUfC"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 't8UJC5fl' --body '[{"inc": 0.9876903714035955, "statCode": "yj6HsTtX"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '8P3llnaa' --body '[{"statCode": "S9lqyygP"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'cfkJIxfQ' 'Zza8kNVb' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'DxVMq7HJ' 'k0F89xAc' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '3YVfaENt' 'rl0pTKZT' --body '{"inc": 0.7762947176567949}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'zHuBMYQS' 'A2jz1ZOp' --body '{"inc": 0.054739770539565136}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'jSyMddB4' '1JuMf7RU' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"yBHRj8Ii": {}}, "additionalKey": "RimRllHT", "statCode": "6Dc40vFF", "updateStrategy": "MIN", "userId": "6gpU7EW3", "value": 0.36458520468327116}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'dCpm55gO' '["eqQIqcJV"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'KmBM1J1I' --body '[{"additionalData": {"buTrrkbm": {}}, "statCode": "uT1whOqm", "updateStrategy": "MIN", "value": 0.21201206347632295}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'XIWrBPlS' --body '[{"additionalData": {"ay46mv71": {}}, "statCode": "BAZAOjtF"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'J2vmTj7t' 'T7TZHWDd' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'CkIsZoAr' 'WwPHcyFA' --body '{"additionalData": {"dAtYciLI": {}}, "updateStrategy": "OVERRIDE", "value": 0.6745395388866413}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"FRr0gwB9": {}}, "additionalKey": "tz3vp99X", "statCode": "VlV8rK3t", "updateStrategy": "MIN", "userId": "6n0smip1", "value": 0.30176534764477403}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '3L7cUd9p' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'qtv6JfPZ' --body '[{"additionalData": {"wcCVOXcV": {}}, "statCode": "a80TmCwt", "updateStrategy": "MIN", "value": 0.8542596114963421}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'AH01o6Nd' 'cBIgzrDy' --body '{"additionalData": {"WpFBYGmm": {}}, "updateStrategy": "MIN", "value": 0.01353221648376457}' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE