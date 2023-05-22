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
dsmc-create-image-patch '{"artifactPath": "IC32ogW7olvbTgrh", "dockerPath": "RTcPiSuL0Sly6XM4", "image": "OI18mAQLnzjMf8GZ", "imageSize": 0, "namespace": "WBZqxYG3aREAu2D6", "patchVersion": "QVKNCWP75TB0i7pK", "persistent": true, "uploaderFlags": [{"name": "c8OumKtPDKJDXn7Z", "shorthand": "4U68su8XfqlqNiTv", "value": "B6SdAdIhUDrwoZ5M"}, {"name": "ecdKi5r6QEa1ysLE", "shorthand": "zth6mXhzkzWkFeZS", "value": "oEAcBdW19m4eu6d5"}, {"name": "tA5jUmiTqpyhPFdx", "shorthand": "LzFQN05MYzYiKWe5", "value": "dNRljv7IPrDQQRga"}], "version": "t0SevkLGMS0lyuI9"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 0, "creation_timeout": 71, "default_version": "llzQRaT5kPxUfofv", "port": 28, "ports": {"6UpOXGSLmCVuHOPl": 78, "NveabntBSxTeIv53": 68, "oYupD391C2qtPYok": 1}, "protocol": "rncqmLtjQHAf8Tgo", "providers": ["Nm03VLisV6zwPuo3", "td6TC6I3lMjGSWN2", "laRlxfcjHfYakUCT"], "session_timeout": 33, "unreachable_timeout": 67}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 70, "creation_timeout": 21, "default_version": "Y69z1UaLqYSYWytL", "port": 85, "protocol": "Q0yYoNRKd3IL5TAQ", "providers": ["6iiPlSC2uE4o5Vwd", "o3fePqIJA8IHtrkm", "u0hpDDWVAla2l5BY"], "session_timeout": 81, "unreachable_timeout": 18}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '39' '63' --login_with_auth "Bearer foo"
dsmc-get-deployment 'IuS5S5XUdjsoqwGy' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 6, "buffer_percent": 52, "configuration": "scKHPEqgA8yu7Vk6", "enable_region_overrides": true, "extendable_session": true, "game_version": "4Ymos9Jcdos4fYcT", "max_count": 98, "min_count": 5, "overrides": {"U6RBt0zYoMcHyCUE": {"buffer_count": 65, "buffer_percent": 24, "configuration": "maLoxozr6wfNPX2b", "enable_region_overrides": true, "extendable_session": true, "game_version": "MvqtlB2jJCSQT279", "max_count": 86, "min_count": 99, "name": "PYGu0rdlgdWyOtXi", "region_overrides": {"3choQrpOsDBU5Sep": {"buffer_count": 19, "buffer_percent": 59, "max_count": 79, "min_count": 15, "name": "yKrQpM4hkkK6KKXN", "unlimited": true, "use_buffer_percent": true}, "Gv0IqmF51TkhjYna": {"buffer_count": 34, "buffer_percent": 96, "max_count": 60, "min_count": 11, "name": "jasWIPUvmEejtGeo", "unlimited": true, "use_buffer_percent": true}, "Pa8ZRrvjj7il35MX": {"buffer_count": 2, "buffer_percent": 80, "max_count": 18, "min_count": 22, "name": "oCMNqq98SjTvhZNk", "unlimited": false, "use_buffer_percent": true}}, "regions": ["X3ateEKDpADz1x3p", "oD3Qgb3boLQQ1MzH", "7Qm8bwbmXgdAPh1E"], "session_timeout": 92, "unlimited": false, "use_buffer_percent": false}, "G96gAFKK2WDgCcxv": {"buffer_count": 83, "buffer_percent": 44, "configuration": "NZm3EeERmDnyeFoF", "enable_region_overrides": true, "extendable_session": true, "game_version": "6pf3vneSD2Tb3g7m", "max_count": 92, "min_count": 39, "name": "QUhAEtrmjqU6YE3p", "region_overrides": {"4lSck0ZHn5GI39YB": {"buffer_count": 69, "buffer_percent": 33, "max_count": 1, "min_count": 66, "name": "THeKtW18iGeUlc9d", "unlimited": false, "use_buffer_percent": true}, "Cx9Zw5D2L7vIYhGG": {"buffer_count": 91, "buffer_percent": 12, "max_count": 50, "min_count": 70, "name": "EW4ZJJ42d3PBddN8", "unlimited": true, "use_buffer_percent": false}, "lSAiYnNjkfZrQvGg": {"buffer_count": 3, "buffer_percent": 22, "max_count": 76, "min_count": 6, "name": "3QXcKMDYDDxHSZjt", "unlimited": true, "use_buffer_percent": true}}, "regions": ["rUEirnjX9fDmIbeZ", "xzfTcyiuATus9hsf", "pFDcSDG8aMVGLiBN"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": false}, "jqoxcwgGLXpUL4pp": {"buffer_count": 39, "buffer_percent": 26, "configuration": "81P1ktfIovmv9gsR", "enable_region_overrides": true, "extendable_session": false, "game_version": "z9KOsb392k6YmJFf", "max_count": 89, "min_count": 49, "name": "ByjlBiuFM3FIoVk8", "region_overrides": {"T3GpAnkCmBUqg2SC": {"buffer_count": 27, "buffer_percent": 34, "max_count": 38, "min_count": 27, "name": "4Yw20DOqOBSC2DKH", "unlimited": true, "use_buffer_percent": true}, "MMWH8Yb33T5UBJCj": {"buffer_count": 12, "buffer_percent": 63, "max_count": 5, "min_count": 9, "name": "nLRfxeCSz9WEi8Kl", "unlimited": false, "use_buffer_percent": false}, "8wdNFLTm5T50x9WT": {"buffer_count": 3, "buffer_percent": 66, "max_count": 16, "min_count": 11, "name": "Bfsu4jmsRE2w1yEk", "unlimited": false, "use_buffer_percent": false}}, "regions": ["4mqrxzTtuLl4XlbG", "L8QOxtjzm8y2wNhm", "woYZyI4EFZKBcYrC"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"reNDUWehwH3q31A8": {"buffer_count": 15, "buffer_percent": 60, "max_count": 9, "min_count": 74, "name": "KnWhzfe2NubeoKFe", "unlimited": false, "use_buffer_percent": true}, "FQCYoDPICpnduEEQ": {"buffer_count": 22, "buffer_percent": 60, "max_count": 96, "min_count": 29, "name": "LdJz4mnRBkMNxvvK", "unlimited": false, "use_buffer_percent": false}, "AT8mJrYq6hRkloqx": {"buffer_count": 79, "buffer_percent": 8, "max_count": 13, "min_count": 0, "name": "pwxcfMy9XzjjI5Yb", "unlimited": true, "use_buffer_percent": false}}, "regions": ["KoADkzJEN2VHzih3", "bit0VWn3CO39PXDN", "xtXgeO3FgkXhjDza"], "session_timeout": 87, "unlimited": true, "use_buffer_percent": false}' '3snn2ZkP7cFdP43e' --login_with_auth "Bearer foo"
dsmc-delete-deployment '5dC9XIBudfZgrbHD' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 61, "buffer_percent": 54, "configuration": "m4hMzF4TxodenSrU", "enable_region_overrides": true, "extendable_session": false, "game_version": "847g8OudOfjnCuHZ", "max_count": 39, "min_count": 4, "regions": ["QyXJRcQWsmqPNs92", "epxk0i8VxsZNereS", "vf9699mCEHThUJkE"], "session_timeout": 93, "unlimited": true, "use_buffer_percent": true}' 'urjh2imdb4rbkXj0' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 73, "buffer_percent": 47, "max_count": 56, "min_count": 38, "unlimited": true, "use_buffer_percent": true}' 'T9t4Tv207Y2QD3oD' '5fLCr3OOlXVv8ZGF' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override '7uYnGzpipNDigNJm' 'a1MbqqZtfNWql4nm' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 47, "buffer_percent": 24, "max_count": 54, "min_count": 21, "unlimited": false, "use_buffer_percent": true}' 'B4EYOkQ1jMD3cym8' 'xIfkOVW2grREOLx0' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 75, "buffer_percent": 82, "configuration": "TwGBCtohLtl9Zuhy", "enable_region_overrides": true, "extendable_session": true, "game_version": "m5UDrT6QXCs5SPBb", "max_count": 89, "min_count": 84, "region_overrides": {"8HGS6rDgMdIIlhS1": {"buffer_count": 11, "buffer_percent": 91, "max_count": 86, "min_count": 16, "name": "gXjvyGJPN4eXbJE5", "unlimited": true, "use_buffer_percent": true}, "2GcyomQoIXimBJeh": {"buffer_count": 50, "buffer_percent": 8, "max_count": 48, "min_count": 28, "name": "lNsjUgxBkF6wFPoJ", "unlimited": false, "use_buffer_percent": true}, "QediogEhhM2rIizG": {"buffer_count": 8, "buffer_percent": 56, "max_count": 75, "min_count": 68, "name": "vOPdq5xrgxSmy1DN", "unlimited": false, "use_buffer_percent": true}}, "regions": ["FkYW5DQyj4bj5Ro2", "ogaKt2ujQSa3Zdb6", "5UXmy0Zp6iIaTIKU"], "session_timeout": 20, "unlimited": false, "use_buffer_percent": false}' 'k0upMzUYnb76tFkE' 'ORV3bu1bNCtX7W40' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'V6Do5sYadCCFrHHC' '3DpZxkrQDXuNFviM' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 0, "buffer_percent": 38, "configuration": "rv8mnfHK8CCmE2lP", "enable_region_overrides": false, "game_version": "uIpomM8sm1MiaI1m", "max_count": 40, "min_count": 41, "regions": ["JoARtdbBe7udsMro", "k0WvGYYnx4V709xb", "nGezKsDwG2omOR2n"], "session_timeout": 44, "unlimited": false, "use_buffer_percent": true}' 'TVqJdvzcWbfUpaXp' '5JMl5LL4bTxBmZjd' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 35, "buffer_percent": 18, "max_count": 36, "min_count": 72, "unlimited": false, "use_buffer_percent": true}' 'k1jglaDXTvKCWwNT' 'Ahd2wrS0uPdjhdin' 'png5BLy8wbhMssAH' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'japIkY9Rf4wP57dB' 'ZNR88YbCtmKy8M9z' 'VrjfGXZnqAQUoY1G' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 20, "buffer_percent": 23, "max_count": 31, "min_count": 71, "unlimited": false, "use_buffer_percent": true}' 'iKoTTS1j02o7JjTX' 'AQN0qdskdQV0TqI8' 'EFnmDbxIxi4YKlON' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '22' '13' --login_with_auth "Bearer foo"
dsmc-get-pod-config '2Q5Y4Jvaizwiilat' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 42, "mem_limit": 96, "params": "8lOC3mNqF7Bl0Lcg"}' 'hVHfPEspxwhRON0b' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'c1eMbEIjowLqc3ec' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 19, "mem_limit": 63, "name": "XJbZDKKoxLE1Y3Dy", "params": "mtj3giPg4x4yiPX6"}' 'ues1Hhhkg1yLVbLF' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 53}' 'JbBfAKSiPW3VgsZX' --login_with_auth "Bearer foo"
dsmc-delete-port 'iR1DJ7HVWqMkNSaw' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "QUWDFJvJBWic7UkB", "port": 9}' 'PUAc0RVwXgAgntLM' --login_with_auth "Bearer foo"
dsmc-list-images '58' '41' --login_with_auth "Bearer foo"
dsmc-delete-image 'deoV9Lx5RDA1l2Xc' 'rciYNEzvSZIPkhSg' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'ORcz5S5BvmgBLxh4' 'ijFnE3Tam69qSZ7P' 'C6f6QkmZXElW9YfR' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'Sse6AAz3S4czz0QK' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'FlAVmVLu4AOec0z8' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'eBeeoip68J1nsv4W' '2OJhtafxMSJlHeb3' --login_with_auth "Bearer foo"
dsmc-get-repository --login_with_auth "Bearer foo"
dsmc-list-server '74' '37' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'WUtDQs61OQAoxyyQ' --login_with_auth "Bearer foo"
dsmc-get-server 'pRWCiiPDGQhNPEwi' --login_with_auth "Bearer foo"
dsmc-delete-server 'JCf2XJVrlzqQls1o' --login_with_auth "Bearer foo"
dsmc-list-session '53' '15' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '2K2IzrBvvWm4udE0' --login_with_auth "Bearer foo"
dsmc-create-repository '{"namespace": "OXudXgNne8kJATwl", "repository": "c6esUp6Sw1I98jeZ"}' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-get-all-deployment-client '87' '18' --login_with_auth "Bearer foo"
dsmc-create-deployment-client '{"allow_version_override": true, "buffer_count": 16, "buffer_percent": 5, "configuration": "fxnhLd3Knaknoed9", "enable_region_overrides": true, "extendable_session": false, "game_version": "hLOqQGhCUr6iTrjy", "max_count": 63, "min_count": 35, "overrides": {"garAdNJOIG36I6tR": {"buffer_count": 3, "buffer_percent": 47, "configuration": "RcrEveMdAdiPKDUV", "enable_region_overrides": true, "extendable_session": true, "game_version": "00PYeDcagginxnFI", "max_count": 28, "min_count": 1, "name": "qXn3aoRtlqOECohV", "region_overrides": {"iHA5CzgFSy8X1A3P": {"buffer_count": 36, "buffer_percent": 92, "max_count": 71, "min_count": 83, "name": "fapq5AAeMe4L3mDW", "unlimited": true, "use_buffer_percent": true}, "VXTIIJM9XsYIIZxi": {"buffer_count": 40, "buffer_percent": 81, "max_count": 79, "min_count": 89, "name": "1W9G4AvQkqsGnmyo", "unlimited": true, "use_buffer_percent": true}, "Vmb8GEXFTlEMEsFz": {"buffer_count": 10, "buffer_percent": 33, "max_count": 46, "min_count": 56, "name": "gK1Np5nodqpLm7Fh", "unlimited": false, "use_buffer_percent": true}}, "regions": ["TJ0sQs6XNbjvqhnU", "VLWu8olKdxL6ozRm", "DD0jJvlfV5OemPYd"], "session_timeout": 78, "unlimited": true, "use_buffer_percent": true}, "CjtuzFMbAG9YI89h": {"buffer_count": 25, "buffer_percent": 32, "configuration": "guB8FOTjMLo4b9rI", "enable_region_overrides": true, "extendable_session": true, "game_version": "qYkEpstyVTBcrM8r", "max_count": 68, "min_count": 21, "name": "rH0zcswwVeMK6MbG", "region_overrides": {"IVIu8vvwLc7KY3uV": {"buffer_count": 29, "buffer_percent": 30, "max_count": 74, "min_count": 97, "name": "XTIMtpgkieDyF97l", "unlimited": false, "use_buffer_percent": false}, "xdbZUpd6FJtHJ1py": {"buffer_count": 97, "buffer_percent": 93, "max_count": 46, "min_count": 76, "name": "yKQLY6FEO65Rb3z7", "unlimited": true, "use_buffer_percent": true}, "LM8IlsHqffnrfsGl": {"buffer_count": 11, "buffer_percent": 85, "max_count": 67, "min_count": 1, "name": "ZgKg4uKxaCgcGLuC", "unlimited": true, "use_buffer_percent": false}}, "regions": ["j1QGIFmlVf4jvaps", "eE9LN9bvhOrHflIO", "d6X3viLvtEk4mTIp"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}, "rKt2ecozL0TOg54v": {"buffer_count": 57, "buffer_percent": 63, "configuration": "W7l6jHMA2rG3nako", "enable_region_overrides": true, "extendable_session": true, "game_version": "SHNgqRqCV7usamAN", "max_count": 21, "min_count": 94, "name": "ZlOX9Sfo95HgXqKh", "region_overrides": {"TPkwfLM9uSybRzWe": {"buffer_count": 21, "buffer_percent": 68, "max_count": 13, "min_count": 24, "name": "ZvRrvr0n9d9lvccK", "unlimited": true, "use_buffer_percent": false}, "W9dD1kOmvrAejcq2": {"buffer_count": 78, "buffer_percent": 100, "max_count": 13, "min_count": 8, "name": "kQuaS7RBx3vim02j", "unlimited": true, "use_buffer_percent": true}, "OxrZDyvpcLYOWA8N": {"buffer_count": 19, "buffer_percent": 47, "max_count": 11, "min_count": 83, "name": "aXUr9Sk4lq2faBcA", "unlimited": false, "use_buffer_percent": false}}, "regions": ["KlhvyH8paOJtxqMP", "pcVfRwNj547fH0Xr", "KEDpEY8VnocGAjci"], "session_timeout": 14, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"bQxFJ3sWCqQpQ2Fb": {"buffer_count": 74, "buffer_percent": 40, "max_count": 85, "min_count": 80, "name": "FMycMSQ4qfAacR0L", "unlimited": false, "use_buffer_percent": true}, "CaGBeMfPlNos4yBR": {"buffer_count": 18, "buffer_percent": 28, "max_count": 35, "min_count": 74, "name": "ERHEonAZR8GmEu0q", "unlimited": false, "use_buffer_percent": true}, "6WQ5UBEU1QAOHfZi": {"buffer_count": 67, "buffer_percent": 41, "max_count": 15, "min_count": 97, "name": "xOdcuDXSxSc3aZPV", "unlimited": true, "use_buffer_percent": true}}, "regions": ["pna08gxefTYKhuxa", "Ec7M4P7UckSC6ePe", "N8i4GrFES9z7xueH"], "session_timeout": 32, "unlimited": true, "use_buffer_percent": false}' 'Hccee9GXhKcjmSEw' --login_with_auth "Bearer foo"
dsmc-delete-deployment-client 'drkEnnqKzFsLfYal' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config-client '94' '82' --login_with_auth "Bearer foo"
dsmc-create-pod-config-client '{"cpu_limit": 24, "mem_limit": 12, "params": "5zfQSfQrtfF3TQN0"}' 'OcNDLr36vzohZyjM' --login_with_auth "Bearer foo"
dsmc-delete-pod-config-client 'QAg5mPYhrLTyU8Oh' --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'gfY9JQYGF4bYXEcE' --login_with_auth "Bearer foo"
dsmc-list-server-client '81' '74' --login_with_auth "Bearer foo"
dsmc-server-heartbeat '{"podName": "x9xZlAchob44lOND"}' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "DwMvgI0HlyPR7wZN"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "iVsF6xG2mXEQdbzI", "ip": "Vy8alncV7vWgSHdf", "name": "o07UctPErqxyMyOK", "port": 90}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "6MqQBErxgjVBycvU", "pod_name": "4PbmRDcrg0DjQjBE"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "cvw6T6mZEiwxxElp"}' --login_with_auth "Bearer foo"
dsmc-get-server-session-timeout 'MYSWIeVzm7z9noow' --login_with_auth "Bearer foo"
dsmc-get-server-session 'mlTIKVowi0RY2VN4' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "ZONJREdUQ3z9F1Bx", "configuration": "NNgnke4akncw7wu9", "deployment": "TmXfJWBPrx9Ns8eL", "game_mode": "zYEvwSWTaLQjctvr", "matching_allies": [{"matching_parties": [{"party_attributes": {"K2jhsYpKPlXn77At": {}, "YoFzLAATPY8P8P3c": {}, "foivvQxevecWw7Rr": {}}, "party_id": "y0KK5rgAGO0dW8rX", "party_members": [{"user_id": "2MVUGKSZ4GcLkt4p"}, {"user_id": "K32sJxlZcCTpTdRt"}, {"user_id": "CHvuk6B6XTmSLyn5"}]}, {"party_attributes": {"0sigBVZxiKdV57Gv": {}, "Ryd9UuL02Le8HSCs": {}, "lsDd4M1F5qRIblS7": {}}, "party_id": "Nz81GRazPAANjfBo", "party_members": [{"user_id": "ldFOyqA2clJ5gEOa"}, {"user_id": "CgM6Yn6RugbNEIpG"}, {"user_id": "BFUjOn5mM7k8nbLz"}]}, {"party_attributes": {"vtCIW5ynMKquUicA": {}, "eIVXtoWAXhMlW4tL": {}, "qX7OICf5oD1e6oI9": {}}, "party_id": "FmYel0kOw72o8Zkg", "party_members": [{"user_id": "k0jS6rDWUwfhKvrf"}, {"user_id": "2AaH4yCWrHSppnIZ"}, {"user_id": "kNnTn3rzH5NvAtcv"}]}]}, {"matching_parties": [{"party_attributes": {"NedgS1fUfKmihDbm": {}, "u8ePWlQMVDXEHeiG": {}, "TnwyEw6hIWDZrpP7": {}}, "party_id": "rz3ISW510kHr4isT", "party_members": [{"user_id": "KWjmv67nuHCXWfwn"}, {"user_id": "wGioVwVzmmBVVFfp"}, {"user_id": "qx1AeLtzcPJ3jtDY"}]}, {"party_attributes": {"Bo4FUTH7CGfKSyxg": {}, "RR1DiCqSMzpqIFGL": {}, "kDs7ACC1RgBfoNrH": {}}, "party_id": "lFi2qJLgmBLE35Yh", "party_members": [{"user_id": "yiDV90SeI5yppBHo"}, {"user_id": "ytVznCgNyx9fbT63"}, {"user_id": "ShEh8PbGikLjgjcj"}]}, {"party_attributes": {"34uulU6FYBZsWFbr": {}, "3RSP0W9nBhvhf8Q0": {}, "DtJMcYQdN66bswAg": {}}, "party_id": "t65X4N1LQZmB61JM", "party_members": [{"user_id": "dtwCVUrYQue84dwm"}, {"user_id": "bwFEnAZaWsQJtRYo"}, {"user_id": "agRJK5PX9UcOvhPy"}]}]}, {"matching_parties": [{"party_attributes": {"E11TRT2SKseoe8VL": {}, "ie0LBa36KNzjf005": {}, "CXNGehQ2aTjTDfKF": {}}, "party_id": "DXC7eGL5YhJDWh9Y", "party_members": [{"user_id": "Wqc0qgV6d9yOfIML"}, {"user_id": "ds2DbPcaoMdtRLTm"}, {"user_id": "SvTkQQgB7exYvmHM"}]}, {"party_attributes": {"xr5hPCJJztJBg0tT": {}, "Jg46IewOXE2AkCh3": {}, "QIZsUf8lGFXcmwTE": {}}, "party_id": "RHclOdxIwqejxe18", "party_members": [{"user_id": "rNdb8Otq6j1mqUav"}, {"user_id": "7k05HAQltnSojV4j"}, {"user_id": "T65yclX2FtAz0vJj"}]}, {"party_attributes": {"FIYWOaNdsimmkW2m": {}, "iH3xRHAKy4QxZkaX": {}, "Z7vmiEd0JPxVyQps": {}}, "party_id": "haDwNqTbbFMXAMfV", "party_members": [{"user_id": "Xe0GZeMgsRsmH1EQ"}, {"user_id": "rYmkPKTPOlhTtSiZ"}, {"user_id": "NCxuogFteTHJe4Bh"}]}]}], "namespace": "SSQkQD6WmOt6D7uf", "notification_payload": {}, "pod_name": "FVTOhvQpfbBke8aE", "region": "dd36xj6wySoltDxs", "session_id": "bzxrlaKEfkoYjY2o"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "6ouRW9UtNquwC3Wg"}' --login_with_auth "Bearer foo"
dsmc-get-session 'umrIz4NhGztZpr4U' --login_with_auth "Bearer foo"
dsmc-cancel-session '4fwQIiLXgmRasvjO' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '4lj8m3XEwP2b4gd3' --login_with_auth "Bearer foo"
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
echo "1..81"

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
    '{"artifactPath": "xOeii8Jnmssep2xD", "image": "2NY0kABeGs9yxahl", "namespace": "d1pO0Gyf5PO3COyM", "persistent": true, "version": "xDQpKqxLGeMvr9Ts"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "vcMQ7dBsaIecRxIs", "dockerPath": "ZvD6rmzVr5XT1Nxw", "image": "0v1dMQ9Rrbk6C2cV", "imageSize": 100, "namespace": "IZRW491e94mQjVOO", "persistent": true, "version": "VXidT7w0Oc15N8WX"}' \
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
    '{"artifactPath": "BPp17PAewqSm5x3B", "dockerPath": "4t7WQnp8jXZedgt5", "image": "cyNe27HLtwtVOaxg", "imageSize": 86, "namespace": "NFxcVTKuAQTGh5Bx", "patchVersion": "jWOozGoDtsUuYo5p", "persistent": true, "uploaderFlags": [{"name": "ED5QZAufwNa8lzfj", "shorthand": "v9oYMXMjlVHY1AHw", "value": "F3vGoav7MK0PcLnE"}, {"name": "kcokKwcQ0baDT9Oy", "shorthand": "J2h23GUS2amU7syG", "value": "lElXdEAOrVSnLocL"}, {"name": "VVYamQc4wcG5nDBL", "shorthand": "JoJHbiQ5duE5p4cf", "value": "s2E41cK8QTwiIAvx"}], "version": "SvNDlmM5nQFMGzs7"}' \
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
    '{"claim_timeout": 12, "creation_timeout": 31, "default_version": "zjgyc44mEh9tRk8k", "port": 27, "ports": {"XgBsbfzqxBPNe8ae": 70, "t9unQLYXxm09wpGA": 3, "RxTjQ7gkZEY8rG0q": 24}, "protocol": "Q2Qd2JzRbkF2I03d", "providers": ["IjvBbA6bfbYaJCJj", "fk2TUvn95FhO7VW3", "mbDVMDu87t0ldWf7"], "session_timeout": 18, "unreachable_timeout": 58}' \
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
    '{"claim_timeout": 90, "creation_timeout": 67, "default_version": "p25xCWTqUOYZENJ1", "port": 88, "protocol": "6pqLGZ0TBujELAUK", "providers": ["6mQ5iZgbwwm5iGzX", "tcknrgidKupvXO6a", "j4hCmTC34jxW4pID"], "session_timeout": 46, "unreachable_timeout": 7}' \
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
    '97' \
    '33' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'zW0CpoBCbyJsF5Ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 4, "buffer_percent": 11, "configuration": "0W338HS6CBgVRyih", "enable_region_overrides": false, "extendable_session": true, "game_version": "YjERL1rEQG02zccA", "max_count": 74, "min_count": 45, "overrides": {"F19yVRafCjOuSYht": {"buffer_count": 44, "buffer_percent": 33, "configuration": "AdvBaagTiRJ8daGT", "enable_region_overrides": true, "extendable_session": true, "game_version": "b7jlz5IfHgKjI9mw", "max_count": 74, "min_count": 0, "name": "SrN8jkIykR2zbaI6", "region_overrides": {"PD7fEscShnGUGUtV": {"buffer_count": 67, "buffer_percent": 72, "max_count": 78, "min_count": 76, "name": "79GDbLNwjm3FK0nn", "unlimited": true, "use_buffer_percent": true}, "CcI8y3Cz0YqCKUh5": {"buffer_count": 89, "buffer_percent": 65, "max_count": 60, "min_count": 14, "name": "9vNAp4jinFpnQ5xF", "unlimited": true, "use_buffer_percent": true}, "HS0VgLu11A3HTovF": {"buffer_count": 17, "buffer_percent": 48, "max_count": 39, "min_count": 98, "name": "PAGfleyCA6jEtcqs", "unlimited": false, "use_buffer_percent": true}}, "regions": ["cLJXJ7mpVI6eTYAj", "dPlCiQQC35cj4KyO", "VgvnWbfRJtsB7cUQ"], "session_timeout": 86, "unlimited": true, "use_buffer_percent": false}, "AxJrINPXppPNO3Af": {"buffer_count": 26, "buffer_percent": 12, "configuration": "cgwC3IN6tvKgLB9Q", "enable_region_overrides": false, "extendable_session": true, "game_version": "k2hG0WKt4sUmanYx", "max_count": 79, "min_count": 36, "name": "0UHZVNYzGMNIpWoS", "region_overrides": {"LkUrfuf4U3WeYeA9": {"buffer_count": 39, "buffer_percent": 74, "max_count": 19, "min_count": 62, "name": "YDdmJOlzwm9Su4Fn", "unlimited": false, "use_buffer_percent": true}, "DcCR5PbCvDLil8wj": {"buffer_count": 10, "buffer_percent": 4, "max_count": 22, "min_count": 76, "name": "VyyJsbGpO6JgehDJ", "unlimited": true, "use_buffer_percent": false}, "EN7JlZc8LMq1o2jZ": {"buffer_count": 99, "buffer_percent": 42, "max_count": 11, "min_count": 50, "name": "cd9CVnGqMX9FieeE", "unlimited": true, "use_buffer_percent": true}}, "regions": ["yFlM0u1uuoVdn9yV", "oSlKNchPHNL4X3LL", "aGPGdqLE8Sohhhui"], "session_timeout": 94, "unlimited": false, "use_buffer_percent": false}, "nkBNi4gvqgl6TZ9T": {"buffer_count": 67, "buffer_percent": 1, "configuration": "VPmv34h6T7Esufmf", "enable_region_overrides": true, "extendable_session": true, "game_version": "B4LM6H6QXmpZ9X3f", "max_count": 96, "min_count": 91, "name": "y7fLD2qfCXnlUnqx", "region_overrides": {"T1WsRNMZcA92hzC7": {"buffer_count": 80, "buffer_percent": 69, "max_count": 82, "min_count": 1, "name": "3sIhzOx2CXKlvIom", "unlimited": true, "use_buffer_percent": true}, "pIxM9n8D2eLMe3lt": {"buffer_count": 33, "buffer_percent": 15, "max_count": 11, "min_count": 44, "name": "x2UDcgVE7L9FK6e0", "unlimited": false, "use_buffer_percent": true}, "gJaMYvNQOsDa4bkc": {"buffer_count": 14, "buffer_percent": 23, "max_count": 8, "min_count": 52, "name": "pqtxjbrztee7QLTG", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ak7Kaol01DK97D2x", "nik42miteR5eQAe1", "rzmmgqBPRmd6mO4o"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"m9yEYWNGMy2pgSGS": {"buffer_count": 96, "buffer_percent": 63, "max_count": 84, "min_count": 22, "name": "K68eqGJtWf1Ybgg8", "unlimited": true, "use_buffer_percent": false}, "zaf7CaOSlHXrUSA6": {"buffer_count": 37, "buffer_percent": 80, "max_count": 77, "min_count": 74, "name": "M2IwEsdOGBXBwnzD", "unlimited": false, "use_buffer_percent": true}, "WznDe4LQdXfFBii2": {"buffer_count": 89, "buffer_percent": 67, "max_count": 54, "min_count": 32, "name": "MEX5RMjBFVZGYzQq", "unlimited": false, "use_buffer_percent": false}}, "regions": ["hPjNDKv2LWfXqjr8", "fS79En3wYowBdkaZ", "3y6i38XQjLDRqkpi"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": true}' \
    'BtiQ272Uo9UBJWod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'pdwsX1jorcyR0x3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 95, "buffer_percent": 69, "configuration": "vck3xTtmOFMebS4A", "enable_region_overrides": false, "extendable_session": false, "game_version": "lNzwog2IhErkNhNc", "max_count": 62, "min_count": 29, "regions": ["CWwchW6zL9SkbLlr", "NXnGanMazb8jvRWe", "nURH48aJuALEcSqc"], "session_timeout": 62, "unlimited": true, "use_buffer_percent": true}' \
    '5u6D31DjOsrs3CUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 53, "buffer_percent": 59, "max_count": 93, "min_count": 62, "unlimited": false, "use_buffer_percent": true}' \
    'qnQGbqiqOkNeATj7' \
    'eGjodd7CcJUrI6MA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'ugK5kypNrp2nFe9F' \
    'mN86sK5LOq4ft5jG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 4, "buffer_percent": 22, "max_count": 80, "min_count": 37, "unlimited": false, "use_buffer_percent": true}' \
    '2bRBr27fVMWuAfDq' \
    'LMR919IZPKOKiAVQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 87, "buffer_percent": 100, "configuration": "OmqFHLbyXmgCNiXH", "enable_region_overrides": true, "extendable_session": false, "game_version": "uGcL1koyHjCH5olY", "max_count": 77, "min_count": 84, "region_overrides": {"ETRpABAmO2EGvJ4U": {"buffer_count": 79, "buffer_percent": 52, "max_count": 91, "min_count": 14, "name": "93yOxNInDByhnolu", "unlimited": false, "use_buffer_percent": true}, "XGFmPAnOkDiJq4xQ": {"buffer_count": 51, "buffer_percent": 9, "max_count": 83, "min_count": 68, "name": "tgohjtC7bzjPpucd", "unlimited": false, "use_buffer_percent": false}, "XJ5zifF8y959anrN": {"buffer_count": 92, "buffer_percent": 56, "max_count": 23, "min_count": 8, "name": "B4CxyQrUpIFvORxT", "unlimited": false, "use_buffer_percent": false}}, "regions": ["79DpSjb39ukcR6c2", "E2r3vk3IfAKEbqcN", "XSGCCvNowNmdpcJg"], "session_timeout": 65, "unlimited": true, "use_buffer_percent": true}' \
    'S4VsRoYIK69yg9AD' \
    'CGiXaLs2xjHkinOD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    '975nARHCmhNHSXuq' \
    'IHsxvaUoXDmwWsuk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 47, "buffer_percent": 82, "configuration": "ncuD3QxCXMd00YBW", "enable_region_overrides": true, "game_version": "ndhhZhwAiLsZs4pm", "max_count": 77, "min_count": 60, "regions": ["76dGGJwJ00UH197M", "J6zU7JLMQyMWzYQC", "AaPJgoxGJoJaSzUt"], "session_timeout": 34, "unlimited": true, "use_buffer_percent": true}' \
    '0Xtb0U4pH16NUsVY' \
    '21NVIs7NRen2Y3Ns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 88, "buffer_percent": 59, "max_count": 74, "min_count": 42, "unlimited": false, "use_buffer_percent": false}' \
    'mfOL0QQpxsuD8PGq' \
    'ku59eFJrOXyDYz9v' \
    'MUOPG0iHDT8QbF7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'HPTPQbvLt2NRqJGI' \
    'KzLyH1y72L13Orny' \
    'x34luLdvtsTKXMji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 45, "buffer_percent": 74, "max_count": 12, "min_count": 61, "unlimited": false, "use_buffer_percent": true}' \
    'vfn2Qt9iyq3Nyk8n' \
    'cu2Z3eDHH9WaVO4i' \
    'KhDcJ7TCcNIsQ3Pu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '31' \
    '31' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'BJ6mVV7JS9qjNLwv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 70, "mem_limit": 58, "params": "8JdiY3RRiLilmOGF"}' \
    '6dLLIeIVIjMcdlbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'RXTGIrdNL5gJPqTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 19, "mem_limit": 22, "name": "gqaTHf1ANTJ9Yk99", "params": "7XkGOdC6ItxDT8p4"}' \
    'n4XCFkD1AJLCwszb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 85}' \
    'xuHSgDOK8bjoF7bL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    '2635KbtZTGJpqgl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "IzNXGTuQPIDpor7t", "port": 59}' \
    'aJLNNz6QIVC9Mfuc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '25' \
    '98' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'ZDdMiCxmuCCVuFjS' \
    '1GC1d2b92B4vEgj3' \
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
    'HOmhcWm428XejRF9' \
    '4NIY9nMrBZo0lNUB' \
    'DShHD32vvL28FPwT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'iXfLcxDC9Ynd02mE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'CIQhfIhHtADUQ9zi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'mQTQT95pFJUAJsyA' \
    'feKOufV4f15NohXu' \
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
    '74' \
    '30' \
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
    'Ue2znsqPzPkwCBo2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteLocalServer' test.out

#- 50 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'SwCUsTag4MLAo3m6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetServer' test.out

#- 51 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    '1P2xaNfmn8Onb1a9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteServer' test.out

#- 52 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '13' \
    '64' \
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
    'Mz0F2UBRmMhAbUWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteSession' test.out

#- 55 CreateRepository
$PYTHON -m $MODULE 'dsmc-create-repository' \
    '{"namespace": "FhdYLWzMuv3zkUY0", "repository": "n0BAZkwbYkBLyO6A"}' \
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
    '52' \
    '64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetAllDeploymentClient' test.out

#- 59 CreateDeploymentClient
$PYTHON -m $MODULE 'dsmc-create-deployment-client' \
    '{"allow_version_override": true, "buffer_count": 94, "buffer_percent": 12, "configuration": "jCrJHXGXku2YVuOz", "enable_region_overrides": false, "extendable_session": true, "game_version": "fIfXshuLUk5Wdpxj", "max_count": 9, "min_count": 47, "overrides": {"6A6RpmKDebNkylby": {"buffer_count": 27, "buffer_percent": 81, "configuration": "kgT9vayLLiizac7G", "enable_region_overrides": false, "extendable_session": true, "game_version": "iMlOuksQJCiRFiZW", "max_count": 45, "min_count": 100, "name": "J7NrTb1XTB9YQzUJ", "region_overrides": {"9XlYJ8BzP6EUmUXG": {"buffer_count": 78, "buffer_percent": 9, "max_count": 57, "min_count": 0, "name": "XH8x6HdVfZVDAiU6", "unlimited": false, "use_buffer_percent": false}, "JOF7JKZFNk2NKy59": {"buffer_count": 60, "buffer_percent": 18, "max_count": 61, "min_count": 83, "name": "4MYXlrJ81lHvv9rq", "unlimited": true, "use_buffer_percent": true}, "PeiMH8z8dVej8N2y": {"buffer_count": 44, "buffer_percent": 74, "max_count": 97, "min_count": 23, "name": "TnOK7xAvM7tuL81l", "unlimited": true, "use_buffer_percent": true}}, "regions": ["7xxSVp3Gd2TK0HzY", "viTgYmx82JVBRLPZ", "6Iz8tne5dbguBF6G"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": true}, "jE2opXtdsJQeJ1to": {"buffer_count": 30, "buffer_percent": 71, "configuration": "0qvxphTLEEBGTtZy", "enable_region_overrides": false, "extendable_session": true, "game_version": "dKNKgYazujsmSmyl", "max_count": 92, "min_count": 41, "name": "1YtxIq73aMb48jIS", "region_overrides": {"d97KORRhxSWLWLNf": {"buffer_count": 69, "buffer_percent": 90, "max_count": 96, "min_count": 61, "name": "cPAGv6c1ESC6hZYT", "unlimited": true, "use_buffer_percent": false}, "beqWBdQuWfgBAKx2": {"buffer_count": 96, "buffer_percent": 78, "max_count": 70, "min_count": 92, "name": "bIT9szApmWJO5vzz", "unlimited": false, "use_buffer_percent": false}, "08a6K1XRVfriSpPF": {"buffer_count": 28, "buffer_percent": 73, "max_count": 85, "min_count": 56, "name": "OIKrRBrYVzi9ui3l", "unlimited": true, "use_buffer_percent": true}}, "regions": ["ozTt9TsH7A0TuU2a", "L4bPkk11sys6GdkD", "cos5uVJ0BJfZ0jvA"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": true}, "Wf6T3by2kYSCdnFK": {"buffer_count": 76, "buffer_percent": 86, "configuration": "c0xcTjqjdcEfU61O", "enable_region_overrides": true, "extendable_session": false, "game_version": "nW49rWynp1ck1vT9", "max_count": 6, "min_count": 58, "name": "HJfF6KIuvnRCa9Jk", "region_overrides": {"tyBdxkZKrEWFw9GY": {"buffer_count": 48, "buffer_percent": 14, "max_count": 19, "min_count": 36, "name": "iiOQAD77ci0vfWVZ", "unlimited": false, "use_buffer_percent": true}, "RRMPi57HyKKz5nyI": {"buffer_count": 41, "buffer_percent": 51, "max_count": 24, "min_count": 50, "name": "KNKoXa0dgx1JgjC5", "unlimited": false, "use_buffer_percent": true}, "da3YhtQxpCYME6x2": {"buffer_count": 57, "buffer_percent": 32, "max_count": 60, "min_count": 7, "name": "XJcrqKmXDwoEV6tC", "unlimited": false, "use_buffer_percent": true}}, "regions": ["PafIjLX8ce0KbNN7", "Ycl2JfmQplvGjVQ4", "aebjfgGu472oWJlf"], "session_timeout": 12, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"dCOInVolsr6CHmj7": {"buffer_count": 10, "buffer_percent": 37, "max_count": 43, "min_count": 60, "name": "LwtYEJTSiXjcY5ZP", "unlimited": false, "use_buffer_percent": true}, "VFL8LNW11vtpaTxi": {"buffer_count": 41, "buffer_percent": 20, "max_count": 32, "min_count": 62, "name": "89jRCn48bvkCPfKo", "unlimited": false, "use_buffer_percent": true}, "Wj1WfzIvc3VlSXrA": {"buffer_count": 97, "buffer_percent": 83, "max_count": 96, "min_count": 0, "name": "Gud4tVjmxEf4XvVh", "unlimited": true, "use_buffer_percent": true}}, "regions": ["rBVg6NuDZvPb1kuU", "fNfUDe4g7q6PHEaq", "bzHvDDl1jiLw3XMG"], "session_timeout": 56, "unlimited": true, "use_buffer_percent": true}' \
    'Exlkmc4xYiLjLyZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateDeploymentClient' test.out

