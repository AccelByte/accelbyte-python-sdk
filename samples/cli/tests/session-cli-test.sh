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
session-get-healthcheck-info --login_with_auth "Bearer foo"
session-pprof-handler --login_with_auth "Bearer foo"
session-allocs-handler --login_with_auth "Bearer foo"
session-block-handler --login_with_auth "Bearer foo"
session-cmdline-handler --login_with_auth "Bearer foo"
session-goroutine-handler --login_with_auth "Bearer foo"
session-heap-handler --login_with_auth "Bearer foo"
session-mutex-handler --login_with_auth "Bearer foo"
session-profile --login_with_auth "Bearer foo"
session-symbol-handler --login_with_auth "Bearer foo"
session-threadcreate-handler --login_with_auth "Bearer foo"
session-trace-handler --login_with_auth "Bearer foo"
session-get-healthcheck-info-v1 --login_with_auth "Bearer foo"
session-admin-get-log-config --login_with_auth "Bearer foo"
session-admin-patch-update-log-config '{"logLevel": "info"}' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"metricExcludedNamespaces": ["twYCA9kPI6LZrkq6", "Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh"], "regionRetryMapping": {"4n8mzZ0m8SAMTwE6": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "4CUkNmKJfh5pUkHO": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "vyE3cwyALczNIicX": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"]}, "regionURLMapping": ["n7Z4U68su8XfqlqN", "iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y"], "testGameMode": "sLEzth6mXhzkzWkF", "testRegionURLMapping": ["eZSoEAcBdW19m4eu", "6d5tA5jUmiTqpyhP", "FdxLzFQN05MYzYiK"], "testTargetUserIDs": ["We5dNRljv7IPrDQQ", "Rgat0SevkLGMS0ly", "uI9a2I9u6Vpbsx5w"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 96}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 15}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-handle-upload-xbox-pfx-certificate 'fofvnnSuB0y5WUlr' 'tmp.dat' 'MdI4sNveabntBSxT' --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 9, "PSNSupportedPlatforms": ["kgghGoYupD391C2q", "tPYokahFjkQsfCaT", "mt1d67FXGk2s9Q0m"], "SessionTitle": "PVo3twu0MesTCf9x", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "WN2laRlxfcjHfYak", "XboxServiceConfigID": "UCTqGkE7wcWfDslp", "XboxSessionTemplateName": "JSqGAXQ0yYoNRKd3", "XboxTitleID": "IL5TAQ6iiPlSC2uE", "localizedSessionName": {"4o5Vwdo3fePqIJA8": {}, "IHtrkmu0hpDDWVAl": {}, "a2l5BYNtIuS5S5XU": {}}}, "PSNBaseUrl": "djsoqwGyzzWi9gwQ", "appName": "Yv7t1o7TTr1DmrhZ", "attributes": {"v15T7quIOvBMcaYm": {}, "vCkGZ5dAgqxpBFma": {}, "Loxozr6wfNPX2bOI": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "MvqtlB2jJCSQT279", "customURLGRPC": "ZZPYGu0rdlgdWyOt", "deployment": "Xi3choQrpOsDBU5S", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "U8MyKrQpM4hkkK6K", "enableSecret": true, "fallbackClaimKeys": ["XNB3Gv0IqmF51Tkh", "jYnaq6foWvXa3bMr", "XsDr6kILsSSyDdmy"], "immutableStorage": false, "inactiveTimeout": 20, "inviteTimeout": 26, "joinability": "7il35MXbN9oCMNqq", "leaderElectionGracePeriod": 84, "manualRejoin": false, "maxActiveSessions": 19, "maxPlayers": 10, "minPlayers": 93, "name": "4IxjUkl535X3ateE", "persistent": true, "preferredClaimKeys": ["DpADz1x3poD3Qgb3", "boLQQ1MzH7Qm8bwb", "mXgdAPh1EThG96gA"], "requestedRegions": ["FKK2WDgCcxvONZm3", "EeERmDnyeFoF7VSZ", "6pf3vneSD2Tb3g7m"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "UhAEtrmjqU6YE3p4"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 33, "PSNSupportedPlatforms": ["1GXlvPG6bFYReVHQ", "ipcCx9Zw5D2L7vIY", "hGGSyEW4ZJJ42d3P"], "SessionTitle": "BddN8S48l9lyNApf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "xqMrj3oZk03QXcKM", "XboxServiceConfigID": "DYDDxHSZjtqXyJ58", "XboxSessionTemplateName": "f7Gc26SaiGVkydwY", "XboxTitleID": "WQG26yUZNmTBcvrb", "localizedSessionName": {"YCwZtxFHyPLtI8il": {}, "byDPUIj88cekdqCt": {}, "81P1ktfIovmv9gsR": {}}}, "PSNBaseUrl": "5cJcHm3SZLxoRDFu", "appName": "uuySj29a9LJE8HoR", "attributes": {"S1X2PFAAMwzHPxB1": {}, "UskYs4Yw20DOqOBS": {}, "C2DKHRuPMMWH8Yb3": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "UBJCjfcnLRfxeCSz", "customURLGRPC": "9WEi8KlloeH0JT1y", "deployment": "duat2vQR3biBfsu4", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "4EXsXzOXQAk4mqrx", "enableSecret": true, "fallbackClaimKeys": ["t4SqYUTLDx9gIiDa", "ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND"], "immutableStorage": true, "inactiveTimeout": 100, "inviteTimeout": 11, "joinability": "ehwH3q31A806DJga", "leaderElectionGracePeriod": 38, "manualRejoin": false, "maxActiveSessions": 51, "maxPlayers": 4, "minPlayers": 11, "name": "6z3LNUj7fdgLA84Z", "persistent": false, "preferredClaimKeys": ["YYk6QEgJjBbEDoNf", "3n0hEoRCAcf80zfF", "yabWAgIUXiI07A68"], "requestedRegions": ["eaqC2J9jyEW6GLbc", "0NaKDUL3sa13lk1d", "QBHO86IlBhnetU4R"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "TqUXlTDBzOuYsaZA"}' '2yyd4mbqoOfADMMA' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'XFaY9eKa699bRVhy' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'aKwwrAP2aMlu7Wtj' 'CtoYetOO847g8Oud' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "OfjnCuHZ3c46IjGa"}' '23YvYmmDg7VYPXIu' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"vUYTZBRujIUE1Tq5": {}, "jyAZvkRCMNFIurjh": {}, "2imdb4rbkXj0ZwsV": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["C0gL97ZVJSPqJiwv", "1qlYB1RSKs6gQxC3", "Gb7S0o4zGYY7KQI1"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' 'a1MbqqZtfNWql4nm' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'wAft4gqkNNlWkD9e' 'OziYRFOn0jJLHC9L' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'xhvNXTwGBCtohLtl' '9Zuhytm5UDrT6QXC' 's5SPBbRPZTF6oQAX' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "VG7tnsZg5QgXjvyG", "clientSecret": "JPN4eXbJE5Vs2Gcy", "scope": "omQoIXimBJehyxlN"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'sjUgxBkF6wFPoJeQ' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'ediogEhhM2rIizGd' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'KvOPdq5xrgxSmy1D' 'N9LFkYW5DQyj4bj5' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Ro2ogaKt2ujQSa3Z' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'db65UXmy0Zp6iIaT' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "IKUkmkk9QM0NBMA9", "attributes": {"ORxpzwLR2AK6eXUG": {}, "PJsw1fiP80G9Pclx": {}, "cft2ulIJzPyrVEiO": {}}, "autoJoin": true, "backfillTicketID": "UcqsuGKHhMRWLVd3", "clientVersion": "DlhLuIpomM8sm1Mi", "configurationName": "aI1mX2tJoARtdbBe", "customURLGRPC": "7udsMrok0WvGYYnx", "deployment": "4V709xbnGezKsDwG", "dsSource": "2omOR2nvYI9TVqJd", "fallbackClaimKeys": ["vzcWbfUpaXp5JMl5", "LL4bTxBmZjdrrIxs", "B0NRsB1fPqqRRulp"], "inactiveTimeout": 34, "inviteTimeout": 7, "joinability": "pymDkQhtrHWwRVnw", "matchPool": "VBOqOHi8pWGd1juY", "maxPlayers": 14, "minPlayers": 71, "preferredClaimKeys": ["iqjRJOqB5F93zFQb", "JndUDpdONneAczbB", "dHb2slt71B1SmZp2"], "requestedRegions": ["JZp50CnPb71ORYcm", "QbTU5JX8ccLjMXJR", "k0eaKQDOJvrTefgl"], "serverName": "Ss6g4iY9u02aCNYI", "storage": {"leader": {"Wekp18lOC3mNqF7B": {}, "l0LcghVHfPEspxwh": {}, "RON0bc1eMbEIjowL": {}}}, "teams": [{"parties": [{"partyID": "qc3ecjXJbZDKKoxL", "userIDs": ["E1Y3Dymtj3giPg4x", "4yiPX6ues1Hhhkg1", "yLVbLFzHEP8cM4NT"]}, {"partyID": "wr0KHaAsmTej52WK", "userIDs": ["i6tArAURt9plCSVq", "8PdH6hJPUAc0RVwX", "gAgntLMCuaXBWQi6"]}, {"partyID": "BqPg4xr0lCancUZG", "userIDs": ["CHsZYoLfR1KtOv7Z", "y0b65uvuKNuy0ytZ", "Q7M6Nzy1adnSKOLF"]}], "userIDs": ["Kx1dX4LuWJu3pDMU", "AeeZ97SBROPYuG6X", "qP6oo7G73zdxTgOf"]}, {"parties": [{"partyID": "nwIdlNa29fDLh741", "userIDs": ["IslKHzGlLKWUtDQs", "61OQAoxyyQpRWCii", "PDGQhNPEwiJCf2XJ"]}, {"partyID": "VrlzqQls1ozhLVA3", "userIDs": ["kE8jKvgatOEBM70T", "dlNBJYOmpu1VCarz", "BsV6xnZ5Jrzzjrca"]}, {"partyID": "ug6CWVG8SWP3glU6", "userIDs": ["muswVJnNnN7kAa7j", "0riFc5HTHQIoVsGo", "7dwV9DBqFKHQkETJ"]}], "userIDs": ["yTlUrwDTnoujQD4I", "EiH9Z5qXn3aoRtlq", "OECohViHA5CzgFSy"]}, {"parties": [{"partyID": "8X1A3PrIfapq5AAe", "userIDs": ["Me4L3mDWORBVXTII", "JM9XsYIIZxiXNMR9", "BgaWcFX3SUBhyoTs"]}, {"partyID": "MWPAxUMkawaGpAyr", "userIDs": ["IwMif3BOdkocVTd4", "BxqGWV6mTJ0sQs6X", "NbjvqhnUVLWu8olK"]}, {"partyID": "dxL6ozRmDD0jJvlf", "userIDs": ["V5OemPYdYT7DROCj", "tuzFMbAG9YI89hmg", "uB8FOTjMLo4b9rIz"]}], "userIDs": ["qYkEpstyVTBcrM8r", "G0rH0zcswwVeMK6M", "bGIVIu8vvwLc7KY3"]}], "textChat": true, "ticketIDs": ["1WoVeJIePF8ZrQzP", "4zvtdxdbZUpd6FJt", "HJ1pyVwyKQLY6FEO"], "tieTeamsSessionLifetime": true, "type": "5Rb3z7CYLM8IlsHq"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"ffnrfsGlfPaZKBwa": {}, "3Ddb60ufPpzwj1QG": {}, "IFmlVf4jvapseE9L": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "N9bvhOrHflIOd6X3"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'viLvtEk4mTIpUA9g' --login_with_auth "Bearer foo"
session-get-game-session 'xo8SV38nEhoXmM2W' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"7l6jHMA2rG3nakop": {}, "Aywelu01nryEJ0Nq": {}, "oTow0qiOiC4j0ikt": {}}, "backfillTicketID": "m0ZPLkLOsp0LZ5nj", "clientVersion": "N86Hl8kUXzt6bSc6", "deployment": "bWvgpVyW9dD1kOmv", "fallbackClaimKeys": ["rAejcq2LgkQuaS7R", "Bx3vim02jBOxrZDy", "vpcLYOWA8NjxOnaE"], "inactiveTimeout": 30, "inviteTimeout": 21, "joinability": "Sk4lq2faBcAXXKlh", "matchPool": "vyH8paOJtxqMPpcV", "maxPlayers": 11, "minPlayers": 90, "preferredClaimKeys": ["0NlncceIZSwgAIkg", "zh4pTU0Am4DZhl0b", "QxFJ3sWCqQpQ2FbK"], "requestedRegions": ["PFMycMSQ4qfAacR0", "LgB5BUXvjcu2s6w3", "VifnKqmTSoGH1XEf"], "teams": [{"parties": [{"partyID": "Y6QAYn6WQ5UBEU1Q", "userIDs": ["AOHfZiGhxOdcuDXS", "xSc3aZPV87pna08g", "xefTYKhuxaEc7M4P"]}, {"partyID": "7UckSC6ePeN8i4Gr", "userIDs": ["FES9z7xueHpATHcc", "ee9GXhKcjmSEwdrk", "EnnqKzFsLfYalUlf"]}, {"partyID": "wEQKjU7eHGebSVu0", "userIDs": ["LQ40kepEaC4dfiOM", "ZfEhHr39pysFO3Zv", "c1BZG99LyvfvHEsJ"]}], "userIDs": ["KQQewVLMUoAnaRcY", "p7FUjfIGaffoflEI", "ByYqeKN0meGelYF5"]}, {"parties": [{"partyID": "wWaDhukU4khGG4vZ", "userIDs": ["FTYnPkmSu4PWam1j", "xR7SETWjteoc8fgv", "ZDDhoO05oKqymxLD"]}, {"partyID": "1Lcvw6T6mZEiwxxE", "userIDs": ["lpMYSWIeVzm7z9no", "owmlTIKVowi0RY2V", "N4ZONJREdUQ3z9F1"]}, {"partyID": "BxNNgnke4akncw7w", "userIDs": ["u9TmXfJWBPrx9Ns8", "eLzYEvwSWTaLQjct", "vrK2jhsYpKPlXn77"]}], "userIDs": ["AtYoFzLAATPY8P8P", "3cfoivvQxevecWw7", "Rry0KK5rgAGO0dW8"]}, {"parties": [{"partyID": "rX2MVUGKSZ4GcLkt", "userIDs": ["4pK32sJxlZcCTpTd", "RtCHvuk6B6XTmSLy", "n50sigBVZxiKdV57"]}, {"partyID": "GvRyd9UuL02Le8HS", "userIDs": ["CslsDd4M1F5qRIbl", "S7Nz81GRazPAANjf", "BoldFOyqA2clJ5gE"]}, {"partyID": "OaCgM6Yn6RugbNEI", "userIDs": ["pGBFUjOn5mM7k8nb", "LzvtCIW5ynMKquUi", "cAeIVXtoWAXhMlW4"]}], "userIDs": ["tLqX7OICf5oD1e6o", "I9FmYel0kOw72o8Z", "kgk0jS6rDWUwfhKv"]}], "ticketIDs": ["rf2AaH4yCWrHSppn", "IZkNnTn3rzH5NvAt", "cvNedgS1fUfKmihD"], "tieTeamsSessionLifetime": false, "type": "sZoFS6xCOWMpyh9p", "version": 79}' 'GTnwyEw6hIWDZrpP' --login_with_auth "Bearer foo"
session-delete-game-session '7rz3ISW510kHr4is' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"TKWjmv67nuHCXWfw": {}, "nwGioVwVzmmBVVFf": {}, "pqx1AeLtzcPJ3jtD": {}}, "backfillTicketID": "YBo4FUTH7CGfKSyx", "clientVersion": "gRR1DiCqSMzpqIFG", "deployment": "LkDs7ACC1RgBfoNr", "fallbackClaimKeys": ["HlFi2qJLgmBLE35Y", "hyiDV90SeI5yppBH", "oytVznCgNyx9fbT6"], "inactiveTimeout": 95, "inviteTimeout": 90, "joinability": "ztXDgB7n4C97uAPP", "matchPool": "8PATLpUpxeJlsBJT", "maxPlayers": 90, "minPlayers": 68, "preferredClaimKeys": ["SP0W9nBhvhf8Q0Dt", "JMcYQdN66bswAgt6", "5X4N1LQZmB61JMdt"], "requestedRegions": ["wCVUrYQue84dwmbw", "FEnAZaWsQJtRYoag", "RJK5PX9UcOvhPyE1"], "teams": [{"parties": [{"partyID": "1TRT2SKseoe8VLie", "userIDs": ["0LBa36KNzjf005CX", "NGehQ2aTjTDfKFDX", "C7eGL5YhJDWh9YWq"]}, {"partyID": "c0qgV6d9yOfIMLds", "userIDs": ["2DbPcaoMdtRLTmSv", "TkQQgB7exYvmHMxr", "5hPCJJztJBg0tTJg"]}, {"partyID": "46IewOXE2AkCh3QI", "userIDs": ["ZsUf8lGFXcmwTERH", "clOdxIwqejxe18rN", "db8Otq6j1mqUav7k"]}], "userIDs": ["05HAQltnSojV4jT6", "5yclX2FtAz0vJjFI", "YWOaNdsimmkW2miH"]}, {"parties": [{"partyID": "3xRHAKy4QxZkaXZ7", "userIDs": ["vmiEd0JPxVyQpsha", "DwNqTbbFMXAMfVXe", "0GZeMgsRsmH1EQrY"]}, {"partyID": "mkPKTPOlhTtSiZNC", "userIDs": ["xuogFteTHJe4BhSS", "QkQD6WmOt6D7ufFV", "TOhvQpfbBke8aEdd"]}, {"partyID": "36xj6wySoltDxsbz", "userIDs": ["xrlaKEfkoYjY2o6o", "uRW9UtNquwC3Wgum", "rIz4NhGztZpr4U4f"]}], "userIDs": ["wQIiLXgmRasvjO4l", "j8m3XEwP2b4gd3xO", "eii8Jnmssep2xD2N"]}, {"parties": [{"partyID": "Y0kABeGs9yxahld1", "userIDs": ["pO0Gyf5PO3COyMvc", "zgEpzZ3FbtxfhcRC", "7IVYa6iZ5uFRYNn3"]}, {"partyID": "SHiWxF0YbuU5ar5q", "userIDs": ["TLWUCy0Afgc050XI", "ZRW491e94mQjVOOB", "nIWhunElqZUodp3I"]}, {"partyID": "htCSHy1ei1fIrPvf", "userIDs": ["HnRN06EjRwEQlNap", "JRfk4f9Zcw1pEHAy", "NFxcVTKuAQTGh5Bx"]}], "userIDs": ["jWOozGoDtsUuYo5p", "8ED5QZAufwNa8lzf", "jv9oYMXMjlVHY1AH"]}], "ticketIDs": ["wF3vGoav7MK0PcLn", "EkcokKwcQ0baDT9O", "yJ2h23GUS2amU7sy"], "tieTeamsSessionLifetime": true, "type": "lElXdEAOrVSnLocL", "version": 98}' '41s3rH34mB2yPlRp' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "WjmHZAAvKTH8MuqI"}' 'g0CzkguwuJCW7EEF' --login_with_auth "Bearer foo"
session-game-session-generate-code 'B67AODbi9BzupBsF' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'pYc77GtRUcCFeY5g' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "4XgBsbfzqxBPNe8a", "userID": "e1Il4aAtEbu4IjGd"}' 'qthRxTjQ7gkZEY8r' --login_with_auth "Bearer foo"
session-join-game-session 'G0q0Q2Qd2JzRbkF2' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "I03dIjvBbA6bfbYa"}' 'JCJjfk2TUvn95FhO' --login_with_auth "Bearer foo"
session-leave-game-session '7VW3mbDVMDu87t0l' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'dWf7iSGIiKFtWtn4' 'Yr2svKM6pqLGZ0TB' --login_with_auth "Bearer foo"
session-public-game-session-reject 'ujELAUK6mQ5iZgbw' --login_with_auth "Bearer foo"
session-get-session-server-secret 'wm5iGzXtcknrgidK' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "upvXO6aj4hCmTC34", "userIDs": ["jxW4pIDwdqXpmRmu", "t9H9XyWI8bp8fQxR", "uX91uYmtrHJbEGTU"]}, {"partyID": "j7YjERL1rEQG02zc", "userIDs": ["cA8wvLsWUNd6lPKv", "qDejvqklTSvDwuOr", "P9lzpiX0VuFpZum7"]}, {"partyID": "izxe7NPzjOa8E7wY", "userIDs": ["76PxLv9HBEUe89Aw", "Ew1HO4FnKtx4XLKA", "mlDr19uJ3nq6Verz"]}], "proposedTeams": [{"parties": [{"partyID": "VCcI8y3Cz0YqCKUh", "userIDs": ["5RD9vNAp4jinFpnQ", "5xF9wwbvMZyeDeRn", "VfPUa6xVVBcq3wZp"]}, {"partyID": "FIYeAg79HcLJXJ7m", "userIDs": ["pVI6eTYAjdPlCiQQ", "C35cj4KyOVgvnWbf", "RJtsB7cUQZ2QUAxJ"]}, {"partyID": "rINPXppPNO3AfmXc", "userIDs": ["gwC3IN6tvKgLB9Qm", "JIOq9dP5szG71utj", "sQ4CrRb9gUCeVz7f"]}], "userIDs": ["WbZIdhevfZvyV7Ac", "odcZwKjYDdmJOlzw", "m9Su4FnS98QqftSj"]}, {"parties": [{"partyID": "q7sn8yreciPLfkVy", "userIDs": ["yJsbGpO6JgehDJxE", "N7JlZc8LMq1o2jZW", "u4yA3r0u4q1bTHXI"]}, {"partyID": "jfJKyFlM0u1uuoVd", "userIDs": ["n9yVoSlKNchPHNL4", "X3LLaGPGdqLE8Soh", "hhuiTnJarYYkHBDd"]}, {"partyID": "SzBXdxapwhd5IQYB", "userIDs": ["QuxLvPuWYvE3fsNy", "9Z9OhxXvCp9y7fLD", "2qfCXnlUnqxT1WsR"]}], "userIDs": ["NMZcA92hzC7MNa8v", "Ve4MHX6AgMep90Ay", "yUJyAK5PRMRMwdvl"]}, {"parties": [{"partyID": "0hv6g62GxBW2tQF5", "userIDs": ["tkTjgJaMYvNQOsDa", "4bkcgepqtxjbrzte", "e7QLTGAak7Kaol01"]}, {"partyID": "DK97D2xnik42mite", "userIDs": ["R5eQAe1rzmmgqBPR", "md6mO4oI8KDqebm8", "3raNBJ5y7axEkvI4"]}, {"partyID": "oxZEDxGiBnNbn0za", "userIDs": ["f7CaOSlHXrUSA6sM", "JzA5mtqISQ83TTbt", "efXWznDe4LQdXfFB"]}], "userIDs": ["ii2RAMEX5RMjBFVZ", "GYzQqV8d9mDdUIoi", "IJFNxuNOmUSWw18T"]}], "version": 29}' 'IxVWCxdvPL9e4P01' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'vxP8xj1LyEirURER' 'nEMzpImW6sjAHyCK' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "5tNanGBrkzUvck3x"}' --login_with_auth "Bearer foo"
session-public-get-party 'TtmOFMebS4AdlNzw' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"og2IhErkNhNcECWw": {}, "chW6zL9SkbLlrNXn": {}, "GanMazb8jvRWenUR": {}}, "inactiveTimeout": 69, "inviteTimeout": 16, "joinability": "8aJuALEcSqcE15u6", "maxPlayers": 61, "minPlayers": 49, "type": "31DjOsrs3CUYATdq", "version": 28}' 'KcgeqzGbruNB72HH' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"MkjzyBB4UFKiaoV0": {}, "VOem2yqPsMFxKybP": {}, "kbuS6x9cLJ1APnNl": {}}, "inactiveTimeout": 37, "inviteTimeout": 70, "joinability": "a2bRBr27fVMWuAfD", "maxPlayers": 33, "minPlayers": 39, "type": "LMR919IZPKOKiAVQ", "version": 87}' 'XOmqFHLbyXmgCNiX' --login_with_auth "Bearer foo"
session-public-generate-party-code 'H8uenbC5CphgMwee' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'xsIAP5vHLjBJ9iqM' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "cBL4BzhDUjhKPwbw", "userID": "cvQU5kG8bXGFmPAn"}' 'OkDiJq4xQye7HqnV' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "K3YVeOWs9mfVQh3j"}' 'LBtn9pxpE7BYtzB0' --login_with_auth "Bearer foo"
session-public-party-join 'B4CxyQrUpIFvORxT' --login_with_auth "Bearer foo"
session-public-party-leave 'i79DpSjb39ukcR6c' --login_with_auth "Bearer foo"
session-public-party-reject '2E2r3vk3IfAKEbqc' --login_with_auth "Bearer foo"
session-public-party-cancel 'NXSGCCvNowNmdpcJ' 'gF88ySNq4Mj7mulP' --login_with_auth "Bearer foo"
session-public-party-kick '4tQ6R1OqKVOTniBg' 'LsNhdgQ0JWZjNRSz' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"OTqcVNX3ahvxw9gw": {}, "whTnjN6wKZGW4y3f": {}, "0R9s2kndhhZhwAiL": {}}, "configurationName": "sZs4pmLDIQch4IjD", "inactiveTimeout": 33, "inviteTimeout": 96, "joinability": "aT3qZyI0rYsWucAk", "maxPlayers": 100, "members": [{"ID": "sVJbXi7eRZa7WwIc", "PlatformID": "895ImqK6tVsaUq3s", "PlatformUserID": "tUh5J5Z9GiBiSAyl"}, {"ID": "X5cS0IeHpWCugmfO", "PlatformID": "L0QQpxsuD8PGqku5", "PlatformUserID": "9eFJrOXyDYz9vMUO"}, {"ID": "PG0iHDT8QbF7gHPT", "PlatformID": "PQbvLt2NRqJGIKzL", "PlatformUserID": "yH1y72L13Ornyx34"}], "minPlayers": 24, "textChat": true, "type": "NFfM8M0IW4oe8KDg"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"y0xZfAcNg14Ws8TI": {}, "P1LKiFQoLDvumfqr": {}, "gSfnx2h61X9dN1MG": {}}' 'RXBJ6mVV7JS9qjNL' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"wvI8JdiY3RRiLilm": {}, "OGF6dLLIeIVIjMcd": {}, "lbdRXTGIrdNL5gJP": {}}' 'qTAjgqaTHf1ANTJ9' 'Yk997XkGOdC6ItxD' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["T8p4n4XCFkD1AJLC", "wszbZxuHSgDOK8bj", "oF7bL2635KbtZTGJ"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "syhE2BKtyTDSIM7m", "data": {"kmvZ7Cmsh4US8o4j": {}, "fMANPpmZDdMiCxmu": {}, "CCVuFjS1GC1d2b92": {}}, "platforms": [{"name": "B4vEgj3HOmhcWm42", "userID": "8XejRF94NIY9nMrB"}, {"name": "Zo0lNUBDShHD32vv", "userID": "L28FPwTiXfLcxDC9"}, {"name": "Ynd02mECIQhfIhHt", "userID": "ADUQ9zimQTQT95pF"}], "roles": ["JUAJsyAfeKOufV4f", "15NohXu6opxQGRt6", "PqlkL0diRhLC10ih"], "simultaneousPlatform": "2EQfY3XCv4hdOa6F"}' --login_with_auth "Bearer foo"
session-public-delete-player-attributes --login_with_auth "Bearer foo"
session-public-query-my-game-sessions --login_with_auth "Bearer foo"
session-public-query-my-parties --login_with_auth "Bearer foo"
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
echo "1..98"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'session-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 PprofHandler
$PYTHON -m $MODULE 'session-pprof-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'PprofHandler' test.out

