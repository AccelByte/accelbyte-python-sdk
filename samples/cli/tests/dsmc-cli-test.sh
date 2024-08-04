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
dsmc-update-image '{"artifactPath": "EAxcVpFrttufHIRd", "coreDumpEnabled": true, "image": "9UzVRiXbqlAw7r6W", "imageReplicationsMap": {"2ktQG0h5JAav5kRa": {"failure_code": "62WopBJHPtcDs8bB", "region": "ZLCXLx8bbgorQeFb", "status": "Q1g7qbPngUNB1vRo", "uri": "dwpzS6DaDpv8N7ZQ"}, "VqGj6oDLjWjkY1aX": {"failure_code": "lFcDtgOjchIua5tW", "region": "EIC32ogW7olvbTgr", "status": "hRTcPiSuL0Sly6XM", "uri": "4OI18mAQLnzjMf8G"}, "Z2WBZqxYG3aREAu2": {"failure_code": "D6QVKNCWP75TB0i7", "region": "pKxR8dl0zRVW4EZG", "status": "9m0XcgGVbMqSszE8", "uri": "GHavj7AorKsxwkos"}}, "namespace": "AVerXpc1C8XfwHuK", "patchVersion": "eb9l3rGN9A3sNm84", "persistent": false, "ulimitFileSize": 7, "version": "SoEAcBdW19m4eu6d"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "5tA5jUmiTqpyhPFd", "coreDumpEnabled": true, "dockerPath": "rhBRd8lDR6qVNPRZ", "image": "YdFLIAjGGJddVCvu", "imageSize": 40, "namespace": "vx5KQ7KYnIuMBvaO", "persistent": false, "ulimitFileSize": 23, "version": "u6Vpbsx5w8hqUI06"}' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "UpOXGSLmCVuHOPlL", "coreDumpEnabled": false, "dockerPath": "veabntBSxTeIv53H", "image": "GCiljvjKoyD6SCwG", "imageSize": 36, "namespace": "hFjkQsfCaTmt1d67", "patchVersion": "FXGk2s9Q0mPVo3tw", "persistent": true, "ulimitFileSize": 6, "uploaderFlag": "0MesTCf9x4rt69ln", "version": "a7qxNeIxPz6MbwL6"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-worker-config --login_with_auth "Bearer foo"
dsmc-update-worker-config '{"auto_deletion": false, "ghost_worker": true, "manual_buffer_override": true, "zombie_worker": true}' --login_with_auth "Bearer foo"
dsmc-create-worker-config '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 78, "creation_timeout": 38, "default_version": "qYSYWytLPziZMdjx", "port": 6, "ports": {"d3IL5TAQ6iiPlSC2": 42, "EzfTD1ZBm3MqHcUm": 76, "8IHtrkmu0hpDDWVA": 22}, "protocol": "Qy4uZAAiE0mit9RG", "providers": ["CCHYzUOcEdscKHPE", "qgA8yu7Vk6Jt4Ymo", "s9Jcdos4fYcTVU6R"], "session_timeout": 56, "unreachable_timeout": 44}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 39, "creation_timeout": 58, "default_version": "0zYoMcHyCUEXlAvx", "port": 73, "protocol": "xozr6wfNPX2bOItR", "providers": ["MvqtlB2jJCSQT279", "ZZPYGu0rdlgdWyOt", "Xi3choQrpOsDBU5S"], "session_timeout": 9, "unreachable_timeout": 48}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '31' '96' --login_with_auth "Bearer foo"
dsmc-get-deployment 'jChB3V0v52Dlym6p' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 86, "buffer_percent": 81, "configuration": "23xoJ8aeCnaLpUKp", "enable_region_overrides": false, "extendable_session": false, "game_version": "YUDjasWIPUvmEejt", "max_count": 66, "min_count": 8, "overrides": {"kILsSSyDdmykmoPY": {"buffer_count": 13, "buffer_percent": 4, "configuration": "MXbN9oCMNqq98SjT", "enable_region_overrides": true, "extendable_session": false, "game_version": "xjUkl535X3ateEKD", "max_count": 31, "min_count": 58, "name": "ADz1x3poD3Qgb3bo", "region_overrides": {"LQQ1MzH7Qm8bwbmX": {"buffer_count": 13, "buffer_percent": 80, "max_count": 7, "min_count": 60, "name": "APh1EThG96gAFKK2", "unlimited": true, "use_buffer_percent": true}, "bTDIHrvqAThuwjRH": {"buffer_count": 32, "buffer_percent": 28, "max_count": 74, "min_count": 49, "name": "KTlmVr9XuoJbRFQS", "unlimited": true, "use_buffer_percent": false}, "bn4Xxtu7LQRENjEE": {"buffer_count": 52, "buffer_percent": 39, "max_count": 47, "min_count": 62, "name": "1WsYSiZqan0nSBJr", "unlimited": false, "use_buffer_percent": false}}, "regions": ["BHqaTHeKtW18iGeU", "lc9d9sogWa24CKNS", "0GqVvUfHQvsHXNUN"], "session_timeout": 8, "unlimited": false, "use_buffer_percent": true}, "hgo5QB65lSAiYnNj": {"buffer_count": 22, "buffer_percent": 47, "configuration": "fZrQvGgbLdLsFzHk", "enable_region_overrides": true, "extendable_session": true, "game_version": "r1yrOMlNFSrUEirn", "max_count": 20, "min_count": 5, "name": "X9fDmIbeZxzfTcyi", "region_overrides": {"uATus9hsfpFDcSDG": {"buffer_count": 39, "buffer_percent": 0, "max_count": 48, "min_count": 80, "name": "FHyPLtI8ilbyDPUI", "unlimited": false, "use_buffer_percent": true}, "cekdqCt81P1ktfIo": {"buffer_count": 44, "buffer_percent": 9, "max_count": 26, "min_count": 70, "name": "v9gsR5cJcHm3SZLx", "unlimited": false, "use_buffer_percent": true}, "mJFfRByjlBiuFM3F": {"buffer_count": 71, "buffer_percent": 29, "max_count": 29, "min_count": 89, "name": "Vk8T3GpAnkCmBUqg", "unlimited": true, "use_buffer_percent": true}}, "regions": ["kYs4Yw20DOqOBSC2", "DKHRuPMMWH8Yb33T", "5UBJCjfcnLRfxeCS"], "session_timeout": 52, "unlimited": true, "use_buffer_percent": true}, "WEi8KlloeH0JT1yd": {"buffer_count": 41, "buffer_percent": 94, "configuration": "at2vQR3biBfsu4jm", "enable_region_overrides": true, "extendable_session": true, "game_version": "RE2w1yEkLgh3tIYt", "max_count": 40, "min_count": 92, "name": "uLl4XlbGL8QOxtjz", "region_overrides": {"m8y2wNhmwoYZyI4E": {"buffer_count": 65, "buffer_percent": 8, "max_count": 69, "min_count": 76, "name": "SKLCa3xreNDUWehw", "unlimited": true, "use_buffer_percent": false}, "A806DJgas4b6z3LN": {"buffer_count": 96, "buffer_percent": 9, "max_count": 19, "min_count": 29, "name": "7fdgLA84Z8YYk6QE", "unlimited": false, "use_buffer_percent": false}, "JjBbEDoNf3n0hEoR": {"buffer_count": 58, "buffer_percent": 78, "max_count": 54, "min_count": 81, "name": "cf80zfFyabWAgIUX", "unlimited": false, "use_buffer_percent": false}}, "regions": ["I07A68eaqC2J9jyE", "W6GLbc0NaKDUL3sa", "13lk1dQBHO86IlBh"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"O39PXDNxtXgeO3Fg": {"buffer_count": 21, "buffer_percent": 38, "max_count": 14, "min_count": 1, "name": "jDzaQY3snn2ZkP7c", "unlimited": false, "use_buffer_percent": true}, "P43e5dC9XIBudfZg": {"buffer_count": 35, "buffer_percent": 1, "max_count": 2, "min_count": 74, "name": "HDIDm4hMzF4Txode", "unlimited": false, "use_buffer_percent": false}, "SrUTvfqU0bfoMm5c": {"buffer_count": 94, "buffer_percent": 27, "max_count": 40, "min_count": 59, "name": "FWbotQyXJRcQWsmq", "unlimited": false, "use_buffer_percent": false}}, "regions": ["s92epxk0i8VxsZNe", "reSvf9699mCEHThU", "JkETAsSp7gh4TeUT"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' 'kAYfJB8AT9t4Tv20' --login_with_auth "Bearer foo"
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
dsmc-delete-creating-server-count-queue 'ej52WKi6tArAURt9' 'plCSVq8PdH6hJPUA' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '5' '33' --login_with_auth "Bearer foo"
dsmc-get-pod-config '0RVwXgAgntLMCuaX' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 56, "mem_limit": 98, "params": "WQi6BqPg4xr0lCan"}' 'cUZGCHsZYoLfR1Kt' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'Ov7Zy0b65uvuKNuy' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 62, "mem_limit": 50, "name": "3Tam69qSZ7PC6f6Q", "params": "kmZXElW9YfRSse6A"}' 'Az3S4czz0QKFlAVm' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 97}' '6XqP6oo7G73zdxTg' --login_with_auth "Bearer foo"
dsmc-delete-port 'OfnwIdlNa29fDLh7' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "41IslKHzGlLKWUtD", "port": 87}' 'l5LLLOexL4fZvWtN' --login_with_auth "Bearer foo"
dsmc-list-images '60' '17' --login_with_auth "Bearer foo"
dsmc-delete-image '2tcBFpX8lNtFEJ7t' 'nkY6Mca5afj12K2I' --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'zrBvvWm4udE0OXud' 'XgNne8kJATwlc6es' 'Up6Sw1I98jeZQ7hf' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'xnhLd3Knaknoed9D' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'HhLOqQGhCUr6iTrj' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'yEgarAdNJOIG36I6' 'tRbRcrEveMdAdiPK' --login_with_auth "Bearer foo"
dsmc-add-buffer '{"AllocCount": 61, "DeploymentName": "yTlUrwDTnoujQD4I", "JobCount": 62, "JobPriority": 47, "OverrideVersion": "iH9Z5qXn3aoRtlqO", "Region": "ECohViHA5CzgFSy8"}' --login_with_auth "Bearer foo"
dsmc-get-repository --login_with_auth "Bearer foo"
dsmc-list-server '1' '69' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'A3PrIfapq5AAeMe4' --login_with_auth "Bearer foo"
dsmc-get-server 'L3mDWORBVXTIIJM9' --login_with_auth "Bearer foo"
dsmc-delete-server 'XsYIIZxiXNMR9Bga' --login_with_auth "Bearer foo"
dsmc-list-session '99' '54' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session 'cFX3SUBhyoTsMWPA' --login_with_auth "Bearer foo"
dsmc-run-ghost-cleaner-request-handler --login_with_auth "Bearer foo"
dsmc-run-zombie-cleaner-request-handler '{"JobCount": 48, "Region": "mb8GEXFTlEMEsFzY", "TimeoutSecond": 33, "ZombieCount": 46}' --login_with_auth "Bearer foo"
dsmc-create-repository '{"namespace": "BOdkocVTd4BxqGWV", "repository": "6mTJ0sQs6XNbjvqh"}' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-get-all-deployment-client '26' '18' --login_with_auth "Bearer foo"
dsmc-get-deployment-client 'UVLWu8olKdxL6ozR' --login_with_auth "Bearer foo"
dsmc-create-deployment-client '{"allow_version_override": false, "buffer_count": 37, "buffer_percent": 61, "configuration": "WqFWZX7kPBom8F9G", "enable_region_overrides": true, "extendable_session": true, "game_version": "CjtuzFMbAG9YI89h", "max_count": 25, "min_count": 32, "overrides": {"guB8FOTjMLo4b9rI": {"buffer_count": 53, "buffer_percent": 58, "configuration": "qYkEpstyVTBcrM8r", "enable_region_overrides": false, "extendable_session": true, "game_version": "5ZtX6wK7PpUlcIW3", "max_count": 97, "min_count": 16, "name": "Iu8vvwLc7KY3uVoJ", "region_overrides": {"XTIMtpgkieDyF97l": {"buffer_count": 66, "buffer_percent": 7, "max_count": 7, "min_count": 48, "name": "MiHKxbWCYzo8yO2K", "unlimited": true, "use_buffer_percent": true}, "9tmmOnYnOpas6ghP": {"buffer_count": 51, "buffer_percent": 78, "max_count": 79, "min_count": 16, "name": "IlsHqffnrfsGlfPa", "unlimited": false, "use_buffer_percent": true}, "g4uKxaCgcGLuC3br": {"buffer_count": 99, "buffer_percent": 86, "max_count": 7, "min_count": 66, "name": "TYCfHkIySok5DiXZ", "unlimited": true, "use_buffer_percent": false}}, "regions": ["87rGysryod3dNQrm", "sApRA6HX3RwrKt2e", "cozL0TOg54vCE48L"], "session_timeout": 19, "unlimited": false, "use_buffer_percent": true}, "6M4lNa4JUMSHNgqR": {"buffer_count": 33, "buffer_percent": 58, "configuration": "nryEJ0NqoTow0qiO", "enable_region_overrides": false, "extendable_session": false, "game_version": "C4j0iktm0ZPLkLOs", "max_count": 32, "min_count": 42, "name": "0LZ5njN86Hl8kUXz", "region_overrides": {"t6bSc6bWvgpVyW9d": {"buffer_count": 61, "buffer_percent": 4, "max_count": 57, "min_count": 22, "name": "E2ItBS3KtKZWe8ao", "unlimited": true, "use_buffer_percent": true}, "RBx3vim02jBOxrZD": {"buffer_count": 51, "buffer_percent": 97, "max_count": 45, "min_count": 32, "name": "qx8CzPML52faXUr9", "unlimited": false, "use_buffer_percent": false}, "4lq2faBcAXXKlhvy": {"buffer_count": 69, "buffer_percent": 27, "max_count": 32, "min_count": 0, "name": "G5MlfDTk8aG40Nln", "unlimited": false, "use_buffer_percent": false}}, "regions": ["7fH0XrKEDpEY8Vno", "cGAjci0V3tBf2jnH", "GKXphn50c9tNLDlj"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": true}, "xLRX3z46OCaGBeMf": {"buffer_count": 85, "buffer_percent": 42, "configuration": "lNos4yBRjrERHEon", "enable_region_overrides": true, "extendable_session": true, "game_version": "GmEu0q1p6QCyY6vS", "max_count": 21, "min_count": 86, "name": "VFWdsbYuVEGVxYhe", "region_overrides": {"R3j5mNZ6vwv7K8As": {"buffer_count": 45, "buffer_percent": 48, "max_count": 40, "min_count": 10, "name": "1j1Rx59hesNWy2Nv", "unlimited": false, "use_buffer_percent": false}, "5DDKDAF8KDsBZOuY": {"buffer_count": 88, "buffer_percent": 53, "max_count": 73, "min_count": 48, "name": "3BAHZ7c53q7akMpc", "unlimited": false, "use_buffer_percent": false}, "nnx6RVBrop9v7aZK": {"buffer_count": 76, "buffer_percent": 15, "max_count": 11, "min_count": 0, "name": "hbN15zfQSfQrtfF3", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Q40kepEaC4dfiOMZ", "fEhHr39pysFO3Zvc", "1BZG99LyvfvHEsJK"], "session_timeout": 88, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"ZlAchob44lONDDwM": {"buffer_count": 44, "buffer_percent": 20, "max_count": 13, "min_count": 10, "name": "I0HlyPR7wZNiVsF6", "unlimited": true, "use_buffer_percent": false}, "mXEQdbzIVy8alncV": {"buffer_count": 21, "buffer_percent": 44, "max_count": 16, "min_count": 100, "name": "GG4vZFTYnPkmSu4P", "unlimited": true, "use_buffer_percent": false}, "MyOK06MqQBErxgjV": {"buffer_count": 57, "buffer_percent": 10, "max_count": 51, "min_count": 12, "name": "cvU4PbmRDcrg0DjQ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["BECXvea7H1m2lJFR", "Z3ZprZ60zMjhTHeh", "94TSenE5hCFkIf5w"], "session_timeout": 8, "unlimited": true, "use_buffer_percent": true}' '7l2Zsrh90ETtYmGu' --login_with_auth "Bearer foo"
dsmc-delete-deployment-client 'kz3MnlrjcHp6B8Vj' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config-client '56' '36' --login_with_auth "Bearer foo"
dsmc-create-pod-config-client '{"cpu_limit": 84, "mem_limit": 36, "params": "FgDnDkdZ9bpjb1td"}' 'A3QhjCMW64f4XhIj' --login_with_auth "Bearer foo"
dsmc-delete-pod-config-client 'SoTB2NMKtezapPr2' --login_with_auth "Bearer foo"
dsmc-list-images-client --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'QEPx3zTxBGtEJIYp' --login_with_auth "Bearer foo"
dsmc-list-server-client '31' '8' --login_with_auth "Bearer foo"
dsmc-count-server-detailed-client --login_with_auth "Bearer foo"
dsmc-server-heartbeat '{"podName": "uUSsKoHw2hyd12uS"}' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "E7BEv3aevq6iohU1"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "cg4W1IS3Uv1BpWoJ", "ip": "Baqdg2FHcunsS1ln", "name": "aO2m9vqjhbeK2qN8", "port": 12}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "dV57GvRyd9UuL02L", "pod_name": "e8HSCslsDd4M1F5q"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "blS7Nz81GRazPAAN"}' --login_with_auth "Bearer foo"
dsmc-get-server-session-timeout 'jfBoldFOyqA2clJ5' --login_with_auth "Bearer foo"
dsmc-get-server-session 'gEOaCgM6Yn6RugbN' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "EIpGBFUjOn5mM7k8", "configuration": "nbLzvtCIW5ynMKqu", "deployment": "UicAeIVXtoWAXhMl", "game_mode": "W4tLqX7OICf5oD1e", "matching_allies": [{"matching_parties": [{"party_attributes": {"6oI9FmYel0kOw72o": {}, "8Zkgk0jS6rDWUwfh": {}, "Kvrf2AaH4yCWrHSp": {}}, "party_id": "pnIZkNnTn3rzH5Nv", "party_members": [{"user_id": "AtcvNedgS1fUfKmi"}, {"user_id": "hDbmu8ePWlQMVDXE"}, {"user_id": "HeiGTnwyEw6hIWDZ"}]}, {"party_attributes": {"rpP7rz3ISW510kHr": {}, "4isTKWjmv67nuHCX": {}, "WfwnwGioVwVzmmBV": {}}, "party_id": "VFfpqx1AeLtzcPJ3", "party_members": [{"user_id": "jtDYBo4FUTH7CGfK"}, {"user_id": "SyxgRR1DiCqSMzpq"}, {"user_id": "IFGLkDs7ACC1RgBf"}]}, {"party_attributes": {"oNrHlFi2qJLgmBLE": {}, "35YhyiDV90SeI5yp": {}, "pBHoytVznCgNyx9f": {}}, "party_id": "bT63ShEh8PbGikLj", "party_members": [{"user_id": "gjcj34uulU6FYBZs"}, {"user_id": "WFbr3RSP0W9nBhvh"}, {"user_id": "f8Q0DtJMcYQdN66b"}]}]}, {"matching_parties": [{"party_attributes": {"swAgt65X4N1LQZmB": {}, "61JMdtwCVUrYQue8": {}, "4dwmbwFEnAZaWsQJ": {}}, "party_id": "tRYoagRJK5PX9UcO", "party_members": [{"user_id": "vhPyE11TRT2SKseo"}, {"user_id": "e8VLie0LBa36KNzj"}, {"user_id": "f005CXNGehQ2aTjT"}]}, {"party_attributes": {"DfKFDXC7eGL5YhJD": {}, "Wh9YWqc0qgV6d9yO": {}, "fIMLds2DbPcaoMdt": {}}, "party_id": "RLTmSvTkQQgB7exY", "party_members": [{"user_id": "vmHMxr5hPCJJztJB"}, {"user_id": "g0tTJg46IewOXE2A"}, {"user_id": "kCh3QIZsUf8lGFXc"}]}, {"party_attributes": {"mwTERHclOdxIwqej": {}, "xe18rNdb8Otq6j1m": {}, "qUav7k05HAQltnSo": {}}, "party_id": "jV4jT65yclX2FtAz", "party_members": [{"user_id": "0vJjFIYWOaNdsimm"}, {"user_id": "kW2miH3xRHAKy4Qx"}, {"user_id": "ZkaXZ7vmiEd0JPxV"}]}]}, {"matching_parties": [{"party_attributes": {"yQpshaDwNqTbbFMX": {}, "AMfVXe0GZeMgsRsm": {}, "H1EQrYmkPKTPOlhT": {}}, "party_id": "tSiZNCxuogFteTHJ", "party_members": [{"user_id": "e4BhSSQkQD6WmOt6"}, {"user_id": "D7ufFVTOhvQpfbBk"}, {"user_id": "e8aEdd36xj6wySol"}]}, {"party_attributes": {"tDxsbzxrlaKEfkoY": {}, "jY2o6ouRW9UtNquw": {}, "C3WgumrIz4NhGztZ": {}}, "party_id": "pr4U4fwQIiLXgmRa", "party_members": [{"user_id": "svjO4lj8m3XEwP2b"}, {"user_id": "4gd3xOeii8Jnmsse"}, {"user_id": "p2xD2NY0kABeGs9y"}]}, {"party_attributes": {"xahld1pO0Gyf5PO3": {}, "COyMvczgEpzZ3Fbt": {}, "xfhcRC7IVYa6iZ5u": {}}, "party_id": "FRYNn3SHiWxF0Ybu", "party_members": [{"user_id": "U5ar5qTLWUCy0Afg"}, {"user_id": "c050XIZRW491e94m"}, {"user_id": "QjVOOBnIWhunElqZ"}]}]}], "namespace": "Uodp3IhtCSHy1ei1", "notification_payload": {}, "pod_name": "fIrPvfHnRN06EjRw", "region": "EQlNapJRfk4f9Zcw", "session_id": "1pEHAyNFxcVTKuAQ"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"game_mode": "TGh5BxjWOozGoDts", "matching_allies": [{"matching_parties": [{"party_attributes": {"UuYo5p8ED5QZAufw": {}, "Na8lzfjv9oYMXMjl": {}, "VHY1AHwF3vGoav7M": {}}, "party_id": "K0PcLnEkcokKwcQ0", "party_members": [{"user_id": "baDT9OyJ2h23GUS2"}, {"user_id": "amU7syGlElXdEAOr"}, {"user_id": "VSnLocLVVYamQc4w"}]}, {"party_attributes": {"cG5nDBLJoJHbiQ5d": {}, "uE5p4cfs2E41cK8Q": {}, "TwiIAvxSvNDlmM5n": {}}, "party_id": "QFMGzs7fzjgyc44m", "party_members": [{"user_id": "Eh9tRk8knYSV30ln"}, {"user_id": "roQehMDli6t9unQL"}, {"user_id": "YXxm09wpGAbpEmDY"}]}, {"party_attributes": {"9vLh3u6EDsUmrV6k": {}, "H4OotKwG3UC6XCnn": {}, "ZxF8CmQr17W65br3": {}}, "party_id": "4rBBN9tU6TDm5Glo", "party_members": [{"user_id": "FSKWM1eym5ydC6p2"}, {"user_id": "5xCWTqUOYZENJ1QH"}, {"user_id": "ZQxPRXH7uxBJEECQ"}]}]}, {"matching_parties": [{"party_attributes": {"E1li3Bg7Jxc9pUnZ": {}, "mvhidwCkZwqjYLfT": {}, "iCO1NDBvQvRPnAz4": {}}, "party_id": "VzW0CpoBCbyJsF5I", "party_members": [{"user_id": "jF1c0W338HS6CBgV"}, {"user_id": "RyihYNZ84CVhziXV"}, {"user_id": "8HwSmvcvcDKF19yV"}]}, {"party_attributes": {"RafCjOuSYht83Adv": {}, "BaagTiRJ8daGTVX3": {}, "Bb7jlz5IfHgKjI9m": {}}, "party_id": "wJSrN8jkIykR2zba", "party_members": [{"user_id": "I6PD7fEscShnGUGU"}, {"user_id": "tV9GJ279GDbLNwjm"}, {"user_id": "3FK0nnX2poMfZ1hD"}]}, {"party_attributes": {"Htbh4HtMlFgvh2Dp": {}, "2SoiIPp1yvfAHS0V": {}, "gLu11A3HTovFi4tP": {}}, "party_id": "AGfleyCA6jEtcqsn", "party_members": [{"user_id": "zoVILjkwW61duF87"}, {"user_id": "aUyrdt4XSpWBAets"}, {"user_id": "anzqP8oxfrtbECD1"}]}]}, {"matching_parties": [{"party_attributes": {"CYPwaiBAxfYL8Avt": {}, "70ZUT2fSk3LL0cal": {}, "qxEewuGS469k2hG0": {}}, "party_id": "WKt4sUmanYxM0UHZ", "party_members": [{"user_id": "VNYzGMNIpWoSLkUr"}, {"user_id": "fuf4U3WeYeA9t2EN"}, {"user_id": "KKWrFtHIi1CMgKAO"}]}, {"party_attributes": {"G5iDcCR5PbCvDLil": {}, "8wj9cKM3Ar6MF35h": {}, "CER4nGmWGgTJfHlJ": {}}, "party_id": "l4tHGa4XfZcd9CVn", "party_members": [{"user_id": "GqMX9FieeEssWEUl"}, {"user_id": "07bhwntCVqiYOJf5"}, {"user_id": "KwMZQjzvjSozv6CT"}]}, {"party_attributes": {"RDl0zp9CzHFwinkB": {}, "Ni4gvqgl6TZ9TGVP": {}, "mv34h6T7EsufmfxK": {}}, "party_id": "YB4LM6H6QXmpZ9X3", "party_members": [{"user_id": "fUSR1l9xLPBsmAUr"}, {"user_id": "D9L1IiD6MlcEPhMD"}, {"user_id": "FzjHZ3sIhzOx2CXK"}]}]}], "namespace": "lvIomU3pIxM9n8D2", "notification_payload": {}, "session_id": "eLMe3lt9qfx2UDcg"}' --login_with_auth "Bearer foo"
dsmc-get-session 'VE7L9FK6e0MrPc4v' --login_with_auth "Bearer foo"
dsmc-cancel-session 'txk9hVKlG56HlzGr' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '7XjdyRJunZPkp6cc' --login_with_auth "Bearer foo"
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
echo "1..89"

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
    '{"artifactPath": "IBnWyPw8mj7gyQ7X", "coreDumpEnabled": false, "image": "k42miteR5eQAe1rz", "imageReplicationsMap": {"mmgqBPRmd6mO4oI8": {"failure_code": "KDqebm83raNBJ5y7", "region": "axEkvI4oxZEDxGiB", "status": "nNbn0zaf7CaOSlHX", "uri": "rUSA6sMJzA5mtqIS"}, "Q83TTbtefXWznDe4": {"failure_code": "LQdXfFBii2RAMEX5", "region": "RMjBFVZGYzQqV8d9", "status": "mDdUIoiIJFNxuNOm", "uri": "USWw18T1IxVWCxdv"}, "PL9e4P01vxP8xj1L": {"failure_code": "yEirURERnEMzpImW", "region": "6sjAHyCK5tNanGBr", "status": "kzUvck3xTtmOFMeb", "uri": "S4AdlNzwog2IhErk"}}, "namespace": "NhNcECWwchW6zL9S", "patchVersion": "kbLlrNXnGanMazb8", "persistent": false, "ulimitFileSize": 44, "version": "dl1q92m3iRlfnBAk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "0CwiAsR65yQ9ssuH", "coreDumpEnabled": false, "dockerPath": "s3CUYATdqnQGbqiq", "image": "OkNeATj7eGjodd7C", "imageSize": 4, "namespace": "4UFKiaoV0VOem2yq", "persistent": false, "ulimitFileSize": 37, "version": "2nFe9FmN86sK5LOq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 CreateImagePatch
$PYTHON -m $MODULE 'dsmc-create-image-patch' \
    '{"artifactPath": "4ft5jGcMICPUYnfG", "coreDumpEnabled": false, "dockerPath": "jl9U4jReteIMgzIS", "image": "omCsodJrhQW41q2O", "imageSize": 37, "namespace": "byXmgCNiXH8uenbC", "patchVersion": "5CphgMweexsIAP5v", "persistent": true, "ulimitFileSize": 77, "uploaderFlag": "ABAmO2EGvJ4UMS93", "version": "yOxNInDByhnoluO6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreateImagePatch' test.out

#- 7 GetLowestInstanceSpec
$PYTHON -m $MODULE 'dsmc-get-lowest-instance-spec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetLowestInstanceSpec' test.out

#- 8 GetWorkerConfig
$PYTHON -m $MODULE 'dsmc-get-worker-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetWorkerConfig' test.out

#- 9 UpdateWorkerConfig
$PYTHON -m $MODULE 'dsmc-update-worker-config' \
    '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UpdateWorkerConfig' test.out

#- 10 CreateWorkerConfig
$PYTHON -m $MODULE 'dsmc-create-worker-config' \
    '{"auto_deletion": true, "ghost_worker": false, "manual_buffer_override": true, "zombie_worker": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateWorkerConfig' test.out

