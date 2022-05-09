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
ugc-single-admin-get-channel --login_with_auth "Bearer foo"
ugc-admin-create-channel '{"name": "FtBxyZcD"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "XBpGlsQu"}' 'Ju8vMf0I' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'sJkTrd8I' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "DcV2zXnT", "fileExtension": "KjXY1bPq", "name": "amiBxx9C", "preview": "s18EY84e", "subType": "kItqRzHU", "tags": ["1oh570KQ"], "type": "BVaewc72"}' 'krSha68n' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "3Ynozp1C", "fileExtension": "2KmIQTuB", "name": "dNEUsxFb", "preview": "8CJ17M7D", "subType": "JZaMSxEC", "tags": ["bZbygyoa"], "type": "rORoeNHS"}' 'b8Rh3kgs' '9qqJbnQs' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'oBgiVpP8' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'Cm3yvASU' 'oxdxxFqm' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'AGTJ8IEd' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'agEtp4w2' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "9KOu9c19", "screenshotId": "R6XDqWHk"}]}' 'kP8npLEK' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "MfjiX7jp", "description": "kVZk3IaQ", "fileExtension": "jfif"}]}' 'mqGodOEG' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 't9gPOj0c' '6i0JkvIa' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["s73ucYnF"], "name": "AJ3DK5T4"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'Eogg0Y39' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["UoYlpv5b"], "name": "VAgtsDhU"}' 'TDUscbQD' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'jbTQuPMz' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents '2PTRlkyU' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "89ZPOw6z"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "PFJ42cwm"}' 'zBBSMNco' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'AAOjKNjf' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["cYHm093a"], "type": "YgBU1sqj"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["yK0XH45P"], "type": "aRSOFQBt"}' 'u23REZ8h' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'RVX7LGOv' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'DdYiQS9i' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels '7mV1C91p' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "jG9gpxL6"}' 'ycTQdvln' '2LAuSQWE' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'XL6LFE1Y' 'Ho9m126Z' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "Wc8hHtWv", "fileExtension": "bNYqgUqs", "name": "lArFPiHU", "preview": "IvaCv8kU", "subType": "9dBBpdsJ", "tags": ["LhsVyExr"], "type": "kxoot0B7"}' 'WOfercZd' 'pMci37Ds' '7YSfExaI' --login_with_auth "Bearer foo"
ugc-admin-delete-content '3uzLteMb' 'FAlt4hr7' 'HmOYiBA5' --login_with_auth "Bearer foo"
ugc-admin-get-content 'ltAOXmlG' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '6eh1dTdo' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'pBIcuC1d' 'QY93OJnJ' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups '6Te9vD8l' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'dz7Hu8AD' --login_with_auth "Bearer foo"
ugc-admin-get-group '79kdWunv' 'izU0q1pH' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["yhhERoGg"], "name": "drysMizB"}' 'GSRdP2l7' 'DNSZ8Aq0' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'XiPLQXSe' '07ZddOGT' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'MlJjBwj9' 'HJHQKseE' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'dSXRDSvg' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'uauw1xT7' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["eMwSl9ML"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-download-content-by-share-code 'H0NnTJ2u' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'lNzBvwJa' --login_with_auth "Bearer foo"
ugc-add-download-count 'Qa547Jll' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'A8RWSpab' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'Ut7xk6Qx' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-get-creator 'yWhfqoWf' --login_with_auth "Bearer foo"
ugc-get-channels 'Jw2o8oWU' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "qvPCZ2Hz"}' 'T7NXmWDl' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'XsuNIdQJ' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "R5lsNOlv"}' 'kfwaSbns' 'uLCgToxu' --login_with_auth "Bearer foo"
ugc-delete-channel 'VTekJgvg' '6h5HIpH0' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "DviplEk4", "fileExtension": "vj3LDp4y", "name": "qDt8QUZD", "preview": "pxlHasin", "subType": "GcjrkmRM", "tags": ["ttgjDSaI"], "type": "VBmft3Ud"}' 'g7p9PGmY' '2H5kX4Ms' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "isSX28nA", "fileExtension": "RxWRpv5o", "name": "u5xtvd28", "preview": "OUfCt8UJ", "subType": "C5flNyj6", "tags": ["HsTtX8P3"], "type": "llnaaS9l"}' 'qyygPcfk' 'JIxfQZza' '8kNVbDxV' --login_with_auth "Bearer foo"
ugc-delete-content 'Mq7HJk0F' '89xAc3YV' 'faENtrl0' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'pTKZTXqz' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'HuBMYQSA' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "2jz1ZOpd", "screenshotId": "OjSyMddB"}]}' '41JuMf7R' 'UyBHRj8I' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "iRimRllH", "description": "T6Dc40vF", "fileExtension": "jfif"}]}' 'A6gpU7EW' '3x1dCpm5' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot '5gOeqQIq' 'cJVKmBM1' 'J1IbuTrr' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'bmuT1whO' --login_with_auth "Bearer foo"
ugc-get-public-followers 'qmEnDXIW' --login_with_auth "Bearer foo"
ugc-get-public-following 'rBPlSay4' --login_with_auth "Bearer foo"
ugc-get-groups '6mv71BAZ' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["AOjtFJ2v"], "name": "mTj7tT7T"}' 'ZHWDdCkI' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'sZoArWwP' --login_with_auth "Bearer foo"
ugc-get-group 'HcyFAdAt' 'YciLIgRw' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["FRr0gwB9"], "name": "tz3vp99X"}' 'VlV8rK3t' 'E6n0smip' --login_with_auth "Bearer foo"
ugc-delete-group '1tw3L7cU' 'd9pqtv6J' --login_with_auth "Bearer foo"
ugc-get-group-content 'fPZwcCVO' 'XcVa80Tm' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'CwtD2lAH' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE