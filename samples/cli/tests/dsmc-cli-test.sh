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
dsmc-update-image '{"artifactPath": "EAxcVpFrttufHIRd", "image": "H9UzVRiXbqlAw7r6", "imageReplicationsMap": {"W2ktQG0h5JAav5kR": {"failure_code": "a62WopBJHPtcDs8b", "region": "BZLCXLx8bbgorQeF", "status": "bQ1g7qbPngUNB1vR", "uri": "odwpzS6DaDpv8N7Z"}, "QVqGj6oDLjWjkY1a": {"failure_code": "XlFcDtgOjchIua5t", "region": "WEIC32ogW7olvbTg", "status": "rhRTcPiSuL0Sly6X", "uri": "M4OI18mAQLnzjMf8"}, "GZ2WBZqxYG3aREAu": {"failure_code": "2D6QVKNCWP75TB0i", "region": "7pKxR8dl0zRVW4EZ", "status": "G9m0XcgGVbMqSszE", "uri": "8GHavj7AorKsxwko"}}, "namespace": "sAVerXpc1C8XfwHu", "patchVersion": "Keb9l3rGN9A3sNm8", "persistent": false, "version": "hddSpHt0P7MIIR7C"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "kyF6C7duuyZ0GhDo", "coreDumpEnabled": false, "dockerPath": "dxLzFQN05MYzYiKW", "image": "e5dNRljv7IPrDQQR", "imageSize": 13, "namespace": "u9vx5KQ7KYnIuMBv", "persistent": false, "version": "9a2I9u6Vpbsx5w8h"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "qUI06UpOXGSLmCVu", "coreDumpEnabled": false, "dockerPath": "OPlLlkvR8sKgnuRk", "image": "gghGoYupD391C2qt", "imageSize": 85, "namespace": "SCwGrncqmLtjQHAf", "patchVersion": "8TgoNm03VLisV6zw", "persistent": false, "uploaderFlag": "uo3td6TC6I3lMjGS", "version": "WN2laRlxfcjHfYak"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 95, "creation_timeout": 3, "default_version": "CTqGkE7wcWfDslpJ", "port": 91, "ports": {"WytLPziZMdjxcBZu": 11, "5TAQ6iiPlSC2uE4o": 61, "Vwdo3fePqIJA8IHt": 35}, "protocol": "qb8RwNmn9HrNQy4u", "providers": ["ZAAiE0mit9RGCCHY", "zUOcEdscKHPEqgA8", "yu7Vk6Jt4Ymos9Jc"], "session_timeout": 7, "unreachable_timeout": 30}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 33, "creation_timeout": 38, "default_version": "uIOvBMcaYmvCkGZ5", "port": 6, "protocol": "cHyCUEXlAvxJMdal", "providers": ["wSyliWMNW5NyLu0M", "3VHh2EI8JlDbPWbQ", "6Q9lNmqRBaAkLnvx"], "session_timeout": 22, "unreachable_timeout": 29}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '94' '88' --login_with_auth "Bearer foo"
dsmc-get-deployment '1X68cmDc3fxU8MyK' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 97, "buffer_percent": 88, "configuration": "0v52Dlym6puQ23xo", "enable_region_overrides": false, "extendable_session": true, "game_version": "eCnaLpUKp44YUDja", "max_count": 38, "min_count": 44, "overrides": {"WIPUvmEejtGeoyIP": {"buffer_count": 1, "buffer_percent": 91, "configuration": "8ZRrvjj7il35MXbN", "enable_region_overrides": false, "extendable_session": false, "game_version": "4Lo0LSP0pf4IxjUk", "max_count": 23, "min_count": 88, "name": "535X3ateEKDpADz1", "region_overrides": {"x3poD3Qgb3boLQQ1": {"buffer_count": 80, "buffer_percent": 30, "max_count": 53, "min_count": 44, "name": "H7Qm8bwbmXgdAPh1", "unlimited": true, "use_buffer_percent": false}, "ThG96gAFKK2WDgCc": {"buffer_count": 49, "buffer_percent": 69, "max_count": 43, "min_count": 36, "name": "ONZm3EeERmDnyeFo", "unlimited": true, "use_buffer_percent": true}, "6pf3vneSD2Tb3g7m": {"buffer_count": 92, "buffer_percent": 39, "max_count": 87, "min_count": 42, "name": "UhAEtrmjqU6YE3p4", "unlimited": false, "use_buffer_percent": false}}, "regions": ["ck0ZHn5GI39YBHqa", "THeKtW18iGeUlc9d", "9sogWa24CKNS0GqV"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": true}, "HQvsHXNUNe4mhgo5": {"buffer_count": 87, "buffer_percent": 91, "configuration": "B65lSAiYnNjkfZrQ", "enable_region_overrides": true, "extendable_session": false, "game_version": "gbLdLsFzHkBMr1yr", "max_count": 83, "min_count": 78, "name": "jtqXyJ58f7Gc26Sa", "region_overrides": {"iGVkydwYWQG26yUZ": {"buffer_count": 81, "buffer_percent": 25, "max_count": 14, "min_count": 93, "name": "sfpFDcSDG8aMVGLi", "unlimited": true, "use_buffer_percent": true}, "NrDjqoxcwgGLXpUL": {"buffer_count": 6, "buffer_percent": 32, "max_count": 34, "min_count": 31, "name": "Ct81P1ktfIovmv9g", "unlimited": true, "use_buffer_percent": true}, "5cJcHm3SZLxoRDFu": {"buffer_count": 43, "buffer_percent": 11, "max_count": 41, "min_count": 89, "name": "ySj29a9LJE8HoRS1", "unlimited": false, "use_buffer_percent": true}}, "regions": ["AnkCmBUqg2SCnqnt", "X9y1aZSWMiVi10sG", "6vxkfUcmqRRbceJ5"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": false}, "EeDxOgBnhhqElIaD": {"buffer_count": 25, "buffer_percent": 24, "configuration": "l48wdNFLTm5T50x9", "enable_region_overrides": false, "extendable_session": false, "game_version": "fH2rtOa4EXsXzOXQ", "max_count": 55, "min_count": 78, "name": "k4mqrxzTtuLl4Xlb", "region_overrides": {"GL8QOxtjzm8y2wNh": {"buffer_count": 25, "buffer_percent": 83, "max_count": 45, "min_count": 78, "name": "oYZyI4EFZKBcYrCE", "unlimited": true, "use_buffer_percent": true}, "E7WIsfmx40NLRc6m": {"buffer_count": 15, "buffer_percent": 60, "max_count": 9, "min_count": 74, "name": "KnWhzfe2NubeoKFe", "unlimited": false, "use_buffer_percent": true}, "FQCYoDPICpnduEEQ": {"buffer_count": 22, "buffer_percent": 60, "max_count": 96, "min_count": 29, "name": "LdJz4mnRBkMNxvvK", "unlimited": false, "use_buffer_percent": false}}, "regions": ["AT8mJrYq6hRkloqx", "M3gpwxcfMy9XzjjI", "5YbsKoADkzJEN2VH"], "session_timeout": 51, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"QBHO86IlBhnetU4R": {"buffer_count": 46, "buffer_percent": 61, "max_count": 94, "min_count": 81, "name": "qUXlTDBzOuYsaZA2", "unlimited": true, "use_buffer_percent": true}, "Y3snn2ZkP7cFdP43": {"buffer_count": 9, "buffer_percent": 7, "max_count": 9, "min_count": 59, "name": "Ka699bRVhyaKwwrA", "unlimited": false, "use_buffer_percent": false}, "MzF4TxodenSrUTvf": {"buffer_count": 33, "buffer_percent": 95, "max_count": 13, "min_count": 2, "name": "8OudOfjnCuHZ3c46", "unlimited": false, "use_buffer_percent": false}}, "regions": ["a23YvYmmDg7VYPXI", "uvUYTZBRujIUE1Tq", "5jyAZvkRCMNFIurj"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": false}' 'imdb4rbkXj0ZwsVC' --login_with_auth "Bearer foo"
dsmc-delete-deployment '0gL97ZVJSPqJiwv1' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 11, "buffer_percent": 24, "configuration": "LCr3OOlXVv8ZGF7u", "enable_region_overrides": false, "extendable_session": false, "game_version": "zpipNDigNJma1Mbq", "max_count": 34, "min_count": 1, "regions": ["ZtfNWql4nmwAft4g", "qkNNlWkD9eOziYRF", "On0jJLHC9LxhvNXT"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}' 'HICQLfl7MUBG7qtP' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 42, "buffer_percent": 61, "max_count": 36, "min_count": 92, "unlimited": true, "use_buffer_percent": true}' 'QXCs5SPBbRPZTF6o' 'QAXVG7tnsZg5QgXj' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'vyGJPN4eXbJE5Vs2' 'GcyomQoIXimBJehy' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 48, "buffer_percent": 28, "max_count": 23, "min_count": 26, "unlimited": true, "use_buffer_percent": false}' 'nGBt4P7WnbdSJtjX' '7ZshZyZl5x4bRXBH' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 96, "buffer_percent": 83, "configuration": "TrDzZSKscfOcYu3d", "enable_region_overrides": true, "extendable_session": true, "game_version": "kYW5DQyj4bj5Ro2o", "max_count": 14, "min_count": 38, "region_overrides": {"aKt2ujQSa3Zdb65U": {"buffer_count": 24, "buffer_percent": 25, "max_count": 72, "min_count": 50, "name": "2iS5EpGhhvXYck0u", "unlimited": true, "use_buffer_percent": true}, "0NBMA9ORxpzwLR2A": {"buffer_count": 75, "buffer_percent": 2, "max_count": 9, "min_count": 80, "name": "XUGPJsw1fiP80G9P", "unlimited": false, "use_buffer_percent": true}, "lxcft2ulIJzPyrVE": {"buffer_count": 16, "buffer_percent": 42, "max_count": 84, "min_count": 81, "name": "G4UcqsuGKHhMRWLV", "unlimited": false, "use_buffer_percent": false}}, "regions": ["3DlhLuIpomM8sm1M", "iaI1mX2tJoARtdbB", "e7udsMrok0WvGYYn"], "session_timeout": 48, "unlimited": false, "use_buffer_percent": false}' '709xbnGezKsDwG2o' 'mOR2nvYI9TVqJdvz' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'cWbfUpaXp5JMl5LL' '4bTxBmZjdrrIxsB0' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 80, "buffer_percent": 23, "configuration": "RsB1fPqqRRulpqpy", "enable_region_overrides": false, "game_version": "rS0uPdjhdinpng5B", "max_count": 76, "min_count": 33, "regions": ["y8wbhMssAHjapIkY", "9Rf4wP57dBZNR88Y", "bCtmKy8M9zVrjfGX"], "session_timeout": 28, "unlimited": true, "use_buffer_percent": true}' 'lt71B1SmZp2JZp50' 'CnPb71ORYcmQbTU5' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 73, "buffer_percent": 34, "max_count": 6, "min_count": 4, "unlimited": true, "use_buffer_percent": false}' 'kdQV0TqI8EFnmDbx' 'Ixi4YKlONk2Q5Y4J' 'vaizwiilatuUjjt9' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'lIMGql5ElEa9EIIl' 'GcHB3CfR3ncDlwi3' 'v3MFFJ1KesKoELCp' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 30, "buffer_percent": 61, "max_count": 3, "min_count": 74, "unlimited": true, "use_buffer_percent": true}' 'oxLE1Y3Dymtj3giP' 'g4x4yiPX6ues1Hhh' 'kg1yLVbLFzHEP8cM' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '17' '80' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'PW3VgsZXiR1DJ7HV' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 99, "mem_limit": 74, "params": "qMkNSawQUWDFJvJB"}' 'Wic7UkBeIXuqDuAX' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'I66bQ71w0deoV9Lx' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 57, "mem_limit": 90, "name": "qPg4xr0lCancUZGC", "params": "HsZYoLfR1KtOv7Zy"}' '0b65uvuKNuy0ytZQ' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 79}' '9qSZ7PC6f6QkmZXE' --login_with_auth "Bearer foo"
dsmc-delete-port 'lW9YfRSse6AAz3S4' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "czz0QKFlAVmVLu4A", "port": 82}' 'oo7G73zdxTgOfnwI' --login_with_auth "Bearer foo"
dsmc-list-images '7' '26' --login_with_auth "Bearer foo"
dsmc-delete-image 'lNa29fDLh741IslK' 'HzGlLKWUtDQs61OQ' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'AoxyyQpRWCiiPDGQ' 'hNPEwiJCf2XJVrlz' 'qQls1ozhLVA3kE8j' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'KvgatOEBM70TdlNB' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'JYOmpu1VCarzBsV6' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'xnZ5Jrzzjrcaug6C' 'WVG8SWP3glU6musw' --login_with_auth "Bearer foo"
dsmc-get-repository --login_with_auth "Bearer foo"
dsmc-list-server '97' '87' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'JnNnN7kAa7j0riFc' --login_with_auth "Bearer foo"
dsmc-get-server '5HTHQIoVsGo7dwV9' --login_with_auth "Bearer foo"
dsmc-delete-server 'DBqFKHQkETJyTlUr' --login_with_auth "Bearer foo"
dsmc-list-session '46' '60' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'PYeDcagginxnFIna' --login_with_auth "Bearer foo"
dsmc-create-repository '{"namespace": "3yddcbsPheTH26IU", "repository": "JNvYuGRUvpZaHCuE"}' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-get-all-deployment-client '92' '71' --login_with_auth "Bearer foo"
dsmc-create-deployment-client '{"allow_version_override": false, "buffer_count": 16, "buffer_percent": 0, "configuration": "IZsMfB4ZH3mtgWgU", "enable_region_overrides": true, "extendable_session": true, "game_version": "VXTIIJM9XsYIIZxi", "max_count": 40, "min_count": 81, "overrides": {"371W9G4AvQkqsGnm": {"buffer_count": 50, "buffer_percent": 30, "configuration": "o5JJTUVmb8GEXFTl", "enable_region_overrides": true, "extendable_session": true, "game_version": "MEsFzYqwgK1Np5no", "max_count": 7, "min_count": 34, "name": "BxqGWV6mTJ0sQs6X", "region_overrides": {"NbjvqhnUVLWu8olK": {"buffer_count": 6, "buffer_percent": 54, "max_count": 47, "min_count": 75, "name": "L6ozRmDD0jJvlfV5", "unlimited": false, "use_buffer_percent": false}, "m8F9GLLTG8phc3n4": {"buffer_count": 16, "buffer_percent": 79, "max_count": 77, "min_count": 2, "name": "oIllKlpO2pqiXJF3", "unlimited": false, "use_buffer_percent": false}, "o4b9rIzqYkEpstyV": {"buffer_count": 93, "buffer_percent": 88, "max_count": 56, "min_count": 85, "name": "crM8rG0rH0zcswwV", "unlimited": false, "use_buffer_percent": true}}, "regions": ["MK6MbGIVIu8vvwLc", "7KY3uVoJXTIMtpgk", "ieDyF97lGdMiHKxb"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": true}, "tHJ1pyVwyKQLY6FE": {"buffer_count": 84, "buffer_percent": 83, "configuration": "65Rb3z7CYLM8IlsH", "enable_region_overrides": true, "extendable_session": true, "game_version": "ffnrfsGlfPaZKBwa", "max_count": 74, "min_count": 60, "name": "xaCgcGLuC3brWdTY", "region_overrides": {"CfHkIySok5DiXZtL": {"buffer_count": 99, "buffer_percent": 3, "max_count": 45, "min_count": 14, "name": "rGysryod3dNQrmsA", "unlimited": true, "use_buffer_percent": true}, "RA6HX3RwrKt2ecoz": {"buffer_count": 77, "buffer_percent": 28, "max_count": 93, "min_count": 63, "name": "Og54vCE48L5oLF6M", "unlimited": false, "use_buffer_percent": false}, "a4JUMSHNgqRqCV7u": {"buffer_count": 38, "buffer_percent": 72, "max_count": 1, "min_count": 24, "name": "NqoTow0qiOiC4j0i", "unlimited": false, "use_buffer_percent": true}}, "regions": ["tm0ZPLkLOsp0LZ5n", "jN86Hl8kUXzt6bSc", "6bWvgpVyW9dD1kOm"], "session_timeout": 44, "unlimited": true, "use_buffer_percent": true}, "BS3KtKZWe8aoFzAy": {"buffer_count": 56, "buffer_percent": 49, "configuration": "ME74HUtipUWYhWV1", "enable_region_overrides": true, "extendable_session": false, "game_version": "x8CzPML52faXUr9S", "max_count": 21, "min_count": 26, "name": "4lq2faBcAXXKlhvy", "region_overrides": {"H8paOJtxqMPpcVfR": {"buffer_count": 46, "buffer_percent": 81, "max_count": 81, "min_count": 23, "name": "j547fH0XrKEDpEY8", "unlimited": false, "use_buffer_percent": false}, "TU0Am4DZhl0bQxFJ": {"buffer_count": 68, "buffer_percent": 39, "max_count": 67, "min_count": 99, "name": "KXphn50c9tNLDljh", "unlimited": false, "use_buffer_percent": true}, "xLRX3z46OCaGBeMf": {"buffer_count": 85, "buffer_percent": 42, "max_count": 22, "min_count": 80, "name": "s6w3VifnKqmTSoGH", "unlimited": true, "use_buffer_percent": false}}, "regions": ["mEu0q1p6QCyY6vSk", "VFWdsbYuVEGVxYhe", "R3j5mNZ6vwv7K8As"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"efTYKhuxaEc7M4P7": {"buffer_count": 96, "buffer_percent": 5, "max_count": 21, "min_count": 91, "name": "DDKDAF8KDsBZOuYQ", "unlimited": true, "use_buffer_percent": true}, "BAHZ7c53q7akMpcm": {"buffer_count": 27, "buffer_percent": 19, "max_count": 27, "min_count": 25, "name": "x6RVBrop9v7aZK3h", "unlimited": false, "use_buffer_percent": false}, "lUlfwEQKjU7eHGeb": {"buffer_count": 91, "buffer_percent": 88, "max_count": 98, "min_count": 80, "name": "u0LQ40kepEaC4dfi", "unlimited": true, "use_buffer_percent": false}}, "regions": ["g5mPYhrLTyU8Ohgf", "Y9JQYGF4bYXEcENx", "9xZlAchob44lONDD"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": false}' 'gI0HlyPR7wZNiVsF' --login_with_auth "Bearer foo"
dsmc-delete-deployment-client '6xG2mXEQdbzIVy8a' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config-client '24' '42' --login_with_auth "Bearer foo"
dsmc-create-pod-config-client '{"cpu_limit": 28, "mem_limit": 21, "params": "cV7vWgSHdfo07Uct"}' 'PErqxyMyOK06MqQB' --login_with_auth "Bearer foo"
dsmc-delete-pod-config-client 'ErxgjVBycvU4PbmR' --login_with_auth "Bearer foo"
dsmc-list-images-client --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'Dcrg0DjQjBECXvea' --login_with_auth "Bearer foo"
dsmc-list-server-client '68' '26' --login_with_auth "Bearer foo"
dsmc-server-heartbeat '{"podName": "1m2lJFRZ3ZprZ60z"}' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "MjhTHeh94TSenE5h"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "CFkIf5weqZ18MH57", "ip": "l2Zsrh90ETtYmGuk", "name": "z3MnlrjcHp6B8Vj7", "port": 36}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "Prx9Ns8eLzYEvwSW", "pod_name": "TaLQjctvrK2jhsYp"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "PlXn77AtYoFzLAAT"}' --login_with_auth "Bearer foo"
dsmc-get-server-session-timeout 'PY8P8P3cfoivvQxe' --login_with_auth "Bearer foo"
dsmc-get-server-session 'vecWw7Rry0KK5rgA' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "GO0dW8rX2MVUGKSZ", "configuration": "4GcLkt4pK32sJxlZ", "deployment": "cCTpTdRtCHvuk6B6", "game_mode": "XTmSLyn50sigBVZx", "matching_allies": [{"matching_parties": [{"party_attributes": {"iKdV57GvRyd9UuL0": {}, "2Le8HSCslsDd4M1F": {}, "5qRIblS7Nz81GRaz": {}}, "party_id": "PAANjfBoldFOyqA2", "party_members": [{"user_id": "clJ5gEOaCgM6Yn6R"}, {"user_id": "ugbNEIpGBFUjOn5m"}, {"user_id": "M7k8nbLzvtCIW5yn"}]}, {"party_attributes": {"MKquUicAeIVXtoWA": {}, "XhMlW4tLqX7OICf5": {}, "oD1e6oI9FmYel0kO": {}}, "party_id": "w72o8Zkgk0jS6rDW", "party_members": [{"user_id": "UwfhKvrf2AaH4yCW"}, {"user_id": "rHSppnIZkNnTn3rz"}, {"user_id": "H5NvAtcvNedgS1fU"}]}, {"party_attributes": {"fKmihDbmu8ePWlQM": {}, "VDXEHeiGTnwyEw6h": {}, "IWDZrpP7rz3ISW51": {}}, "party_id": "0kHr4isTKWjmv67n", "party_members": [{"user_id": "uHCXWfwnwGioVwVz"}, {"user_id": "mmBVVFfpqx1AeLtz"}, {"user_id": "cPJ3jtDYBo4FUTH7"}]}]}, {"matching_parties": [{"party_attributes": {"CGfKSyxgRR1DiCqS": {}, "MzpqIFGLkDs7ACC1": {}, "RgBfoNrHlFi2qJLg": {}}, "party_id": "mBLE35YhyiDV90Se", "party_members": [{"user_id": "I5yppBHoytVznCgN"}, {"user_id": "yx9fbT63ShEh8PbG"}, {"user_id": "ikLjgjcj34uulU6F"}]}, {"party_attributes": {"YBZsWFbr3RSP0W9n": {}, "Bhvhf8Q0DtJMcYQd": {}, "N66bswAgt65X4N1L": {}}, "party_id": "QZmB61JMdtwCVUrY", "party_members": [{"user_id": "Que84dwmbwFEnAZa"}, {"user_id": "WsQJtRYoagRJK5PX"}, {"user_id": "9UcOvhPyE11TRT2S"}]}, {"party_attributes": {"Kseoe8VLie0LBa36": {}, "KNzjf005CXNGehQ2": {}, "aTjTDfKFDXC7eGL5": {}}, "party_id": "YhJDWh9YWqc0qgV6", "party_members": [{"user_id": "d9yOfIMLds2DbPca"}, {"user_id": "oMdtRLTmSvTkQQgB"}, {"user_id": "7exYvmHMxr5hPCJJ"}]}]}, {"matching_parties": [{"party_attributes": {"ztJBg0tTJg46IewO": {}, "XE2AkCh3QIZsUf8l": {}, "GFXcmwTERHclOdxI": {}}, "party_id": "wqejxe18rNdb8Otq", "party_members": [{"user_id": "6j1mqUav7k05HAQl"}, {"user_id": "tnSojV4jT65yclX2"}, {"user_id": "FtAz0vJjFIYWOaNd"}]}, {"party_attributes": {"simmkW2miH3xRHAK": {}, "y4QxZkaXZ7vmiEd0": {}, "JPxVyQpshaDwNqTb": {}}, "party_id": "bFMXAMfVXe0GZeMg", "party_members": [{"user_id": "sRsmH1EQrYmkPKTP"}, {"user_id": "OlhTtSiZNCxuogFt"}, {"user_id": "eTHJe4BhSSQkQD6W"}]}, {"party_attributes": {"mOt6D7ufFVTOhvQp": {}, "fbBke8aEdd36xj6w": {}, "ySoltDxsbzxrlaKE": {}}, "party_id": "fkoYjY2o6ouRW9Ut", "party_members": [{"user_id": "NquwC3WgumrIz4Nh"}, {"user_id": "GztZpr4U4fwQIiLX"}, {"user_id": "gmRasvjO4lj8m3XE"}]}]}], "namespace": "wP2b4gd3xOeii8Jn", "notification_payload": {}, "pod_name": "mssep2xD2NY0kABe", "region": "Gs9yxahld1pO0Gyf", "session_id": "5PO3COyMvczgEpzZ"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "3FbtxfhcRC7IVYa6"}' --login_with_auth "Bearer foo"
dsmc-get-session 'iZ5uFRYNn3SHiWxF' --login_with_auth "Bearer foo"
dsmc-cancel-session '0YbuU5ar5qTLWUCy' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '0Afgc050XIZRW491' --login_with_auth "Bearer foo"
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
echo "1..82"

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
    '{"artifactPath": "e94mQjVOOBnIWhun", "image": "ElqZUodp3IhtCSHy", "imageReplicationsMap": {"1ei1fIrPvfHnRN06": {"failure_code": "EjRwEQlNapJRfk4f", "region": "9Zcw1pEHAyNFxcVT", "status": "KuAQTGh5BxjWOozG", "uri": "oDtsUuYo5p8ED5QZ"}, "AufwNa8lzfjv9oYM": {"failure_code": "XMjlVHY1AHwF3vGo", "region": "av7MK0PcLnEkcokK", "status": "wcQ0baDT9OyJ2h23", "uri": "GUS2amU7syGlElXd"}, "EAOrVSnLocLVVYam": {"failure_code": "Qc4wcG5nDBLJoJHb", "region": "iQ5duE5p4cfs2E41", "status": "cK8QTwiIAvxSvNDl", "uri": "mM5nQFMGzs7fzjgy"}}, "namespace": "c44mEh9tRk8knYSV", "patchVersion": "30lnroQehMDli6t9", "persistent": true, "version": "aAtEbu4IjGdqthRx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "TjQ7gkZEY8rG0q0Q", "coreDumpEnabled": false, "dockerPath": "kH4OotKwG3UC6XCn", "image": "nZxF8CmQr17W65br", "imageSize": 96, "namespace": "4rBBN9tU6TDm5Glo", "persistent": true, "version": "SKWM1eym5ydC6p25"}' \
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
    '{"artifactPath": "xCWTqUOYZENJ1QHZ", "coreDumpEnabled": true, "dockerPath": "GZ0TBujELAUK6mQ5", "image": "iZgbwwm5iGzXtckn", "imageSize": 35, "namespace": "idwCkZwqjYLfTiCO", "patchVersion": "1NDBvQvRPnAz4VzW", "persistent": false, "uploaderFlag": "CpoBCbyJsF5IjF1c", "version": "0W338HS6CBgVRyih"}' \
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
    '{"claim_timeout": 67, "creation_timeout": 82, "default_version": "TUj7YjERL1rEQG02", "port": 51, "ports": {"cvcDKF19yVRafCjO": 42, "vqDejvqklTSvDwuO": 35, "J8daGTVX3Bb7jlz5": 70}, "protocol": "izxe7NPzjOa8E7wY", "providers": ["76PxLv9HBEUe89Aw", "Ew1HO4FnKtx4XLKA", "mlDr19uJ3nq6Verz"], "session_timeout": 98, "unreachable_timeout": 32}' \
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
    '{"claim_timeout": 58, "creation_timeout": 30, "default_version": "cI8y3Cz0YqCKUh5R", "port": 60, "protocol": "gvh2Dp2SoiIPp1yv", "providers": ["fAHS0VgLu11A3HTo", "vFi4tPAGfleyCA6j", "EtcqsnzoVILjkwW6"], "session_timeout": 8, "unreachable_timeout": 10}' \
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
    '41' \
    '93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'F87aUyrdt4XSpWBA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 74, "buffer_percent": 40, "configuration": "yOVgvnWbfRJtsB7c", "enable_region_overrides": true, "extendable_session": true, "game_version": "UAxJrINPXppPNO3A", "max_count": 10, "min_count": 92, "overrides": {"mXcgwC3IN6tvKgLB": {"buffer_count": 42, "buffer_percent": 87, "configuration": "GS469k2hG0WKt4sU", "enable_region_overrides": false, "extendable_session": false, "game_version": "anYxM0UHZVNYzGMN", "max_count": 70, "min_count": 32, "name": "bZIdhevfZvyV7Aco", "region_overrides": {"dcZwKjYDdmJOlzwm": {"buffer_count": 92, "buffer_percent": 59, "max_count": 42, "min_count": 78, "name": "4FnS98QqftSjq7sn", "unlimited": true, "use_buffer_percent": true}, "Lil8wj9cKM3Ar6MF": {"buffer_count": 82, "buffer_percent": 15, "max_count": 74, "min_count": 58, "name": "gehDJxEN7JlZc8LM", "unlimited": true, "use_buffer_percent": true}, "o2jZWu4yA3r0u4q1": {"buffer_count": 2, "buffer_percent": 93, "max_count": 70, "min_count": 65, "name": "XIjfJKyFlM0u1uuo", "unlimited": true, "use_buffer_percent": false}}, "regions": ["CVqiYOJf5KwMZQjz", "vjSozv6CTRDl0zp9", "CzHFwinkBNi4gvqg"], "session_timeout": 22, "unlimited": true, "use_buffer_percent": true}, "Z9TGVPmv34h6T7Es": {"buffer_count": 42, "buffer_percent": 77, "configuration": "fmfxKYB4LM6H6QXm", "enable_region_overrides": true, "extendable_session": false, "game_version": "Z9X3fUSR1l9xLPBs", "max_count": 25, "min_count": 26, "name": "AUrD9L1IiD6MlcEP", "region_overrides": {"hMDFzjHZ3sIhzOx2": {"buffer_count": 59, "buffer_percent": 53, "max_count": 74, "min_count": 13, "name": "lvIomU3pIxM9n8D2", "unlimited": false, "use_buffer_percent": false}, "wdvl0hv6g62GxBW2": {"buffer_count": 39, "buffer_percent": 87, "max_count": 64, "min_count": 64, "name": "K6e0MrPc4vtxk9hV", "unlimited": false, "use_buffer_percent": false}, "4bkcgepqtxjbrzte": {"buffer_count": 9, "buffer_percent": 27, "max_count": 86, "min_count": 84, "name": "LTGAak7Kaol01DK9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["yQ7XdIszGRj46COP", "ipH1MWVTHG0qHJCW", "EfOJpZm9yEYWNGMy"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}, "y7axEkvI4oxZEDxG": {"buffer_count": 17, "buffer_percent": 57, "configuration": "bgg8rdwY9bmrvHmO", "enable_region_overrides": true, "extendable_session": true, "game_version": "qX9LM2IwEsdOGBXB", "max_count": 47, "min_count": 93, "name": "nzDX8v3xgC1Ge9Pd", "region_overrides": {"bTTAJ2Gp1r0sVZ6L": {"buffer_count": 73, "buffer_percent": 98, "max_count": 55, "min_count": 83, "name": "GYzQqV8d9mDdUIoi", "unlimited": false, "use_buffer_percent": true}, "xuNOmUSWw18T1IxV": {"buffer_count": 99, "buffer_percent": 22, "max_count": 59, "min_count": 1, "name": "xdvPL9e4P01vxP8x", "unlimited": false, "use_buffer_percent": false}, "1LyEirURERnEMzpI": {"buffer_count": 26, "buffer_percent": 99, "max_count": 100, "min_count": 28, "name": "6sjAHyCK5tNanGBr", "unlimited": false, "use_buffer_percent": true}}, "regions": ["iHF8ITGPRQBCgIs1", "Q2lzxl0yF5m77TTh", "4gUoj8u2WRcLiEtz"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"nkflfn7pHY48F1dl": {"buffer_count": 10, "buffer_percent": 34, "max_count": 27, "min_count": 95, "name": "2m3iRlfnBAk0CwiA", "unlimited": true, "use_buffer_percent": true}, "65yQ9ssuHdGmxncC": {"buffer_count": 62, "buffer_percent": 6, "max_count": 36, "min_count": 33, "name": "0KcgeqzGbruNB72H", "unlimited": false, "use_buffer_percent": false}, "odd7CcJUrI6MAugK": {"buffer_count": 9, "buffer_percent": 22, "max_count": 25, "min_count": 50, "name": "2yqPsMFxKybPkbuS", "unlimited": true, "use_buffer_percent": false}}, "regions": ["q4ft5jGcMICPUYnf", "G6jl9U4jReteIMgz", "ISomCsodJrhQW41q"], "session_timeout": 69, "unlimited": true, "use_buffer_percent": false}' \
    'pCZbt3Uta5I0uGcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    '1koyHjCH5olYLETR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 77, "buffer_percent": 54, "configuration": "jBJ9iqMcBL4BzhDU", "enable_region_overrides": false, "extendable_session": false, "game_version": "xNInDByhnoluO6ti", "max_count": 64, "min_count": 87, "regions": ["mPAnOkDiJq4xQye7", "HqnVK3YVeOWs9mfV", "Qh3jLBtn9pxpE7BY"], "session_timeout": 39, "unlimited": true, "use_buffer_percent": true}' \
    'leywHbHig6IKWVZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 93, "buffer_percent": 75, "max_count": 18, "min_count": 8, "unlimited": true, "use_buffer_percent": false}' \
    'pSjb39ukcR6c2E2r' \
    '3vk3IfAKEbqcNXSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'CCvNowNmdpcJgF88' \
    'ySNq4Mj7mulP4tQ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 90, "buffer_percent": 59, "max_count": 66, "min_count": 84, "unlimited": false, "use_buffer_percent": true}' \
    'XaLs2xjHkinOD975' \
    'nARHCmhNHSXuqIHs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 48, "buffer_percent": 0, "configuration": "vaUoXDmwWsukxncu", "enable_region_overrides": true, "extendable_session": true, "game_version": "4y3f0R9s2kndhhZh", "max_count": 46, "min_count": 55, "region_overrides": {"mfIZsWhkS476dGGJ": {"buffer_count": 47, "buffer_percent": 19, "max_count": 74, "min_count": 60, "name": "00UH197MJ6zU7JLM", "unlimited": true, "use_buffer_percent": true}, "kXsVJbXi7eRZa7Ww": {"buffer_count": 71, "buffer_percent": 73, "max_count": 5, "min_count": 0, "name": "895ImqK6tVsaUq3s", "unlimited": true, "use_buffer_percent": false}, "6NUsVY21NVIs7NRe": {"buffer_count": 28, "buffer_percent": 91, "max_count": 72, "min_count": 9, "name": "Ns0QJQeaWytPfds1", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Yx0EaURydf8ZyyZe", "HAWGgJUbUJRMbkcT", "glbU86FyOjApNHBV"], "session_timeout": 11, "unlimited": true, "use_buffer_percent": false}' \
    'KzLyH1y72L13Orny' \
    'x34luLdvtsTKXMji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'w6gYPvfn2Qt9iyq3' \
    'Nyk8ncu2Z3eDHH9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 1, "buffer_percent": 26, "configuration": "VO4iKhDcJ7TCcNIs", "enable_region_overrides": true, "game_version": "RXBJ6mVV7JS9qjNL", "max_count": 46, "min_count": 48, "regions": ["vI8JdiY3RRiLilmO", "GF6dLLIeIVIjMcdl", "bdRXTGIrdNL5gJPq"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}' \
    'ElvvDgw0ag7kSWE0' \
    'Hiqm5IuLryiEXqvU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 100, "buffer_percent": 60, "max_count": 27, "min_count": 19, "unlimited": true, "use_buffer_percent": false}' \
    'EVjVZw1ToLuPakQN' \
    '1MpOs1RVFrcg2CXx' \
    'epx78fvsyhE2BKty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'TDSIM7mkmvZ7Cmsh' \
    '4US8o4jfMANPpmZD' \
    'dMiCxmuCCVuFjS1G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 58, "buffer_percent": 32, "max_count": 6, "min_count": 44, "unlimited": false, "use_buffer_percent": true}' \
    '92B4vEgj3HOmhcWm' \
    '428XejRF94NIY9nM' \
    'rBZo0lNUBDShHD32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '43' \
    '98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'vL28FPwTiXfLcxDC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 69, "mem_limit": 2, "params": "nd02mECIQhfIhHtA"}' \
    'DUQ9zimQTQT95pFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'UAJsyAfeKOufV4f1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 48, "mem_limit": 81, "name": "BWtnTKUe2znsqPzP", "params": "kwCBo2SwCUsTag4M"}' \
    'LAo3m61P2xaNfmn8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 83}' \
    'NMd1onFjGRbxtABP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'XDmgNEJBhgGq5GID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "hNC66szbCCf73IFb", "port": 89}' \
    'BLyO6A0FqfhnaB3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '48' \
    '74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'ku2YVuOzhxHmnrrV' \
    '9ZGWrZ05sxe6A6Rp' \
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
    'mKDebNkylbynkgT9' \
    'vayLLiizac7Ge6zK' \
    'Jdlt7rjF5RaJwvkW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'Vco2LTo5ijlvDF8q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'BWCQ9dLWYyS8zdhM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'eBXH8x6HdVfZVDAi' \
    'U6iJOF7JKZFNk2NK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 GetRepository