#- 11 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetConfig' test.out

#- 12 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 22, "creation_timeout": 74, "default_version": "DiJq4xQye7HqnVK3", "port": 58, "ports": {"VeOWs9mfVQh3jLBt": 26, "F8y959anrNSleywH": 2, "yQrUpIFvORxTi79D": 32}, "protocol": "ECaFGzfZ2hxcJ2Fn", "providers": ["emn7M23SzUo4hNBD", "h9ZFP1OW0nXOErQP", "S4VsRoYIK69yg9AD"], "session_timeout": 59, "unreachable_timeout": 66}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateConfig' test.out

#- 13 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteConfig' test.out

#- 14 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 84, "creation_timeout": 17, "default_version": "qKVOTniBgLsNhdgQ", "port": 27, "protocol": "JWZjNRSzOTqcVNX3", "providers": ["ahvxw9gwwhTnjN6w", "KZGW4y3f0R9s2knd", "hhZhwAiLsZs4pmLD"], "session_timeout": 70, "unreachable_timeout": 88}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'UpdateConfig' test.out

#- 15 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ClearCache' test.out

#- 16 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    '7' \
    '4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetAllDeployment' test.out

#- 17 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'GGJwJ00UH197MJ6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetDeployment' test.out

#- 18 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 72, "buffer_percent": 100, "configuration": "LMQyMWzYQCAaPJgo", "enable_region_overrides": true, "extendable_session": true, "game_version": "oJaSzUtY4ZD0Xtb0", "max_count": 96, "min_count": 38, "overrides": {"pH16NUsVY21NVIs7": {"buffer_count": 81, "buffer_percent": 90, "configuration": "5cS0IeHpWCugmfOL", "enable_region_overrides": false, "extendable_session": false, "game_version": "pxsuD8PGqku59eFJ", "max_count": 36, "min_count": 51, "name": "OXyDYz9vMUOPG0iH", "region_overrides": {"DT8QbF7gHPTPQbvL": {"buffer_count": 39, "buffer_percent": 57, "max_count": 98, "min_count": 82, "name": "fNOURcjY3YYT9oTy", "unlimited": false, "use_buffer_percent": false}, "Ornyx34luLdvtsTK": {"buffer_count": 100, "buffer_percent": 80, "max_count": 20, "min_count": 29, "name": "iw6gYPvfn2Qt9iyq", "unlimited": true, "use_buffer_percent": true}, "8TIP1LKiFQoLDvum": {"buffer_count": 11, "buffer_percent": 82, "max_count": 33, "min_count": 35, "name": "iKhDcJ7TCcNIsQ3P", "unlimited": true, "use_buffer_percent": false}}, "regions": ["XBJ6mVV7JS9qjNLw", "vI8JdiY3RRiLilmO", "GF6dLLIeIVIjMcdl"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": true}, "IrdNL5gJPqTAjgqa": {"buffer_count": 93, "buffer_percent": 14, "configuration": "Hf1ANTJ9Yk997XkG", "enable_region_overrides": true, "extendable_session": false, "game_version": "LryiEXqvUWDjU1G0", "max_count": 63, "min_count": 60, "name": "VjVZw1ToLuPakQN1", "region_overrides": {"MpOs1RVFrcg2CXxe": {"buffer_count": 31, "buffer_percent": 40, "max_count": 47, "min_count": 94, "name": "8fvsyhE2BKtyTDSI", "unlimited": true, "use_buffer_percent": false}, "por7t1aJLNNz6QIV": {"buffer_count": 58, "buffer_percent": 10, "max_count": 79, "min_count": 80, "name": "ANPpmZDdMiCxmuCC", "unlimited": true, "use_buffer_percent": false}, "FjS1GC1d2b92B4vE": {"buffer_count": 13, "buffer_percent": 56, "max_count": 19, "min_count": 93, "name": "3HOmhcWm428XejRF", "unlimited": true, "use_buffer_percent": false}}, "regions": ["IY9nMrBZo0lNUBDS", "hHD32vvL28FPwTiX", "fLcxDC9Ynd02mECI"], "session_timeout": 88, "unlimited": true, "use_buffer_percent": false}, "5SWCqZXHLLa31oQf": {"buffer_count": 92, "buffer_percent": 55, "configuration": "95pFJUAJsyAfeKOu", "enable_region_overrides": false, "extendable_session": true, "game_version": "V4f15NohXu6opxQG", "max_count": 88, "min_count": 38, "name": "t6PqlkL0diRhLC10", "region_overrides": {"ih2EQfY3XCv4hdOa": {"buffer_count": 10, "buffer_percent": 64, "max_count": 25, "min_count": 6, "name": "n8Onb1a9gMz0F2UB", "unlimited": true, "use_buffer_percent": false}, "PXDmgNEJBhgGq5GI": {"buffer_count": 60, "buffer_percent": 43, "max_count": 15, "min_count": 81, "name": "zkUY0n0BAZkwbYkB", "unlimited": true, "use_buffer_percent": true}, "Tz4TjCrJHXGXku2Y": {"buffer_count": 97, "buffer_percent": 0, "max_count": 41, "min_count": 5, "name": "OzhxHmnrrV9ZGWrZ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["sxe6A6RpmKDebNky", "lbynkgT9vayLLiiz", "ac7Ge6zKJdlt7rjF"], "session_timeout": 16, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"wvkWVco2LTo5ijlv": {"buffer_count": 61, "buffer_percent": 53, "max_count": 65, "min_count": 95, "name": "8qBWCQ9dLWYyS8zd", "unlimited": false, "use_buffer_percent": false}, "5anIloyj9lhbvuQd": {"buffer_count": 100, "buffer_percent": 17, "max_count": 19, "min_count": 72, "name": "wKUckc794ryY91lX", "unlimited": true, "use_buffer_percent": false}, "D4MYXlrJ81lHvv9r": {"buffer_count": 33, "buffer_percent": 23, "max_count": 43, "min_count": 63, "name": "PeiMH8z8dVej8N2y", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TnOK7xAvM7tuL81l", "sR7xxSVp3Gd2TK0H", "zYviTgYmx82JVBRL"], "session_timeout": 86, "unlimited": true, "use_buffer_percent": true}' \
    '5BoGiTCVsXsygWbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateDeployment' test.out

#- 19 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'E2opXtdsJQeJ1too' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteDeployment' test.out

#- 20 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 43, "buffer_percent": 22, "configuration": "xphTLEEBGTtZyTjd", "enable_region_overrides": false, "extendable_session": false, "game_version": "KgYazujsmSmylT1Y", "max_count": 39, "min_count": 72, "regions": ["xIq73aMb48jISd97", "KORRhxSWLWLNfHRD", "3V15QaGGL46LuxJF"], "session_timeout": 37, "unlimited": false, "use_buffer_percent": false}' \
    'zf5aANNNs5kgSZZN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateDeployment' test.out

#- 21 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 96, "buffer_percent": 78, "max_count": 70, "min_count": 92, "unlimited": false, "use_buffer_percent": true}' \
    'IT9szApmWJO5vzzX' \
    'Zj08a6K1XRVfriSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateRootRegionOverride' test.out

#- 22 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'PFnZBJZkDnEiyfa2' \
    'LrnpZxNnLRH36bqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteRootRegionOverride' test.out

#- 23 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 93, "buffer_percent": 29, "max_count": 41, "min_count": 64, "unlimited": false, "use_buffer_percent": false}' \
    '1AziBOHEAj1cT3u6' \
    'Zc2FbrTFznTgDIwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateRootRegionOverride' test.out

