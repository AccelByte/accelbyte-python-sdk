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
dsmc-update-image '{"artifactPath": "EAxcVpFrttufHIRd", "coreDumpEnabled": true, "image": "9UzVRiXbqlAw7r6W", "imageReplicationsMap": {"2ktQG0h5JAav5kRa": {"failure_code": "62WopBJHPtcDs8bB", "region": "ZLCXLx8bbgorQeFb", "status": "Q1g7qbPngUNB1vRo", "uri": "dwpzS6DaDpv8N7ZQ"}, "VqGj6oDLjWjkY1aX": {"failure_code": "lFcDtgOjchIua5tW", "region": "EIC32ogW7olvbTgr", "status": "hRTcPiSuL0Sly6XM", "uri": "4OI18mAQLnzjMf8G"}, "Z2WBZqxYG3aREAu2": {"failure_code": "D6QVKNCWP75TB0i7", "region": "pKxR8dl0zRVW4EZG", "status": "9m0XcgGVbMqSszE8", "uri": "GHavj7AorKsxwkos"}}, "namespace": "AVerXpc1C8XfwHuK", "patchVersion": "eb9l3rGN9A3sNm84", "persistent": false, "version": "ZSoEAcBdW19m4eu6"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "d5tA5jUmiTqpyhPF", "coreDumpEnabled": false, "dockerPath": "qrhBRd8lDR6qVNPR", "image": "ZYdFLIAjGGJddVCv", "imageSize": 41, "namespace": "at0SevkLGMS0lyuI", "persistent": false, "ulimitFileSize": 71, "version": "llzQRaT5kPxUfofv"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "nnSuB0y5WUlrMdI4", "coreDumpEnabled": true, "dockerPath": "LlkvR8sKgnuRkggh", "image": "GoYupD391C2qtPYo", "imageSize": 22, "namespace": "GrncqmLtjQHAf8Tg", "patchVersion": "oNm03VLisV6zwPuo", "persistent": true, "ulimitFileSize": 39, "uploaderFlag": "u0MesTCf9x4rt69l", "version": "na7qxNeIxPz6MbwL"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 67, "creation_timeout": 70, "default_version": "kE7wcWfDslpJSqGA", "port": 85, "ports": {"Q0yYoNRKd3IL5TAQ": 68, "iiPlSC2uE4o5Vwdo": 12, "MqHcUmLZZbSqb8Rw": 81}, "protocol": "pDDWVAla2l5BYNtI", "providers": ["uS5S5XUdjsoqwGyz", "zWi9gwQYv7t1o7TT", "r1DmrhZv15T7quIO"], "session_timeout": 44, "unreachable_timeout": 5}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 57, "creation_timeout": 94, "default_version": "McaYmvCkGZ5dAgqx", "port": 31, "protocol": "EXlAvxJMdalwSyli", "providers": ["WMNW5NyLu0M3VHh2", "EI8JlDbPWbQ6Q9lN", "mqRBaAkLnvxkT1X6"], "session_timeout": 38, "unreachable_timeout": 5}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '61' '25' --login_with_auth "Bearer foo"
dsmc-get-deployment 'BU5SepjChB3V0v52' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 21, "buffer_percent": 22, "configuration": "kK6KKXNB3Gv0IqmF", "enable_region_overrides": false, "extendable_session": false, "game_version": "khjYnaq6foWvXa3b", "max_count": 78, "min_count": 25, "overrides": {"rXsDr6kILsSSyDdm": {"buffer_count": 51, "buffer_percent": 19, "configuration": "kmoPYgc2L4jk4Lo0", "enable_region_overrides": true, "extendable_session": false, "game_version": "jTvhZNkSQ70D0H6B", "max_count": 62, "min_count": 22, "name": "KDpADz1x3poD3Qgb", "region_overrides": {"3boLQQ1MzH7Qm8bw": {"buffer_count": 2, "buffer_percent": 40, "max_count": 25, "min_count": 9, "name": "XgdAPh1EThG96gAF", "unlimited": false, "use_buffer_percent": false}, "2WDgCcxvONZm3EeE": {"buffer_count": 90, "buffer_percent": 89, "max_count": 25, "min_count": 69, "name": "DnyeFoF7VSZ6pf3v", "unlimited": false, "use_buffer_percent": false}, "SKVPHbn4Xxtu7LQR": {"buffer_count": 62, "buffer_percent": 35, "max_count": 81, "min_count": 25, "name": "jEEztx1WsYSiZqan", "unlimited": false, "use_buffer_percent": false}}, "regions": ["5GI39YBHqaTHeKtW", "18iGeUlc9d9sogWa", "24CKNS0GqVvUfHQv"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": false}, "3PBddN8S48l9lyNA": {"buffer_count": 31, "buffer_percent": 81, "configuration": "flxqMrj3oZk03QXc", "enable_region_overrides": false, "extendable_session": true, "game_version": "BMr1yrOMlNFSrUEi", "max_count": 36, "min_count": 27, "name": "Gc26SaiGVkydwYWQ", "region_overrides": {"G26yUZNmTBcvrbYC": {"buffer_count": 46, "buffer_percent": 67, "max_count": 39, "min_count": 0, "name": "xFHyPLtI8ilbyDPU", "unlimited": false, "use_buffer_percent": true}, "cekdqCt81P1ktfIo": {"buffer_count": 44, "buffer_percent": 9, "max_count": 26, "min_count": 70, "name": "v9gsR5cJcHm3SZLx", "unlimited": false, "use_buffer_percent": true}, "mJFfRByjlBiuFM3F": {"buffer_count": 71, "buffer_percent": 29, "max_count": 29, "min_count": 89, "name": "Vk8T3GpAnkCmBUqg", "unlimited": true, "use_buffer_percent": true}}, "regions": ["kYs4Yw20DOqOBSC2", "DKHRuPMMWH8Yb33T", "5UBJCjfcnLRfxeCS"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": true}, "WEi8KlloeH0JT1yd": {"buffer_count": 41, "buffer_percent": 94, "configuration": "at2vQR3biBfsu4jm", "enable_region_overrides": true, "extendable_session": true, "game_version": "RE2w1yEkLgh3tIYt", "max_count": 40, "min_count": 92, "name": "uLl4XlbGL8QOxtjz", "region_overrides": {"m8y2wNhmwoYZyI4E": {"buffer_count": 65, "buffer_percent": 8, "max_count": 69, "min_count": 76, "name": "SKLCa3xreNDUWehw", "unlimited": true, "use_buffer_percent": false}, "A806DJgas4b6z3LN": {"buffer_count": 96, "buffer_percent": 9, "max_count": 19, "min_count": 29, "name": "7fdgLA84Z8YYk6QE", "unlimited": false, "use_buffer_percent": false}, "JjBbEDoNf3n0hEoR": {"buffer_count": 58, "buffer_percent": 78, "max_count": 54, "min_count": 81, "name": "cf80zfFyabWAgIUX", "unlimited": false, "use_buffer_percent": false}}, "regions": ["I07A68eaqC2J9jyE", "W6GLbc0NaKDUL3sa", "13lk1dQBHO86IlBh"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"O39PXDNxtXgeO3Fg": {"buffer_count": 21, "buffer_percent": 38, "max_count": 14, "min_count": 1, "name": "jDzaQY3snn2ZkP7c", "unlimited": false, "use_buffer_percent": true}, "P43e5dC9XIBudfZg": {"buffer_count": 35, "buffer_percent": 1, "max_count": 2, "min_count": 74, "name": "HDIDm4hMzF4Txode", "unlimited": false, "use_buffer_percent": false}, "SrUTvfqU0bfoMm5c": {"buffer_count": 94, "buffer_percent": 27, "max_count": 40, "min_count": 59, "name": "FWbotQyXJRcQWsmq", "unlimited": false, "use_buffer_percent": false}}, "regions": ["s92epxk0i8VxsZNe", "reSvf9699mCEHThU", "JkETAsSp7gh4TeUT"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' 'kAYfJB8AT9t4Tv20' --login_with_auth "Bearer foo"
dsmc-delete-deployment '7Y2QD3oD5fLCr3OO' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 37, "buffer_percent": 97, "configuration": "gQxC3Gb7S0o4zGYY", "enable_region_overrides": false, "extendable_session": false, "game_version": "QI1AeFgPqaOkvo1a", "max_count": 30, "min_count": 23, "regions": ["nmwAft4gqkNNlWkD", "9eOziYRFOn0jJLHC", "9LxhvNXTwGBCtohL"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": false}' '7MUBG7qtPu64yAtU' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 90, "buffer_percent": 38, "max_count": 75, "min_count": 77, "unlimited": false, "use_buffer_percent": true}' 'b738HGS6rDgMdIIl' 'hS1fSiM9331m7Ta1' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'PsKc50Kv6ecnEevc' 'Ax2K2zkRenmPZnGB' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 39, "buffer_percent": 56, "max_count": 22, "min_count": 86, "unlimited": true, "use_buffer_percent": false}' 'FPoJeQediogEhhM2' 'rIizGdKvOPdq5xrg' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 48, "buffer_percent": 4, "configuration": "Smy1DN9LFkYW5DQy", "enable_region_overrides": false, "extendable_session": false, "game_version": "VFCmpo6sPwVOEDSJ", "max_count": 38, "min_count": 62, "region_overrides": {"Zdb65UXmy0Zp6iIa": {"buffer_count": 94, "buffer_percent": 16, "max_count": 71, "min_count": 43, "name": "KUkmkk9QM0NBMA9O", "unlimited": true, "use_buffer_percent": false}, "pzwLR2AK6eXUGPJs": {"buffer_count": 45, "buffer_percent": 97, "max_count": 11, "min_count": 16, "name": "Do5sYadCCFrHHC3D", "unlimited": false, "use_buffer_percent": true}, "xkrQDXuNFviMarv8": {"buffer_count": 25, "buffer_percent": 69, "max_count": 28, "min_count": 15, "name": "fHK8CCmE2lPnsbD3", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dlwuUccE536ugBp3", "HBvepnDCjgyJlXe3", "6mgWjLfFmteue9nz"], "session_timeout": 72, "unlimited": true, "use_buffer_percent": true}' 'fH24T805tVg8JqU0' 'jZpjvsugAOS7u8Ri' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'WyerCSa8SRgwsAj1' 'ik1jglaDXTvKCWwN' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 94, "buffer_percent": 23, "configuration": "Ahd2wrS0uPdjhdin", "enable_region_overrides": false, "game_version": "nwVBOqOHi8pWGd1j", "max_count": 41, "min_count": 1, "regions": ["YhiqjRJOqB5F93zF", "QbJndUDpdONneAcz", "bBdHb2slt71B1SmZ"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": true}' 'iKoTTS1j02o7JjTX' 'AQN0qdskdQV0TqI8' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 62, "buffer_percent": 0, "max_count": 64, "min_count": 74, "unlimited": false, "use_buffer_percent": false}' 'DOJvrTefglSs6g4i' 'Y9u02aCNYIWekp18' 'lOC3mNqF7Bl0Lcgh' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'VHfPEspxwhRON0bc' '1eMbEIjowLqc3ecj' 'XJbZDKKoxLE1Y3Dy' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 26, "buffer_percent": 39, "max_count": 31, "min_count": 19, "unlimited": false, "use_buffer_percent": false}' 'giPg4x4yiPX6ues1' 'Hhhkg1yLVbLFzHEP' '8cM4NTwr0KHaAsmT' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '9' '72' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'j52WKi6tArAURt9p' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 23, "mem_limit": 73, "params": "CSVq8PdH6hJPUAc0"}' 'RVwXgAgntLMCuaXB' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'WQi6BqPg4xr0lCan' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 5, "mem_limit": 81, "name": "UZGCHsZYoLfR1KtO", "params": "v7Zy0b65uvuKNuy0"}' 'ytZQ7M6Nzy1adnSK' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 84}' 'kmZXElW9YfRSse6A' --login_with_auth "Bearer foo"
dsmc-delete-port 'Az3S4czz0QKFlAVm' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "VLu4AOec0z8eBeeo", "port": 16}' 'OfnwIdlNa29fDLh7' --login_with_auth "Bearer foo"
dsmc-list-images '11' '47' --login_with_auth "Bearer foo"
dsmc-delete-image 'IslKHzGlLKWUtDQs' '61OQAoxyyQpRWCii' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'PDGQhNPEwiJCf2XJ' 'VrlzqQls1ozhLVA3' 'kE8jKvgatOEBM70T' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'dlNBJYOmpu1VCarz' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'BsV6xnZ5Jrzzjrca' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'ug6CWVG8SWP3glU6' 'muswVJnNnN7kAa7j' --login_with_auth "Bearer foo"
dsmc-get-repository --login_with_auth "Bearer foo"
dsmc-list-server '63' '35' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'garAdNJOIG36I6tR' --login_with_auth "Bearer foo"
dsmc-get-server 'bRcrEveMdAdiPKDU' --login_with_auth "Bearer foo"
dsmc-delete-server 'VSC00PYeDcagginx' --login_with_auth "Bearer foo"
dsmc-list-session '27' '68' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'FIna3yddcbsPheTH' --login_with_auth "Bearer foo"
dsmc-create-repository '{"namespace": "26IUJNvYuGRUvpZa", "repository": "HCuESOiIZsMfB4ZH"}' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-get-all-deployment-client '76' '26' --login_with_auth "Bearer foo"
dsmc-create-deployment-client '{"allow_version_override": true, "buffer_count": 26, "buffer_percent": 12, "configuration": "DWORBVXTIIJM9XsY", "enable_region_overrides": false, "extendable_session": true, "game_version": "xot371W9G4AvQkqs", "max_count": 66, "min_count": 56, "overrides": {"nmyo5JJTUVmb8GEX": {"buffer_count": 64, "buffer_percent": 67, "configuration": "TlEMEsFzYqwgK1Np", "enable_region_overrides": false, "extendable_session": false, "game_version": "d4BxqGWV6mTJ0sQs", "max_count": 84, "min_count": 81, "name": "Khqf6kiTdSGv2LFj", "region_overrides": {"AKY7CbgsWqFWZX7k": {"buffer_count": 84, "buffer_percent": 56, "max_count": 84, "min_count": 29, "name": "emPYdYT7DROCjtuz", "unlimited": false, "use_buffer_percent": false}, "oIllKlpO2pqiXJF3": {"buffer_count": 99, "buffer_percent": 20, "max_count": 67, "min_count": 79, "name": "RaoQomSJC4DdrKF7", "unlimited": true, "use_buffer_percent": false}, "LG59e0k5ZtX6wK7P": {"buffer_count": 32, "buffer_percent": 79, "max_count": 96, "min_count": 74, "name": "lcIW32iK7MGt1ixY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["uVoJXTIMtpgkieDy", "F97lGdMiHKxbWCYz", "o8yO2KTK9tmmOnYn"], "session_timeout": 83, "unlimited": true, "use_buffer_percent": false}, "Rb3z7CYLM8IlsHqf": {"buffer_count": 12, "buffer_percent": 22, "configuration": "nrfsGlfPaZKBwa3D", "enable_region_overrides": false, "extendable_session": false, "game_version": "b60ufPpzwj1QGIFm", "max_count": 23, "min_count": 69, "name": "Vf4jvapseE9LN9bv", "region_overrides": {"hOrHflIOd6X3viLv": {"buffer_count": 39, "buffer_percent": 32, "max_count": 62, "min_count": 88, "name": "k4mTIpUA9gxo8SV3", "unlimited": false, "use_buffer_percent": true}, "Og54vCE48L5oLF6M": {"buffer_count": 67, "buffer_percent": 22, "max_count": 82, "min_count": 28, "name": "a4JUMSHNgqRqCV7u", "unlimited": true, "use_buffer_percent": false}, "0NqoTow0qiOiC4j0": {"buffer_count": 17, "buffer_percent": 21, "max_count": 34, "min_count": 39, "name": "KhTPkwfLM9uSybRz", "unlimited": false, "use_buffer_percent": false}}, "regions": ["6Hl8kUXzt6bSc6bW", "vgpVyW9dD1kOmvrA", "ejcq2LgkQuaS7RBx"], "session_timeout": 63, "unlimited": true, "use_buffer_percent": false}, "4HUtipUWYhWV1qx8": {"buffer_count": 59, "buffer_percent": 83, "configuration": "zPML52faXUr9Sk4l", "enable_region_overrides": true, "extendable_session": true, "game_version": "2faBcAXXKlhvyH8p", "max_count": 0, "min_count": 67, "name": "OJtxqMPpcVfRwNj5", "region_overrides": {"47fH0XrKEDpEY8Vn": {"buffer_count": 30, "buffer_percent": 95, "max_count": 5, "min_count": 67, "name": "Am4DZhl0bQxFJ3sW", "unlimited": true, "use_buffer_percent": true}, "phn50c9tNLDljhZ2": {"buffer_count": 20, "buffer_percent": 33, "max_count": 48, "min_count": 11, "name": "LRX3z46OCaGBeMfP", "unlimited": false, "use_buffer_percent": true}, "os4yBRjrERHEonAZ": {"buffer_count": 89, "buffer_percent": 62, "max_count": 66, "min_count": 10, "name": "mEu0q1p6QCyY6vSk", "unlimited": true, "use_buffer_percent": false}}, "regions": ["fZiGhxOdcuDXSxSc", "3aZPV87pna08gxef", "TYKhuxaEc7M4P7Uc"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"DKDAF8KDsBZOuYQJ": {"buffer_count": 48, "buffer_percent": 42, "max_count": 57, "min_count": 9, "name": "AHZ7c53q7akMpcmn", "unlimited": false, "use_buffer_percent": false}, "x6RVBrop9v7aZK3h": {"buffer_count": 0, "buffer_percent": 15, "max_count": 24, "min_count": 3, "name": "UlfwEQKjU7eHGebS", "unlimited": true, "use_buffer_percent": false}, "Q40kepEaC4dfiOMZ": {"buffer_count": 11, "buffer_percent": 13, "max_count": 62, "min_count": 16, "name": "mPYhrLTyU8OhgfY9", "unlimited": true, "use_buffer_percent": true}}, "regions": ["bYXEcENx9xZlAcho", "b44lONDDwMvgI0Hl", "yPR7wZNiVsF6xG2m"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}' 'QdbzIVy8alncV7vW' --login_with_auth "Bearer foo"
dsmc-delete-deployment-client 'gSHdfo07UctPErqx' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config-client '50' '0' --login_with_auth "Bearer foo"
dsmc-create-pod-config-client '{"cpu_limit": 78, "mem_limit": 24, "params": "yOK06MqQBErxgjVB"}' 'ycvU4PbmRDcrg0Dj' --login_with_auth "Bearer foo"
dsmc-delete-pod-config-client 'QjBECXvea7H1m2lJ' --login_with_auth "Bearer foo"
dsmc-list-images-client --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'FRZ3ZprZ60zMjhTH' --login_with_auth "Bearer foo"
dsmc-list-server-client '10' '27' --login_with_auth "Bearer foo"
dsmc-server-heartbeat '{"podName": "h94TSenE5hCFkIf5"}' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "weqZ18MH57l2Zsrh"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "90ETtYmGukz3Mnlr", "ip": "jcHp6B8Vj7rXFgDn", "name": "DkdZ9bpjb1tdA3Qh", "port": 18}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "tvrK2jhsYpKPlXn7", "pod_name": "7AtYoFzLAATPY8P8"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "3cfoivvQxevecWw7"}' --login_with_auth "Bearer foo"
dsmc-get-server-session-timeout 'Rry0KK5rgAGO0dW8' --login_with_auth "Bearer foo"
dsmc-get-server-session 'rX2MVUGKSZ4GcLkt' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "4pK32sJxlZcCTpTd", "configuration": "RtCHvuk6B6XTmSLy", "deployment": "n50sigBVZxiKdV57", "game_mode": "GvRyd9UuL02Le8HS", "matching_allies": [{"matching_parties": [{"party_attributes": {"CslsDd4M1F5qRIbl": {}, "S7Nz81GRazPAANjf": {}, "BoldFOyqA2clJ5gE": {}}, "party_id": "OaCgM6Yn6RugbNEI", "party_members": [{"user_id": "pGBFUjOn5mM7k8nb"}, {"user_id": "LzvtCIW5ynMKquUi"}, {"user_id": "cAeIVXtoWAXhMlW4"}]}, {"party_attributes": {"tLqX7OICf5oD1e6o": {}, "I9FmYel0kOw72o8Z": {}, "kgk0jS6rDWUwfhKv": {}}, "party_id": "rf2AaH4yCWrHSppn", "party_members": [{"user_id": "IZkNnTn3rzH5NvAt"}, {"user_id": "cvNedgS1fUfKmihD"}, {"user_id": "bmu8ePWlQMVDXEHe"}]}, {"party_attributes": {"iGTnwyEw6hIWDZrp": {}, "P7rz3ISW510kHr4i": {}, "sTKWjmv67nuHCXWf": {}}, "party_id": "wnwGioVwVzmmBVVF", "party_members": [{"user_id": "fpqx1AeLtzcPJ3jt"}, {"user_id": "DYBo4FUTH7CGfKSy"}, {"user_id": "xgRR1DiCqSMzpqIF"}]}]}, {"matching_parties": [{"party_attributes": {"GLkDs7ACC1RgBfoN": {}, "rHlFi2qJLgmBLE35": {}, "YhyiDV90SeI5yppB": {}}, "party_id": "HoytVznCgNyx9fbT", "party_members": [{"user_id": "63ShEh8PbGikLjgj"}, {"user_id": "cj34uulU6FYBZsWF"}, {"user_id": "br3RSP0W9nBhvhf8"}]}, {"party_attributes": {"Q0DtJMcYQdN66bsw": {}, "Agt65X4N1LQZmB61": {}, "JMdtwCVUrYQue84d": {}}, "party_id": "wmbwFEnAZaWsQJtR", "party_members": [{"user_id": "YoagRJK5PX9UcOvh"}, {"user_id": "PyE11TRT2SKseoe8"}, {"user_id": "VLie0LBa36KNzjf0"}]}, {"party_attributes": {"05CXNGehQ2aTjTDf": {}, "KFDXC7eGL5YhJDWh": {}, "9YWqc0qgV6d9yOfI": {}}, "party_id": "MLds2DbPcaoMdtRL", "party_members": [{"user_id": "TmSvTkQQgB7exYvm"}, {"user_id": "HMxr5hPCJJztJBg0"}, {"user_id": "tTJg46IewOXE2AkC"}]}]}, {"matching_parties": [{"party_attributes": {"h3QIZsUf8lGFXcmw": {}, "TERHclOdxIwqejxe": {}, "18rNdb8Otq6j1mqU": {}}, "party_id": "av7k05HAQltnSojV", "party_members": [{"user_id": "4jT65yclX2FtAz0v"}, {"user_id": "JjFIYWOaNdsimmkW"}, {"user_id": "2miH3xRHAKy4QxZk"}]}, {"party_attributes": {"aXZ7vmiEd0JPxVyQ": {}, "pshaDwNqTbbFMXAM": {}, "fVXe0GZeMgsRsmH1": {}}, "party_id": "EQrYmkPKTPOlhTtS", "party_members": [{"user_id": "iZNCxuogFteTHJe4"}, {"user_id": "BhSSQkQD6WmOt6D7"}, {"user_id": "ufFVTOhvQpfbBke8"}]}, {"party_attributes": {"aEdd36xj6wySoltD": {}, "xsbzxrlaKEfkoYjY": {}, "2o6ouRW9UtNquwC3": {}}, "party_id": "WgumrIz4NhGztZpr", "party_members": [{"user_id": "4U4fwQIiLXgmRasv"}, {"user_id": "jO4lj8m3XEwP2b4g"}, {"user_id": "d3xOeii8Jnmssep2"}]}]}], "namespace": "xD2NY0kABeGs9yxa", "notification_payload": {}, "pod_name": "hld1pO0Gyf5PO3CO", "region": "yMvczgEpzZ3Fbtxf", "session_id": "hcRC7IVYa6iZ5uFR"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "YNn3SHiWxF0YbuU5"}' --login_with_auth "Bearer foo"
dsmc-get-session 'ar5qTLWUCy0Afgc0' --login_with_auth "Bearer foo"
dsmc-cancel-session '50XIZRW491e94mQj' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'VOOBnIWhunElqZUo' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "dp3IhtCSHy1ei1fI", "coreDumpEnabled": true, "image": "x3B4t7WQnp8jXZed", "imageReplicationsMap": {"gt5cyNe27HLtwtVO": {"failure_code": "axgP6Jbct8puMybY", "region": "GxD9IPmmsLmu3kaP", "status": "j0O4zd8Tb7cUNGPT", "uri": "BxiFFCrn7djjs69F"}, "TFVGUVhvKhJCmeis": {"failure_code": "ql14mUHVbMPimNhc", "region": "ZsU3VAdMDcb4qlki", "status": "FAamqvZI2KwjqPBi", "uri": "WXade41s3rH34mB2"}, "yPlRpWjmHZAAvKTH": {"failure_code": "8MuqIg0CzkguwuJC", "region": "W7EEFB67AODbi9Bz", "status": "upBsFpYc77GtRUcC", "uri": "FeY5g4XgBsbfzqxB"}}, "namespace": "PNe8ae1Il4aAtEbu", "patchVersion": "4IjGdqthRxTjQ7gk", "persistent": false, "version": "EY8rG0q0Q2Qd2JzR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "bkF2I03dIjvBbA6b", "coreDumpEnabled": false, "dockerPath": "CmQr17W65br34rBB", "image": "N9tU6TDm5GloFSKW", "imageSize": 79, "namespace": "t0ldWf7iSGIiKFtW", "persistent": true, "ulimitFileSize": 34, "version": "n4Yr2svKM6pqLGZ0"}' \
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
    '{"artifactPath": "TBujELAUK6mQ5iZg", "coreDumpEnabled": false, "dockerPath": "g7Jxc9pUnZmvhidw", "image": "CkZwqjYLfTiCO1ND", "imageSize": 56, "namespace": "4jxW4pIDwdqXpmRm", "patchVersion": "ut9H9XyWI8bp8fQx", "persistent": true, "ulimitFileSize": 69, "uploaderFlag": "91uYmtrHJbEGTUj7", "version": "YjERL1rEQG02zccA"}' \
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
    '{"claim_timeout": 74, "creation_timeout": 45, "default_version": "F19yVRafCjOuSYht", "port": 44, "ports": {"3AdvBaagTiRJ8daG": 93, "iX0VuFpZum7izxe7": 81, "I9mwJSrN8jkIykR2": 52}, "protocol": "9HBEUe89AwEw1HO4", "providers": ["FnKtx4XLKAmlDr19", "uJ3nq6VerzVCcI8y", "3Cz0YqCKUh5RD9vN"], "session_timeout": 55, "unreachable_timeout": 61}' \
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
    '{"claim_timeout": 32, "creation_timeout": 32, "default_version": "4jinFpnQ5xF9wwbv", "port": 80, "protocol": "gLu11A3HTovFi4tP", "providers": ["AGfleyCA6jEtcqsn", "zoVILjkwW61duF87", "aUyrdt4XSpWBAets"], "session_timeout": 1, "unreachable_timeout": 98}' \
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
    '28' \
    '14' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'zqP8oxfrtbECD1CY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 96, "buffer_percent": 1, "configuration": "AxJrINPXppPNO3Af", "enable_region_overrides": false, "extendable_session": false, "game_version": "cgwC3IN6tvKgLB9Q", "max_count": 25, "min_count": 91, "overrides": {"JIOq9dP5szG71utj": {"buffer_count": 38, "buffer_percent": 26, "configuration": "Q4CrRb9gUCeVz7fW", "enable_region_overrides": false, "extendable_session": false, "game_version": "IdhevfZvyV7Acodc", "max_count": 46, "min_count": 39, "name": "KjYDdmJOlzwm9Su4", "region_overrides": {"FnS98QqftSjq7sn8": {"buffer_count": 50, "buffer_percent": 76, "max_count": 36, "min_count": 16, "name": "eciPLfkVyyJsbGpO", "unlimited": false, "use_buffer_percent": true}, "gehDJxEN7JlZc8LM": {"buffer_count": 33, "buffer_percent": 40, "max_count": 30, "min_count": 69, "name": "2jZWu4yA3r0u4q1b", "unlimited": false, "use_buffer_percent": false}, "jfJKyFlM0u1uuoVd": {"buffer_count": 28, "buffer_percent": 98, "max_count": 33, "min_count": 50, "name": "iYOJf5KwMZQjzvjS", "unlimited": false, "use_buffer_percent": true}}, "regions": ["aGPGdqLE8Sohhhui", "TnJarYYkHBDdSzBX", "dxapwhd5IQYBQuxL"], "session_timeout": 45, "unlimited": false, "use_buffer_percent": false}, "uWYvE3fsNy9Z9Ohx": {"buffer_count": 44, "buffer_percent": 59, "configuration": "fUSR1l9xLPBsmAUr", "enable_region_overrides": true, "extendable_session": true, "game_version": "9L1IiD6MlcEPhMDF", "max_count": 53, "min_count": 20, "name": "MNa8vVe4MHX6AgMe", "region_overrides": {"p90AyyUJyAK5PRMR": {"buffer_count": 79, "buffer_percent": 8, "max_count": 46, "min_count": 7, "name": "lt9qfx2UDcgVE7L9", "unlimited": true, "use_buffer_percent": false}, "kTjgJaMYvNQOsDa4": {"buffer_count": 3, "buffer_percent": 21, "max_count": 4, "min_count": 68, "name": "gepqtxjbrztee7QL", "unlimited": false, "use_buffer_percent": true}, "ccIBnWyPw8mj7gyQ": {"buffer_count": 27, "buffer_percent": 16, "max_count": 6, "min_count": 22, "name": "IszGRj46COPipH1M", "unlimited": false, "use_buffer_percent": false}}, "regions": ["THG0qHJCWEfOJpZm", "9yEYWNGMy2pgSGSU", "OK68eqGJtWf1Ybgg"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": false}, "zaf7CaOSlHXrUSA6": {"buffer_count": 37, "buffer_percent": 80, "configuration": "LM2IwEsdOGBXBwnz", "enable_region_overrides": true, "extendable_session": false, "game_version": "X8v3xgC1Ge9PdbTT", "max_count": 54, "min_count": 17, "name": "J2Gp1r0sVZ6LJAOd", "region_overrides": {"dIL2l3hPjNDKv2LW": {"buffer_count": 12, "buffer_percent": 64, "max_count": 82, "min_count": 34, "name": "xuNOmUSWw18T1IxV", "unlimited": false, "use_buffer_percent": true}, "aZ3y6i38XQjLDRqk": {"buffer_count": 31, "buffer_percent": 19, "max_count": 18, "min_count": 65, "name": "LyEirURERnEMzpIm", "unlimited": false, "use_buffer_percent": false}, "sjAHyCK5tNanGBrk": {"buffer_count": 52, "buffer_percent": 17, "max_count": 95, "min_count": 69, "name": "vck3xTtmOFMebS4A", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lNzwog2IhErkNhNc", "ECWwchW6zL9SkbLl", "rNXnGanMazb8jvRW"], "session_timeout": 10, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"92m3iRlfnBAk0Cwi": {"buffer_count": 54, "buffer_percent": 38, "max_count": 88, "min_count": 41, "name": "65yQ9ssuHdGmxncC", "unlimited": true, "use_buffer_percent": false}, "r0KcgeqzGbruNB72": {"buffer_count": 68, "buffer_percent": 8, "max_count": 69, "min_count": 67, "name": "MkjzyBB4UFKiaoV0", "unlimited": false, "use_buffer_percent": false}, "m2yqPsMFxKybPkbu": {"buffer_count": 91, "buffer_percent": 75, "max_count": 47, "min_count": 76, "name": "9cLJ1APnNlsa2bRB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["27fVMWuAfDqLMR91", "9IZPKOKiAVQXXOmq", "FHLbyXmgCNiXH8ue"], "session_timeout": 27, "unlimited": false, "use_buffer_percent": false}' \
    'C5CphgMweexsIAP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'vHLjBJ9iqMcBL4Bz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 61, "buffer_percent": 96, "configuration": "yOxNInDByhnoluO6", "enable_region_overrides": true, "extendable_session": false, "game_version": "GFmPAnOkDiJq4xQy", "max_count": 9, "min_count": 83, "regions": ["7HqnVK3YVeOWs9mf", "VQh3jLBtn9pxpE7B", "YtzB0B4CxyQrUpIF"], "session_timeout": 43, "unlimited": true, "use_buffer_percent": false}' \
    'eRWdECaFGzfZ2hxc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 73, "buffer_percent": 62, "max_count": 64, "min_count": 36, "unlimited": false, "use_buffer_percent": false}' \
    'vk3IfAKEbqcNXSGC' \
    'CvNowNmdpcJgF88y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'SNq4Mj7mulP4tQ6R' \
    '1OqKVOTniBgLsNhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 12, "buffer_percent": 87, "max_count": 27, "min_count": 72, "unlimited": true, "use_buffer_percent": false}' \
    'CmhNHSXuqIHsxvaU' \
    'oXDmwWsukxncuD3Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 49, "buffer_percent": 57, "configuration": "y3f0R9s2kndhhZhw", "enable_region_overrides": true, "extendable_session": false, "game_version": "iLsZs4pmLDIQch4I", "max_count": 19, "min_count": 74, "region_overrides": {"Dq9aT3qZyI0rYsWu": {"buffer_count": 4, "buffer_percent": 88, "max_count": 54, "min_count": 50, "name": "kXsVJbXi7eRZa7Ww", "unlimited": false, "use_buffer_percent": false}, "895ImqK6tVsaUq3s": {"buffer_count": 40, "buffer_percent": 69, "max_count": 95, "min_count": 15, "name": "6NUsVY21NVIs7NRe", "unlimited": false, "use_buffer_percent": false}, "Ns0QJQeaWytPfds1": {"buffer_count": 57, "buffer_percent": 41, "max_count": 60, "min_count": 48, "name": "8PGqku59eFJrOXyD", "unlimited": true, "use_buffer_percent": false}}, "regions": ["vMUOPG0iHDT8QbF7", "gHPTPQbvLt2NRqJG", "IKzLyH1y72L13Orn"], "session_timeout": 51, "unlimited": true, "use_buffer_percent": true}' \
    'WgJTNFfM8M0IW4oe' \
    '8KDgy0xZfAcNg14W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    's8TIP1LKiFQoLDvu' \
    'mfqrgSfnx2h61X9d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 81, "buffer_percent": 87, "configuration": "1MGRXBJ6mVV7JS9q", "enable_region_overrides": false, "game_version": "udcxlCV4cNbJGQ57", "max_count": 23, "min_count": 23, "regions": ["PdinpjS2DRfGt9Gl", "yZVQ4X67tPZSTpPq", "3xjrElvvDgw0ag7k"], "session_timeout": 91, "unlimited": true, "use_buffer_percent": false}' \
    '0Hiqm5IuLryiEXqv' \
    'UWDjU1G0EVjVZw1T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 30, "buffer_percent": 52, "max_count": 77, "min_count": 4, "unlimited": true, "use_buffer_percent": true}' \
    'akQN1MpOs1RVFrcg' \
    '2CXxepx78fvsyhE2' \
    'BKtyTDSIM7mkmvZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'Cmsh4US8o4jfMANP' \
    'pmZDdMiCxmuCCVuF' \
    'jS1GC1d2b92B4vEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 19, "buffer_percent": 93, "max_count": 47, "min_count": 69, "unlimited": false, "use_buffer_percent": false}' \
    'Iz0jcgDI8Pkz96vd' \
    '80msqIm5bufnBqrp' \
    'LeqhwVhjnnjKMEmt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '2' \
    '76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'iWsAQHbMrKYi0Zxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 11, "mem_limit": 92, "params": "IhHtADUQ9zimQTQT"}' \
    '95pFJUAJsyAfeKOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'fV4f15NohXu6opxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 67, "mem_limit": 27, "name": "Rt6PqlkL0diRhLC1", "params": "0ih2EQfY3XCv4hdO"}' \
    'a6FdZhNMd1onFjGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 3}' \
    '2UBRmMhAbUWmFhdY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'LWzMuv3zkUY0n0BA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "ZkwbYkBLyO6A0Fqf", "port": 15}' \
    'CrJHXGXku2YVuOzh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '48' \
    '11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'HmnrrV9ZGWrZ05sx' \
    'e6A6RpmKDebNkylb' \
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
    'ynkgT9vayLLiizac' \
    '7Ge6zKJdlt7rjF5R' \
    'aJwvkWVco2LTo5ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'lvDF8qBWCQ9dLWYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'S8zdhMeBXH8x6HdV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'fZVDAiU6iJOF7JKZ' \
    'FNk2NKy59X8iOg2s' \
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
    '97' \
    '23' \
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
    'BiCoeC5weXJl7Pei' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'MH8z8dVej8N2yv6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'TnOK7xAvM7tuL81l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '38' \
    '87' \
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
    'R7xxSVp3Gd2TK0Hz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
$PYTHON -m $MODULE 'dsmc-create-repository' \
    '{"namespace": "YviTgYmx82JVBRLP", "repository": "Z6Iz8tne5dbguBF6"}' \
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
    '67' \
    '100' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
$PYTHON -m $MODULE 'dsmc-create-deployment-client' \
    '{"allow_version_override": true, "buffer_count": 2, "buffer_percent": 44, "configuration": "jE2opXtdsJQeJ1to", "enable_region_overrides": false, "extendable_session": true, "game_version": "9lOLaZaMphKCqTq3", "max_count": 63, "min_count": 7, "overrides": {"VheJjoEEXBLIxGnN": {"buffer_count": 41, "buffer_percent": 16, "configuration": "YtxIq73aMb48jISd", "enable_region_overrides": false, "extendable_session": true, "game_version": "KORRhxSWLWLNfHRD", "max_count": 85, "min_count": 97, "name": "AGv6c1ESC6hZYTYZ", "region_overrides": {"bzf5aANNNs5kgSZZ": {"buffer_count": 81, "buffer_percent": 96, "max_count": 78, "min_count": 70, "name": "SBqabUXOGkkoMUZn", "unlimited": false, "use_buffer_percent": false}, "08a6K1XRVfriSpPF": {"buffer_count": 28, "buffer_percent": 73, "max_count": 85, "min_count": 56, "name": "OIKrRBrYVzi9ui3l", "unlimited": true, "use_buffer_percent": true}, "ozTt9TsH7A0TuU2a": {"buffer_count": 77, "buffer_percent": 86, "max_count": 96, "min_count": 2, "name": "1AziBOHEAj1cT3u6", "unlimited": false, "use_buffer_percent": true}}, "regions": ["2FbrTFznTgDIwZIR", "Wf6T3by2kYSCdnFK", "Lc0xcTjqjdcEfU61"], "session_timeout": 83, "unlimited": true, "use_buffer_percent": false}, "nW49rWynp1ck1vT9": {"buffer_count": 6, "buffer_percent": 58, "configuration": "HJfF6KIuvnRCa9Jk", "enable_region_overrides": true, "extendable_session": false, "game_version": "yBdxkZKrEWFw9GYx", "max_count": 19, "min_count": 36, "name": "iiOQAD77ci0vfWVZ", "region_overrides": {"oRRMPi57HyKKz5ny": {"buffer_count": 71, "buffer_percent": 74, "max_count": 41, "min_count": 51, "name": "lKNKoXa0dgx1JgjC", "unlimited": false, "use_buffer_percent": true}, "da3YhtQxpCYME6x2": {"buffer_count": 57, "buffer_percent": 32, "max_count": 60, "min_count": 7, "name": "XJcrqKmXDwoEV6tC", "unlimited": false, "use_buffer_percent": true}, "PafIjLX8ce0KbNN7": {"buffer_count": 75, "buffer_percent": 5, "max_count": 23, "min_count": 41, "name": "JfmQplvGjVQ4aebj", "unlimited": false, "use_buffer_percent": false}}, "regions": ["wnJDg9Q3WXiydCOI", "nVolsr6CHmj763vL", "wtYEJTSiXjcY5ZPk"], "session_timeout": 43, "unlimited": false, "use_buffer_percent": true}, "LNW11vtpaTxi7k48": {"buffer_count": 18, "buffer_percent": 60, "configuration": "RCn48bvkCPfKofwX", "enable_region_overrides": false, "extendable_session": true, "game_version": "QAJza84lKKmVOaTS", "max_count": 48, "min_count": 40, "name": "BbNrSUAW2ak7ISDr", "region_overrides": {"BVg6NuDZvPb1kuUf": {"buffer_count": 82, "buffer_percent": 70, "max_count": 10, "min_count": 74, "name": "UDe4g7q6PHEaqbzH", "unlimited": true, "use_buffer_percent": true}, "869IN4V1OdhH4GVU": {"buffer_count": 61, "buffer_percent": 63, "max_count": 32, "min_count": 48, "name": "A1tIC45C0oaGouFu", "unlimited": false, "use_buffer_percent": true}, "XONgUwJnUpryDeRc": {"buffer_count": 32, "buffer_percent": 17, "max_count": 96, "min_count": 36, "name": "vlrw2MwC1uuokpaI", "unlimited": false, "use_buffer_percent": false}}, "regions": ["L0Vxe5n9Lx3QcFo9", "gxOgvDc7xMrRKvw8", "ISP2WKmCRRXBxlal"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"heLgsAF4ctv5guyc": {"buffer_count": 67, "buffer_percent": 72, "max_count": 18, "min_count": 14, "name": "q9j2EyIknfLDpgHn", "unlimited": false, "use_buffer_percent": true}, "nc3gUZ8ZFyyEr0KB": {"buffer_count": 42, "buffer_percent": 42, "max_count": 73, "min_count": 7, "name": "BqK4QtEydPWLPBYi", "unlimited": false, "use_buffer_percent": true}, "c1ZYapx7C477etqg": {"buffer_count": 11, "buffer_percent": 58, "max_count": 84, "min_count": 70, "name": "JDUT0uKAPrARya2I", "unlimited": false, "use_buffer_percent": false}}, "regions": ["bNLWHAbCZixe2cQ6", "O30lpzcBQMAEcNcJ", "qrKxnMzSYoc4ZjiM"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}' \
    'vCAZ5j24acYHbrry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
$PYTHON -m $MODULE 'dsmc-delete-deployment-client' \
    'HB6GO9zP3FaepA3b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
$PYTHON -m $MODULE 'dsmc-get-all-pod-config-client' \
    '91' \
    '73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
$PYTHON -m $MODULE 'dsmc-create-pod-config-client' \
    '{"cpu_limit": 25, "mem_limit": 88, "params": "nJM6vtT27xv85K5M"}' \
    'U2qmbeqaVemINdCl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
$PYTHON -m $MODULE 'dsmc-delete-pod-config-client' \
    'pF7OvlBIEgjse5kd' \
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
    '6GEDo08yq5E5HleL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'ImageDetailClient' test.out

#- 67 ListServerClient
$PYTHON -m $MODULE 'dsmc-list-server-client' \
    '29' \
    '30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListServerClient' test.out

#- 68 ServerHeartbeat
$PYTHON -m $MODULE 'dsmc-server-heartbeat' \
    '{"podName": "mkCuL5W4tKt6G3j9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ServerHeartbeat' test.out

#- 69 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "LYdG7xVPqBqe9RDQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeregisterLocalServer' test.out

#- 70 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "MBSYAFLqp8PF5hCc", "ip": "oukWpnbz4ys7j6lx", "name": "uU3u2HEG0qfKegvF", "port": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RegisterLocalServer' test.out