$PYTHON -m $MODULE 'dsmc-get-repository' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetRepository' test.out

#- 45 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '50' \
    '24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'ListServer' test.out

#- 46 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CountServer' test.out

#- 47 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CountServerDetailed' test.out

#- 48 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'ListLocalServer' test.out

#- 49 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    '9X8iOg2sVBiCoeC5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'weXJl7PeiMH8z8dV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'ej8N2yv6VTnOK7xA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '44' \
    '10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'ListSession' test.out

#- 53 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'CountSession' test.out

#- 54 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    'M7tuL81lsR7xxSVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
$PYTHON -m $MODULE 'dsmc-create-repository' \
    '{"namespace": "3Gd2TK0HzYviTgYm", "repository": "x82JVBRLPZ6Iz8tn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'CreateRepository' test.out

#- 56 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ExportConfigV1' test.out

#- 57 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImportConfigV1' test.out

#- 58 GetAllDeploymentClient
$PYTHON -m $MODULE 'dsmc-get-all-deployment-client' \
    '9' \
    '17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
$PYTHON -m $MODULE 'dsmc-create-deployment-client' \
    '{"allow_version_override": false, "buffer_count": 57, "buffer_percent": 3, "configuration": "VsXsygWbjE2opXtd", "enable_region_overrides": true, "extendable_session": true, "game_version": "JQeJ1too0qvxphTL", "max_count": 62, "min_count": 79, "overrides": {"EBGTtZyTjdKNKgYa": {"buffer_count": 53, "buffer_percent": 62, "configuration": "ujsmSmylT1YtxIq7", "enable_region_overrides": false, "extendable_session": true, "game_version": "Mb48jISd97KORRhx", "max_count": 92, "min_count": 21, "name": "WLWLNfHRD3V15QaG", "region_overrides": {"GL46LuxJF3sbeqWB": {"buffer_count": 7, "buffer_percent": 80, "max_count": 86, "min_count": 81, "name": "uWfgBAKx27MSBqab", "unlimited": true, "use_buffer_percent": true}, "OGkkoMUZn1YXj5zF": {"buffer_count": 76, "buffer_percent": 9, "max_count": 83, "min_count": 59, "name": "RVfriSpPFnZBJZkD", "unlimited": false, "use_buffer_percent": true}, "Eiyfa2LrnpZxNnLR": {"buffer_count": 69, "buffer_percent": 94, "max_count": 38, "min_count": 69, "name": "bqS2oFY76PU1AziB", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EAj1cT3u6Zc2FbrT", "FznTgDIwZIRWf6T3", "by2kYSCdnFKLc0xc"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": false}, "lj9Rdd85bdYUumPK": {"buffer_count": 97, "buffer_percent": 91, "configuration": "rWynp1ck1vT90C6o", "enable_region_overrides": false, "extendable_session": true, "game_version": "L9cgbUmulhe98oaF", "max_count": 76, "min_count": 36, "name": "lQicdrxVhrtwSd9Q", "region_overrides": {"WVMYz7TU1TsxsChS": {"buffer_count": 5, "buffer_percent": 23, "max_count": 70, "min_count": 92, "name": "yKKz5nyI6ulKNKoX", "unlimited": false, "use_buffer_percent": false}, "5nXJ7hLi6HweweRm": {"buffer_count": 51, "buffer_percent": 87, "max_count": 29, "min_count": 48, "name": "91dIn7QqXBDXJcrq", "unlimited": true, "use_buffer_percent": false}, "d9sxoLnWGP1PafIj": {"buffer_count": 77, "buffer_percent": 85, "max_count": 15, "min_count": 42, "name": "ce0KbNN7Ycl2JfmQ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lvGjVQ4aebjfgGu4", "72oWJlfglLM4xjfk", "NL4lU6jaGfsD1cfs"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": false}, "SiXjcY5ZPkv90lyK": {"buffer_count": 91, "buffer_percent": 99, "configuration": "TWLxSFZ0LpupEi5D", "enable_region_overrides": false, "extendable_session": true, "game_version": "kVs3qFTi1t530Wj1", "max_count": 99, "min_count": 12, "name": "ZQAJza84lKKmVOaT", "region_overrides": {"S6xBbNrSUAW2ak7I": {"buffer_count": 92, "buffer_percent": 93, "max_count": 61, "min_count": 48, "name": "rBVg6NuDZvPb1kuU", "unlimited": false, "use_buffer_percent": false}, "KeTyBG5dCUoExnKf": {"buffer_count": 98, "buffer_percent": 44, "max_count": 60, "min_count": 60, "name": "69IN4V1OdhH4GVU7", "unlimited": true, "use_buffer_percent": true}, "xlkmc4xYiLjLyZrX": {"buffer_count": 35, "buffer_percent": 15, "max_count": 56, "min_count": 16, "name": "ONgUwJnUpryDeRcp", "unlimited": true, "use_buffer_percent": true}}, "regions": ["yLm67rkadH5Y41SL", "jCPrFa05Xl5TPC5G", "ODS44bmm7jPdKLdd"], "session_timeout": 11, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"P2WKmCRRXBxlalCH": {"buffer_count": 39, "buffer_percent": 15, "max_count": 99, "min_count": 8, "name": "lKxLpS8fLWoQ5nuJ", "unlimited": false, "use_buffer_percent": true}, "atQPxR7dvBVC5zgO": {"buffer_count": 74, "buffer_percent": 82, "max_count": 76, "min_count": 27, "name": "TDmHe8c1eJ9sde7R", "unlimited": true, "use_buffer_percent": true}, "t4udIv22M18uux9x": {"buffer_count": 57, "buffer_percent": 56, "max_count": 29, "min_count": 25, "name": "iR3UbJc1ZYapx7C4", "unlimited": false, "use_buffer_percent": true}}, "regions": ["wDZCIXFNEL3uWVRz", "3V7YbJM3bNLWHAbC", "Zixe2cQ6O30lpzcB"], "session_timeout": 87, "unlimited": false, "use_buffer_percent": true}' \
    'nkpU9oVzl2kBuLFX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
$PYTHON -m $MODULE 'dsmc-delete-deployment-client' \
    'IeCEKZUTz3GvCAZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
$PYTHON -m $MODULE 'dsmc-get-all-pod-config-client' \
    '19' \
    '17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
$PYTHON -m $MODULE 'dsmc-create-pod-config-client' \
    '{"cpu_limit": 31, "mem_limit": 4, "params": "acYHbrryHB6GO9zP"}' \
    '3FaepA3b3YJ9nJM6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
$PYTHON -m $MODULE 'dsmc-delete-pod-config-client' \
    'vtT27xv85K5MU2qm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ListImagesClient
$PYTHON -m $MODULE 'dsmc-list-images-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ListImagesClient' test.out

#- 65 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ImageLimitClient' test.out

#- 66 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'beqaVemINdClpF7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
$PYTHON -m $MODULE 'dsmc-list-server-client' \
    '43' \
    '57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
$PYTHON -m $MODULE 'dsmc-server-heartbeat' \
    '{"podName": "lBIEgjse5kd6GEDo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "08yq5E5HleLoog4m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "e2NBFp62xlXvVcJe", "ip": "rTPW02PWsHiKYArA", "name": "xnKBfBfDlrQQuAc1", "port": 31}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "DjjwMv4vrIPRtvhQ", "pod_name": "IyLarjaLOKnX51yA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "ykS8YLmwtYgWGcA0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
$PYTHON -m $MODULE 'dsmc-get-server-session-timeout' \
    'h4G1LZ1HaX5UBMbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'F44VTsLDRzdq22cb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "nyK3ggFDh2kaZP7p", "configuration": "nnVfxPwc259HF9ej", "deployment": "HaILQruAuYyJLYGq", "game_mode": "Mv824ouSgkpK70uJ", "matching_allies": [{"matching_parties": [{"party_attributes": {"mUL0uzElixc023dI": {}, "vDiA0tQWlHwBcTtz": {}, "tx3VAl6tXFbnATCz": {}}, "party_id": "UOIzVcy9k3ie64Vn", "party_members": [{"user_id": "wa0ClGQJultJe32A"}, {"user_id": "iwKadEoIVmprwPsa"}, {"user_id": "9YD92CX0rITajpwH"}]}, {"party_attributes": {"ITGeHTnqRbzBB9ZF": {}, "gJbQ3Fj1umx4Itzk": {}, "MJ7cudf4r916GPrh": {}}, "party_id": "n2etVIQvRkQJAtDU", "party_members": [{"user_id": "H9tx60AehGz1ermJ"}, {"user_id": "YXsYgL7TfyIlAwjT"}, {"user_id": "ZdRZJJzWZwvTX2ba"}]}, {"party_attributes": {"mSCvX1nwvSWdDwD7": {}, "WJHzgNZUKsI5y0mR": {}, "3zMyTsftKqnsIJct": {}}, "party_id": "AdxyZVKHA9DkaSOW", "party_members": [{"user_id": "gtg8yw8lHEbVDwBA"}, {"user_id": "qanOlscRIWw82k5K"}, {"user_id": "5VTkdubkOFldMCQ9"}]}]}, {"matching_parties": [{"party_attributes": {"8JH4n0JtgqzZv5kV": {}, "u4S95mj8YRvae4f4": {}, "lhBPbarbWEm8bVtZ": {}}, "party_id": "cfVCPdQhim9QKUAF", "party_members": [{"user_id": "TVYelIlGJg9wdc8b"}, {"user_id": "ihhWjfZpfcFBUsnn"}, {"user_id": "DJlmD1iEokbUiYzC"}]}, {"party_attributes": {"Qh2iNTwtnohddMzM": {}, "TQ9P7sYLDWAJOA75": {}, "K4BYJ2fkqYJoF2FI": {}}, "party_id": "3vyyqRzc20O7FdsJ", "party_members": [{"user_id": "P1G9tyBTfERXdvgD"}, {"user_id": "1Qf7Ot2DkUt3yexZ"}, {"user_id": "BRvxYnEBhXtAVxCd"}]}, {"party_attributes": {"3meTrT7cF9oVCh89": {}, "wNOkKYssVejcL3kR": {}, "3hCGNgaJmuALlMQl": {}}, "party_id": "9RLrthbfp0VgweLl", "party_members": [{"user_id": "T2sY3SsTnDQY7kKU"}, {"user_id": "2u06Q4veujxtyQEN"}, {"user_id": "vJrBCqeg67d4RWOq"}]}]}, {"matching_parties": [{"party_attributes": {"O4U0bitNQLzwRoWn": {}, "R0AbkCPY70FmvviV": {}, "IBbcujF8Vk5qb8Nh": {}}, "party_id": "WWwaxyMchkt8l5IP", "party_members": [{"user_id": "SrwrJl7wYIVw13NC"}, {"user_id": "o9yXlbQ52FTHTCj6"}, {"user_id": "SEAzT7TOpyiuvvQU"}]}, {"party_attributes": {"m29Iacq4XRLaA643": {}, "nTMtXSAyejnny0Ju": {}, "13b6o5uB2XM6IHy7": {}}, "party_id": "EEvHyLmcvrZZOdwe", "party_members": [{"user_id": "1x8RjU6Bi8JXE52s"}, {"user_id": "UBBq2SimQQoLbe5Y"}, {"user_id": "OJvxGRxUzrTwagH7"}]}, {"party_attributes": {"BMT1IZKTdNFVBQ1c": {}, "rBXAupATO8uXsqVp": {}, "diWo8SjDAM0Riw8w": {}}, "party_id": "LYW3n4F3LD1EDwBX", "party_members": [{"user_id": "w5uBYeQZOzATNSV9"}, {"user_id": "E9yyNb7yaLXzAVYy"}, {"user_id": "mOuhCkZu4htrsf8e"}]}]}], "namespace": "IFSovTGXaMsq8ePN", "notification_payload": {}, "pod_name": "1oco2jx8Upe8SjMv", "region": "pqM8puggOEdG47gD", "session_id": "5i2Ni6AnWn3NdEPh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "NHSH7eKDfRcngEpT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'nRUQr3RLOM1vEx4g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
$PYTHON -m $MODULE 'dsmc-cancel-session' \
    'qDY6jwyKRxhkLe5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'CancelSession' test.out

#- 79 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetDefaultProvider' test.out

#- 80 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'ListProviders' test.out

#- 81 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'ohg9s9utRQt28b6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'ListProvidersByRegion' test.out

#- 82 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