#- 24 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 71, "buffer_percent": 92, "configuration": "RWf6T3by2kYSCdnF", "enable_region_overrides": false, "extendable_session": false, "game_version": "VQa6blj9Rdd85bdY", "max_count": 96, "min_count": 41, "region_overrides": {"MnW49rWynp1ck1vT": {"buffer_count": 6, "buffer_percent": 58, "max_count": 68, "min_count": 72, "name": "o86cSRL9cgbUmulh", "unlimited": false, "use_buffer_percent": true}, "98oaFKlQicdrxVhr": {"buffer_count": 39, "buffer_percent": 17, "max_count": 46, "min_count": 83, "name": "Sd9QWVMYz7TU1Tsx", "unlimited": true, "use_buffer_percent": true}, "Pi57HyKKz5nyI6ul": {"buffer_count": 74, "buffer_percent": 43, "max_count": 82, "min_count": 75, "name": "gFZXI5nXJ7hLi6Hw", "unlimited": false, "use_buffer_percent": false}}, "regions": ["weRmyo91dIn7QqXB", "DXJcrqKmXDwoEV6t", "Cdrxw1KOPhuvHuYr"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": false}' \
    '41uMOC0mRvSoaGk4' \
    'ktF5wnJDg9Q3WXiy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateDeploymentOverride' test.out

