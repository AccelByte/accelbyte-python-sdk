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
dsmc-list-config --login_with_auth "Bearer foo"
dsmc-update-image '{"artifactPath": "EAxcVpFrttufHIRd", "image": "H9UzVRiXbqlAw7r6", "namespace": "W2ktQG0h5JAav5kR", "persistent": false, "version": "4n8mzZ0m8SAMTwE6"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "I56IaRDBXxyaNoMR", "dockerPath": "6hkspInrAip6lyzS", "image": "xwElFHHdgs21Jub7", "imageSize": 98, "namespace": "CUkNmKJfh5pUkHOD", "persistent": true, "version": "FcDtgOjchIua5tWE"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "IC32ogW7olvbTgrh", "dockerPath": "RTcPiSuL0Sly6XM4", "image": "OI18mAQLnzjMf8GZ", "imageSize": 0, "namespace": "WBZqxYG3aREAu2D6", "patchVersion": "QVKNCWP75TB0i7pK", "persistent": true, "version": "c8OumKtPDKJDXn7Z"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 96, "creation_timeout": 4, "default_version": "68su8XfqlqNiTvB6", "port": 92, "ports": {"7AorKsxwkosAVerX": 31, "Ki5r6QEa1ysLEzth": 67, "mXhzkzWkFeZSoEAc": 57}, "protocol": "0P7MIIR7CkyF6C7d", "providers": ["uuyZ0GhDogqrhBRd", "8lDR6qVNPRZYdFLI", "AjGGJddVCvu9vx5K"], "session_timeout": 88, "unreachable_timeout": 22}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 76, "creation_timeout": 75, "default_version": "GMS0lyuI9a2I9u6V", "port": 31, "protocol": "aT5kPxUfofvnnSuB", "providers": ["0y5WUlrMdI4sNvea", "bntBSxTeIv53HGCi", "ljvjKoyD6SCwGrnc"], "session_timeout": 34, "unreachable_timeout": 21}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '25' '87' --login_with_auth "Bearer foo"
dsmc-get-deployment 'LtjQHAf8TgoNm03V' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 17, "buffer_percent": 37, "configuration": "Q0mPVo3twu0MesTC", "enable_region_overrides": false, "game_version": "lMjGSWN2laRlxfcj", "max_count": 68, "min_count": 47, "overrides": {"fYakUCTqGkE7wcWf": {"buffer_count": 60, "buffer_percent": 78, "configuration": "slpJSqGAXQ0yYoNR", "enable_region_overrides": false, "game_version": "d3IL5TAQ6iiPlSC2", "max_count": 42, "min_count": 62, "name": "E4o5Vwdo3fePqIJA", "region_overrides": {"8IHtrkmu0hpDDWVA": {"buffer_count": 22, "buffer_percent": 88, "max_count": 1, "min_count": 49, "name": "2l5BYNtIuS5S5XUd", "unlimited": false, "use_buffer_percent": true}, "YzUOcEdscKHPEqgA": {"buffer_count": 39, "buffer_percent": 50, "max_count": 42, "min_count": 30, "name": "7Vk6Jt4Ymos9Jcdo", "unlimited": true, "use_buffer_percent": true}, "4fYcTVU6RBt0zYoM": {"buffer_count": 4, "buffer_percent": 54, "max_count": 68, "min_count": 13, "name": "yCUEXlAvxJMdalwS", "unlimited": true, "use_buffer_percent": false}}, "regions": ["PX2bOItRMvqtlB2j", "JCSQT279ZZPYGu0r", "dlgdWyOtXi3choQr"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": false}, "DBU5SepjChB3V0v5": {"buffer_count": 16, "buffer_percent": 61, "configuration": "kkK6KKXNB3Gv0Iqm", "enable_region_overrides": false, "game_version": "51TkhjYnaq6foWvX", "max_count": 0, "min_count": 84, "name": "3bMrXsDr6kILsSSy", "region_overrides": {"DdmykmoPYgc2L4jk": {"buffer_count": 59, "buffer_percent": 76, "max_count": 79, "min_count": 30, "name": "Nqq98SjTvhZNkSQ7", "unlimited": true, "use_buffer_percent": false}, "6BXksUC9b6i5lZC9": {"buffer_count": 47, "buffer_percent": 87, "max_count": 44, "min_count": 14, "name": "32e8c5csSovoqsZN", "unlimited": true, "use_buffer_percent": true}, "dte9NDUPVJf6c2Z0": {"buffer_count": 87, "buffer_percent": 55, "max_count": 64, "min_count": 48, "name": "KK2WDgCcxvONZm3E", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ERmDnyeFoF7VSZ6p", "f3vneSD2Tb3g7mSQ", "UhAEtrmjqU6YE3p4"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": false}, "Zqan0nSBJroav91G": {"buffer_count": 68, "buffer_percent": 23, "configuration": "eKtW18iGeUlc9d9s", "enable_region_overrides": false, "game_version": "x9Zw5D2L7vIYhGGS", "max_count": 50, "min_count": 70, "name": "EW4ZJJ42d3PBddN8", "region_overrides": {"S48l9lyNApflxqMr": {"buffer_count": 19, "buffer_percent": 44, "max_count": 66, "min_count": 29, "name": "gbLdLsFzHkBMr1yr", "unlimited": false, "use_buffer_percent": false}, "tqXyJ58f7Gc26Sai": {"buffer_count": 67, "buffer_percent": 3, "max_count": 98, "min_count": 10, "name": "kydwYWQG26yUZNmT", "unlimited": true, "use_buffer_percent": false}, "cvrbYCwZtxFHyPLt": {"buffer_count": 71, "buffer_percent": 36, "max_count": 61, "min_count": 17, "name": "jqoxcwgGLXpUL4pp", "unlimited": true, "use_buffer_percent": false}}, "regions": ["81P1ktfIovmv9gsR", "5cJcHm3SZLxoRDFu", "uuySj29a9LJE8HoR"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"AAMwzHPxB1UskYs4": {"buffer_count": 47, "buffer_percent": 50, "max_count": 60, "min_count": 1, "name": "OqOBSC2DKHRuPMMW", "unlimited": false, "use_buffer_percent": false}, "b33T5UBJCjfcnLRf": {"buffer_count": 47, "buffer_percent": 55, "max_count": 8, "min_count": 26, "name": "CSz9WEi8KlloeH0J", "unlimited": true, "use_buffer_percent": false}, "duat2vQR3biBfsu4": {"buffer_count": 20, "buffer_percent": 0, "max_count": 24, "min_count": 38, "name": "EXsXzOXQAk4mqrxz", "unlimited": true, "use_buffer_percent": true}}, "regions": ["qYUTLDx9gIiDandp", "GT2t24aOMh5eC3IH", "eHSKLCa3xreNDUWe"], "session_timeout": 15, "unlimited": true, "use_buffer_percent": true}' '40NLRc6m8heKnWhz' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'fe2NubeoKFeIaFQC' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 60, "buffer_percent": 85, "configuration": "k6QEgJjBbEDoNf3n", "enable_region_overrides": false, "game_version": "hEoRCAcf80zfFyab", "max_count": 36, "min_count": 55, "regions": ["Yq6hRkloqxM3gpwx", "cfMy9XzjjI5YbsKo", "ADkzJEN2VHzih3bi"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": true}' 'n3CO39PXDNxtXgeO' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 52, "buffer_percent": 64, "max_count": 83, "min_count": 12, "unlimited": true, "use_buffer_percent": false}' 'YsaZA2yyd4mbqoOf' 'ADMMAXFaY9eKa699' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'bRVhyaKwwrAP2aMl' 'u7WtjCtoYetOO847' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 13, "buffer_percent": 2, "max_count": 11, "min_count": 82, "unlimited": false, "use_buffer_percent": true}' 'Mm5cTtFWbotQyXJR' 'cQWsmqPNs92epxk0' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 18, "buffer_percent": 41, "configuration": "8VxsZNereSvf9699", "enable_region_overrides": false, "game_version": "jyAZvkRCMNFIurjh", "max_count": 15, "min_count": 18, "region_overrides": {"4TeUTkOkAYfJB8AT": {"buffer_count": 13, "buffer_percent": 41, "max_count": 78, "min_count": 93, "name": "7ZVJSPqJiwv1qlYB", "unlimited": false, "use_buffer_percent": true}, "XVv8ZGF7uYnGzpip": {"buffer_count": 81, "buffer_percent": 61, "max_count": 17, "min_count": 75, "name": "gNJma1MbqqZtfNWq", "unlimited": false, "use_buffer_percent": false}, "4nmwAft4gqkNNlWk": {"buffer_count": 60, "buffer_percent": 61, "max_count": 9, "min_count": 4, "name": "OziYRFOn0jJLHC9L", "unlimited": true, "use_buffer_percent": false}}, "regions": ["x0KOww3HICQLfl7M", "UBG7qtPu64yAtURK", "LRkb738HGS6rDgMd"], "session_timeout": 70, "unlimited": true, "use_buffer_percent": false}' 'nsZg5QgXjvyGJPN4' 'eXbJE5Vs2GcyomQo' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'IXimBJehyxlNsjUg' 'xBkF6wFPoJeQedio' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 13, "buffer_percent": 14, "configuration": "EhhM2rIizGdKvOPd", "enable_region_overrides": true, "game_version": "zZSKscfOcYu3dpCR", "max_count": 83, "min_count": 100, "regions": ["YqUiGKXVFCmpo6sP", "wVOEDSJsEK5QpNhl", "I2iS5EpGhhvXYck0"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": true}' '0NBMA9ORxpzwLR2A' 'K6eXUGPJsw1fiP80' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 67, "buffer_percent": 0, "max_count": 86, "min_count": 6, "unlimited": false, "use_buffer_percent": true}' 'lxcft2ulIJzPyrVE' 'iOG4UcqsuGKHhMRW' 'LVd3DlhLuIpomM8s' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'm1MiaI1mX2tJoARt' 'dbBe7udsMrok0WvG' 'YYnx4V709xbnGezK' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 38, "buffer_percent": 60, "max_count": 11, "min_count": 46, "unlimited": false, "use_buffer_percent": false}' '805tVg8JqU0jZpjv' 'sugAOS7u8RiWyerC' 'Sa8SRgwsAj1ik1jg' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '23' '89' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'aDXTvKCWwNTAhd2w' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 36, "mem_limit": 60, "params": "S0uPdjhdinpng5BL"}' 'y8wbhMssAHjapIkY' --login_with_auth "Bearer foo"
dsmc-delete-pod-config '9Rf4wP57dBZNR88Y' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 2, "mem_limit": 96, "name": "CtmKy8M9zVrjfGXZ", "params": "nqAQUoY1GjlIIk0i"}' 'KoTTS1j02o7JjTXA' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 88}' '5JX8ccLjMXJRk0ea' --login_with_auth "Bearer foo"
dsmc-delete-port 'KQDOJvrTefglSs6g' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "4iY9u02aCNYIWekp", "port": 96}' '8lOC3mNqF7Bl0Lcg' --login_with_auth "Bearer foo"
dsmc-list-images '15' '63' --login_with_auth "Bearer foo"
dsmc-delete-image 'VHfPEspxwhRON0bc' '1eMbEIjowLqc3ecj' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'XJbZDKKoxLE1Y3Dy' 'mtj3giPg4x4yiPX6' 'ues1Hhhkg1yLVbLF' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'zHEP8cM4NTwr0KHa' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'AsmTej52WKi6tArA' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'URt9plCSVq8PdH6h' 'JPUAc0RVwXgAgntL' --login_with_auth "Bearer foo"
dsmc-list-server '80' '46' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'CuaXBWQi6BqPg4xr' --login_with_auth "Bearer foo"
dsmc-get-server '0lCancUZGCHsZYoL' --login_with_auth "Bearer foo"
dsmc-delete-server 'fR1KtOv7Zy0b65uv' --login_with_auth "Bearer foo"
dsmc-list-session '41' '76' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'ijFnE3Tam69qSZ7P' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'C6f6QkmZXElW9YfR' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "Sse6AAz3S4czz0QK"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "FlAVmVLu4AOec0z8", "ip": "eBeeoip68J1nsv4W", "name": "2OJhtafxMSJlHeb3", "port": 74}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "sZKHcl5LLLOexL4f", "pod_name": "ZvWtND2tcBFpX8lN"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "JCf2XJVrlzqQls1o"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'zhLVA3kE8jKvgatO' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "EBM70TdlNBJYOmpu", "configuration": "1VCarzBsV6xnZ5Jr", "deployment": "zzjrcaug6CWVG8SW", "game_mode": "P3glU6muswVJnNnN", "matching_allies": [{"matching_parties": [{"party_attributes": {"7kAa7j0riFc5HTHQ": {}, "IoVsGo7dwV9DBqFK": {}, "HQkETJyTlUrwDTno": {}}, "party_id": "ujQD4IEiH9Z5qXn3", "party_members": [{"user_id": "aoRtlqOECohViHA5"}, {"user_id": "CzgFSy8X1A3PrIfa"}, {"user_id": "pq5AAeMe4L3mDWOR"}]}, {"party_attributes": {"BVXTIIJM9XsYIIZx": {}, "iXNMR9BgaWcFX3SU": {}, "BhyoTsMWPAxUMkaw": {}}, "party_id": "aGpAyrIwMif3BOdk", "party_members": [{"user_id": "ocVTd4BxqGWV6mTJ"}, {"user_id": "0sQs6XNbjvqhnUVL"}, {"user_id": "Wu8olKdxL6ozRmDD"}]}, {"party_attributes": {"0jJvlfV5OemPYdYT": {}, "7DROCjtuzFMbAG9Y": {}, "I89hmguB8FOTjMLo": {}}, "party_id": "4b9rIzqYkEpstyVT", "party_members": [{"user_id": "BcrM8rG0rH0zcsww"}, {"user_id": "VeMK6MbGIVIu8vvw"}, {"user_id": "Lc7KY3uVoJXTIMtp"}]}]}, {"matching_parties": [{"party_attributes": {"gkieDyF97lGdMiHK": {}, "xbWCYzo8yO2KTK9t": {}, "mmOnYnOpas6ghP1y": {}}, "party_id": "4Zi7s7QBlk44Z44B", "party_members": [{"user_id": "1GZgKg4uKxaCgcGL"}, {"user_id": "uC3brWdTYCfHkIyS"}, {"user_id": "ok5DiXZtLW87rGys"}]}, {"party_attributes": {"ryod3dNQrmsApRA6": {}, "HX3RwrKt2ecozL0T": {}, "Og54vCE48L5oLF6M": {}}, "party_id": "4lNa4JUMSHNgqRqC", "party_members": [{"user_id": "V7usamANkZlOX9Sf"}, {"user_id": "o95HgXqKhTPkwfLM"}, {"user_id": "9uSybRzWek2gZvRr"}]}, {"party_attributes": {"vr0n9d9lvccKMLhr": {}, "TrcBE2ItBS3KtKZW": {}, "e8aoFzAyBME74HUt": {}}, "party_id": "ipUWYhWV1qx8CzPM", "party_members": [{"user_id": "L52faXUr9Sk4lq2f"}, {"user_id": "aBcAXXKlhvyH8paO"}, {"user_id": "JtxqMPpcVfRwNj54"}]}]}, {"matching_parties": [{"party_attributes": {"7fH0XrKEDpEY8Vno": {}, "cGAjci0V3tBf2jnH": {}, "GKXphn50c9tNLDlj": {}}, "party_id": "hZ2jxLRX3z46OCaG", "party_members": [{"user_id": "BeMfPlNos4yBRjrE"}, {"user_id": "RHEonAZR8GmEu0q1"}, {"user_id": "p6QCyY6vSkVFWdsb"}]}, {"party_attributes": {"YuVEGVxYheR3j5mN": {}, "Z6vwv7K8Asvt1j1R": {}, "x59hesNWy2NvZ85D": {}}, "party_id": "DKDAF8KDsBZOuYQJ", "party_members": [{"user_id": "03BAHZ7c53q7akMp"}, {"user_id": "cmnnx6RVBrop9v7a"}, {"user_id": "ZK3h65hbN15zfQSf"}]}, {"party_attributes": {"QrtfF3TQN0OcNDLr": {}, "36vzohZyjMQAg5mP": {}, "YhrLTyU8OhgfY9JQ": {}}, "party_id": "YGF4bYXEcENx9xZl", "party_members": [{"user_id": "Achob44lONDDwMvg"}, {"user_id": "I0HlyPR7wZNiVsF6"}, {"user_id": "xG2mXEQdbzIVy8al"}]}]}], "namespace": "ncV7vWgSHdfo07Uc", "notification_payload": {}, "pod_name": "tPErqxyMyOK06MqQ", "region": "BErxgjVBycvU4Pbm", "session_id": "RDcrg0DjQjBECXve"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "a7H1m2lJFRZ3ZprZ"}' --login_with_auth "Bearer foo"
dsmc-get-session '60zMjhTHeh94TSen' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'E5hCFkIf5weqZ18M' --login_with_auth "Bearer foo"
dsmc-public-get-messages --login_with_auth "Bearer foo"
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
echo "1..69"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListConfig
$PYTHON -m $MODULE 'dsmc-list-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListConfig' test.out