#- 71 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "51yAB8Pa3uNGKhaL", "pod_name": "lJzJMSnJIIgsAVma"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RegisterServer' test.out

#- 72 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "YxUX1B9oVuzG2CnY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'ShutdownServer' test.out

#- 73 GetServerSessionTimeout
$PYTHON -m $MODULE 'dsmc-get-server-session-timeout' \
    'X2YBF2g7TVtzYEHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetServerSessionTimeout' test.out

#- 74 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'odh3iUfBthbepUCT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetServerSession' test.out

#- 75 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "WiZ1uqh7GAi4FEIu", "configuration": "44u83ZLRxYlYqlpq", "deployment": "03BGdIk4oEogFVGR", "game_mode": "71rJOBy6lsj1AKGB", "matching_allies": [{"matching_parties": [{"party_attributes": {"jnHmaAu4YK87DYAW": {}, "WcbcbGWmKgE8CZ4A": {}, "ELr5lraa5v5P5Cj8": {}}, "party_id": "hgFsqHC9h5JPiMEt", "party_members": [{"user_id": "gKuiGTYgwWv5XldL"}, {"user_id": "6rOVGcRAn51rVAQS"}, {"user_id": "xp4qTB54mKA3V9DK"}]}, {"party_attributes": {"lCeZ7mLYsHooOIax": {}, "Ipb1cIOJPS3lJ80Y": {}, "J41U4ooQ980ywmg1": {}}, "party_id": "pWpWit1QC7FKe0fn", "party_members": [{"user_id": "HUlmU1unGKM0tgfe"}, {"user_id": "Wy47bbwMI4gGmvK9"}, {"user_id": "gW596FwBNrFXt3TA"}]}, {"party_attributes": {"uKBwBcD12ae6r3hH": {}, "wya4NpdOzg3hr6uc": {}, "Hf7dbh2iKNUl0qJq": {}}, "party_id": "zoKMRMG541PAiNjU", "party_members": [{"user_id": "Lsx4SnKNXLMUaDSw"}, {"user_id": "wQlnNRZJHBSB4fZW"}, {"user_id": "EFIZs28Ff1kZp1Zk"}]}]}, {"matching_parties": [{"party_attributes": {"tx3N7WNMYIfcDKbL": {}, "u8pnK34oA1keYXJv": {}, "tggDdXjbdjMBahFZ": {}}, "party_id": "ZGMTcqnWrIprOv0B", "party_members": [{"user_id": "J9Sgl7H1sdH2RIJz"}, {"user_id": "1eI7Q5pu9PutLf6I"}, {"user_id": "rvZoBGQbO4S3rURG"}]}, {"party_attributes": {"WUzPAE6SdV4D5jft": {}, "Rl9rZmtQUvro8TWw": {}, "XWsz9TVmdMKEohKz": {}}, "party_id": "uMYDUTLBeCidXjuG", "party_members": [{"user_id": "gx8ncXejmeZtzT0q"}, {"user_id": "j0ltsqfiZrthVvyX"}, {"user_id": "0OCKDJE3RMUddwSS"}]}, {"party_attributes": {"gxCu8zru1DhGAYOH": {}, "R5BWa9VzIkaQEl1i": {}, "UProNB6hI6IpGcTo": {}}, "party_id": "WgFvdRhG9NwV3zDu", "party_members": [{"user_id": "qVlVTypcYPK8IxrS"}, {"user_id": "ZuxWl0Je4fJIyFAm"}, {"user_id": "3DQht4JwnPS2urJq"}]}]}, {"matching_parties": [{"party_attributes": {"erobWMZGVL5KLTxa": {}, "hWlS6XdBaKSLCgOO": {}, "PXM6XTUh2dJ90yqH": {}}, "party_id": "DNacl4F9G6Dl5TFw", "party_members": [{"user_id": "BY6HKXAblkT8VGgS"}, {"user_id": "H8MGZGwiVj7eDTak"}, {"user_id": "a9ABfX1IByPEOuPh"}]}, {"party_attributes": {"GspRi3bhPQvBBJI5": {}, "JxytpcubN4AUUPFP": {}, "scZsXeJOD4DMtqfI": {}}, "party_id": "GiGJovgWSRxZ8N4U", "party_members": [{"user_id": "Q2fg3V1o2x0hL5Du"}, {"user_id": "BDqMyIAzWze94MEd"}, {"user_id": "JFAy2JTllJkRGB8j"}]}, {"party_attributes": {"qJEd6eqqsBVyONV0": {}, "JRtozI0jpliCFQ6W": {}, "gJpGPigdc5VyC4qv": {}}, "party_id": "WjVac1cQvSxgTNIU", "party_members": [{"user_id": "zxDgBlIbuzm7DzJ2"}, {"user_id": "0NFRJIhFXR2dYprP"}, {"user_id": "mbpuptECGd5cdXC2"}]}]}], "namespace": "Sesc6y68whNBYl9i", "notification_payload": {}, "pod_name": "CqfW6rqGOQny4ij4", "region": "ysYPonb59gQffkNO", "session_id": "mubxEJr2qEAuJbpZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateSession' test.out

#- 76 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "Srcbc4LWfKaY5c1t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'ClaimServer' test.out

#- 77 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'P5TDuI5f6m4KC07C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetSession' test.out

#- 78 CancelSession
$PYTHON -m $MODULE 'dsmc-cancel-session' \
    'nsZe32hqEcB1ExYM' \
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
    'Bb3ckvoaJYdMqGeg' \
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