#- 4 AllocsHandler
$PYTHON -m $MODULE 'session-allocs-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AllocsHandler' test.out

#- 5 BlockHandler
$PYTHON -m $MODULE 'session-block-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BlockHandler' test.out

#- 6 CmdlineHandler
$PYTHON -m $MODULE 'session-cmdline-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CmdlineHandler' test.out

#- 7 GoroutineHandler
$PYTHON -m $MODULE 'session-goroutine-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GoroutineHandler' test.out

#- 8 HeapHandler
$PYTHON -m $MODULE 'session-heap-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'HeapHandler' test.out

#- 9 MutexHandler
$PYTHON -m $MODULE 'session-mutex-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'MutexHandler' test.out

#- 10 Profile
$PYTHON -m $MODULE 'session-profile' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'Profile' test.out

#- 11 SymbolHandler
$PYTHON -m $MODULE 'session-symbol-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'SymbolHandler' test.out

#- 12 ThreadcreateHandler
$PYTHON -m $MODULE 'session-threadcreate-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ThreadcreateHandler' test.out

#- 13 TraceHandler
$PYTHON -m $MODULE 'session-trace-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'TraceHandler' test.out

#- 14 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'session-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetHealthcheckInfoV1' test.out

#- 15 AdminGetLogConfig
$PYTHON -m $MODULE 'session-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetLogConfig' test.out

