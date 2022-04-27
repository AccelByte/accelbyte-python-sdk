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

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
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
social-bulk-reset-user-stat-item --body '[{"statCode": "dsJLhsVy", "userId": "Exrkxoot"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.8267966763880049, "description": "7WOfercZ", "incrementOnly": false, "maximum": 0.24471400376684005, "minimum": 0.044827790074906226, "name": "37Ds7YSf", "setAsGlobal": true, "setBy": "SERVER", "statCode": "aI3uzLte", "tags": ["MbFAlt4h"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'r7HmOYiB' --login_with_auth "Bearer foo"
social-get-stat 'A5ltAOXm' --login_with_auth "Bearer foo"
social-delete-stat 'lG6eh1dT' --login_with_auth "Bearer foo"
social-update-stat 'doTFpBIc' --body '{"description": "uC1dQY93", "name": "OJnJ6Te9", "tags": ["vD8ldz7H"]}' --login_with_auth "Bearer foo"
social-get-user-stat-items 'u8AD79kd' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'WunvizU0' --body '[{"statCode": "q1pHyhhE"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'RoGgdrys' --body '[{"inc": 0.6054030517210108, "statCode": "zBGSRdP2"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'l7DNSZ8A' --body '[{"inc": 0.2614624114028117, "statCode": "XiPLQXSe"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '07ZddOGT' --body '[{"statCode": "MlJjBwj9"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'HJHQKseE' 'dSXRDSvg' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'uauw1xT7' 'eMwSl9ML' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'H0NnTJ2u' 'lNzBvwJa' --body '{"inc": 0.9842507217807595}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'a547Jllv' 'A8RWSpab' --body '{"additionalData": {"Ut7xk6Qx": {}}}' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'yWhfqoWf' 'Jw2o8oWU' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.2532721485049817, "statCode": "PCZ2HzT7", "userId": "NXmWDlXs"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.32561673686821235, "statCode": "IdQJR5ls", "userId": "NOlvkfwa"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "SbnsuLCg", "userId": "ToxuVTek"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.5498335965640428, "description": "vg6h5HIp", "incrementOnly": true, "maximum": 0.33338601242906774, "minimum": 0.2426266907543806, "name": "Ek4vj3LD", "setAsGlobal": false, "setBy": "SERVER", "statCode": "qDt8QUZD", "tags": ["pxlHasin"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'GcjrkmRM' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'ttgjDSaI' --body '[{"statCode": "VBmft3Ud"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'g7p9PGmY' --body '[{"inc": 0.8506426627280407, "statCode": "5kX4Msis"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'SX28nARx' --body '[{"inc": 0.762489301535472, "statCode": "pv5ou5xt"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'vd28OUfC' --body '[{"statCode": "t8UJC5fl"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'Nyj6HsTt' 'X8P3llna' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'aS9lqyyg' 'PcfkJIxf' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'QZza8kNV' 'bDxVMq7H' --body '{"inc": 0.5498505917979803}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '0F89xAc3' 'YVfaENtr' --body '{"inc": 0.18555281921920364}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'pTKZTXqz' 'HuBMYQSA' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"2jz1ZOpd": {}}, "additionalKey": "OjSyMddB", "statCode": "41JuMf7R", "updateStrategy": "MIN", "userId": "BHRj8IiR", "value": 0.13380605867217576}]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'RllHT6Dc' --body '[{"additionalData": {"40vFFA6g": {}}, "statCode": "pU7EW3x1", "updateStrategy": "OVERRIDE", "value": 0.44428418755937293}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'm55gOeqQ' --body '[{"additionalData": {"IqcJVKmB": {}}, "statCode": "M1J1IbuT"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'rrkbmuT1' 'whOqmEnD' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'XIWrBPlS' 'ay46mv71' --body '{"additionalData": {"BAZAOjtF": {}}, "updateStrategy": "MAX", "value": 0.19538688444595897}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"j7tT7TZH": {}}, "additionalKey": "WDdCkIsZ", "statCode": "oArWwPHc", "updateStrategy": "MIN", "userId": "FAdAtYci", "value": 0.591101780521284}]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'IgRwFRr0' --body '[{"additionalData": {"gwB9tz3v": {}}, "statCode": "p99XVlV8", "updateStrategy": "MAX", "value": 0.5689362203332181}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'tE6n0smi' 'p1tw3L7c' --body '{"additionalData": {"Ud9pqtv6": {}}, "updateStrategy": "OVERRIDE", "value": 0.6502290130313825}' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE