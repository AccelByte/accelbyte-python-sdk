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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 11, "PSNSupportedPlatforms": ["qUI06UpOXGSLmCVu", "HOPlLlkvR8sKgnuR", "kgghGoYupD391C2q"], "SessionTitle": "tPYokahFjkQsfCaT", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "t1d67FXGk2s9Q0mP", "XboxServiceConfigID": "Vo3twu0MesTCf9x4", "XboxSessionTemplateName": "rt69lna7qxNeIxPz", "XboxTitleID": "6MbwL6IY69z1UaLq", "localizedSessionName": {"YSYWytLPziZMdjxc": {}, "BZufQxGiHPllG4cY": {}, "EzfTD1ZBm3MqHcUm": {}}}, "PSNBaseUrl": "LZZbSqb8RwNmn9Hr", "appName": "NQy4uZAAiE0mit9R", "attributes": {"GCCHYzUOcEdscKHP": {}, "EqgA8yu7Vk6Jt4Ym": {}, "os9Jcdos4fYcTVU6": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "vCkGZ5dAgqxpBFma", "customURLGRPC": "Loxozr6wfNPX2bOI", "deployment": "tRMvqtlB2jJCSQT2", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "YGu0rdlgdWyOtXi3", "enableSecret": false, "fallbackClaimKeys": ["xkT1X68cmDc3fxU8", "MyKrQpM4hkkK6KKX", "NB3Gv0IqmF51Tkhj"], "grpcSessionConfig": {"appName": "Ynaq6foWvXa3bMrX", "customURL": "sDr6kILsSSyDdmyk", "functionFlag": 26}, "immutableStorage": false, "inactiveTimeout": 17, "inviteTimeout": 84, "joinability": "l35MXbN9oCMNqq98", "leaderElectionGracePeriod": 92, "manualRejoin": false, "maxActiveSessions": 19, "maxPlayers": 10, "minPlayers": 93, "name": "4IxjUkl535X3ateE", "persistent": true, "preferredClaimKeys": ["DpADz1x3poD3Qgb3", "boLQQ1MzH7Qm8bwb", "mXgdAPh1EThG96gA"], "requestedRegions": ["FKK2WDgCcxvONZm3", "EeERmDnyeFoF7VSZ", "6pf3vneSD2Tb3g7m"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "UhAEtrmjqU6YE3p4"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 33, "PSNSupportedPlatforms": ["1GXlvPG6bFYReVHQ", "ipcCx9Zw5D2L7vIY", "hGGSyEW4ZJJ42d3P"], "SessionTitle": "BddN8S48l9lyNApf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "xqMrj3oZk03QXcKM", "XboxServiceConfigID": "DYDDxHSZjtqXyJ58", "XboxSessionTemplateName": "f7Gc26SaiGVkydwY", "XboxTitleID": "WQG26yUZNmTBcvrb", "localizedSessionName": {"YCwZtxFHyPLtI8il": {}, "byDPUIj88cekdqCt": {}, "81P1ktfIovmv9gsR": {}}}, "PSNBaseUrl": "5cJcHm3SZLxoRDFu", "appName": "uuySj29a9LJE8HoR", "attributes": {"S1X2PFAAMwzHPxB1": {}, "UskYs4Yw20DOqOBS": {}, "C2DKHRuPMMWH8Yb3": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "UBJCjfcnLRfxeCSz", "customURLGRPC": "9WEi8KlloeH0JT1y", "deployment": "duat2vQR3biBfsu4", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "4EXsXzOXQAk4mqrx", "enableSecret": true, "fallbackClaimKeys": ["t4SqYUTLDx9gIiDa", "ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND"], "grpcSessionConfig": {"appName": "UWehwH3q31A806DJ", "customURL": "gas4b6z3LNUj7fdg", "functionFlag": 77}, "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 64, "joinability": "84Z8YYk6QEgJjBbE", "leaderElectionGracePeriod": 60, "manualRejoin": false, "maxActiveSessions": 77, "maxPlayers": 82, "minPlayers": 7, "name": "f3n0hEoRCAcf80zf", "persistent": true, "preferredClaimKeys": ["8mJrYq6hRkloqxM3", "gpwxcfMy9XzjjI5Y", "bsKoADkzJEN2VHzi"], "requestedRegions": ["h3bit0VWn3CO39PX", "DNxtXgeO3FgkXhjD", "zaQY3snn2ZkP7cFd"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "Y9eKa699bRVhyaKw"}' 'wrAP2aMlu7WtjCto' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'YetOO847g8OudOfj' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'nCuHZ3c46IjGa23Y' 'vYmmDg7VYPXIuvUY' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "TZBRujIUE1Tq5jyA"}' 'ZvkRCMNFIurjh2im' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"db4rbkXj0ZwsVC0g": {}, "L97ZVJSPqJiwv1ql": {}, "YB1RSKs6gQxC3Gb7": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["S0o4zGYY7KQI1AeF", "gPqaOkvo1aolB4lk", "KB4EYOkQ1jMD3cym"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' 'RFOn0jJLHC9LxhvN' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'XTwGBCtohLtl9Zuh' 'ytm5UDrT6QXCs5SP' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'BbRPZTF6oQAXVG7t' 'nsZg5QgXjvyGJPN4' 'eXbJE5Vs2GcyomQo' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["IXimBJehyxlNsjUg", "xBkF6wFPoJeQedio", "gEhhM2rIizGdKvOP"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'dq5xrgxSmy1DN9LF' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "kYW5DQyj4bj5Ro2o", "clientSecret": "gaKt2ujQSa3Zdb65", "scope": "UXmy0Zp6iIaTIKUk"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'kk9QM0NBMA9ORxpz' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'wLR2AK6eXUGPJsw1' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'fiP80G9Pclxcft2u' 'lIJzPyrVEiOG4Ucq' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'suGKHhMRWLVd3Dlh' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'LuIpomM8sm1MiaI1' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "mX2tJoARtdbBe7ud", "attributes": {"sMrok0WvGYYnx4V7": {}, "09xbnGezKsDwG2om": {}, "OR2nvYI9TVqJdvzc": {}}, "autoJoin": true, "backfillTicketID": "bfUpaXp5JMl5LL4b", "clientVersion": "TxBmZjdrrIxsB0NR", "configurationName": "sB1fPqqRRulpqpym", "customURLGRPC": "DkQhtrHWwRVnwVBO", "deployment": "qOHi8pWGd1juYhiq", "dsSource": "jRJOqB5F93zFQbJn", "fallbackClaimKeys": ["dUDpdONneAczbBdH", "b2slt71B1SmZp2JZ", "p50CnPb71ORYcmQb"], "inactiveTimeout": 94, "inviteTimeout": 55, "joinability": "U5JX8ccLjMXJRk0e", "matchPool": "aKQDOJvrTefglSs6", "maxPlayers": 13, "minPlayers": 88, "preferredClaimKeys": ["iY9u02aCNYIWekp1", "8lOC3mNqF7Bl0Lcg", "hVHfPEspxwhRON0b"], "requestedRegions": ["c1eMbEIjowLqc3ec", "jXJbZDKKoxLE1Y3D", "ymtj3giPg4x4yiPX"], "serverName": "6ues1Hhhkg1yLVbL", "storage": {"leader": {"FzHEP8cM4NTwr0KH": {}, "aAsmTej52WKi6tAr": {}, "AURt9plCSVq8PdH6": {}}}, "teams": [{"parties": [{"partyID": "hJPUAc0RVwXgAgnt", "userIDs": ["LMCuaXBWQi6BqPg4", "xr0lCancUZGCHsZY", "oLfR1KtOv7Zy0b65"]}, {"partyID": "uvuKNuy0ytZQ7M6N", "userIDs": ["zy1adnSKOLFKx1dX", "4LuWJu3pDMUAeeZ9", "7SBROPYuG6XqP6oo"]}, {"partyID": "7G73zdxTgOfnwIdl", "userIDs": ["Na29fDLh741IslKH", "zGlLKWUtDQs61OQA", "oxyyQpRWCiiPDGQh"]}], "teamID": "NPEwiJCf2XJVrlzq", "userIDs": ["Qls1ozhLVA3kE8jK", "vgatOEBM70TdlNBJ", "YOmpu1VCarzBsV6x"]}, {"parties": [{"partyID": "nZ5Jrzzjrcaug6CW", "userIDs": ["VG8SWP3glU6muswV", "JnNnN7kAa7j0riFc", "5HTHQIoVsGo7dwV9"]}, {"partyID": "DBqFKHQkETJyTlUr", "userIDs": ["wDTnoujQD4IEiH9Z", "5qXn3aoRtlqOECoh", "ViHA5CzgFSy8X1A3"]}, {"partyID": "PrIfapq5AAeMe4L3", "userIDs": ["mDWORBVXTIIJM9Xs", "YIIZxiXNMR9BgaWc", "FX3SUBhyoTsMWPAx"]}], "teamID": "UMkawaGpAyrIwMif", "userIDs": ["3BOdkocVTd4BxqGW", "V6mTJ0sQs6XNbjvq", "hnUVLWu8olKdxL6o"]}, {"parties": [{"partyID": "zRmDD0jJvlfV5Oem", "userIDs": ["PYdYT7DROCjtuzFM", "bAG9YI89hmguB8FO", "TjMLo4b9rIzqYkEp"]}, {"partyID": "styVTBcrM8rG0rH0", "userIDs": ["zcswwVeMK6MbGIVI", "u8vvwLc7KY3uVoJX", "TIMtpgkieDyF97lG"]}, {"partyID": "dMiHKxbWCYzo8yO2", "userIDs": ["KTK9tmmOnYnOpas6", "ghP1y4Zi7s7QBlk4", "4Z44B1GZgKg4uKxa"]}], "teamID": "CgcGLuC3brWdTYCf", "userIDs": ["HkIySok5DiXZtLW8", "7rGysryod3dNQrms", "ApRA6HX3RwrKt2ec"]}], "textChat": false, "ticketIDs": ["V38nEhoXmM2W7l6j", "HMA2rG3nakopAywe", "lu01nryEJ0NqoTow"], "tieTeamsSessionLifetime": true, "type": "9Sfo95HgXqKhTPkw"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"fLM9uSybRzWek2gZ": {}, "vRrvr0n9d9lvccKM": {}, "LhrTrcBE2ItBS3Kt": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "KZWe8aoFzAyBME74"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'HUtipUWYhWV1qx8C' --login_with_auth "Bearer foo"
session-get-game-session 'zPML52faXUr9Sk4l' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"q2faBcAXXKlhvyH8": {}, "paOJtxqMPpcVfRwN": {}, "j547fH0XrKEDpEY8": {}}, "backfillTicketID": "VnocGAjci0V3tBf2", "clientVersion": "jnHGKXphn50c9tNL", "deployment": "DljhZ2jxLRX3z46O", "fallbackClaimKeys": ["CaGBeMfPlNos4yBR", "jrERHEonAZR8GmEu", "0q1p6QCyY6vSkVFW"], "inactiveTimeout": 6, "inviteTimeout": 11, "joinability": "sbYuVEGVxYheR3j5", "matchPool": "mNZ6vwv7K8Asvt1j", "maxPlayers": 89, "minPlayers": 75, "preferredClaimKeys": ["x59hesNWy2NvZ85D", "DKDAF8KDsBZOuYQJ", "03BAHZ7c53q7akMp"], "requestedRegions": ["cmnnx6RVBrop9v7a", "ZK3h65hbN15zfQSf", "QrtfF3TQN0OcNDLr"], "teams": [{"parties": [{"partyID": "36vzohZyjMQAg5mP", "userIDs": ["YhrLTyU8OhgfY9JQ", "YGF4bYXEcENx9xZl", "Achob44lONDDwMvg"]}, {"partyID": "I0HlyPR7wZNiVsF6", "userIDs": ["xG2mXEQdbzIVy8al", "ncV7vWgSHdfo07Uc", "tPErqxyMyOK06MqQ"]}, {"partyID": "BErxgjVBycvU4Pbm", "userIDs": ["RDcrg0DjQjBECXve", "a7H1m2lJFRZ3ZprZ", "60zMjhTHeh94TSen"]}], "teamID": "E5hCFkIf5weqZ18M", "userIDs": ["H57l2Zsrh90ETtYm", "Gukz3MnlrjcHp6B8", "Vj7rXFgDnDkdZ9bp"]}, {"parties": [{"partyID": "jb1tdA3QhjCMW64f", "userIDs": ["4XhIjSoTB2NMKtez", "apPr2QEPx3zTxBGt", "EJIYppuUSsKoHw2h"]}, {"partyID": "yd12uSE7BEv3aevq", "userIDs": ["6iohU1cg4W1IS3Uv", "1BpWoJBaqdg2FHcu", "nsS1lnaO2m9vqjhb"]}, {"partyID": "eK2qN8g6x2PyYDo5", "userIDs": ["R3hLiD5sf5y1JsxJ", "NGmyt0SQDUDoWBZV", "GLlkUetzCAWc9x1a"]}], "teamID": "MjgGim51T107XIZR", "userIDs": ["Z7tZdIs0xf4czdt7", "zqmSKxOEQlVcx6Gq", "sBq8vdhWVnuYLgpZ"]}, {"parties": [{"partyID": "ehK0G2nmyuViB9kR", "userIDs": ["TcSQdTnNYGeAfYFG", "3wSkHKufBdS3ZOok", "ZB4cXnAXyuGz6Llx"]}, {"partyID": "Hv8SwyagYvDJ3w3U", "userIDs": ["NgIGj2jZtEYT8sIP", "SE1XXPzySa0sZoFS", "6xCOWMpyh9pMsQgb"]}, {"partyID": "64ELbzDMwyo4nIRy", "userIDs": ["sQdbufXjYnSoIFeo", "uC2m38kXrDZWlGVE", "9sJ4NpUtKp6M9I6n"]}], "teamID": "EwnZhsjwJeGwaPSD", "userIDs": ["MZz95OYKiqaZD63x", "e5rruJVfLGea0Ztl", "zUcuHAXz0UV31Mfu"]}], "ticketIDs": ["GaXsAuGsZaSHevO0", "TQNEI3kfabxJWWSI", "1ECUo1NPpeFhUztX"], "tieTeamsSessionLifetime": true, "type": "8PbGikLjgjcj34uu", "version": 22}' 'LpUpxeJlsBJT6Hh3' --login_with_auth "Bearer foo"
session-delete-game-session 'OMjAjq2mK8lbSEEe' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"lxnb5QxWG2HFnZlA": {}, "6HKWW4fI1IQcoBQE": {}, "LcNlZkqTZrKgXNwv": {}}, "backfillTicketID": "m4e5GX6H742Oixht", "clientVersion": "AoKiVm6URT95XhnU", "deployment": "cvWB28MpusuhhDJ5", "fallbackClaimKeys": ["slzgiWZEtyd56Lfx", "nbY97jjYgXchCbkX", "X26uEdCfQaMAQuTK"], "inactiveTimeout": 11, "inviteTimeout": 13, "joinability": "C0I2kNjCMDtDMren", "matchPool": "tgn3DhqciwIeShF9", "maxPlayers": 90, "minPlayers": 13, "preferredClaimKeys": ["Kb9vvxuJlhXbWhbw", "PwToC6knjVwVnzaq", "SfJiQFC2gXoda0kg"], "requestedRegions": ["16yUSpSOAjHJWwfC", "jYwWkLob9gKLqs2n", "EZhpByfHZinxNfgP"], "teams": [{"parties": [{"partyID": "AwkMBsznlBUqnLT4", "userIDs": ["AbGptKaWNvPbpg7y", "rRvXfZ6rvgvEY3Hh", "t1SwqTsKKKo37NHD"]}, {"partyID": "OQe91Ps3ztUIV0dS", "userIDs": ["6hIH9c4VfkyrwpuX", "xbaERbfgPmi0eHkt", "1mr9EOIFg0dnWIYN"]}, {"partyID": "2NVL70Iw157g00jr", "userIDs": ["9b8MuYmmeKTmBNvG", "YxEQdf3ewoGGoY7x", "mFNAmjDDCvs78mcM"]}], "teamID": "diS76YApGJ9ufwLY", "userIDs": ["kqIgLuZS6hsQryiE", "tOAbpeUNf26UqkCf", "gCUYBn2xaOBdPF0J"]}, {"parties": [{"partyID": "mX8qwU1cTuHHPB5S", "userIDs": ["3DvPRCzBrVUxmDOj", "3cvRFaTC11W0TGTC", "m4fZWuk6pQxDQpKq"]}, {"partyID": "xLGeMvr9TsvcMQ7d", "userIDs": ["BsaIecRxIsZvD6rm", "zVr5XT1Nxw0v1dMQ", "9Rrbk6C2cVWf6ttv"]}, {"partyID": "bU1PO6ApCD2VXidT", "userIDs": ["7w0Oc15N8WXBPp17", "PAewqSm5x3B4t7WQ", "np8jXZedgt5cyNe2"]}], "teamID": "7HLtwtVOaxgP6Jbc", "userIDs": ["t8puMybYGxD9IPmm", "sLmu3kaPj0O4zd8T", "b7cUNGPTBxiFFCrn"]}, {"parties": [{"partyID": "7djjs69FTFVGUVhv", "userIDs": ["KhJCmeisql14mUHV", "bMPimNhcZsU3VAdM", "Dcb4qlkiFAamqvZI"]}, {"partyID": "2KwjqPBiWXade41s", "userIDs": ["3rH34mB2yPlRpWjm", "HZAAvKTH8MuqIg0C", "zkguwuJCW7EEFB67"]}, {"partyID": "AODbi9BzupBsFpYc", "userIDs": ["77GtRUcCFeY5g4Xg", "BsbfzqxBPNe8ae1I", "l4aAtEbu4IjGdqth"]}], "teamID": "RxTjQ7gkZEY8rG0q", "userIDs": ["0Q2Qd2JzRbkF2I03", "dIjvBbA6bfbYaJCJ", "jfk2TUvn95FhO7VW"]}], "ticketIDs": ["3mbDVMDu87t0ldWf", "7iSGIiKFtWtn4Yr2", "svKM6pqLGZ0TBujE"], "tieTeamsSessionLifetime": true, "type": "EECQE1li3Bg7Jxc9", "version": 32}' 'zXtcknrgidKupvXO' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "6aj4hCmTC34jxW4p"}' 'IDwdqXpmRmut9H9X' --login_with_auth "Bearer foo"
session-game-session-generate-code 'yWI8bp8fQxRuX91u' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'YmtrHJbEGTUj7YjE' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"RL1rEQG02zccA8wv": "LsWUNd6lPKvqDejv", "qklTSvDwuOrP9lzp": "iX0VuFpZum7izxe7", "NPzjOa8E7wY76PxL": "v9HBEUe89AwEw1HO"}, "platformID": "4FnKtx4XLKAmlDr1", "userID": "9uJ3nq6VerzVCcI8"}' 'y3Cz0YqCKUh5RD9v' --login_with_auth "Bearer foo"
session-join-game-session 'NAp4jinFpnQ5xF9w' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "wbvMZyeDeRnVfPUa"}' '6xVVBcq3wZpFIYeA' --login_with_auth "Bearer foo"
session-leave-game-session 'g79HcLJXJ7mpVI6e' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'TYAjdPlCiQQC35cj' '4KyOVgvnWbfRJtsB' --login_with_auth "Bearer foo"
session-public-game-session-reject '7cUQZ2QUAxJrINPX' --login_with_auth "Bearer foo"
session-get-session-server-secret 'ppPNO3AfmXcgwC3I' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'N6tvKgLB9QmJIOq9' 'dP5szG71utjsQ4Cr' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "Rb9gUCeVz7fWbZId"}' --login_with_auth "Bearer foo"
session-public-get-party 'hevfZvyV7AcodcZw' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"KjYDdmJOlzwm9Su4": {}, "FnS98QqftSjq7sn8": {}, "yreciPLfkVyyJsbG": {}}, "inactiveTimeout": 31, "inviteTimeout": 82, "joinability": "5hCER4nGmWGgTJfH", "maxPlayers": 22, "minPlayers": 77, "type": "Jl4tHGa4XfZcd9CV", "version": 28}' '4q1bTHXIjfJKyFlM' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"0u1uuoVdn9yVoSlK": {}, "NchPHNL4X3LLaGPG": {}, "dqLE8SohhhuiTnJa": {}}, "inactiveTimeout": 35, "inviteTimeout": 80, "joinability": "YYkHBDdSzBXdxapw", "maxPlayers": 15, "minPlayers": 44, "type": "d5IQYBQuxLvPuWYv", "version": 61}' '4LM6H6QXmpZ9X3fU' --login_with_auth "Bearer foo"
session-public-generate-party-code 'SR1l9xLPBsmAUrD9' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'L1IiD6MlcEPhMDFz' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"jHZ3sIhzOx2CXKlv": "IomU3pIxM9n8D2eL", "Me3lt9qfx2UDcgVE": "7L9FK6e0MrPc4vtx", "k9hVKlG56HlzGr7X": "jdyRJunZPkp6ccIB"}, "platformID": "nWyPw8mj7gyQ7XdI", "userID": "szGRj46COPipH1MW"}' 'VTHG0qHJCWEfOJpZ' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "m9yEYWNGMy2pgSGS"}' 'UOK68eqGJtWf1Ybg' --login_with_auth "Bearer foo"
session-public-read-party-session-storage 'g8rdwY9bmrvHmO07' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"KNqX9LM2IwEsdOGB": {}, "XBwnzDX8v3xgC1Ge": {}, "9PdbTTAJ2Gp1r0sV": {}}' 'Z6LJAOddIL2l3hPj' 'NDKv2LWfXqjr8fS7' --login_with_auth "Bearer foo"
session-public-party-join '9En3wYowBdkaZ3y6' --login_with_auth "Bearer foo"
session-public-party-leave 'i38XQjLDRqkpiFK5' --login_with_auth "Bearer foo"
session-public-party-reject 'BtiQ272Uo9UBJWod' --login_with_auth "Bearer foo"
session-public-party-cancel 'pdwsX1jorcyR0x3Y' 'iHF8ITGPRQBCgIs1' --login_with_auth "Bearer foo"
session-public-party-kick 'Q2lzxl0yF5m77TTh' '4gUoj8u2WRcLiEtz' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"Vlnkflfn7pHY48F1": {}, "dl1q92m3iRlfnBAk": {}, "0CwiAsR65yQ9ssuH": {}}, "configurationName": "dGmxncCEr0Kcgeqz", "inactiveTimeout": 67, "inviteTimeout": 82, "joinability": "bruNB72HHMkjzyBB", "maxPlayers": 73, "members": [{"ID": "UFKiaoV0VOem2yqP", "PlatformID": "sMFxKybPkbuS6x9c", "PlatformUserID": "LJ1APnNlsa2bRBr2"}, {"ID": "7fVMWuAfDqLMR919", "PlatformID": "IZPKOKiAVQXXOmqF", "PlatformUserID": "HLbyXmgCNiXH8uen"}, {"ID": "bC5CphgMweexsIAP", "PlatformID": "5vHLjBJ9iqMcBL4B", "PlatformUserID": "zhDUjhKPwbwcvQU5"}], "minPlayers": 21, "textChat": true, "type": "G8bXGFmPAnOkDiJq"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"4xQye7HqnVK3YVeO": {}, "Ws9mfVQh3jLBtn9p": {}, "xpE7BYtzB0B4CxyQ": {}}' 'rUpIFvORxTi79DpS' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"jb39ukcR6c2E2r3v": {}, "k3IfAKEbqcNXSGCC": {}, "vNowNmdpcJgF88yS": {}}' 'Nq4Mj7mulP4tQ6R1' 'OqKVOTniBgLsNhdg' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["Q0JWZjNRSzOTqcVN", "X3ahvxw9gwwhTnjN", "6wKZGW4y3f0R9s2k"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "aVVmM45mfIZsWhkS", "data": {"476dGGJwJ00UH197": {}, "MJ6zU7JLMQyMWzYQ": {}, "CAaPJgoxGJoJaSzU": {}}, "platforms": [{"name": "tY4ZD0Xtb0U4pH16", "userID": "NUsVY21NVIs7NRen"}, {"name": "2Y3Ns0QJQeaWytPf", "userID": "ds1BYx0EaURydf8Z"}, {"name": "yyZeHAWGgJUbUJRM", "userID": "bkcTglbU86FyOjAp"}], "roles": ["NHBVfNOURcjY3YYT", "9oTynmfIuBWgJTNF", "fM8M0IW4oe8KDgy0"], "simultaneousPlatform": "xZfAcNg14Ws8TIP1"}' --login_with_auth "Bearer foo"
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
echo "1..93"

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

#- 3 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'session-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetLogConfig
$PYTHON -m $MODULE 'session-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'session-admin-patch-update-log-config' \
    '{"logLevel": "panic"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetDSMCConfigurationDefault' test.out

#- 7 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminListEnvironmentVariables' test.out

#- 8 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminListGlobalConfiguration' test.out

#- 9 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"metricExcludedNamespaces": ["2Z3eDHH9WaVO4iKh", "DcJ7TCcNIsQ3Pupp", "UxDSK8aOTGMudcxl"], "regionRetryMapping": {"CV4cNbJGQ57lPdin": ["pjS2DRfGt9GlyZVQ", "4X67tPZSTpPq3xjr", "ElvvDgw0ag7kSWE0"], "Hiqm5IuLryiEXqvU": ["WDjU1G0EVjVZw1To", "LuPakQN1MpOs1RVF", "rcg2CXxepx78fvsy"], "hE2BKtyTDSIM7mkm": ["vZ7Cmsh4US8o4jfM", "ANPpmZDdMiCxmuCC", "VuFjS1GC1d2b92B4"]}, "regionURLMapping": ["vEgj3HOmhcWm428X", "ejRF94NIY9nMrBZo", "0lNUBDShHD32vvL2"], "testGameMode": "8FPwTiXfLcxDC9Yn", "testRegionURLMapping": ["d02mECIQhfIhHtAD", "UQ9zimQTQT95pFJU", "AJsyAfeKOufV4f15"], "testTargetUserIDs": ["NohXu6opxQGRt6Pq", "lkL0diRhLC10ih2E", "QfY3XCv4hdOa6FdZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateGlobalConfiguration' test.out

#- 10 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteGlobalConfiguration' test.out

#- 11 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationAlertV1' test.out

#- 12 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 14}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 AdminUploadXBoxCertificate
eval_tap 0 15 'AdminUploadXBoxCertificate # SKIP deprecated' test.out

#- 16 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 80, "PSNSupportedPlatforms": ["nb1a9gMz0F2UBRmM", "hAbUWmFhdYLWzMuv", "3zkUY0n0BAZkwbYk"], "SessionTitle": "BLyO6A0FqfhnaB3Y", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "NdOTacCcJfIfXshu", "XboxServiceConfigID": "LUk5WdpxjZx5noXP", "XboxSessionTemplateName": "hPUTKbonoucNmzwO", "XboxTitleID": "ZOK56sDkci5rZ8iM", "localizedSessionName": {"lOuksQJCiRFiZWwJ": {}, "7NrTb1XTB9YQzUJ9": {}, "XlYJ8BzP6EUmUXGM": {}}}, "PSNBaseUrl": "5anIloyj9lhbvuQd", "appName": "W2jwKUckc794ryY9", "attributes": {"1lX8DD4MYXlrJ81l": {}, "Hvv9rqvEoM8YmVjA": {}, "kO3HKsEp6KlqwW4d": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "rexcbHdEtoQvpV34", "customURLGRPC": "4RctmTozCi8HeV6j", "deployment": "balHmqBBfi7sSF5B", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "iTCVsXsygWbjE2op", "enableSecret": true, "fallbackClaimKeys": ["z9x7XZIjU4IK9lOL", "aZaMphKCqTq3EVhe", "JjoEEXBLIxGnNuho"], "grpcSessionConfig": {"appName": "JM3WWPvvCiCf33Vi", "customURL": "EdqQpoGkUWNizk5U", "functionFlag": 5}, "immutableStorage": true, "inactiveTimeout": 67, "inviteTimeout": 43, "joinability": "QaGGL46LuxJF3sbe", "leaderElectionGracePeriod": 33, "manualRejoin": false, "maxActiveSessions": 56, "maxPlayers": 55, "minPlayers": 7, "name": "NNNs5kgSZZNUHbIT", "persistent": false, "preferredClaimKeys": ["szApmWJO5vzzXZj0", "8a6K1XRVfriSpPFn", "ZBJZkDnEiyfa2Lrn"], "requestedRegions": ["pZxNnLRH36bqS2oF", "Y76PU1AziBOHEAj1", "cT3u6Zc2FbrTFznT"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "DIwZIRWf6T3by2kY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'SCdnFKLc0xcTjqjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 4, "PSNSupportedPlatforms": ["dd85bdYUumPKVSZC", "g3XTc9vQe0dHJfF6", "KIuvnRCa9JktyBdx"], "SessionTitle": "kZKrEWFw9GYxjiiO", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "9QWVMYz7TU1TsxsC", "XboxServiceConfigID": "hSclSkb5aBi9K9zy", "XboxSessionTemplateName": "v6gFZXI5nXJ7hLi6", "XboxTitleID": "HweweRmyo91dIn7Q", "localizedSessionName": {"qXBDXJcrqKmXDwoE": {}, "V6tCdrxw1KOPhuvH": {}, "uYrGWDK41uMOC0mR": {}}}, "PSNBaseUrl": "vSoaGk4ktF5wnJDg", "appName": "9Q3WXiydCOInVols", "attributes": {"r6CHmj763vLwtYEJ": {}, "TSiXjcY5ZPkv90ly": {}, "KSTWLxSFZ0LpupEi": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "RCn48bvkCPfKofwX", "customURLGRPC": "OIZZQAJza84lKKmV", "deployment": "OaTS6xBbNrSUAW2a", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "xFHITBg9x4unq3eO", "enableSecret": false, "fallbackClaimKeys": ["HIKeTyBG5dCUoExn", "KfV3869IN4V1OdhH", "4GVU7Exlkmc4xYiL"], "grpcSessionConfig": {"appName": "jLyZrXr9Bhtzn8jA", "customURL": "dTn6xBhrciryLm67", "functionFlag": 35}, "immutableStorage": true, "inactiveTimeout": 22, "inviteTimeout": 58, "joinability": "adH5Y41SLjCPrFa0", "leaderElectionGracePeriod": 77, "manualRejoin": false, "maxActiveSessions": 48, "maxPlayers": 93, "minPlayers": 88, "name": "PC5GODS44bmm7jPd", "persistent": true, "preferredClaimKeys": ["ddfdsUqjXVzW1Qqx", "nWR5sheLgsAF4ctv", "5guycGiq9j2EyIkn"], "requestedRegions": ["fLDpgHnMOn8nc3gU", "Z8ZFyyEr0KBXuJBq", "K4QtEydPWLPBYiR3"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "c1ZYapx7C477etqg"}' \
    'fOJDUT0uKAPrARya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '2IMlNiXpF4qvsUUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'Hqi33TcBGkc0HjUc' \
    'nkpU9oVzl2kBuLFX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "IeCEKZUTz3GvCAZ5"}' \
    'j24acYHbrryHB6GO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetDSMCConfiguration' test.out

#- 24 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminSyncDSMCConfiguration' test.out

#- 25 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"9zP3FaepA3b3YJ9n": {}, "JM6vtT27xv85K5MU": {}, "2qmbeqaVemINdClp": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["F7OvlBIEgjse5kd6", "GEDo08yq5E5HleLo", "og4me2NBFp62xlXv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'YdG7xVPqBqe9RDQM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'BSYAFLqp8PF5hCco' \
    'ukWpnbz4ys7j6lxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'U3u2HEG0qfKegvFT' \
    'D1sPykS8YLmwtYgW' \
    'GcA0h4G1LZ1HaX5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminDeleteBulkParties
$PYTHON -m $MODULE 'session-admin-delete-bulk-parties' \
    '{"ids": ["BMbsF44VTsLDRzdq", "22cbnyK3ggFDh2ka", "ZP7pnnVfxPwc259H"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'F9ejHaILQruAuYyJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminReadPartySessionStorage' test.out

#- 35 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetPlatformCredentials' test.out

#- 36 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "LYGqMv824ouSgkpK", "clientSecret": "70uJmUL0uzElixc0", "scope": "23dIvDiA0tQWlHwB"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdatePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentialsByPlatformId
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials-by-platform-id' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 39 AdminSyncPlatformCredentials
$PYTHON -m $MODULE 'session-admin-sync-platform-credentials' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminSyncPlatformCredentials' test.out

#- 40 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentPlayer' test.out

#- 41 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentTeamPlayer' test.out

#- 42 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'Ttztx3VAl6tXFbnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminReadSessionStorage' test.out

#- 43 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'TCzUOIzVcy9k3ie6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteUserSessionStorage' test.out

#- 44 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    '4Vnwa0ClGQJultJe' \
    '32AiwKadEoIVmprw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminReadUserSessionStorage' test.out

#- 45 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminQueryPlayerAttributes' test.out

#- 46 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'Psa9YD92CX0rITaj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerAttributes' test.out

#- 47 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'pwHITGeHTnqRbzBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminSyncNativeSession' test.out

#- 48 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "9ZFgJbQ3Fj1umx4I", "attributes": {"tzkMJ7cudf4r916G": {}, "Prhn2etVIQvRkQJA": {}, "tDUH9tx60AehGz1e": {}}, "autoJoin": true, "backfillTicketID": "WpWit1QC7FKe0fnH", "clientVersion": "UlmU1unGKM0tgfeW", "configurationName": "y47bbwMI4gGmvK9g", "customURLGRPC": "W596FwBNrFXt3TAu", "deployment": "KBwBcD12ae6r3hHw", "dsSource": "ya4NpdOzg3hr6ucH", "fallbackClaimKeys": ["f7dbh2iKNUl0qJqz", "oKMRMG541PAiNjUL", "sx4SnKNXLMUaDSww"], "inactiveTimeout": 88, "inviteTimeout": 87, "joinability": "lnNRZJHBSB4fZWEF", "matchPool": "IZs28Ff1kZp1Zktx", "maxPlayers": 81, "minPlayers": 24, "preferredClaimKeys": ["7WNMYIfcDKbLu8pn", "K34oA1keYXJvtggD", "dXjbdjMBahFZZGMT"], "requestedRegions": ["cqnWrIprOv0BJ9Sg", "l7H1sdH2RIJz1eI7", "Q5pu9PutLf6IrvZo"], "serverName": "BGQbO4S3rURGWUzP", "storage": {"leader": {"AE6SdV4D5jftRl9r": {}, "ZmtQUvro8TWwXWsz": {}, "9TVmdMKEohKzuMYD": {}}}, "teams": [{"parties": [{"partyID": "UTLBeCidXjuGgx8n", "userIDs": ["cXejmeZtzT0qj0lt", "sqfiZrthVvyX0OCK", "DJE3RMUddwSSgxCu"]}, {"partyID": "8zru1DhGAYOHR5BW", "userIDs": ["a9VzIkaQEl1iUPro", "NB6hI6IpGcToWgFv", "dRhG9NwV3zDuqVlV"]}, {"partyID": "TypcYPK8IxrSZuxW", "userIDs": ["l0Je4fJIyFAm3DQh", "t4JwnPS2urJqerob", "WMZGVL5KLTxahWlS"]}], "teamID": "6XdBaKSLCgOOPXM6", "userIDs": ["XTUh2dJ90yqHDNac", "l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG"]}, {"parties": [{"partyID": "ZGwiVj7eDTaka9AB", "userIDs": ["fX1IByPEOuPhGspR", "i3bhPQvBBJI5Jxyt", "pcubN4AUUPFPscZs"]}, {"partyID": "XeJOD4DMtqfIGiGJ", "userIDs": ["ovgWSRxZ8N4UQ2fg", "3V1o2x0hL5DuBDqM", "yIAzWze94MEdJFAy"]}, {"partyID": "2JTllJkRGB8jqJEd", "userIDs": ["6eqqsBVyONV0JRto", "zI0jpliCFQ6WgJpG", "Pigdc5VyC4qvWjVa"]}], "teamID": "c1cQvSxgTNIUzxDg", "userIDs": ["BlIbuzm7DzJ20NFR", "JIhFXR2dYprPmbpu", "ptECGd5cdXC2Sesc"]}, {"parties": [{"partyID": "6y68whNBYl9iCqfW", "userIDs": ["6rqGOQny4ij4ysYP", "onb59gQffkNOmubx", "EJr2qEAuJbpZSrcb"]}, {"partyID": "c4LWfKaY5c1tP5TD", "userIDs": ["uI5f6m4KC07CnsZe", "32hqEcB1ExYMBb3c", "kvoaJYdMqGegcg3e"]}, {"partyID": "RvBZXN3cjIXmFWRJ", "userIDs": ["nj8xN7HDPTUEDPN1", "Kb4UTPWDXTSb55g8", "LSTs7Nf95lGlPrf6"]}], "teamID": "obIdnI6Ag7eUYcYJ", "userIDs": ["4QzXCmqr6gmPGaHP", "5SVPvRLiDi0mNHb6", "Lx8eq8SGNwEQO8dY"]}], "textChat": true, "ticketIDs": ["xGhaBKoUfiHjGmCy", "PsKCJTv1ic9gvagF", "2cSuztsJ5tj64gV7"], "tieTeamsSessionLifetime": false, "type": "t1xk9IyssSA8nP5P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateGameSession' test.out

#- 49 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"Qjpzk2Tb7iYdmNZW": {}, "osrsVBPZ64j0HUON": {}, "scofwYLQcDvkaEII": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicQueryGameSessionsByAttributes' test.out

#- 50 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "PoJT83zEGXmVBZLy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicSessionJoinCode' test.out

#- 51 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'rH9J7BoysmaORLkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGameSessionByPodName' test.out

#- 52 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '5hc2Fh04JTsqDTyn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSession' test.out

#- 53 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"CewqJligLlRxOelK": {}, "ykICRxF6HtlER2tx": {}, "s4qrNARATn6KXOut": {}}, "backfillTicketID": "lYBbLhL8KXx25FZf", "clientVersion": "QIodVBqQsBpCJBIX", "deployment": "LGYcwWVRK6UKk5oz", "fallbackClaimKeys": ["rXA4HZHNyq9odanh", "R1Zrm3thUvV87yfk", "ycLSVdleSaAylsmL"], "inactiveTimeout": 84, "inviteTimeout": 10, "joinability": "yToLPIREGIKlJt3E", "matchPool": "P9kKwkENQ8VOHGwb", "maxPlayers": 55, "minPlayers": 60, "preferredClaimKeys": ["P8Gwjg3IOH0SDHgY", "KqxJiFJdrmj5vhzg", "sJwex7wq8ZPlXNaU"], "requestedRegions": ["NgdY2vfJuje5cPnm", "GjTvYa5Pqx1K7qcA", "oijBPAp6EPb988Nz"], "teams": [{"parties": [{"partyID": "xrDKVpULjjiw3NeV", "userIDs": ["G4DJi9DaMrc0WFgK", "jE945x2CPVYYG9Wv", "oGmAmvaVV5YfxnUN"]}, {"partyID": "cwjr7gSGhnfuF4WZ", "userIDs": ["iQVICVpWd3UM08gM", "Xhdf3juXW4JprIb3", "CJCAtvSG8Cfa9dzO"]}, {"partyID": "JDGCTHIOFjeXbsSg", "userIDs": ["R43kIDzxBwqRJTzr", "HNZWUsq5lQo2jy29", "EJigqYhyVhURx1yP"]}], "teamID": "eczRpdk0HATGylx2", "userIDs": ["JG2KNGfhzfCTxxrs", "RRLee3TcJ7DQIi45", "aCDHN9mVug2zkVf6"]}, {"parties": [{"partyID": "KgpKOcn3tMD9UT67", "userIDs": ["bOwugFDa6wUQvehK", "qwCh86XmRkCEcfHD", "Cdl59Wp9A3tXGve6"]}, {"partyID": "DdK6uvg8f2cIoByk", "userIDs": ["9fxtvsgeAxo57nKA", "bZpsbJ4Iu5KJ0ynx", "GBlacDCdFe8ATUqV"]}, {"partyID": "xcSthrpnMUBsnUfu", "userIDs": ["QIcSbUt5UGkInFGp", "uUsdtq4dOwNESzCE", "W9dUVhZjLftC3sCS"]}], "teamID": "8CpLCqPD9CeDEdCn", "userIDs": ["nL6Kt1Bjj3b8QM8R", "r45ULqXQgvwD3PsK", "DJiWxQBwaS7rDBf2"]}, {"parties": [{"partyID": "S54phbdyGDt47f9G", "userIDs": ["WRlE9hqz6rjDNo4r", "hjxUdMM83WekqfWv", "04vvn9bk5qr8qs2m"]}, {"partyID": "qtnGAqXUjNypF6MM", "userIDs": ["qWpdEJsPoaIbYz8c", "K5jlpJdre5ur6yvW", "JDdvM7T7PX2vamIR"]}, {"partyID": "ZHzsIYOCUoiCXNjr", "userIDs": ["dQL2jdx1eIba1sB0", "HsJ06DzfbzRYt4OV", "UyumBeIqdQGZC5kM"]}], "teamID": "03HHijsQRj7N8IAj", "userIDs": ["msonjj0ZR50BQ1U6", "aFD3O2kXQSc58zgZ", "Vl4gIF7v3qbZu9M3"]}], "ticketIDs": ["OxqVAT4H1lRZ9Z1J", "BrHRzEOtIxzPqb6n", "73m0jiaDH86d9rsK"], "tieTeamsSessionLifetime": false, "type": "0X48eT7Mluexk87b", "version": 73}' \
    'Z5BTsEA3EdmW8saa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateGameSession' test.out

#- 54 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'bP4xRowfNojzPXI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteGameSession' test.out

#- 55 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"v0prR3OEey0MkZwS": {}, "6TYwNN3UYhic03qG": {}, "Eg5fNzBVrjo3g8Cf": {}}, "backfillTicketID": "Rwtyl1HeT7VEPgG4", "clientVersion": "0QyXzsOzgck078Ig", "deployment": "hoQBp2mWAOYksczx", "fallbackClaimKeys": ["BS0OBCa2vWadLmQt", "YKmEMzicbuL2S3Ri", "W8dLTCBfGUdVEdvd"], "inactiveTimeout": 87, "inviteTimeout": 84, "joinability": "L7sVwcZ2PofaJoSq", "matchPool": "trEOqxH46fRTSZoD", "maxPlayers": 7, "minPlayers": 70, "preferredClaimKeys": ["T0fefo74eg3Nt2c0", "r4GqF0NHglOVuNZ9", "LzNeJnBurh54CWbY"], "requestedRegions": ["b0Pebyt8b4DGscjw", "rizsFUgYwbaLvqvQ", "2NbmDITuymTBjn3d"], "teams": [{"parties": [{"partyID": "2sFzMS3QaVjZF7Ax", "userIDs": ["6115Kg9U8vrQJXQx", "oIbVi2CLEk277Ivj", "j1A647XQ3koaAfZI"]}, {"partyID": "im0sFPm1YN27bojD", "userIDs": ["VaZLpx4kEWYkO6Kr", "KUMhJrASBh61hmWK", "SSrF35anDGvur19V"]}, {"partyID": "18oIrUKXttgAI2Qd", "userIDs": ["WJFLmoPEgd8EMspO", "s8nkic9gj5vyUMAA", "mIHYbsxG5N066FXb"]}], "teamID": "88SbLOa21DiSFsm0", "userIDs": ["XXQJWszvTQEuALzD", "Np1SZ58aDllwzTRH", "ak1MXxj7Esrg7900"]}, {"parties": [{"partyID": "nml5BidsK9dCEzhV", "userIDs": ["nOv0PQbVIaKiHfoe", "orY7A1otGFyv2SMj", "bEr50qGdCZIc6EFq"]}, {"partyID": "BKxbS7Q2OgRucL1j", "userIDs": ["wRXzfjDZZBmOau6s", "yme06c6SKLc2mEC3", "IXl5XCbkOfHaGr5k"]}, {"partyID": "dazlypvt6lSLfU7H", "userIDs": ["ByGXPMqxj4hBgVY3", "YAxZLKbcOdyjqf6Q", "4oiwoJcaRMEb15LB"]}], "teamID": "lTVufc5ZyODR2NVy", "userIDs": ["n4PRqf3eRbZqBAoK", "GcVCdMiSNV4qBrt1", "kcLmRv6EJtl5xWns"]}, {"parties": [{"partyID": "b8oWq94RImNWVIJn", "userIDs": ["hhwFDV1VitaomvWT", "zdsW4N70wYS4Kj7Y", "i2VvoQNW8Yc481dY"]}, {"partyID": "dvGxJAMDRA1LF7jd", "userIDs": ["WlekFwO94VBCV9qJ", "hWva2FPBujX0geYC", "pGJM4sqsPNJMiZXX"]}, {"partyID": "OFwmGWAvNF0Z0Gkw", "userIDs": ["xUNYyNwGiKrknH0Y", "5mrQgLC6D2qsFiQH", "glUQMZi5WjMZfOad"]}], "teamID": "pgegCUjTdi1Ehr8O", "userIDs": ["tqpNJ9R8TuNy4ejm", "VA3vMCsGyPd12B8Q", "NUz0hFFNbH6j2W4r"]}], "ticketIDs": ["oZM2UKAXEEsL5D0o", "iFchQnVeq3g2AB2W", "IRUQmauIY5HXCZ0W"], "tieTeamsSessionLifetime": true, "type": "mWP0HzSdiylLhVYs", "version": 52}' \
    'S7Haa6unq1yQOSRv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PatchUpdateGameSession' test.out

#- 56 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "yiLBRVtIDi2piIQF"}' \
    'VmzMidw70KSahpYZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateGameSessionBackfillTicketID' test.out

#- 57 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'dKZRyR9AX7JjxvNZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GameSessionGenerateCode' test.out

#- 58 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'hM84DiZk6ySrB9SV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicRevokeGameSessionCode' test.out

#- 59 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"FctW7YS0OkL78XeE": "AtALFI3v8yha4pd5", "A7MYcpBD6lKNb8Rx": "vN2u5J7baOeLH19f", "qBwNbNe1ffYRtIvQ": "aKyevWYtZjK6J29v"}, "platformID": "8MpBSpo3AKRmnJkz", "userID": "JHAckUyBksYQfDm0"}' \
    'RNFwiz70tRVLMlHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGameSessionInvite' test.out

#- 60 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '8i9gOVqajUWrgEsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'JoinGameSession' test.out

#- 61 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "DtaKzn8dZwnnGeZs"}' \
    'ZVgbPzPFbrOMZMgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPromoteGameSessionLeader' test.out

#- 62 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'kFN7Tpkx6GcfyOg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'LeaveGameSession' test.out

#- 63 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'ZUrrp9ubg9mndW2J' \
    'KmQafUs2bxYztOEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicKickGameSessionMember' test.out

#- 64 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'VbKIf1ZbzgUwd8DH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGameSessionReject' test.out

#- 65 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'oCQykmXHYmkRlg7g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSessionServerSecret' test.out

#- 66 AppendTeamGameSession
eval_tap 0 66 'AppendTeamGameSession # SKIP deprecated' test.out

#- 67 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'Ys6unPYQ9jNQN1di' \
    '1ldhOh6HvjnYuV7N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicGameSessionCancel' test.out

#- 68 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "fC4A2ODiZhbfb8Qq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyJoinCode' test.out

#- 69 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'CyK1XH9D6vl5eFdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetParty' test.out

#- 70 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"fgK46GjCWaP8huTm": {}, "nq3FGQn3Ahu5wxq6": {}, "oJq4mChmQHQhO9IK": {}}, "inactiveTimeout": 56, "inviteTimeout": 27, "joinability": "DFQfXFD58sG6uDhF", "maxPlayers": 30, "minPlayers": 23, "type": "saPFC5zBW3ZgVZCj", "version": 20}' \
    'ObVGT0Scwl4kNmCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateParty' test.out

#- 71 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"15XTJTgCNNH7RtG5": {}, "Xmo9Q0Wb07N17fkx": {}, "ZSc6VbE0AGcekjMN": {}}, "inactiveTimeout": 69, "inviteTimeout": 36, "joinability": "uPXtz8tXxrmzafMU", "maxPlayers": 14, "minPlayers": 58, "type": "uyDoN91uc28HoSpG", "version": 41}' \
    'EGSW5TaW4to7QCY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicPatchUpdateParty' test.out

#- 72 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'NGGvi9kg3rMIzNmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGeneratePartyCode' test.out

#- 73 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'JTNQjKlwjfJ3TJ2x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicRevokePartyCode' test.out

#- 74 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"Vpge70WsLfgbZieR": "vJI5sT9DH3DfLCv8", "q4Thmq09bBgPAYxr": "BE9jlnTgtgW33wDw", "D9RKvQX4yFQFdrRo": "M6FoqCYw7AlxO6qd"}, "platformID": "Fpc71sSck3ggZWJl", "userID": "SlCQMDji329PfVrv"}' \
    'MEPtpsSNcpK1QkB2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyInvite' test.out

#- 75 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "Sy8Ww79LVeVskqeU"}' \
    'B7RSayqGFguhh3bv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPromotePartyLeader' test.out

#- 76 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'adRthdbVApebRA09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicReadPartySessionStorage' test.out

#- 77 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"rW8i8krFWJhe03co": {}, "RFok5d3AyGrZO8Gu": {}, "oXNSoVEBG7VbBPUW": {}}' \
    'ipz9C05YabFX4FCK' \
    '5ucTFsAFzaO3yJpA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 78 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '3KMxBlrRytER1qdT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyJoin' test.out

#- 79 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'elFAadM9y66Drf4S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyLeave' test.out

#- 80 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'SGGt3MiBKohow3kK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyReject' test.out

#- 81 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'oaP1K4CDuH1mMIfO' \
    'CDyVAHrHncR5dShq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyCancel' test.out

#- 82 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'iBUI9esSsXegSEhr' \
    'PpK2q8kxR4BuEksS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyKick' test.out

#- 83 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"2A9VOA8H9VeHv0L2": {}, "Acm960EYQEuGJVl8": {}, "xs1WId9WlalqshF9": {}}, "configurationName": "Rh2o7GCQGPCxwEdk", "inactiveTimeout": 51, "inviteTimeout": 74, "joinability": "uT3MgzReRq0112IS", "maxPlayers": 54, "members": [{"ID": "acO5MnjnxD1OXkxS", "PlatformID": "hFVQTRekLfjmy8zo", "PlatformUserID": "sRCRgVwbrQKmb01y"}, {"ID": "A7U7dGMjupZkZQY8", "PlatformID": "CNyT4k3DIbfT22G5", "PlatformUserID": "NpE130YWSgxpKWtd"}, {"ID": "tdtVW9anENmxb9e7", "PlatformID": "vXZV3ig8Jg5VByeI", "PlatformUserID": "3ycMcYYBixKJXCIS"}], "minPlayers": 88, "textChat": false, "type": "N1qcxKs4nlf1MfqU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateParty' test.out

#- 84 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicGetRecentPlayer' test.out

#- 85 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentTeamPlayer' test.out

#- 86 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"ZXkjHvcUOTlxNf09": {}, "pefgFIiJssShBKsQ": {}, "jXvfQgQDt6ce8NDM": {}}' \
    'ErA82FrR1GSogkew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicUpdateInsertSessionStorageLeader' test.out

#- 87 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"IzTOqKkcjRh3l2gA": {}, "JOTCbx7J3gNLIlTk": {}, "3Bpclrk4hIRn0znI": {}}' \
    'KzAEAHQpBOgHEP5l' \
    '94s7CbIJ7eHnVWOb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorage' test.out

#- 88 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["oMkyB7FTexsOZ0b2", "p3b63KrcwIcXMhGy", "83Xit6boOLGCcg16"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 89 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicGetPlayerAttributes' test.out

#- 90 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "ooSNNUZuiynZ64Iw", "data": {"ncZPk82GF3eTC0vz": {}, "ZUDj9dzGgGVxo9OH": {}, "gfHumyfuBNisecYb": {}}, "platforms": [{"name": "cOpR45VDlvSc0Mr7", "userID": "ImwCwGqOf0bNs97K"}, {"name": "vKyj3MqS7Dcmtfh5", "userID": "0eObbrmgjhWK0x0Z"}, {"name": "idAJ1CU1eD1La16B", "userID": "w3JbUnUDh5yGjjv4"}], "roles": ["Mwrv2vancmR6Z7rb", "21A2E9pX0BWCMqPs", "Rk5htdM5T3fDSrSH"], "simultaneousPlatform": "rkoqv2mM6soMaTvQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicStorePlayerAttributes' test.out

#- 91 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicDeletePlayerAttributes' test.out

#- 92 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicQueryMyGameSessions' test.out

#- 93 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