#- 16 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'session-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPatchUpdateLogConfig' test.out

#- 17 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetDSMCConfigurationDefault' test.out

#- 18 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListEnvironmentVariables' test.out

#- 19 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminListGlobalConfiguration' test.out

#- 20 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"metricExcludedNamespaces": ["n8Onb1a9gMz0F2UB", "RmMhAbUWmFhdYLWz", "Muv3zkUY0n0BAZkw"], "regionRetryMapping": {"bYkBLyO6A0Fqfhna": ["B3YxKNdOTacCcJfI", "fXshuLUk5WdpxjZx", "5noXPhPUTKbonouc"], "NmzwOZOK56sDkci5": ["rZ8iMlOuksQJCiRF", "iZWwJ7NrTb1XTB9Y", "QzUJ9XlYJ8BzP6EU"], "mUXGM5anIloyj9lh": ["bvuQdW2jwKUckc79", "4ryY91lX8DD4MYXl", "rJ81lHvv9rqvEoM8"]}, "regionURLMapping": ["YmVjAkO3HKsEp6Kl", "qwW4djrexcbHdEto", "QvpV344RctmTozCi"], "testGameMode": "8HeV6jbalHmqBBfi", "testRegionURLMapping": ["7sSF5BoGiTCVsXsy", "gWbjE2opXtdsJQeJ", "1too0qvxphTLEEBG"], "testTargetUserIDs": ["TtZyTjdKNKgYazuj", "smSmylT1YtxIq73a", "Mb48jISd97KORRhx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGlobalConfiguration' test.out

#- 21 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteGlobalConfiguration' test.out

#- 22 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetConfigurationAlertV1' test.out

#- 23 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 92}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateConfigurationAlertV1' test.out

#- 24 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateConfigurationAlertV1' test.out

#- 25 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteConfigurationAlertV1' test.out

#- 26 HandleUploadXboxPFXCertificate
$PYTHON -m $MODULE 'session-handle-upload-xbox-pfx-certificate' \
    'WLWLNfHRD3V15QaG' \
    'tmp.dat' \
    'GL46LuxJF3sbeqWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'HandleUploadXboxPFXCertificate' test.out

#- 27 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 7, "PSNSupportedPlatforms": ["NNNs5kgSZZNUHbIT", "9szApmWJO5vzzXZj", "08a6K1XRVfriSpPF"], "SessionTitle": "nZBJZkDnEiyfa2Lr", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "lvozTt9TsH7A0TuU", "XboxServiceConfigID": "2aL4bPkk11sys6Gd", "XboxSessionTemplateName": "kDcos5uVJ0BJfZ0j", "XboxTitleID": "vA54CSqZFDsO1skR", "localizedSessionName": {"jOU1SMfQVQa6blj9": {}, "Rdd85bdYUumPKVSZ": {}, "Cg3XTc9vQe0dHJfF": {}}}, "PSNBaseUrl": "6KIuvnRCa9JktyBd", "appName": "xkZKrEWFw9GYxjii", "attributes": {"OQAD77ci0vfWVZoR": {}, "RMPi57HyKKz5nyI6": {}, "ulKNKoXa0dgx1Jgj": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "56pda3YhtQxpCYME", "customURLGRPC": "6x21pdX2QSPAd9sx", "deployment": "oLnWGP1PafIjLX8c", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "rGWDK41uMOC0mRvS", "enableSecret": false, "fallbackClaimKeys": ["VQ4aebjfgGu472oW", "JlfglLM4xjfkNL4l", "U6jaGfsD1cfswmeF"], "immutableStorage": true, "inactiveTimeout": 44, "inviteTimeout": 19, "joinability": "tDtetoQVFL8LNW11", "leaderElectionGracePeriod": 45, "manualRejoin": true, "maxActiveSessions": 39, "maxPlayers": 92, "minPlayers": 31, "name": "FZ0LpupEi5DbkVs3", "persistent": true, "preferredClaimKeys": ["vkCPfKofwXOIZZQA", "Jza84lKKmVOaTS6x", "BbNrSUAW2ak7ISDr"], "requestedRegions": ["BVg6NuDZvPb1kuUf", "NfUDe4g7q6PHEaqb", "zHvDDl1jiLw3XMGB"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "Exlkmc4xYiLjLyZr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateConfigurationTemplateV1' test.out