#- 25 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'dCOInVolsr6CHmj7' \
    '63vLwtYEJTSiXjcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'DeleteDeploymentOverride' test.out

#- 26 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 9, "buffer_percent": 40, "configuration": "Pkv90lyKSTWLxSFZ", "enable_region_overrides": true, "game_version": "LpupEi5DbkVs3qFT", "max_count": 17, "min_count": 86, "regions": ["1t530Wj1WfzIvc3V", "lSXrA3XUGud4tVjm", "xEf4XvVhFJTxFHIT"], "session_timeout": 57, "unlimited": false, "use_buffer_percent": true}' \
    '9x4unq3eOMHIKeTy' \
    'BG5dCUoExnKfV386' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateDeploymentOverride' test.out

#- 27 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 71, "buffer_percent": 20, "max_count": 81, "min_count": 17, "unlimited": true, "use_buffer_percent": false}' \
    'MGBA6JXDpA1tIC45' \
    'C0oaGouFu4hXONgU' \
    'wJnUpryDeRcpUvlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateOverrideRegionOverride' test.out

#- 28 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'w2MwC1uuokpaIjL0' \
    'Vxe5n9Lx3QcFo9gx' \
    'OgvDc7xMrRKvw8IS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteOverrideRegionOverride' test.out

#- 29 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 84, "buffer_percent": 96, "max_count": 34, "min_count": 100, "unlimited": false, "use_buffer_percent": false}' \
    'VzW1QqxnWR5sheLg' \
    'sAF4ctv5guycGiq9' \
    'j2EyIknfLDpgHnMO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateOverrideRegionOverride' test.out

#- 30 DeleteCreatingServerCountQueue
$PYTHON -m $MODULE 'dsmc-delete-creating-server-count-queue' \
    'n8nc3gUZ8ZFyyEr0' \
    'KBXuJBqK4QtEydPW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteCreatingServerCountQueue' test.out

#- 31 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '76' \
    '47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAllPodConfig' test.out

#- 32 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'PBYiR3UbJc1ZYapx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetPodConfig' test.out

#- 33 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 1, "mem_limit": 58, "params": "Fo0MVwDZCIXFNEL3"}' \
    'uWVRz3V7YbJM3bNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreatePodConfig' test.out

#- 34 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'WHAbCZixe2cQ6O30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePodConfig' test.out

#- 35 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 22, "mem_limit": 22, "name": "pzcBQMAEcNcJqrKx", "params": "nMzSYoc4ZjiMY4H3"}' \
    '4B6wVd8ipcKDwQeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePodConfig' test.out

#- 36 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 100}' \
    'yHB6GO9zP3FaepA3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AddPort' test.out

#- 37 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'b3YJ9nJM6vtT27xv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePort' test.out

#- 38 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "85K5MU2qmbeqaVem", "port": 71}' \
    'PdPwOtEuWBSO2jJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdatePort' test.out

#- 39 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '32' \
    '8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'ListImages' test.out

#- 40 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'UnEEgja2mIE2kLTn' \
    'Jwc5XmkCuL5W4tKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImage' test.out

#- 41 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageLimit' test.out

#- 42 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    '6G3j9LYdG7xVPqBq' \
    'e9RDQMBSYAFLqp8P' \
    'F5hCcoukWpnbz4ys' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteImagePatch' test.out

#- 43 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    '7j6lxuU3u2HEG0qf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImageDetail' test.out

#- 44 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'KegvFTD1sPykS8YL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetImagePatches' test.out

#- 45 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'mwtYgWGcA0h4G1LZ' \
    '1HaX5UBMbsF44VTs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetImagePatchDetail' test.out

#- 46 AddBuffer
$PYTHON -m $MODULE 'dsmc-add-buffer' \
    '{"AllocCount": 76, "DeploymentName": "zG2CnYX2YBF2g7TV", "JobCount": 40, "JobPriority": 61, "OverrideVersion": "zYEHUodh3iUfBthb", "Region": "epUCTWiZ1uqh7GAi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AddBuffer' test.out

#- 47 GetRepository
$PYTHON -m $MODULE 'dsmc-get-repository' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetRepository' test.out

#- 48 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '42' \
    '64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'ListServer' test.out

#- 49 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CountServer' test.out

#- 50 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CountServerDetailed' test.out

#- 51 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ListLocalServer' test.out

#- 52 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'YyJLYGqMv824ouSg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteLocalServer' test.out

#- 53 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'kpK70uJmUL0uzEli' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetServer' test.out

#- 54 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'xc023dIvDiA0tQWl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteServer' test.out

#- 55 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '69' \
    '76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ListSession' test.out

#- 56 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CountSession' test.out

#- 57 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    'wBcTtztx3VAl6tXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteSession' test.out

#- 58 RunGhostCleanerRequestHandler
$PYTHON -m $MODULE 'dsmc-run-ghost-cleaner-request-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RunGhostCleanerRequestHandler' test.out

#- 59 RunZombieCleanerRequestHandler
$PYTHON -m $MODULE 'dsmc-run-zombie-cleaner-request-handler' \
    '{"JobCount": 2, "Region": "AWWcbcbGWmKgE8CZ", "TimeoutSecond": 9, "ZombieCount": 54}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RunZombieCleanerRequestHandler' test.out

#- 60 CreateRepository
$PYTHON -m $MODULE 'dsmc-create-repository' \
    '{"namespace": "64Vnwa0ClGQJultJ", "repository": "e32AiwKadEoIVmpr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'CreateRepository' test.out

#- 61 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ExportConfigV1' test.out

#- 62 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ImportConfigV1' test.out

#- 63 GetAllDeploymentClient
$PYTHON -m $MODULE 'dsmc-get-all-deployment-client' \
    '45' \
    '13' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetAllDeploymentClient' test.out

#- 64 GetDeploymentClient
$PYTHON -m $MODULE 'dsmc-get-deployment-client' \
    'Psa9YD92CX0rITaj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetDeploymentClient' test.out