#- 3 SaveConfig
eval_tap 0 3 'SaveConfig # SKIP deprecated' test.out

#- 4 UpdateImage
$PYTHON -m $MODULE 'dsmc-update-image' \
    '{"artifactPath": "H57l2Zsrh90ETtYm", "image": "Gukz3MnlrjcHp6B8", "namespace": "Vj7rXFgDnDkdZ9bp", "persistent": false, "version": "wSWTaLQjctvrK2jh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "sYpKPlXn77AtYoFz", "dockerPath": "LAATPY8P8P3cfoiv", "image": "vQxevecWw7Rry0KK", "imageSize": 7, "namespace": "rgAGO0dW8rX2MVUG", "persistent": false, "version": "SZ4GcLkt4pK32sJx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
$PYTHON -m $MODULE 'dsmc-import-images' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
$PYTHON -m $MODULE 'dsmc-create-image-patch' \
    '{"artifactPath": "lZcCTpTdRtCHvuk6", "dockerPath": "B6XTmSLyn50sigBV", "image": "ZxiKdV57GvRyd9Uu", "imageSize": 76, "namespace": "LiD5sf5y1JsxJNGm", "patchVersion": "yt0SQDUDoWBZVGLl", "persistent": false, "version": "zPAANjfBoldFOyqA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetLowestInstanceSpec
$PYTHON -m $MODULE 'dsmc-get-lowest-instance-spec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetLowestInstanceSpec' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 16, "creation_timeout": 4, "default_version": "m51T107XIZRZ7tZd", "port": 70, "ports": {"gbNEIpGBFUjOn5mM": 83, "k8nbLzvtCIW5ynMK": 33, "WVnuYLgpZehK0G2n": 25}, "protocol": "lW4tLqX7OICf5oD1", "providers": ["e6oI9FmYel0kOw72", "o8Zkgk0jS6rDWUwf", "hKvrf2AaH4yCWrHS"], "session_timeout": 31, "unreachable_timeout": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateConfig' test.out

#- 11 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteConfig' test.out

#- 12 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 44, "creation_timeout": 26, "default_version": "DJ3w3UNgIGj2jZtE", "port": 4, "protocol": "T8sIPSE1XXPzySa0", "providers": ["sZoFS6xCOWMpyh9p", "MsQgb64ELbzDMwyo", "4nIRysQdbufXjYnS"], "session_timeout": 29, "unreachable_timeout": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateConfig' test.out

#- 13 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'ClearCache' test.out

#- 14 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    '71' \
    '75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'FeouC2m38kXrDZWl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 63, "buffer_percent": 29, "configuration": "9sJ4NpUtKp6M9I6n", "enable_region_overrides": true, "game_version": "eLtzcPJ3jtDYBo4F", "max_count": 96, "min_count": 94, "overrides": {"z95OYKiqaZD63xe5": {"buffer_count": 36, "buffer_percent": 33, "configuration": "ruJVfLGea0ZtlzUc", "enable_region_overrides": true, "game_version": "1RgBfoNrHlFi2qJL", "max_count": 12, "min_count": 54, "name": "mBLE35YhyiDV90Se", "region_overrides": {"I5yppBHoytVznCgN": {"buffer_count": 50, "buffer_percent": 49, "max_count": 82, "min_count": 85, "name": "fbT63ShEh8PbGikL", "unlimited": false, "use_buffer_percent": false}, "uAPP8PATLpUpxeJl": {"buffer_count": 38, "buffer_percent": 65, "max_count": 55, "min_count": 3, "name": "JT6Hh3OMjAjq2mK8", "unlimited": false, "use_buffer_percent": false}, "DtJMcYQdN66bswAg": {"buffer_count": 40, "buffer_percent": 28, "max_count": 23, "min_count": 53, "name": "4N1LQZmB61JMdtwC", "unlimited": false, "use_buffer_percent": true}}, "regions": ["NlZkqTZrKgXNwvm4", "e5GX6H742OixhtAo", "KiVm6URT95XhnUcv"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}, "8MpusuhhDJ5slzgi": {"buffer_count": 100, "buffer_percent": 51, "configuration": "ZEtyd56LfxnbY97j", "enable_region_overrides": false, "game_version": "TDfKFDXC7eGL5YhJ", "max_count": 61, "min_count": 10, "name": "Wh9YWqc0qgV6d9yO", "region_overrides": {"fIMLds2DbPcaoMdt": {"buffer_count": 88, "buffer_percent": 5, "max_count": 78, "min_count": 17, "name": "TmSvTkQQgB7exYvm", "unlimited": false, "use_buffer_percent": false}, "xr5hPCJJztJBg0tT": {"buffer_count": 73, "buffer_percent": 47, "max_count": 12, "min_count": 97, "name": "46IewOXE2AkCh3QI", "unlimited": false, "use_buffer_percent": true}, "0kg16yUSpSOAjHJW": {"buffer_count": 46, "buffer_percent": 83, "max_count": 11, "min_count": 6, "name": "CjYwWkLob9gKLqs2", "unlimited": false, "use_buffer_percent": true}}, "regions": ["EZhpByfHZinxNfgP", "AwkMBsznlBUqnLT4", "AbGptKaWNvPbpg7y"], "session_timeout": 35, "unlimited": false, "use_buffer_percent": true}, "vXfZ6rvgvEY3Hht1": {"buffer_count": 91, "buffer_percent": 46, "configuration": "QxZkaXZ7vmiEd0JP", "enable_region_overrides": true, "game_version": "1Ps3ztUIV0dS6hIH", "max_count": 5, "min_count": 54, "name": "4VfkyrwpuXxbaERb", "region_overrides": {"fgPmi0eHkt1mr9EO": {"buffer_count": 70, "buffer_percent": 91, "max_count": 65, "min_count": 16, "name": "g0dnWIYN2NVL70Iw", "unlimited": false, "use_buffer_percent": false}, "QkQD6WmOt6D7ufFV": {"buffer_count": 94, "buffer_percent": 55, "max_count": 84, "min_count": 82, "name": "hvQpfbBke8aEdd36", "unlimited": true, "use_buffer_percent": false}, "xmFNAmjDDCvs78mc": {"buffer_count": 80, "buffer_percent": 74, "max_count": 6, "min_count": 63, "name": "iS76YApGJ9ufwLYk", "unlimited": true, "use_buffer_percent": true}}, "regions": ["gLuZS6hsQryiEtOA", "bpeUNf26UqkCfgCU", "YBn2xaOBdPF0JmX8"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"U1cTuHHPB5S3DvPR": {"buffer_count": 59, "buffer_percent": 32, "max_count": 52, "min_count": 56, "name": "xD2NY0kABeGs9yxa", "unlimited": false, "use_buffer_percent": false}, "1W0TGTCm4fZWuk6p": {"buffer_count": 86, "buffer_percent": 44, "max_count": 48, "min_count": 4, "name": "DQpKqxLGeMvr9Tsv", "unlimited": false, "use_buffer_percent": false}, "a6iZ5uFRYNn3SHiW": {"buffer_count": 49, "buffer_percent": 52, "max_count": 64, "min_count": 97, "name": "0YbuU5ar5qTLWUCy", "unlimited": true, "use_buffer_percent": true}}, "regions": ["bk6C2cVWf6ttvbU1", "PO6ApCD2VXidT7w0", "Oc15N8WXBPp17PAe"], "session_timeout": 47, "unlimited": false, "use_buffer_percent": true}' \
    '1fIrPvfHnRN06EjR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'wEQlNapJRfk4f9Zc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 39, "buffer_percent": 98, "configuration": "pEHAyNFxcVTKuAQT", "enable_region_overrides": false, "game_version": "GxD9IPmmsLmu3kaP", "max_count": 19, "min_count": 29, "regions": ["0O4zd8Tb7cUNGPTB", "xiFFCrn7djjs69FT", "FVGUVhvKhJCmeisq"], "session_timeout": 22, "unlimited": false, "use_buffer_percent": true}' \
    'mUHVbMPimNhcZsU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 97, "buffer_percent": 72, "max_count": 54, "min_count": 6, "unlimited": false, "use_buffer_percent": true}' \
    '3GUS2amU7syGlElX' \
    'dEAOrVSnLocLVVYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'mQc4wcG5nDBLJoJH' \
    'biQ5duE5p4cfs2E4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 21, "buffer_percent": 4, "max_count": 14, "min_count": 74, "unlimited": true, "use_buffer_percent": true}' \
    'QTwiIAvxSvNDlmM5' \
    'nQFMGzs7fzjgyc44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 25, "buffer_percent": 95, "configuration": "Eh9tRk8knYSV30ln", "enable_region_overrides": true, "game_version": "xBPNe8ae1Il4aAtE", "max_count": 2, "min_count": 43, "region_overrides": {"xm09wpGAbpEmDY9v": {"buffer_count": 77, "buffer_percent": 15, "max_count": 62, "min_count": 42, "name": "8rG0q0Q2Qd2JzRbk", "unlimited": true, "use_buffer_percent": true}, "dIjvBbA6bfbYaJCJ": {"buffer_count": 18, "buffer_percent": 11, "max_count": 21, "min_count": 3, "name": "2TUvn95FhO7VW3mb", "unlimited": true, "use_buffer_percent": false}, "VMDu87t0ldWf7iSG": {"buffer_count": 71, "buffer_percent": 18, "max_count": 75, "min_count": 49, "name": "FtWtn4Yr2svKM6pq", "unlimited": true, "use_buffer_percent": true}}, "regions": ["7uxBJEECQE1li3Bg", "7Jxc9pUnZmvhidwC", "kZwqjYLfTiCO1NDB"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}' \
    'vRPnAz4VzW0CpoBC' \
    'byJsF5IjF1c0W338' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'HS6CBgVRyihYNZ84' \
    'CVhziXV8HwSmvcvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 61, "buffer_percent": 74, "configuration": "wvLsWUNd6lPKvqDe", "enable_region_overrides": false, "game_version": "83AdvBaagTiRJ8da", "max_count": 66, "min_count": 32, "regions": ["TVX3Bb7jlz5IfHgK", "jI9mwJSrN8jkIykR", "2zbaI6PD7fEscShn"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": true}' \
    'tx4XLKAmlDr19uJ3' \
    'nq6VerzVCcI8y3Cz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 39, "buffer_percent": 2, "max_count": 34, "min_count": 16, "unlimited": true, "use_buffer_percent": true}' \
    'h5RD9vNAp4jinFpn' \
    'Q5xF9wwbvMZyeDeR' \
    'nVfPUa6xVVBcq3wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'pFIYeAg79HcLJXJ7' \
    'mpVI6eTYAjdPlCiQ' \
    'QC35cj4KyOVgvnWb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 10, "buffer_percent": 49, "max_count": 90, "min_count": 12, "unlimited": true, "use_buffer_percent": true}' \
    'tbECD1CYPwaiBAxf' \
    'YL8Avt70ZUT2fSk3' \
    'LL0calqxEewuGS46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '34' \
    '21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    '9dP5szG71utjsQ4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 36, "mem_limit": 88, "params": "UHZVNYzGMNIpWoSL"}' \
    'kUrfuf4U3WeYeA9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    '2ENKKWrFtHIi1CMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 74, "mem_limit": 28, "name": "AOG5iDcCR5PbCvDL", "params": "il8wj9cKM3Ar6MF3"}' \
    '5hCER4nGmWGgTJfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 22}' \
    'LMq1o2jZWu4yA3r0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'u4q1bTHXIjfJKyFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "M0u1uuoVdn9yVoSl", "port": 76}' \
    '5KwMZQjzvjSozv6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '94' \
    '7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'RDl0zp9CzHFwinkB' \
    'Ni4gvqgl6TZ9TGVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteImage' test.out

#- 38 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'ExportImages' test.out

#- 39 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetImageLimit' test.out

#- 40 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    'mv34h6T7EsufmfxK' \
    'YB4LM6H6QXmpZ9X3' \
    'fUSR1l9xLPBsmAUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'D9L1IiD6MlcEPhMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'FzjHZ3sIhzOx2CXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'lvIomU3pIxM9n8D2' \
    'eLMe3lt9qfx2UDcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '98' \
    '57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'E7L9FK6e0MrPc4vt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'xk9hVKlG56HlzGr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'XjdyRJunZPkp6ccI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '57' \
    '75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    'nWyPw8mj7gyQ7XdI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'szGRj46COPipH1MW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "VTHG0qHJCWEfOJpZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "m9yEYWNGMy2pgSGS", "ip": "UOK68eqGJtWf1Ybg", "name": "g8rdwY9bmrvHmO07", "port": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "SA6sMJzA5mtqISQ8", "pod_name": "3TTbtefXWznDe4LQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "PdbTTAJ2Gp1r0sVZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    '6LJAOddIL2l3hPjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "DKv2LWfXqjr8fS79", "configuration": "En3wYowBdkaZ3y6i", "deployment": "38XQjLDRqkpiFK5B", "game_mode": "tiQ272Uo9UBJWodp", "matching_allies": [{"matching_parties": [{"party_attributes": {"dwsX1jorcyR0x3Yi": {}, "HF8ITGPRQBCgIs1Q": {}, "2lzxl0yF5m77TTh4": {}}, "party_id": "gUoj8u2WRcLiEtzV", "party_members": [{"user_id": "lnkflfn7pHY48F1d"}, {"user_id": "l1q92m3iRlfnBAk0"}, {"user_id": "CwiAsR65yQ9ssuHd"}]}, {"party_attributes": {"GmxncCEr0KcgeqzG": {}, "bruNB72HHMkjzyBB": {}, "4UFKiaoV0VOem2yq": {}}, "party_id": "PsMFxKybPkbuS6x9", "party_members": [{"user_id": "cLJ1APnNlsa2bRBr"}, {"user_id": "27fVMWuAfDqLMR91"}, {"user_id": "9IZPKOKiAVQXXOmq"}]}, {"party_attributes": {"FHLbyXmgCNiXH8ue": {}, "nbC5CphgMweexsIA": {}, "P5vHLjBJ9iqMcBL4": {}}, "party_id": "BzhDUjhKPwbwcvQU", "party_members": [{"user_id": "5kG8bXGFmPAnOkDi"}, {"user_id": "Jq4xQye7HqnVK3YV"}, {"user_id": "eOWs9mfVQh3jLBtn"}]}]}, {"matching_parties": [{"party_attributes": {"9pxpE7BYtzB0B4Cx": {}, "yQrUpIFvORxTi79D": {}, "pSjb39ukcR6c2E2r": {}}, "party_id": "3vk3IfAKEbqcNXSG", "party_members": [{"user_id": "CCvNowNmdpcJgF88"}, {"user_id": "ySNq4Mj7mulP4tQ6"}, {"user_id": "R1OqKVOTniBgLsNh"}]}, {"party_attributes": {"dgQ0JWZjNRSzOTqc": {}, "VNX3ahvxw9gwwhTn": {}, "jN6wKZGW4y3f0R9s": {}}, "party_id": "2kndhhZhwAiLsZs4", "party_members": [{"user_id": "pmLDIQch4IjDq9aT"}, {"user_id": "3qZyI0rYsWucAkXs"}, {"user_id": "VJbXi7eRZa7WwIc8"}]}, {"party_attributes": {"95ImqK6tVsaUq3st": {}, "Uh5J5Z9GiBiSAylX": {}, "5cS0IeHpWCugmfOL": {}}, "party_id": "0QQpxsuD8PGqku59", "party_members": [{"user_id": "eFJrOXyDYz9vMUOP"}, {"user_id": "G0iHDT8QbF7gHPTP"}, {"user_id": "QbvLt2NRqJGIKzLy"}]}]}, {"matching_parties": [{"party_attributes": {"H1y72L13Ornyx34l": {}, "uLdvtsTKXMjiw6gY": {}, "Pvfn2Qt9iyq3Nyk8": {}}, "party_id": "ncu2Z3eDHH9WaVO4", "party_members": [{"user_id": "iKhDcJ7TCcNIsQ3P"}, {"user_id": "uppUxDSK8aOTGMud"}, {"user_id": "cxlCV4cNbJGQ57lP"}]}, {"party_attributes": {"dinpjS2DRfGt9Gly": {}, "ZVQ4X67tPZSTpPq3": {}, "xjrElvvDgw0ag7kS": {}}, "party_id": "WE0Hiqm5IuLryiEX", "party_members": [{"user_id": "qvUWDjU1G0EVjVZw"}, {"user_id": "1ToLuPakQN1MpOs1"}, {"user_id": "RVFrcg2CXxepx78f"}]}, {"party_attributes": {"vsyhE2BKtyTDSIM7": {}, "mkmvZ7Cmsh4US8o4": {}, "jfMANPpmZDdMiCxm": {}}, "party_id": "uCCVuFjS1GC1d2b9", "party_members": [{"user_id": "2B4vEgj3HOmhcWm4"}, {"user_id": "28XejRF94NIY9nMr"}, {"user_id": "BZo0lNUBDShHD32v"}]}]}], "namespace": "vL28FPwTiXfLcxDC", "notification_payload": {}, "pod_name": "9Ynd02mECIQhfIhH", "region": "tADUQ9zimQTQT95p", "session_id": "FJUAJsyAfeKOufV4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "f15NohXu6opxQGRt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    '6PqlkL0diRhLC10i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'h2EQfY3XCv4hdOa6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