#- 28 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetAllConfigurationTemplatesV1' test.out

#- 29 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'Xr9Bhtzn8jAdTn6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetConfigurationTemplateV1' test.out

#- 30 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 56, "PSNSupportedPlatforms": ["eRcpUvlrw2MwC1uu", "okpaIjL0Vxe5n9Lx", "3QcFo9gxOgvDc7xM"], "SessionTitle": "rRKvw8ISP2WKmCRR", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "xlalCHtWlKxLpS8f", "XboxServiceConfigID": "LWoQ5nuJhatQPxR7", "XboxSessionTemplateName": "dvBVC5zgOKLTDmHe", "XboxTitleID": "8c1eJ9sde7Ryt4ud", "localizedSessionName": {"Iv22M18uux9xBomQ": {}, "FPFWy5cwNPI6aFo0": {}, "MVwDZCIXFNEL3uWV": {}}}, "PSNBaseUrl": "Rz3V7YbJM3bNLWHA", "appName": "bCZixe2cQ6O30lpz", "attributes": {"cBQMAEcNcJqrKxnM": {}, "zSYoc4ZjiMY4H34B": {}, "6wVd8ipcKDwQeUWt": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "CC2UH6jzMO3AfmOS", "customURLGRPC": "5mQNyRPZFPNP56l1", "deployment": "AT6OLKmZhCZxxPPd", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "OtEuWBSO2jJepUnE", "enableSecret": true, "fallbackClaimKeys": ["6GEDo08yq5E5HleL", "oog4me2NBFp62xlX", "vVcJerTPW02PWsHi"], "immutableStorage": true, "inactiveTimeout": 55, "inviteTimeout": 37, "joinability": "SYAFLqp8PF5hCcou", "leaderElectionGracePeriod": 21, "manualRejoin": false, "maxActiveSessions": 60, "maxPlayers": 27, "minPlayers": 19, "name": "bz4ys7j6lxuU3u2H", "persistent": true, "preferredClaimKeys": ["LarjaLOKnX51yAB8", "Pa3uNGKhaLlJzJMS", "nJIIgsAVmaGYxUX1"], "requestedRegions": ["B9oVuzG2CnYX2YBF", "2g7TVtzYEHUodh3i", "UfBthbepUCTWiZ1u"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "LQruAuYyJLYGqMv8"}' \
    '24ouSgkpK70uJmUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateConfigurationTemplateV1' test.out

#- 31 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '0uzElixc023dIvDi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteConfigurationTemplateV1' test.out

#- 32 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'A0tQWlHwBcTtztx3' \
    'VAl6tXFbnATCzUOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetMemberActiveSession' test.out

#- 33 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "zVcy9k3ie64Vnwa0"}' \
    'ClGQJultJe32AiwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminReconcileMaxActiveSession' test.out

#- 34 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetDSMCConfiguration' test.out

#- 35 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminSyncDSMCConfiguration' test.out

#- 36 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryGameSessions' test.out

#- 37 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"adEoIVmprwPsa9YD": {}, "92CX0rITajpwHITG": {}, "eHTnqRbzBB9ZFgJb": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryGameSessionsByAttributes' test.out

#- 38 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["Q3Fj1umx4ItzkMJ7", "cudf4r916GPrhn2e", "tVIQvRkQJAtDUH9t"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteBulkGameSessions' test.out

#- 39 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'Q980ywmg1pWpWit1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminSetDSReady' test.out

#- 40 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'QC7FKe0fnHUlmU1u' \
    'nGKM0tgfeWy47bbw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminKickGameSessionMember' test.out

#- 41 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'MI4gGmvK9gW596Fw' \
    'BNrFXt3TAuKBwBcD' \
    '12ae6r3hHwya4Npd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUpdateGameSessionMember' test.out

#- 42 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetListNativeSession' test.out

#- 43 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminQueryParties' test.out

#- 44 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlatformCredentials' test.out

#- 45 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "Ozg3hr6ucHf7dbh2", "clientSecret": "iKNUl0qJqzoKMRMG", "scope": "541PAiNjULsx4SnK"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminUpdatePlatformCredentials' test.out

#- 46 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlatformCredentials' test.out

#- 47 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetRecentPlayer' test.out

#- 48 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetRecentTeamPlayer' test.out

#- 49 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'NXLMUaDSwwQlnNRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminReadSessionStorage' test.out

#- 50 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'JHBSB4fZWEFIZs28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteUserSessionStorage' test.out

#- 51 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'Ff1kZp1Zktx3N7WN' \
    'MYIfcDKbLu8pnK34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminReadUserSessionStorage' test.out

#- 52 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminQueryPlayerAttributes' test.out

#- 53 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'oA1keYXJvtggDdXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerAttributes' test.out

#- 54 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'bdjMBahFZZGMTcqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminSyncNativeSession' test.out

#- 55 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "WrIprOv0BJ9Sgl7H", "attributes": {"1sdH2RIJz1eI7Q5p": {}, "u9PutLf6IrvZoBGQ": {}, "bO4S3rURGWUzPAE6": {}}, "autoJoin": false, "backfillTicketID": "2fkqYJoF2FI3vyyq", "clientVersion": "Rzc20O7FdsJP1G9t", "configurationName": "yBTfERXdvgD1Qf7O", "customURLGRPC": "t2DkUt3yexZBRvxY", "deployment": "nEBhXtAVxCd3meTr", "dsSource": "T7cF9oVCh89wNOkK", "fallbackClaimKeys": ["YssVejcL3kR3hCGN", "gaJmuALlMQl9RLrt", "hbfp0VgweLlT2sY3"], "inactiveTimeout": 92, "inviteTimeout": 38, "joinability": "IpGcToWgFvdRhG9N", "matchPool": "wV3zDuqVlVTypcYP", "maxPlayers": 74, "minPlayers": 13, "preferredClaimKeys": ["8IxrSZuxWl0Je4fJ", "IyFAm3DQht4JwnPS", "2urJqerobWMZGVL5"], "requestedRegions": ["KLTxahWlS6XdBaKS", "LCgOOPXM6XTUh2dJ", "90yqHDNacl4F9G6D"], "serverName": "l5TFwBY6HKXAblkT", "storage": {"leader": {"8VGgSH8MGZGwiVj7": {}, "eDTaka9ABfX1IByP": {}, "EOuPhGspRi3bhPQv": {}}}, "teams": [{"parties": [{"partyID": "BBJI5JxytpcubN4A", "userIDs": ["UUPFPscZsXeJOD4D", "MtqfIGiGJovgWSRx", "Z8N4UQ2fg3V1o2x0"]}, {"partyID": "hL5DuBDqMyIAzWze", "userIDs": ["94MEdJFAy2JTllJk", "RGB8jqJEd6eqqsBV", "yONV0JRtozI0jpli"]}, {"partyID": "CFQ6WgJpGPigdc5V", "userIDs": ["yC4qvWjVac1cQvSx", "gTNIUzxDgBlIbuzm", "7DzJ20NFRJIhFXR2"]}], "userIDs": ["dYprPmbpuptECGd5", "cdXC2Sesc6y68whN", "BYl9iCqfW6rqGOQn"]}, {"parties": [{"partyID": "y4ij4ysYPonb59gQ", "userIDs": ["ffkNOmubxEJr2qEA", "uJbpZSrcbc4LWfKa", "Y5c1tP5TDuI5f6m4"]}, {"partyID": "KC07CnsZe32hqEcB", "userIDs": ["1ExYMBb3ckvoaJYd", "MqGegcg3eRvBZXN3", "cjIXmFWRJnj8xN7H"]}, {"partyID": "DPTUEDPN1Kb4UTPW", "userIDs": ["DXTSb55g8LSTs7Nf", "95lGlPrf6obIdnI6", "Ag7eUYcYJ4QzXCmq"]}], "userIDs": ["r6gmPGaHP5SVPvRL", "iDi0mNHb6Lx8eq8S", "GNwEQO8dYXvBSYvJ"]}, {"parties": [{"partyID": "Bwb6CjZUMRf2VJet", "userIDs": ["Wsokvx3BHuTEczr9", "KjQ3ttz8MTBt1xk9", "IyssSA8nP5PQjpzk"]}, {"partyID": "2Tb7iYdmNZWosrsV", "userIDs": ["BPZ64j0HUONscofw", "YLQcDvkaEIIPoJT8", "3zEGXmVBZLyrH9J7"]}, {"partyID": "BoysmaORLkP5hc2F", "userIDs": ["h04JTsqDTynCewqJ", "ligLlRxOelKykICR", "xF6HtlER2txs4qrN"]}], "userIDs": ["ARATn6KXOutlYBbL", "hL8KXx25FZfQIodV", "BqQsBpCJBIXLGYcw"]}], "textChat": true, "ticketIDs": ["RK6UKk5ozrXA4HZH", "Nyq9odanhR1Zrm3t", "hUvV87yfkycLSVdl"], "tieTeamsSessionLifetime": false, "type": "gfNu0rqXUOyToLPI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'CreateGameSession' test.out

#- 56 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"REGIKlJt3EP9kKwk": {}, "ENQ8VOHGwbADMfuO": {}, "mh0lciRhVZ2DeoOD": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryGameSessionsByAttributes' test.out

#- 57 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "XMzLSrzoiBnYi5UW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicSessionJoinCode' test.out

#- 58 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    's3tYlYeMoCimJySo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGameSessionByPodName' test.out

#- 59 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'cRvUWDOrFZKPNoN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetGameSession' test.out

#- 60 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"AWtLK9TFgi9j2XMh": {}, "9WpifqjNjLOtNQts": {}, "2yxf6MLZJ2jZfZbp": {}}, "backfillTicketID": "TJezzriCDWXT59SR", "clientVersion": "u0YqUxKDc84OMIzv", "deployment": "TScdbKBsAyJMz4IL", "fallbackClaimKeys": ["NDvhB4Eoes9a6XaJ", "eRbzTPwD3jxF7vxR", "UY0ilrNoFT98SgtJ"], "inactiveTimeout": 6, "inviteTimeout": 45, "joinability": "4Z5f8nfaKqdZFLbZ", "matchPool": "EHxsDxeR6d7r1SQw", "maxPlayers": 52, "minPlayers": 49, "preferredClaimKeys": ["JfMpPrSqYypRUnq5", "o4ETeCUYG9ccTt7W", "xw8OQ13t3uTw6zQu"], "requestedRegions": ["oZcXQpoTOxe8y1jo", "rNsg9ZKYCKoISyXt", "HzoWGdYohxMp3uOQ"], "teams": [{"parties": [{"partyID": "IybqWfG9BJ6FVKlb", "userIDs": ["YHtbPtaxvagSlpGg", "VTF6VeDAPOGBwwey", "FfXEOEAEtbag82Kg"]}, {"partyID": "BgyCd5vjkfz3eR4D", "userIDs": ["tNp129hzBw3xLUcC", "Et0DzmkJq1sml5bY", "t76BNsi4giR9434W"]}, {"partyID": "pKKdzxoufCNlFoOc", "userIDs": ["WQQy4bjmQeEweoBH", "TdwAk7ZQnbqY1cQw", "VEtAr5kKKAo9MM2C"]}], "userIDs": ["qm84jVi9kIpqgrzp", "UkNOBWydXV0Fi02a", "Fr8CDapjwNOl4k8r"]}, {"parties": [{"partyID": "VNrm8drv8QD2JOe2", "userIDs": ["Ntz7EFvowPgIGuet", "xFMqXCQMAqQ2ZRGz", "NtrThFa9XU8moslu"]}, {"partyID": "iHZJ7O8sAQ32wj9u", "userIDs": ["aDzsr9xYiWRuuzQJ", "iLc1eI9w3JEhxPGb", "Ek7s7gw07FlounC3"]}, {"partyID": "vJKBC7SwgoViPeIB", "userIDs": ["4Ehy0Y5aSJVDginx", "AM77eY9C14FbfiI2", "NPvl1kCY5bEokxXx"]}], "userIDs": ["kWZbjf7GZxaossQm", "jo69wohJFyTNk5FG", "UPhR4LEZvz3EjFR7"]}, {"parties": [{"partyID": "996Ug5m4axDV5uTc", "userIDs": ["YsoahUrELQ1btjJO", "qQMgZWAU6E92nHJz", "vw7tnYtGfv0EJyjB"]}, {"partyID": "u4EzwRjD7jmQJeFP", "userIDs": ["ghqamSc5y0X48eT7", "Mluexk87b9Z5BTsE", "A3EdmW8saabP4xRo"]}, {"partyID": "wfNojzPXI2v0prR3", "userIDs": ["OEey0MkZwS6TYwNN", "3UYhic03qGEg5fNz", "BVrjo3g8CfRwtyl1"]}], "userIDs": ["HeT7VEPgG40QyXzs", "Ozgck078IghoQBp2", "mWAOYksczxBS0OBC"]}], "ticketIDs": ["a2vWadLmQtYKmEMz", "icbuL2S3RiW8dLTC", "BfGUdVEdvdQL7sVw"], "tieTeamsSessionLifetime": false, "type": "fwkuVykH4RpfmjIX", "version": 65}' \
    'H46fRTSZoDdT0fef' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGameSession' test.out