#- 65 CreateDeploymentClient
$PYTHON -m $MODULE 'dsmc-create-deployment-client' \
    '{"allow_version_override": false, "buffer_count": 35, "buffer_percent": 45, "configuration": "OVGcRAn51rVAQSxp", "enable_region_overrides": true, "extendable_session": false, "game_version": "TB54mKA3V9DKlCeZ", "max_count": 73, "min_count": 25, "overrides": {"7cudf4r916GPrhn2": {"buffer_count": 8, "buffer_percent": 84, "configuration": "tVIQvRkQJAtDUH9t", "enable_region_overrides": true, "extendable_session": true, "game_version": "0ywmg1pWpWit1QC7", "max_count": 65, "min_count": 93, "name": "Ke0fnHUlmU1unGKM", "region_overrides": {"0tgfeWy47bbwMI4g": {"buffer_count": 66, "buffer_percent": 44, "max_count": 25, "min_count": 91, "name": "vK9gW596FwBNrFXt", "unlimited": true, "use_buffer_percent": true}, "uKBwBcD12ae6r3hH": {"buffer_count": 46, "buffer_percent": 73, "max_count": 51, "min_count": 5, "name": "a4NpdOzg3hr6ucHf", "unlimited": false, "use_buffer_percent": false}, "bh2iKNUl0qJqzoKM": {"buffer_count": 90, "buffer_percent": 0, "max_count": 79, "min_count": 27, "name": "G541PAiNjULsx4Sn", "unlimited": false, "use_buffer_percent": false}}, "regions": ["XLMUaDSwwQlnNRZJ", "HBSB4fZWEFIZs28F", "f1kZp1Zktx3N7WNM"], "session_timeout": 0, "unlimited": true, "use_buffer_percent": false}, "bWEm8bVtZcfVCPdQ": {"buffer_count": 15, "buffer_percent": 10, "configuration": "im9QKUAFTVYelIlG", "enable_region_overrides": false, "extendable_session": false, "game_version": "hFZZGMTcqnWrIprO", "max_count": 44, "min_count": 64, "name": "0BJ9Sgl7H1sdH2RI", "region_overrides": {"Jz1eI7Q5pu9PutLf": {"buffer_count": 6, "buffer_percent": 71, "max_count": 6, "min_count": 36, "name": "MzMTQ9P7sYLDWAJO", "unlimited": true, "use_buffer_percent": true}, "5K4BYJ2fkqYJoF2F": {"buffer_count": 70, "buffer_percent": 36, "max_count": 43, "min_count": 26, "name": "yyqRzc20O7FdsJP1", "unlimited": false, "use_buffer_percent": true}, "dMKEohKzuMYDUTLB": {"buffer_count": 10, "buffer_percent": 40, "max_count": 57, "min_count": 17, "name": "DkUt3yexZBRvxYnE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["hXtAVxCd3meTrT7c", "F9oVCh89wNOkKYss", "VejcL3kR3hCGNgaJ"], "session_timeout": 26, "unlimited": true, "use_buffer_percent": true}, "YOHR5BWa9VzIkaQE": {"buffer_count": 23, "buffer_percent": 97, "configuration": "1iUProNB6hI6IpGc", "enable_region_overrides": false, "extendable_session": false, "game_version": "gFvdRhG9NwV3zDuq", "max_count": 98, "min_count": 63, "name": "lVTypcYPK8IxrSZu", "region_overrides": {"xWl0Je4fJIyFAm3D": {"buffer_count": 87, "buffer_percent": 26, "max_count": 15, "min_count": 89, "name": "t4JwnPS2urJqerob", "unlimited": true, "use_buffer_percent": false}, "ZGVL5KLTxahWlS6X": {"buffer_count": 6, "buffer_percent": 0, "max_count": 57, "min_count": 49, "name": "aKSLCgOOPXM6XTUh", "unlimited": false, "use_buffer_percent": false}, "7wYIVw13NCo9yXlb": {"buffer_count": 87, "buffer_percent": 61, "max_count": 23, "min_count": 64, "name": "TFwBY6HKXAblkT8V", "unlimited": false, "use_buffer_percent": false}}, "regions": ["uvvQUm29Iacq4XRL", "aA643nTMtXSAyejn", "ny0Ju13b6o5uB2XM"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"ytpcubN4AUUPFPsc": {"buffer_count": 9, "buffer_percent": 37, "max_count": 47, "min_count": 8, "name": "8RjU6Bi8JXE52sUB", "unlimited": true, "use_buffer_percent": false}, "q2SimQQoLbe5YOJv": {"buffer_count": 47, "buffer_percent": 30, "max_count": 66, "min_count": 88, "name": "x0hL5DuBDqMyIAzW", "unlimited": true, "use_buffer_percent": false}, "TdNFVBQ1crBXAupA": {"buffer_count": 94, "buffer_percent": 89, "max_count": 82, "min_count": 67, "name": "8uXsqVpdiWo8SjDA", "unlimited": false, "use_buffer_percent": true}}, "regions": ["RtozI0jpliCFQ6Wg", "JpGPigdc5VyC4qvW", "jVac1cQvSxgTNIUz"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": true}' \
    'gBlIbuzm7DzJ20NF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'CreateDeploymentClient' test.out

#- 66 DeleteDeploymentClient
$PYTHON -m $MODULE 'dsmc-delete-deployment-client' \
    'RJIhFXR2dYprPmbp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteDeploymentClient' test.out

#- 67 GetAllPodConfigClient
$PYTHON -m $MODULE 'dsmc-get-all-pod-config-client' \
    '43' \
    '32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetAllPodConfigClient' test.out

#- 68 CreatePodConfigClient
$PYTHON -m $MODULE 'dsmc-create-pod-config-client' \
    '{"cpu_limit": 30, "mem_limit": 40, "params": "co2jx8Upe8SjMvpq"}' \
    'M8puggOEdG47gD5i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreatePodConfigClient' test.out

#- 69 DeletePodConfigClient
$PYTHON -m $MODULE 'dsmc-delete-pod-config-client' \
    '2Ni6AnWn3NdEPhNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeletePodConfigClient' test.out

#- 70 ListImagesClient
$PYTHON -m $MODULE 'dsmc-list-images-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'ListImagesClient' test.out

#- 71 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'ImageLimitClient' test.out

#- 72 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'SH7eKDfRcngEpTnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'ImageDetailClient' test.out

#- 73 ListServerClient
$PYTHON -m $MODULE 'dsmc-list-server-client' \
    '96' \
    '35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'ListServerClient' test.out

#- 74 CountServerDetailedClient
$PYTHON -m $MODULE 'dsmc-count-server-detailed-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CountServerDetailedClient' test.out

#- 75 ServerHeartbeat
$PYTHON -m $MODULE 'dsmc-server-heartbeat' \
    '{"podName": "Qr3RLOM1vEx4gqDY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'ServerHeartbeat' test.out

#- 76 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "6jwyKRxhkLe5zohg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeregisterLocalServer' test.out

#- 77 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "9s9utRQt28b6o3K0", "ip": "COF74tz6aeXZOYwb", "name": "wjMNdxKWlBfnRyFS", "port": 62}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'RegisterLocalServer' test.out

#- 78 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "XN3cjIXmFWRJnj8x", "pod_name": "N7HDPTUEDPN1Kb4U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'RegisterServer' test.out

#- 79 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "PWDXTSb55g8LSTs7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'ShutdownServer' test.out

#- 80 GetServerSessionTimeout
$PYTHON -m $MODULE 'dsmc-get-server-session-timeout' \
    'Nf95lGlPrf6obIdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetServerSessionTimeout' test.out

#- 81 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'I6Ag7eUYcYJ4QzXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetServerSession' test.out