#- 60 DeleteDeploymentClient
$PYTHON -m $MODULE 'dsmc-delete-deployment-client' \
    'Xr9Bhtzn8jAdTn6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteDeploymentClient' test.out

#- 61 GetAllPodConfigClient
$PYTHON -m $MODULE 'dsmc-get-all-pod-config-client' \
    '56' \
    '9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetAllPodConfigClient' test.out

#- 62 CreatePodConfigClient
$PYTHON -m $MODULE 'dsmc-create-pod-config-client' \
    '{"cpu_limit": 15, "mem_limit": 90, "params": "rciryLm67rkadH5Y"}' \
    '41SLjCPrFa05Xl5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreatePodConfigClient' test.out

#- 63 DeletePodConfigClient
$PYTHON -m $MODULE 'dsmc-delete-pod-config-client' \
    'PC5GODS44bmm7jPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'DeletePodConfigClient' test.out

#- 64 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ImageLimitClient' test.out

#- 65 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'KLddfdsUqjXVzW1Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ImageDetailClient' test.out

#- 66 ListServerClient
$PYTHON -m $MODULE 'dsmc-list-server-client' \
    '34' \
    '49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'ListServerClient' test.out

#- 67 ServerHeartbeat
$PYTHON -m $MODULE 'dsmc-server-heartbeat' \
    '{"podName": "xnWR5sheLgsAF4ct"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ServerHeartbeat' test.out

#- 68 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "v5guycGiq9j2EyIk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeregisterLocalServer' test.out

#- 69 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "nfLDpgHnMOn8nc3g", "ip": "UZ8ZFyyEr0KBXuJB", "name": "qK4QtEydPWLPBYiR", "port": 85}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'RegisterLocalServer' test.out

#- 70 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "UbJc1ZYapx7C477e", "pod_name": "tqgfOJDUT0uKAPrA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RegisterServer' test.out

#- 71 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": true, "pod_name": "V7YbJM3bNLWHAbCZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'ShutdownServer' test.out

#- 72 GetServerSessionTimeout
$PYTHON -m $MODULE 'dsmc-get-server-session-timeout' \
    'ixe2cQ6O30lpzcBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetServerSessionTimeout' test.out

#- 73 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'MAEcNcJqrKxnMzSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetServerSession' test.out

#- 74 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "oc4ZjiMY4H34B6wV", "configuration": "d8ipcKDwQeUWtjCC", "deployment": "2UH6jzMO3AfmOS5m", "game_mode": "QNyRPZFPNP56l1AT", "matching_allies": [{"matching_parties": [{"party_attributes": {"6OLKmZhCZxxPPdPw": {}, "OtEuWBSO2jJepUnE": {}, "Egja2mIE2kLTnJwc": {}}, "party_id": "5XmkCuL5W4tKt6G3", "party_members": [{"user_id": "j9LYdG7xVPqBqe9R"}, {"user_id": "DQMBSYAFLqp8PF5h"}, {"user_id": "CcoukWpnbz4ys7j6"}]}, {"party_attributes": {"lxuU3u2HEG0qfKeg": {}, "vFTD1sPykS8YLmwt": {}, "YgWGcA0h4G1LZ1Ha": {}}, "party_id": "X5UBMbsF44VTsLDR", "party_members": [{"user_id": "zdq22cbnyK3ggFDh"}, {"user_id": "2kaZP7pnnVfxPwc2"}, {"user_id": "59HF9ejHaILQruAu"}]}, {"party_attributes": {"YyJLYGqMv824ouSg": {}, "kpK70uJmUL0uzEli": {}, "xc023dIvDiA0tQWl": {}}, "party_id": "HwBcTtztx3VAl6tX", "party_members": [{"user_id": "FbnATCzUOIzVcy9k"}, {"user_id": "3ie64Vnwa0ClGQJu"}, {"user_id": "ltJe32AiwKadEoIV"}]}]}, {"matching_parties": [{"party_attributes": {"mprwPsa9YD92CX0r": {}, "ITajpwHITGeHTnqR": {}, "bzBB9ZFgJbQ3Fj1u": {}}, "party_id": "mx4ItzkMJ7cudf4r", "party_members": [{"user_id": "916GPrhn2etVIQvR"}, {"user_id": "kQJAtDUH9tx60Aeh"}, {"user_id": "Gz1ermJYXsYgL7Tf"}]}, {"party_attributes": {"yIlAwjTZdRZJJzWZ": {}, "wvTX2bamSCvX1nwv": {}, "SWdDwD7WJHzgNZUK": {}}, "party_id": "sI5y0mR3zMyTsftK", "party_members": [{"user_id": "qnsIJctAdxyZVKHA"}, {"user_id": "9DkaSOWgtg8yw8lH"}, {"user_id": "EbVDwBAqanOlscRI"}]}, {"party_attributes": {"Ww82k5K5VTkdubkO": {}, "FldMCQ98JH4n0Jtg": {}, "qzZv5kVu4S95mj8Y": {}}, "party_id": "Rvae4f4lhBPbarbW", "party_members": [{"user_id": "Em8bVtZcfVCPdQhi"}, {"user_id": "m9QKUAFTVYelIlGJ"}, {"user_id": "g9wdc8bihhWjfZpf"}]}]}, {"matching_parties": [{"party_attributes": {"cFBUsnnDJlmD1iEo": {}, "kbUiYzCQh2iNTwtn": {}, "ohddMzMTQ9P7sYLD": {}}, "party_id": "WAJOA75K4BYJ2fkq", "party_members": [{"user_id": "YJoF2FI3vyyqRzc2"}, {"user_id": "0O7FdsJP1G9tyBTf"}, {"user_id": "ERXdvgD1Qf7Ot2Dk"}]}, {"party_attributes": {"Ut3yexZBRvxYnEBh": {}, "XtAVxCd3meTrT7cF": {}, "9oVCh89wNOkKYssV": {}}, "party_id": "ejcL3kR3hCGNgaJm", "party_members": [{"user_id": "uALlMQl9RLrthbfp"}, {"user_id": "0VgweLlT2sY3SsTn"}, {"user_id": "DQY7kKU2u06Q4veu"}]}, {"party_attributes": {"jxtyQENvJrBCqeg6": {}, "7d4RWOqO4U0bitNQ": {}, "LzwRoWnR0AbkCPY7": {}}, "party_id": "0FmvviVIBbcujF8V", "party_members": [{"user_id": "k5qb8NhWWwaxyMch"}, {"user_id": "kt8l5IPSrwrJl7wY"}, {"user_id": "IVw13NCo9yXlbQ52"}]}]}], "namespace": "FTHTCj6SEAzT7TOp", "notification_payload": {}, "pod_name": "yiuvvQUm29Iacq4X", "region": "RLaA643nTMtXSAye", "session_id": "jnny0Ju13b6o5uB2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CreateSession' test.out

#- 75 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "XM6IHy7EEvHyLmcv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'ClaimServer' test.out

#- 76 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'rZZOdwe1x8RjU6Bi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetSession' test.out

#- 77 CancelSession
$PYTHON -m $MODULE 'dsmc-cancel-session' \
    '8JXE52sUBBq2SimQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'CancelSession' test.out

#- 78 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetDefaultProvider' test.out

#- 79 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'ListProviders' test.out

#- 80 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'QoLbe5YOJvxGRxUz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'ListProvidersByRegion' test.out

#- 81 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