#- 61 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'o74eg3Nt2c0r4GqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameSession' test.out

#- 62 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"0NHglOVuNZ9LzNeJ": {}, "nBurh54CWbYb0Peb": {}, "yt8b4DGscjwrizsF": {}}, "backfillTicketID": "UgYwbaLvqvQ2NbmD", "clientVersion": "ITuymTBjn3d2sFzM", "deployment": "S3QaVjZF7Ax6115K", "fallbackClaimKeys": ["g9U8vrQJXQxoIbVi", "2CLEk277Ivjj1A64", "7XQ3koaAfZIim0sF"], "inactiveTimeout": 86, "inviteTimeout": 1, "joinability": "m1YN27bojDVaZLpx", "matchPool": "4kEWYkO6KrKUMhJr", "maxPlayers": 55, "minPlayers": 23, "preferredClaimKeys": ["SBh61hmWKSSrF35a", "nDGvur19V18oIrUK", "XttgAI2QdWJFLmoP"], "requestedRegions": ["Egd8EMspOs8nkic9", "gj5vyUMAAmIHYbsx", "G5N066FXb88SbLOa"], "teams": [{"parties": [{"partyID": "21DiSFsm0XXQJWsz", "userIDs": ["vTQEuALzDNp1SZ58", "aDllwzTRHak1MXxj", "7Esrg7900nml5Bid"]}, {"partyID": "sK9dCEzhVnOv0PQb", "userIDs": ["VIaKiHfoeorY7A1o", "tGFyv2SMjbEr50qG", "dCZIc6EFqBKxbS7Q"]}, {"partyID": "2OgRucL1jwRXzfjD", "userIDs": ["ZZBmOau6syme06c6", "SKLc2mEC3IXl5XCb", "kOfHaGr5kdazlypv"]}], "userIDs": ["t6lSLfU7HByGXPMq", "xj4hBgVY3YAxZLKb", "cOdyjqf6Q4oiwoJc"]}, {"parties": [{"partyID": "aRMEb15LBlTVufc5", "userIDs": ["ZyODR2NVyn4PRqf3", "eRbZqBAoKGcVCdMi", "SNV4qBrt1kcLmRv6"]}, {"partyID": "EJtl5xWnsb8oWq94", "userIDs": ["RImNWVIJnhhwFDV1", "VitaomvWTzdsW4N7", "0wYS4Kj7Yi2VvoQN"]}, {"partyID": "W8Yc481dYdvGxJAM", "userIDs": ["DRA1LF7jdWlekFwO", "94VBCV9qJhWva2FP", "BujX0geYCpGJM4sq"]}], "userIDs": ["sPNJMiZXXOFwmGWA", "vNF0Z0GkwxUNYyNw", "GiKrknH0Y5mrQgLC"]}, {"parties": [{"partyID": "6D2qsFiQHglUQMZi", "userIDs": ["5WjMZfOadpgegCUj", "Tdi1Ehr8OtqpNJ9R", "8TuNy4ejmVA3vMCs"]}, {"partyID": "GyPd12B8QNUz0hFF", "userIDs": ["NbH6j2W4roZM2UKA", "XEEsL5D0oiFchQnV", "eq3g2AB2WIRUQmau"]}, {"partyID": "IY5HXCZ0W4XmWP0H", "userIDs": ["zSdiylLhVYszm8xY", "33OQbumu2QHLyZNu", "ysyM4OfCzdQCXMAW"]}], "userIDs": ["nf87YPNOe9Eevf1f", "hMg1E2k7QLFrVgtX", "7y0fPOieDCow2zXy"]}], "ticketIDs": ["FFVpM87yqEwEacQM", "TlqN4LKkxJ5v3SBa", "fnKNiMPbFkFGA85W"], "tieTeamsSessionLifetime": false, "type": "kqgS2B37wwoPYOHi", "version": 70}' \
    'ffYRtIvQaKyevWYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PatchUpdateGameSession' test.out

#- 63 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "ZjK6J29v8MpBSpo3"}' \
    'AKRmnJkzJHAckUyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateGameSessionBackfillTicketID' test.out

#- 64 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'ksYQfDm0RNFwiz70' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GameSessionGenerateCode' test.out

#- 65 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'tRVLMlHi8i9gOVqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicRevokeGameSessionCode' test.out

#- 66 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "jUWrgEsWDtaKzn8d", "userID": "ZwnnGeZsZVgbPzPF"}' \
    'brOMZMgWkFN7Tpkx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionInvite' test.out

#- 67 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '6GcfyOg6ZUrrp9ub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'JoinGameSession' test.out

#- 68 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "g9mndW2JKmQafUs2"}' \
    'bxYztOEyVbKIf1Zb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPromoteGameSessionLeader' test.out

#- 69 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'zgUwd8DHoCQykmXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'LeaveGameSession' test.out

#- 70 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'YmkRlg7gYs6unPYQ' \
    '9jNQN1di1ldhOh6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicKickGameSessionMember' test.out

#- 71 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'vjnYuV7NfC4A2ODi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionReject' test.out

#- 72 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'Zhbfb8QqCyK1XH9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetSessionServerSecret' test.out