#- 82 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "mqr6gmPGaHP5SVPv", "configuration": "RLiDi0mNHb6Lx8eq", "deployment": "8SGNwEQO8dYXvBSY", "game_mode": "vJBwb6CjZUMRf2VJ", "matching_allies": [{"matching_parties": [{"party_attributes": {"etWsokvx3BHuTEcz": {}, "r9KjQ3ttz8MTBt1x": {}, "k9IyssSA8nP5PQjp": {}}, "party_id": "zk2Tb7iYdmNZWosr", "party_members": [{"user_id": "sVBPZ64j0HUONsco"}, {"user_id": "fwYLQcDvkaEIIPoJ"}, {"user_id": "T83zEGXmVBZLyrH9"}]}, {"party_attributes": {"J7BoysmaORLkP5hc": {}, "2Fh04JTsqDTynCew": {}, "qJligLlRxOelKykI": {}}, "party_id": "CRxF6HtlER2txs4q", "party_members": [{"user_id": "rNARATn6KXOutlYB"}, {"user_id": "bLhL8KXx25FZfQIo"}, {"user_id": "dVBqQsBpCJBIXLGY"}]}, {"party_attributes": {"cwWVRK6UKk5ozrXA": {}, "4HZHNyq9odanhR1Z": {}, "rm3thUvV87yfkycL": {}}, "party_id": "SVdleSaAylsmLYe2", "party_members": [{"user_id": "phYOgT5kDTyPl3dK"}, {"user_id": "F7NXEjrJMki8jvc3"}, {"user_id": "P8Gwjg3IOH0SDHgY"}]}]}, {"matching_parties": [{"party_attributes": {"KqxJiFJdrmj5vhzg": {}, "sJwex7wq8ZPlXNaU": {}, "NgdY2vfJuje5cPnm": {}}, "party_id": "GjTvYa5Pqx1K7qcA", "party_members": [{"user_id": "oijBPAp6EPb988Nz"}, {"user_id": "xrDKVpULjjiw3NeV"}, {"user_id": "G4DJi9DaMrc0WFgK"}]}, {"party_attributes": {"jE945x2CPVYYG9Wv": {}, "oGmAmvaVV5YfxnUN": {}, "cwjr7gSGhnfuF4WZ": {}}, "party_id": "iQVICVpWd3UM08gM", "party_members": [{"user_id": "Xhdf3juXW4JprIb3"}, {"user_id": "CJCAtvSG8Cfa9dzO"}, {"user_id": "JDGCTHIOFjeXbsSg"}]}, {"party_attributes": {"R43kIDzxBwqRJTzr": {}, "HNZWUsq5lQo2jy29": {}, "EJigqYhyVhURx1yP": {}}, "party_id": "eczRpdk0HATGylx2", "party_members": [{"user_id": "JG2KNGfhzfCTxxrs"}, {"user_id": "RRLee3TcJ7DQIi45"}, {"user_id": "aCDHN9mVug2zkVf6"}]}]}, {"matching_parties": [{"party_attributes": {"KgpKOcn3tMD9UT67": {}, "bOwugFDa6wUQvehK": {}, "qwCh86XmRkCEcfHD": {}}, "party_id": "Cdl59Wp9A3tXGve6", "party_members": [{"user_id": "DdK6uvg8f2cIoByk"}, {"user_id": "9fxtvsgeAxo57nKA"}, {"user_id": "bZpsbJ4Iu5KJ0ynx"}]}, {"party_attributes": {"GBlacDCdFe8ATUqV": {}, "xcSthrpnMUBsnUfu": {}, "QIcSbUt5UGkInFGp": {}}, "party_id": "uUsdtq4dOwNESzCE", "party_members": [{"user_id": "W9dUVhZjLftC3sCS"}, {"user_id": "8CpLCqPD9CeDEdCn"}, {"user_id": "nL6Kt1Bjj3b8QM8R"}]}, {"party_attributes": {"r45ULqXQgvwD3PsK": {}, "DJiWxQBwaS7rDBf2": {}, "S54phbdyGDt47f9G": {}}, "party_id": "WRlE9hqz6rjDNo4r", "party_members": [{"user_id": "hjxUdMM83WekqfWv"}, {"user_id": "04vvn9bk5qr8qs2m"}, {"user_id": "qtnGAqXUjNypF6MM"}]}]}], "namespace": "qWpdEJsPoaIbYz8c", "notification_payload": {}, "pod_name": "K5jlpJdre5ur6yvW", "region": "JDdvM7T7PX2vamIR", "session_id": "ZHzsIYOCUoiCXNjr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'CreateSession' test.out

#- 83 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"game_mode": "dQL2jdx1eIba1sB0", "matching_allies": [{"matching_parties": [{"party_attributes": {"HsJ06DzfbzRYt4OV": {}, "UyumBeIqdQGZC5kM": {}, "03HHijsQRj7N8IAj": {}}, "party_id": "msonjj0ZR50BQ1U6", "party_members": [{"user_id": "aFD3O2kXQSc58zgZ"}, {"user_id": "Vl4gIF7v3qbZu9M3"}, {"user_id": "OxqVAT4H1lRZ9Z1J"}]}, {"party_attributes": {"BrHRzEOtIxzPqb6n": {}, "73m0jiaDH86d9rsK": {}, "gzCsMulpB8HZUtVV": {}}, "party_id": "aJCiLgKOwrSfWhT5", "party_members": [{"user_id": "B4WedopzwSluBtRF"}, {"user_id": "PKThyGnbjmPDKFS6"}, {"user_id": "u9FHuv1M3qfch4Sq"}]}, {"party_attributes": {"IV6LQPHlaeYl4csF": {}, "q65cU66yJaj4ovoK": {}, "WE4EW0sw8v5peiux": {}}, "party_id": "oBJATauyD3XCXVMi", "party_members": [{"user_id": "yEvMf9yilUEujk6o"}, {"user_id": "qYo1HQYTFzwdOMdu"}, {"user_id": "pwD4O3uNbcIDcIyv"}]}]}, {"matching_parties": [{"party_attributes": {"ZbOy1T4hfwkuVykH": {}, "4RpfmjIXFGZ5PKdb": {}, "abJIkNnt9P1Tkm08": {}}, "party_id": "luh4dpPRMDbUXBWT", "party_members": [{"user_id": "bpAogG2wlZkLhuU5"}, {"user_id": "FI8NijFI0GKwJ3vf"}, {"user_id": "XlsAMy2Zp2UAGxHn"}]}, {"party_attributes": {"mSxvkG9UR5q9neoW": {}, "6JBcGp9Rx2RfcRhX": {}, "pmeeHdvphas9S7iv": {}}, "party_id": "HEoLbUMM47f1UreU", "party_members": [{"user_id": "pxEkXIbE1ETzRJZK"}, {"user_id": "Mavu4Ul2IaieEbPS"}, {"user_id": "E7TGkeHsYsW9oGBN"}]}, {"party_attributes": {"1pYMBwbPZTlMlUvF": {}, "EiGprcNSQ9kEeXBZ": {}, "6FVrBzyhyhoS6a9o": {}}, "party_id": "e0JaXFpff28uYbe4", "party_members": [{"user_id": "Cf2HEHvVevhISjbt"}, {"user_id": "BJUK5fE3OufPSX3P"}, {"user_id": "dOU2V9yw94oa8UJ3"}]}]}, {"matching_parties": [{"party_attributes": {"4TIedV3HyoX4VnO2": {}, "LpBU08wfnlHBXFIq": {}, "FUmgUSMM5au8GJT0": {}}, "party_id": "mkVPI6zUtf3QaJPG", "party_members": [{"user_id": "rTNcXXTUIggoH89Q"}, {"user_id": "NmI17UDb19R6H7r1"}, {"user_id": "ta3m7jK5pxe82pgF"}]}, {"party_attributes": {"iAS6piIzmc8rKrKE": {}, "PGSAcong6eNERUf8": {}, "kjci1Ctccv9Gv4tO": {}}, "party_id": "cbnuCqf0lm6WBkIz", "party_members": [{"user_id": "joSV31tvmMB6jzrp"}, {"user_id": "RGESmooHiCV4GUOn"}, {"user_id": "XpapXQGRakUbcG7P"}]}, {"party_attributes": {"cR4eiU3Idi55jNrG": {}, "NT2VHTKuIT5FwwHj": {}, "0Ur5F2PWGTTD81xh": {}}, "party_id": "NP4t6kYBUjyXAn3b", "party_members": [{"user_id": "WQF6QcAiJpXIrgro"}, {"user_id": "ixptZhckUTGkcBOE"}, {"user_id": "4qMcH1Kyi8ZFvGcV"}]}]}], "namespace": "8DY0XOkDstxZcY1H", "notification_payload": {}, "session_id": "gAnZV4IOglVLqb9l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'ClaimServer' test.out

#- 84 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'GAJUg21Lt7JwgwMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetSession' test.out

#- 85 CancelSession
$PYTHON -m $MODULE 'dsmc-cancel-session' \
    'SuC3Bajy3BcEMCtQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CancelSession' test.out

#- 86 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetDefaultProvider' test.out

#- 87 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ListProviders' test.out

#- 88 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    's2FcEcvVAyId6Cp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'ListProvidersByRegion' test.out

#- 89 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