#- 73 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "6vl5eFdFfgK46GjC", "userIDs": ["WaP8huTmnq3FGQn3", "Ahu5wxq6oJq4mChm", "QHQhO9IKBXDFQfXF"]}, {"partyID": "D58sG6uDhFYlrzJB", "userIDs": ["YSeMuJfQecutjS02", "9BiJWOG1m7MKclr5", "igjNTVItrH2X78hx"]}, {"partyID": "JgaVfw5Vnyq8OzTE", "userIDs": ["89WDNoMcOmbfJrCJ", "QIj1haAosKglqaCX", "E9ytpIO8btO3OwNE"]}], "proposedTeams": [{"parties": [{"partyID": "GSW5TaW4to7QCY2N", "userIDs": ["GGvi9kg3rMIzNmhJ", "TNQjKlwjfJ3TJ2xV", "pge70WsLfgbZieRv"]}, {"partyID": "JI5sT9DH3DfLCv8q", "userIDs": ["4Thmq09bBgPAYxrB", "E9jlnTgtgW33wDwD", "9RKvQX4yFQFdrRoM"]}, {"partyID": "6FoqCYw7AlxO6qdF", "userIDs": ["pc71sSck3ggZWJlS", "lCQMDji329PfVrvM", "EPtpsSNcpK1QkB2S"]}], "userIDs": ["y8Ww79LVeVskqeUB", "7RSayqGFguhh3bva", "dRthdbVApebRA09r"]}, {"parties": [{"partyID": "W8i8krFWJhe03coR", "userIDs": ["Fok5d3AyGrZO8Guo", "XNSoVEBG7VbBPUWi", "pz9C05YabFX4FCK5"]}, {"partyID": "ucTFsAFzaO3yJpA3", "userIDs": ["KMxBlrRytER1qdTe", "lFAadM9y66Drf4SS", "GGt3MiBKohow3kKo"]}, {"partyID": "aP1K4CDuH1mMIfOC", "userIDs": ["DyVAHrHncR5dShqi", "BUI9esSsXegSEhrP", "pK2q8kxR4BuEksS2"]}], "userIDs": ["A9VOA8H9VeHv0L2A", "cm960EYQEuGJVl8x", "s1WId9WlalqshF9R"]}, {"parties": [{"partyID": "h2o7GCQGPCxwEdky", "userIDs": ["uT3MgzReRq0112IS", "ArROIodcmM6v2AEo", "zWWaYvBLE46bpuJi"]}, {"partyID": "p8JyxJ39vrtuWWrq", "userIDs": ["TZbSqBSKp8AmgwhY", "zk33J34fiTxK63OH", "pnUCGBVfpctNFUsU"]}, {"partyID": "Q6ZXQcb2o1J5euLA", "userIDs": ["bBgejqc0apxqZ209", "BySn8aUaGlAyvIsl", "t7N1qcxKs4nlf1Mf"]}], "userIDs": ["qUZXkjHvcUOTlxNf", "09pefgFIiJssShBK", "sQjXvfQgQDt6ce8N"]}], "version": 61}' \
    'VuY6rsZyo6CBRRno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AppendTeamGameSession' test.out

#- 74 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'OikIxXKKIR6kPmsw' \
    'm5TCAU1cKApdJDnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGameSessionCancel' test.out

#- 75 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "73GLmSZns5owBhoU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoinCode' test.out

#- 76 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'g4LsGP6KLPXkvUv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetParty' test.out

#- 77 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"XiXaBzsmaxjTZPlL": {}, "itytGka7Kv5TacQK": {}, "F4OlRGdmXxETLEQr": {}}, "inactiveTimeout": 36, "inviteTimeout": 50, "joinability": "3KCAV9alq3hK1G4k", "maxPlayers": 74, "minPlayers": 61, "type": "ooSNNUZuiynZ64Iw", "version": 27}' \
    'gTTLS2FgarY903IN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateParty' test.out

#- 78 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"GIyEfRBEj7qms9AG": {}, "QExPhgr9gGfC0Gjv": {}, "pgJfuBs1Vpqn47GV": {}}, "inactiveTimeout": 14, "inviteTimeout": 25, "joinability": "hTH2wToOnq9U5lyW", "maxPlayers": 51, "minPlayers": 20, "type": "Xwt3wmRTrDCjhnKv", "version": 38}' \
    'brmgjhWK0x0ZidAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicPatchUpdateParty' test.out

#- 79 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '1CU1eD1La16Bw3Jb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGeneratePartyCode' test.out

#- 80 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'UnUDh5yGjjv4Mwrv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicRevokePartyCode' test.out

#- 81 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "2vancmR6Z7rb21A2", "userID": "E9pX0BWCMqPsRk5h"}' \
    'tdM5T3fDSrSHrkoq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyInvite' test.out

#- 82 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "v2mM6soMaTvQq2a9"}' \
    'YdFNtRVSO0js0hG9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPromotePartyLeader' test.out

#- 83 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'xmSnzd7zgUxAogcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyJoin' test.out

#- 84 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'GkXk17QPkJHRhmLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyLeave' test.out

#- 85 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'QuQVFSKiXl8G2uf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyReject' test.out

#- 86 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'E8EajXLSAS8MKMax' \
    'Q1QyJCpKedhuzI7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyCancel' test.out

#- 87 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '9NCKKXu1bqI2M5Pm' \
    'XfKnQ7BYGjCUDMOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyKick' test.out

#- 88 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"bmoRvWnfmGFy0eUo": {}, "OBd90h9EDqSTOfoN": {}, "ewWjwMWDKEt6JhbJ": {}}, "configurationName": "0fwTDaq6b5RpMwhW", "inactiveTimeout": 85, "inviteTimeout": 68, "joinability": "tndriXU9loOxpmEu", "maxPlayers": 46, "members": [{"ID": "YeUT5P0nx8TqSZdZ", "PlatformID": "5C8mFI9TnvzEqBNM", "PlatformUserID": "F9CZvPxT5zbreMc9"}, {"ID": "fBoU3RHNDFjLKFre", "PlatformID": "py56eW1kmb15QeIQ", "PlatformUserID": "F51c4MqJzDSvELgB"}, {"ID": "e6dboSdhkBzAzPkt", "PlatformID": "1efGJeJaxyHYutgX", "PlatformUserID": "ucx85vHA009FAb21"}], "minPlayers": 20, "textChat": true, "type": "xeWXk80y9uxgVLGg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicCreateParty' test.out

#- 89 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicGetRecentPlayer' test.out

#- 90 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicGetRecentTeamPlayer' test.out

#- 91 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"K8aVSCN6oCETQ8gI": {}, "DRdD2wwMXwKVXGPh": {}, "EJsc7rZpxaPHc9r8": {}}' \
    'eToFmkHJ6BPOKFLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicUpdateInsertSessionStorageLeader' test.out

#- 92 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"IwKssw647YwDudnG": {}, "RufOUGfMjTU226l0": {}, "7jPlcYaqYM7YfBmh": {}}' \
    'jI9Y28qVceS9UX48' \
    'dKPCFUIeyYEymNXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicUpdateInsertSessionStorage' test.out

#- 93 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["NX6TGh4UdEweeBsJ", "EvBbAvCmlh6Z1oz9", "BaixUUvmzbajE2gj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 94 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicGetPlayerAttributes' test.out

#- 95 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "P6a280S5RNB5dVCs", "data": {"B7xL4axSPgPCiwLx": {}, "CFLDixZwVtt3RVTl": {}, "0tR00oQgcHdGGK3x": {}}, "platforms": [{"name": "76U1EIcklttmrpgF", "userID": "5szl0sMY8es36r1F"}, {"name": "gR70eNLHkVrEFd8x", "userID": "ArWJuCAIfNBSHgpF"}, {"name": "Nw9K9pmAIc6VSfE9", "userID": "nbE2PMv12ZSRJkuj"}], "roles": ["xbCu1HFaj6Vxs3Gu", "A4S1dS7H7yIS7b5T", "SDRIoMg7Dc5APzfz"], "simultaneousPlatform": "XDELJFaIaEMW5bhJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicStorePlayerAttributes' test.out

#- 96 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicDeletePlayerAttributes' test.out

#- 97 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryMyGameSessions' test.out

#- 98 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
