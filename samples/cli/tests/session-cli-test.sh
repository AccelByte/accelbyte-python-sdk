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
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "dq5xrgxSmy1DN9LF", "clientSecret": "kYW5DQyj4bj5Ro2o", "scope": "gaKt2ujQSa3Zdb65"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'my0Zp6iIaTIKUkmk' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'k9QM0NBMA9ORxpzw' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'LR2AK6eXUGPJsw1f' 'iP80G9Pclxcft2ul' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'IJzPyrVEiOG4Ucqs' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'uGKHhMRWLVd3DlhL' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "uIpomM8sm1MiaI1m", "attributes": {"X2tJoARtdbBe7uds": {}, "Mrok0WvGYYnx4V70": {}, "9xbnGezKsDwG2omO": {}}, "autoJoin": true, "backfillTicketID": "nvYI9TVqJdvzcWbf", "clientVersion": "UpaXp5JMl5LL4bTx", "configurationName": "BmZjdrrIxsB0NRsB", "customURLGRPC": "1fPqqRRulpqpymDk", "deployment": "QhtrHWwRVnwVBOqO", "dsSource": "Hi8pWGd1juYhiqjR", "fallbackClaimKeys": ["JOqB5F93zFQbJndU", "DpdONneAczbBdHb2", "slt71B1SmZp2JZp5"], "inactiveTimeout": 29, "inviteTimeout": 59, "joinability": "TTS1j02o7JjTXAQN", "matchPool": "0qdskdQV0TqI8EFn", "maxPlayers": 25, "minPlayers": 61, "preferredClaimKeys": ["DbxIxi4YKlONk2Q5", "Y4JvaizwiilatuUj", "jt9lIMGql5ElEa9E"], "requestedRegions": ["IIlGcHB3CfR3ncDl", "wi3v3MFFJ1KesKoE", "LCpobBEG8X645xpd"], "serverName": "Xpai0rYaT5hOPjaf", "storage": {"leader": {"3H0tYighU0VUfcYH": {}, "JbBfAKSiPW3VgsZX": {}, "iR1DJ7HVWqMkNSaw": {}}}, "teams": [{"parties": [{"partyID": "QUWDFJvJBWic7UkB", "userIDs": ["eIXuqDuAXI66bQ71", "w0deoV9Lx5RDA1l2", "XcrciYNEzvSZIPkh"]}, {"partyID": "SgORcz5S5BvmgBLx", "userIDs": ["h4ijFnE3Tam69qSZ", "7PC6f6QkmZXElW9Y", "fRSse6AAz3S4czz0"]}, {"partyID": "QKFlAVmVLu4AOec0", "userIDs": ["z8eBeeoip68J1nsv", "4W2OJhtafxMSJlHe", "b34sZKHcl5LLLOex"]}], "userIDs": ["L4fZvWtND2tcBFpX", "8lNtFEJ7tnkY6Mca", "5afj12K2IzrBvvWm"]}, {"parties": [{"partyID": "4udE0OXudXgNne8k", "userIDs": ["JATwlc6esUp6Sw1I", "98jeZQ7hfxnhLd3K", "naknoed9DHhLOqQG"]}, {"partyID": "hCUr6iTrjyEgarAd", "userIDs": ["NJOIG36I6tRbRcrE", "veMdAdiPKDUVSC00", "PYeDcagginxnFIna"]}, {"partyID": "3yddcbsPheTH26IU", "userIDs": ["JNvYuGRUvpZaHCuE", "SOiIZsMfB4ZH3mtg", "WgU4pCAKxeE70Cau"]}], "userIDs": ["nQNxot371W9G4AvQ", "kqsGnmyo5JJTUVmb", "8GEXFTlEMEsFzYqw"]}, {"parties": [{"partyID": "gK1Np5nodqpLm7Fh", "userIDs": ["JBNXzAFdO0Khqf6k", "iTdSGv2LFjAKY7Cb", "gsWqFWZX7kPBom8F"]}, {"partyID": "9GLLTG8phc3n4iLo", "userIDs": ["IllKlpO2pqiXJF3W", "GRaoQomSJC4DdrKF", "7SUQPLG59e0k5ZtX"]}, {"partyID": "6wK7PpUlcIW32iK7", "userIDs": ["MGt1ixY5rA1WoVeJ", "IePF8ZrQzP4zvtdx", "dbZUpd6FJtHJ1pyV"]}], "userIDs": ["wyKQLY6FEO65Rb3z", "7CYLM8IlsHqffnrf", "sGlfPaZKBwa3Ddb6"]}], "textChat": false, "ticketIDs": ["ufPpzwj1QGIFmlVf", "4jvapseE9LN9bvhO", "rHflIOd6X3viLvtE"], "tieTeamsSessionLifetime": false, "type": "A6HX3RwrKt2ecozL"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"0TOg54vCE48L5oLF": {}, "6M4lNa4JUMSHNgqR": {}, "qCV7usamANkZlOX9": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "Sfo95HgXqKhTPkwf"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'LM9uSybRzWek2gZv' --login_with_auth "Bearer foo"
session-get-game-session 'Rrvr0n9d9lvccKML' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"hrTrcBE2ItBS3KtK": {}, "ZWe8aoFzAyBME74H": {}, "UtipUWYhWV1qx8Cz": {}}, "backfillTicketID": "PML52faXUr9Sk4lq", "clientVersion": "2faBcAXXKlhvyH8p", "deployment": "aOJtxqMPpcVfRwNj", "fallbackClaimKeys": ["547fH0XrKEDpEY8V", "nocGAjci0V3tBf2j", "nHGKXphn50c9tNLD"], "inactiveTimeout": 24, "inviteTimeout": 6, "joinability": "jhZ2jxLRX3z46OCa", "matchPool": "GBeMfPlNos4yBRjr", "maxPlayers": 63, "minPlayers": 33, "preferredClaimKeys": ["RHEonAZR8GmEu0q1", "p6QCyY6vSkVFWdsb", "YuVEGVxYheR3j5mN"], "requestedRegions": ["Z6vwv7K8Asvt1j1R", "x59hesNWy2NvZ85D", "DKDAF8KDsBZOuYQJ"], "teams": [{"parties": [{"partyID": "03BAHZ7c53q7akMp", "userIDs": ["cmnnx6RVBrop9v7a", "ZK3h65hbN15zfQSf", "QrtfF3TQN0OcNDLr"]}, {"partyID": "36vzohZyjMQAg5mP", "userIDs": ["YhrLTyU8OhgfY9JQ", "YGF4bYXEcENx9xZl", "Achob44lONDDwMvg"]}, {"partyID": "I0HlyPR7wZNiVsF6", "userIDs": ["xG2mXEQdbzIVy8al", "ncV7vWgSHdfo07Uc", "tPErqxyMyOK06MqQ"]}], "userIDs": ["BErxgjVBycvU4Pbm", "RDcrg0DjQjBECXve", "a7H1m2lJFRZ3ZprZ"]}, {"parties": [{"partyID": "60zMjhTHeh94TSen", "userIDs": ["E5hCFkIf5weqZ18M", "H57l2Zsrh90ETtYm", "Gukz3MnlrjcHp6B8"]}, {"partyID": "Vj7rXFgDnDkdZ9bp", "userIDs": ["jb1tdA3QhjCMW64f", "4XhIjSoTB2NMKtez", "apPr2QEPx3zTxBGt"]}, {"partyID": "EJIYppuUSsKoHw2h", "userIDs": ["yd12uSE7BEv3aevq", "6iohU1cg4W1IS3Uv", "1BpWoJBaqdg2FHcu"]}], "userIDs": ["nsS1lnaO2m9vqjhb", "eK2qN8g6x2PyYDo5", "R3hLiD5sf5y1JsxJ"]}, {"parties": [{"partyID": "NGmyt0SQDUDoWBZV", "userIDs": ["GLlkUetzCAWc9x1a", "MjgGim51T107XIZR", "Z7tZdIs0xf4czdt7"]}, {"partyID": "zqmSKxOEQlVcx6Gq", "userIDs": ["sBq8vdhWVnuYLgpZ", "ehK0G2nmyuViB9kR", "TcSQdTnNYGeAfYFG"]}, {"partyID": "3wSkHKufBdS3ZOok", "userIDs": ["ZB4cXnAXyuGz6Llx", "Hv8SwyagYvDJ3w3U", "NgIGj2jZtEYT8sIP"]}], "userIDs": ["SE1XXPzySa0sZoFS", "6xCOWMpyh9pMsQgb", "64ELbzDMwyo4nIRy"]}], "ticketIDs": ["sQdbufXjYnSoIFeo", "uC2m38kXrDZWlGVE", "9sJ4NpUtKp6M9I6n"], "tieTeamsSessionLifetime": true, "type": "eLtzcPJ3jtDYBo4F", "version": 96}' 'Zz95OYKiqaZD63xe' --login_with_auth "Bearer foo"
session-delete-game-session '5rruJVfLGea0Ztlz' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"UcuHAXz0UV31MfuG": {}, "aXsAuGsZaSHevO0T": {}, "QNEI3kfabxJWWSI1": {}}, "backfillTicketID": "ECUo1NPpeFhUztXD", "clientVersion": "gB7n4C97uAPP8PAT", "deployment": "LpUpxeJlsBJT6Hh3", "fallbackClaimKeys": ["OMjAjq2mK8lbSEEe", "lxnb5QxWG2HFnZlA", "6HKWW4fI1IQcoBQE"], "inactiveTimeout": 76, "inviteTimeout": 95, "joinability": "cNlZkqTZrKgXNwvm", "matchPool": "4e5GX6H742OixhtA", "maxPlayers": 30, "minPlayers": 85, "preferredClaimKeys": ["KiVm6URT95XhnUcv", "WB28MpusuhhDJ5sl", "zgiWZEtyd56Lfxnb"], "requestedRegions": ["Y97jjYgXchCbkXX2", "6uEdCfQaMAQuTKfC", "0I2kNjCMDtDMrent"], "teams": [{"parties": [{"partyID": "gn3DhqciwIeShF9R", "userIDs": ["Kb9vvxuJlhXbWhbw", "PwToC6knjVwVnzaq", "SfJiQFC2gXoda0kg"]}, {"partyID": "16yUSpSOAjHJWwfC", "userIDs": ["jYwWkLob9gKLqs2n", "EZhpByfHZinxNfgP", "AwkMBsznlBUqnLT4"]}, {"partyID": "AbGptKaWNvPbpg7y", "userIDs": ["rRvXfZ6rvgvEY3Hh", "t1SwqTsKKKo37NHD", "OQe91Ps3ztUIV0dS"]}], "userIDs": ["6hIH9c4VfkyrwpuX", "xbaERbfgPmi0eHkt", "1mr9EOIFg0dnWIYN"]}, {"parties": [{"partyID": "2NVL70Iw157g00jr", "userIDs": ["9b8MuYmmeKTmBNvG", "YxEQdf3ewoGGoY7x", "mFNAmjDDCvs78mcM"]}, {"partyID": "diS76YApGJ9ufwLY", "userIDs": ["kqIgLuZS6hsQryiE", "tOAbpeUNf26UqkCf", "gCUYBn2xaOBdPF0J"]}, {"partyID": "mX8qwU1cTuHHPB5S", "userIDs": ["3DvPRCzBrVUxmDOj", "3cvRFaTC11W0TGTC", "m4fZWuk6pQxDQpKq"]}], "userIDs": ["xLGeMvr9TsvcMQ7d", "BsaIecRxIsZvD6rm", "zVr5XT1Nxw0v1dMQ"]}, {"parties": [{"partyID": "9Rrbk6C2cVWf6ttv", "userIDs": ["bU1PO6ApCD2VXidT", "7w0Oc15N8WXBPp17", "PAewqSm5x3B4t7WQ"]}, {"partyID": "np8jXZedgt5cyNe2", "userIDs": ["7HLtwtVOaxgP6Jbc", "t8puMybYGxD9IPmm", "sLmu3kaPj0O4zd8T"]}, {"partyID": "b7cUNGPTBxiFFCrn", "userIDs": ["7djjs69FTFVGUVhv", "KhJCmeisql14mUHV", "bMPimNhcZsU3VAdM"]}], "userIDs": ["Dcb4qlkiFAamqvZI", "2KwjqPBiWXade41s", "3rH34mB2yPlRpWjm"]}], "ticketIDs": ["HZAAvKTH8MuqIg0C", "zkguwuJCW7EEFB67", "AODbi9BzupBsFpYc"], "tieTeamsSessionLifetime": true, "type": "7GtRUcCFeY5g4XgB", "version": 37}' '30lnroQehMDli6t9' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "unQLYXxm09wpGAbp"}' 'EmDY9vLh3u6EDsUm' --login_with_auth "Bearer foo"
session-game-session-generate-code 'rV6kH4OotKwG3UC6' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'XCnnZxF8CmQr17W6' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"5br34rBBN9tU6TDm": "5GloFSKWM1eym5yd", "C6p25xCWTqUOYZEN": "J1QHZQxPRXH7uxBJ", "EECQE1li3Bg7Jxc9": "pUnZmvhidwCkZwqj"}, "platformID": "YLfTiCO1NDBvQvRP", "userID": "nAz4VzW0CpoBCbyJ"}' 'sF5IjF1c0W338HS6' --login_with_auth "Bearer foo"
session-join-game-session 'CBgVRyihYNZ84CVh' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "ziXV8HwSmvcvcDKF"}' '19yVRafCjOuSYht8' --login_with_auth "Bearer foo"
session-leave-game-session '3AdvBaagTiRJ8daG' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'TVX3Bb7jlz5IfHgK' 'jI9mwJSrN8jkIykR' --login_with_auth "Bearer foo"
session-public-game-session-reject '2zbaI6PD7fEscShn' --login_with_auth "Bearer foo"
session-get-session-server-secret 'GUGUtV9GJ279GDbL' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "Nwjm3FK0nnX2poMf", "userIDs": ["Z1hDHtbh4HtMlFgv", "h2Dp2SoiIPp1yvfA", "HS0VgLu11A3HTovF"]}, {"partyID": "i4tPAGfleyCA6jEt", "userIDs": ["cqsnzoVILjkwW61d", "uF87aUyrdt4XSpWB", "AetsanzqP8oxfrtb"]}, {"partyID": "ECD1CYPwaiBAxfYL", "userIDs": ["8Avt70ZUT2fSk3LL", "0calqxEewuGS469k", "2hG0WKt4sUmanYxM"]}], "proposedTeams": [{"parties": [{"partyID": "0UHZVNYzGMNIpWoS", "userIDs": ["LkUrfuf4U3WeYeA9", "t2ENKKWrFtHIi1CM", "gKAOG5iDcCR5PbCv"]}, {"partyID": "DLil8wj9cKM3Ar6M", "userIDs": ["F35hCER4nGmWGgTJ", "fHlJl4tHGa4XfZcd", "9CVnGqMX9FieeEss"]}, {"partyID": "WEUl07bhwntCVqiY", "userIDs": ["OJf5KwMZQjzvjSoz", "v6CTRDl0zp9CzHFw", "inkBNi4gvqgl6TZ9"]}], "userIDs": ["TGVPmv34h6T7Esuf", "mfxKYB4LM6H6QXmp", "Z9X3fUSR1l9xLPBs"]}, {"parties": [{"partyID": "mAUrD9L1IiD6MlcE", "userIDs": ["PhMDFzjHZ3sIhzOx", "2CXKlvIomU3pIxM9", "n8D2eLMe3lt9qfx2"]}, {"partyID": "UDcgVE7L9FK6e0Mr", "userIDs": ["Pc4vtxk9hVKlG56H", "lzGr7XjdyRJunZPk", "p6ccIBnWyPw8mj7g"]}, {"partyID": "yQ7XdIszGRj46COP", "userIDs": ["ipH1MWVTHG0qHJCW", "EfOJpZm9yEYWNGMy", "2pgSGSUOK68eqGJt"]}], "userIDs": ["Wf1Ybgg8rdwY9bmr", "vHmO07KNqX9LM2Iw", "EsdOGBXBwnzDX8v3"]}, {"parties": [{"partyID": "xgC1Ge9PdbTTAJ2G", "userIDs": ["p1r0sVZ6LJAOddIL", "2l3hPjNDKv2LWfXq", "jr8fS79En3wYowBd"]}, {"partyID": "kaZ3y6i38XQjLDRq", "userIDs": ["kpiFK5BtiQ272Uo9", "UBJWodpdwsX1jorc", "yR0x3YiHF8ITGPRQ"]}, {"partyID": "BCgIs1Q2lzxl0yF5", "userIDs": ["m77TTh4gUoj8u2WR", "cLiEtzVlnkflfn7p", "HY48F1dl1q92m3iR"]}], "userIDs": ["lfnBAk0CwiAsR65y", "Q9ssuHdGmxncCEr0", "KcgeqzGbruNB72HH"]}], "version": 79}' 'jodd7CcJUrI6MAug' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'K5kypNrp2nFe9FmN' '86sK5LOq4ft5jGcM' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "ICPUYnfG6jl9U4jR"}' --login_with_auth "Bearer foo"
session-public-get-party 'eteIMgzISomCsodJ' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"rhQW41q2OspCZbt3": {}, "Uta5I0uGcL1koyHj": {}, "CH5olYLETRpABAmO": {}}, "inactiveTimeout": 34, "inviteTimeout": 62, "joinability": "McBL4BzhDUjhKPwb", "maxPlayers": 46, "minPlayers": 56, "type": "cvQU5kG8bXGFmPAn", "version": 83}' 'iJ66OzOj84O6tgoh' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"jtC7bzjPpucddXJ5": {}, "zifF8y959anrNSle": {}, "ywHbHig6IKWVZ77K": {}}, "inactiveTimeout": 8, "inviteTimeout": 89, "joinability": "9DpSjb39ukcR6c2E", "maxPlayers": 64, "minPlayers": 36, "type": "nemn7M23SzUo4hNB", "version": 61}' 'CCvNowNmdpcJgF88' --login_with_auth "Bearer foo"
session-public-generate-party-code 'ySNq4Mj7mulP4tQ6' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'R1OqKVOTniBgLsNh' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"dgQ0JWZjNRSzOTqc": "VNX3ahvxw9gwwhTn", "jN6wKZGW4y3f0R9s": "2kndhhZhwAiLsZs4", "pmLDIQch4IjDq9aT": "3qZyI0rYsWucAkXs"}, "platformID": "VJbXi7eRZa7WwIc8", "userID": "95ImqK6tVsaUq3st"}' 'Uh5J5Z9GiBiSAylX' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "5cS0IeHpWCugmfOL"}' '0QQpxsuD8PGqku59' --login_with_auth "Bearer foo"
session-public-party-join 'eFJrOXyDYz9vMUOP' --login_with_auth "Bearer foo"
session-public-party-leave 'G0iHDT8QbF7gHPTP' --login_with_auth "Bearer foo"
session-public-party-reject 'QbvLt2NRqJGIKzLy' --login_with_auth "Bearer foo"
session-public-party-cancel 'H1y72L13Ornyx34l' 'uLdvtsTKXMjiw6gY' --login_with_auth "Bearer foo"
session-public-party-kick 'Pvfn2Qt9iyq3Nyk8' 'ncu2Z3eDHH9WaVO4' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"iKhDcJ7TCcNIsQ3P": {}, "uppUxDSK8aOTGMud": {}, "cxlCV4cNbJGQ57lP": {}}, "configurationName": "dinpjS2DRfGt9Gly", "inactiveTimeout": 23, "inviteTimeout": 98, "joinability": "bdRXTGIrdNL5gJPq", "maxPlayers": 93, "members": [{"ID": "rElvvDgw0ag7kSWE", "PlatformID": "0Hiqm5IuLryiEXqv", "PlatformUserID": "UWDjU1G0EVjVZw1T"}, {"ID": "oLuPakQN1MpOs1RV", "PlatformID": "Frcg2CXxepx78fvs", "PlatformUserID": "yhE2BKtyTDSIM7mk"}, {"ID": "mvZ7Cmsh4US8o4jf", "PlatformID": "MANPpmZDdMiCxmuC", "PlatformUserID": "CVuFjS1GC1d2b92B"}], "minPlayers": 53, "textChat": true, "type": "nYBTxaTIz0jcgDI8"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"Pkz96vd80msqIm5b": {}, "ufnBqrpLeqhwVhjn": {}, "njKMEmtbiWsAQHbM": {}}' 'rKYi0Zxs5SWCqZXH' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"LLa31oQf7BULnZDh": {}, "utDM6BqguqD5xxGx": {}, "BWtnTKUe2znsqPzP": {}}' 'kwCBo2SwCUsTag4M' 'LAo3m61P2xaNfmn8' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["Onb1a9gMz0F2UBRm", "MhAbUWmFhdYLWzMu", "v3zkUY0n0BAZkwbY"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "RkPSSITz4TjCrJHX", "data": {"GXku2YVuOzhxHmnr": {}, "rV9ZGWrZ05sxe6A6": {}, "RpmKDebNkylbynkg": {}}, "platforms": [{"name": "T9vayLLiizac7Ge6", "userID": "zKJdlt7rjF5RaJwv"}, {"name": "kWVco2LTo5ijlvDF", "userID": "8qBWCQ9dLWYyS8zd"}, {"name": "hMeBXH8x6HdVfZVD", "userID": "AiU6iJOF7JKZFNk2"}], "roles": ["NKy59X8iOg2sVBiC", "oeC5weXJl7PeiMH8", "z8dVej8N2yv6VTnO"], "simultaneousPlatform": "K7xAvM7tuL81lsR7"}' --login_with_auth "Bearer foo"
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
echo "1..90"

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
    '{"logLevel": "info"}' \
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
    '{"metricExcludedNamespaces": ["V344RctmTozCi8He", "V6jbalHmqBBfi7sS", "F5BoGiTCVsXsygWb"], "regionRetryMapping": {"jE2opXtdsJQeJ1to": ["o0qvxphTLEEBGTtZ", "yTjdKNKgYazujsmS", "mylT1YtxIq73aMb4"], "8jISd97KORRhxSWL": ["WLNfHRD3V15QaGGL", "46LuxJF3sbeqWBdQ", "uWfgBAKx27MSBqab"], "UXOGkkoMUZn1YXj5": ["zFZeOCOR9NvBQZSJ", "POIKrRBrYVzi9ui3", "lvozTt9TsH7A0TuU"]}, "regionURLMapping": ["2aL4bPkk11sys6Gd", "kDcos5uVJ0BJfZ0j", "vA54CSqZFDsO1skR"], "testGameMode": "jOU1SMfQVQa6blj9", "testRegionURLMapping": ["Rdd85bdYUumPKVSZ", "Cg3XTc9vQe0dHJfF", "6KIuvnRCa9JktyBd"], "testTargetUserIDs": ["xkZKrEWFw9GYxjii", "OQAD77ci0vfWVZoR", "RMPi57HyKKz5nyI6"]}' \
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
    '{"durationDays": 41}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 51}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 24, "PSNSupportedPlatforms": ["yv6gFZXI5nXJ7hLi", "6HweweRmyo91dIn7", "QqXBDXJcrqKmXDwo"], "SessionTitle": "EV6tCdrxw1KOPhuv", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "rGWDK41uMOC0mRvS", "XboxServiceConfigID": "oaGk4ktF5wnJDg9Q", "XboxSessionTemplateName": "3WXiydCOInVolsr6", "XboxTitleID": "CHmj763vLwtYEJTS", "localizedSessionName": {"iXjcY5ZPkv90lyKS": {}, "TWLxSFZ0LpupEi5D": {}, "bkVs3qFTi1t530Wj": {}}}, "PSNBaseUrl": "1WfzIvc3VlSXrA3X", "appName": "UGud4tVjmxEf4XvV", "attributes": {"hFJTxFHITBg9x4un": {}, "q3eOMHIKeTyBG5dC": {}, "UoExnKfV3869IN4V": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "GBA6JXDpA1tIC45C", "customURLGRPC": "0oaGouFu4hXONgUw", "deployment": "JnUpryDeRcpUvlrw", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "C1uuokpaIjL0Vxe5", "enableSecret": false, "fallbackClaimKeys": ["5Xl5TPC5GODS44bm", "m7jPdKLddfdsUqjX", "VzW1QqxnWR5sheLg"], "grpcSessionConfig": {"appName": "sAF4ctv5guycGiq9", "customURL": "j2EyIknfLDpgHnMO", "functionFlag": 27}, "immutableStorage": true, "inactiveTimeout": 27, "inviteTimeout": 26, "joinability": "c3gUZ8ZFyyEr0KBX", "leaderElectionGracePeriod": 42, "manualRejoin": true, "maxActiveSessions": 73, "maxPlayers": 7, "minPlayers": 56, "name": "Iv22M18uux9xBomQ", "persistent": false, "preferredClaimKeys": ["Wy5cwNPI6aFo0MVw", "DZCIXFNEL3uWVRz3", "V7YbJM3bNLWHAbCZ"], "requestedRegions": ["ixe2cQ6O30lpzcBQ", "MAEcNcJqrKxnMzSY", "oc4ZjiMY4H34B6wV"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "ipcKDwQeUWtjCC2U"}' \
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
    'H6jzMO3AfmOS5mQN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 51, "PSNSupportedPlatforms": ["M6vtT27xv85K5MU2", "qmbeqaVemINdClpF", "7OvlBIEgjse5kd6G"], "SessionTitle": "EDo08yq5E5HleLoo", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "4me2NBFp62xlXvVc", "XboxServiceConfigID": "JerTPW02PWsHiKYA", "XboxSessionTemplateName": "rAxnKBfBfDlrQQuA", "XboxTitleID": "c10DjjwMv4vrIPRt", "localizedSessionName": {"vhQIyLarjaLOKnX5": {}, "1yAB8Pa3uNGKhaLl": {}, "JzJMSnJIIgsAVmaG": {}}}, "PSNBaseUrl": "YxUX1B9oVuzG2CnY", "appName": "X2YBF2g7TVtzYEHU", "attributes": {"odh3iUfBthbepUCT": {}, "WiZ1uqh7GAi4FEIu": {}, "44u83ZLRxYlYqlpq": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "JmUL0uzElixc023d", "customURLGRPC": "IvDiA0tQWlHwBcTt", "deployment": "ztx3VAl6tXFbnATC", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "OIzVcy9k3ie64Vnw", "enableSecret": false, "fallbackClaimKeys": ["raa5v5P5Cj8hgFsq", "HC9h5JPiMEtgKuiG", "TYgwWv5XldL6rOVG"], "grpcSessionConfig": {"appName": "cRAn51rVAQSxp4qT", "customURL": "B54mKA3V9DKlCeZ7", "functionFlag": 25}, "immutableStorage": false, "inactiveTimeout": 43, "inviteTimeout": 38, "joinability": "df4r916GPrhn2etV", "leaderElectionGracePeriod": 70, "manualRejoin": true, "maxActiveSessions": 24, "maxPlayers": 89, "minPlayers": 72, "name": "kQJAtDUH9tx60Aeh", "persistent": false, "preferredClaimKeys": ["z1ermJYXsYgL7Tfy", "IlAwjTZdRZJJzWZw", "vTX2bamSCvX1nwvS"], "requestedRegions": ["WdDwD7WJHzgNZUKs", "I5y0mR3zMyTsftKq", "nsIJctAdxyZVKHA9"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "kaSOWgtg8yw8lHEb"}' \
    'VDwBAqanOlscRIWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '82k5K5VTkdubkOFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'dMCQ98JH4n0Jtgqz' \
    'Zv5kVu4S95mj8YRv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "ae4f4lhBPbarbWEm"}' \
    '8bVtZcfVCPdQhim9' \
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
    '{"QKUAFTVYelIlGJg9": {}, "wdc8bihhWjfZpfcF": {}, "BUsnnDJlmD1iEokb": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["UiYzCQh2iNTwtnoh", "ddMzMTQ9P7sYLDWA", "JOA75K4BYJ2fkqYJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'tRl9rZmtQUvro8TW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'wXWsz9TVmdMKEohK' \
    'zuMYDUTLBeCidXju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'Ggx8ncXejmeZtzT0' \
    'qj0ltsqfiZrthVvy' \
    'X0OCKDJE3RMUddwS' \
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
    '{"ids": ["SgxCu8zru1DhGAYO", "HR5BWa9VzIkaQEl1", "iUProNB6hI6IpGcT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteBulkParties' test.out

#- 34 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetPlatformCredentials' test.out

#- 35 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "oWgFvdRhG9NwV3zD", "clientSecret": "uqVlVTypcYPK8Ixr", "scope": "SZuxWl0Je4fJIyFA"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdatePlatformCredentials' test.out

#- 36 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeletePlatformCredentials' test.out

#- 37 AdminDeletePlatformCredentialsByPlatformId
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials-by-platform-id' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 38 AdminSyncPlatformCredentials
$PYTHON -m $MODULE 'session-admin-sync-platform-credentials' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminSyncPlatformCredentials' test.out

#- 39 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminGetRecentPlayer' test.out

#- 40 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetRecentTeamPlayer' test.out

#- 41 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'DQht4JwnPS2urJqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminReadSessionStorage' test.out

#- 42 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'robWMZGVL5KLTxah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteUserSessionStorage' test.out

#- 43 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'WlS6XdBaKSLCgOOP' \
    'XM6XTUh2dJ90yqHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadUserSessionStorage' test.out

#- 44 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminQueryPlayerAttributes' test.out

#- 45 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'Nacl4F9G6Dl5TFwB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerAttributes' test.out

#- 46 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'Y6HKXAblkT8VGgSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSyncNativeSession' test.out

#- 47 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "8MGZGwiVj7eDTaka", "attributes": {"9ABfX1IByPEOuPhG": {}, "spRi3bhPQvBBJI5J": {}, "xytpcubN4AUUPFPs": {}}, "autoJoin": false, "backfillTicketID": "we1x8RjU6Bi8JXE5", "clientVersion": "2sUBBq2SimQQoLbe", "configurationName": "5YOJvxGRxUzrTwag", "customURLGRPC": "H7BMT1IZKTdNFVBQ", "deployment": "1crBXAupATO8uXsq", "dsSource": "VpdiWo8SjDAM0Riw", "fallbackClaimKeys": ["8wLYW3n4F3LD1EDw", "BXw5uBYeQZOzATNS", "V9E9yyNb7yaLXzAV"], "inactiveTimeout": 61, "inviteTimeout": 51, "joinability": "gBlIbuzm7DzJ20NF", "matchPool": "RJIhFXR2dYprPmbp", "maxPlayers": 43, "minPlayers": 32, "preferredClaimKeys": ["oco2jx8Upe8SjMvp", "qM8puggOEdG47gD5", "i2Ni6AnWn3NdEPhN"], "requestedRegions": ["HSH7eKDfRcngEpTn", "RUQr3RLOM1vEx4gq", "DY6jwyKRxhkLe5zo"], "serverName": "hg9s9utRQt28b6o3", "storage": {"leader": {"K0COF74tz6aeXZOY": {}, "wbwjMNdxKWlBfnRy": {}, "FS0Ed7gTM5AVrtBQ": {}}}, "teams": [{"parties": [{"partyID": "iDTcNnZa6Zuxk6u6", "userIDs": ["HXXdiC9ZDj4E4mv1", "2FNXypoOLl13j84P", "0KqirJ4PkMFtsnFf"]}, {"partyID": "z8Ew0X8fBuBSKLSQ", "userIDs": ["4GvLtz50D3rpBfBo", "vqLwXBuT30EYeRj1", "7xGhaBKoUfiHjGmC"]}, {"partyID": "yPsKCJTv1ic9gvag", "userIDs": ["F2cSuztsJ5tj64gV", "7nmDk29mcjSuz9vb", "NStqPtQmQN6eKAGi"]}], "userIDs": ["ZFCftT0RWECdjWYr", "nulxcCKAru8pOaAV", "LDB4k3JwkdaxR7GJ"]}, {"parties": [{"partyID": "pYmuYCPG181q9GA5", "userIDs": ["DydC2D8UT6KOc4VP", "DUR9ayazqXRqegIU", "icYXXzxsBFrUs9BY"]}, {"partyID": "p6TgCejBd5o7iTST", "userIDs": ["7R3KbbQGERMNpqWb", "51y5RUzvMfTkPy0f", "GvTGgfLKsg0b1Bq7"]}, {"partyID": "8cE5O5pmPnbiPJ9j", "userIDs": ["4vxmbH3rVaauufxk", "PHElug48TgfNu0rq", "XUOyToLPIREGIKlJ"]}], "userIDs": ["t3EP9kKwkENQ8VOH", "GwbADMfuOmh0lciR", "hVZ2DeoODXMzLSrz"]}, {"parties": [{"partyID": "oiBnYi5UWs3tYlYe", "userIDs": ["MoCimJySocRvUWDO", "rFZKPNoN9AWtLK9T", "Fgi9j2XMh9Wpifqj"]}, {"partyID": "NjLOtNQts2yxf6ML", "userIDs": ["ZJ2jZfZbpTJezzri", "CDWXT59SRu0YqUxK", "Dc84OMIzvTScdbKB"]}, {"partyID": "sAyJMz4ILNDvhB4E", "userIDs": ["oes9a6XaJeRbzTPw", "D3jxF7vxRUY0ilrN", "oFT98SgtJd4Z5f8n"]}], "userIDs": ["faKqdZFLbZEHxsDx", "eR6d7r1SQw80JfMp", "PrSqYypRUnq5o4ET"]}], "textChat": false, "ticketIDs": ["jy29EJigqYhyVhUR", "x1yPeczRpdk0HATG", "ylx2JG2KNGfhzfCT"], "tieTeamsSessionLifetime": true, "type": "ZKYCKoISyXtHzoWG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateGameSession' test.out

#- 48 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"dYohxMp3uOQIybqW": {}, "fG9BJ6FVKlbYHtbP": {}, "taxvagSlpGgVTF6V": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryGameSessionsByAttributes' test.out

#- 49 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "eDAPOGBwweyFfXEO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicSessionJoinCode' test.out

#- 50 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'EAEtbag82KgBgyCd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetGameSessionByPodName' test.out

#- 51 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '5vjkfz3eR4DtNp12' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGameSession' test.out

#- 52 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"9hzBw3xLUcCEt0Dz": {}, "mkJq1sml5bYt76BN": {}, "si4giR9434WpKKdz": {}}, "backfillTicketID": "xoufCNlFoOcWQQy4", "clientVersion": "bjmQeEweoBHTdwAk", "deployment": "7ZQnbqY1cQwVEtAr", "fallbackClaimKeys": ["5kKKAo9MM2Cqm84j", "Vi9kIpqgrzpUkNOB", "WydXV0Fi02aFr8CD"], "inactiveTimeout": 1, "inviteTimeout": 78, "joinability": "pjwNOl4k8rVNrm8d", "matchPool": "rv8QD2JOe2Ntz7EF", "maxPlayers": 44, "minPlayers": 12, "preferredClaimKeys": ["owPgIGuetxFMqXCQ", "MAqQ2ZRGzNtrThFa", "9XU8mosluiHZJ7O8"], "requestedRegions": ["sAQ32wj9uaDzsr9x", "YiWRuuzQJiLc1eI9", "w3JEhxPGbEk7s7gw"], "teams": [{"parties": [{"partyID": "07FlounC3vJKBC7S", "userIDs": ["wgoViPeIB4Ehy0Y5", "aSJVDginxAM77eY9", "C14FbfiI2NPvl1kC"]}, {"partyID": "Y5bEokxXxkWZbjf7", "userIDs": ["GZxaossQmjo69woh", "JFyTNk5FGUPhR4LE", "Zvz3EjFR7996Ug5m"]}, {"partyID": "4axDV5uTcYsoahUr", "userIDs": ["ELQ1btjJOqQMgZWA", "U6E92nHJzvw7tnYt", "Gfv0EJyjBu4EzwRj"]}], "userIDs": ["D7jmQJeFPghqamSc", "5y0X48eT7Mluexk8", "7b9Z5BTsEA3EdmW8"]}, {"parties": [{"partyID": "saabP4xRowfNojzP", "userIDs": ["XI2v0prR3OEey0Mk", "ZwS6TYwNN3UYhic0", "3qGEg5fNzBVrjo3g"]}, {"partyID": "8CfRwtyl1HeT7VEP", "userIDs": ["gG40QyXzsOzgck07", "8IghoQBp2mWAOYks", "czxBS0OBCa2vWadL"]}, {"partyID": "mQtYKmEMzicbuL2S", "userIDs": ["3RiW8dLTCBfGUdVE", "dvdQL7sVwcZ2Pofa", "JoSqtrEOqxH46fRT"]}], "userIDs": ["SZoDdT0fefo74eg3", "Nt2c0r4GqF0NHglO", "VuNZ9LzNeJnBurh5"]}, {"parties": [{"partyID": "4CWbYb0Pebyt8b4D", "userIDs": ["GscjwrizsFUgYwba", "LvqvQ2NbmDITuymT", "Bjn3d2sFzMS3QaVj"]}, {"partyID": "ZF7Ax6115Kg9U8vr", "userIDs": ["QJXQxoIbVi2CLEk2", "77Ivjj1A647XQ3ko", "aAfZIim0sFPm1YN2"]}, {"partyID": "7bojDVaZLpx4kEWY", "userIDs": ["kO6KrKUMhJrASBh6", "1hmWKSSrF35anDGv", "ur19V18oIrUKXttg"]}], "userIDs": ["AI2QdWJFLmoPEgd8", "EMspOs8nkic9gj5v", "yUMAAmIHYbsxG5N0"]}], "ticketIDs": ["66FXb88SbLOa21Di", "SFsm0XXQJWszvTQE", "uALzDNp1SZ58aDll"], "tieTeamsSessionLifetime": true, "type": "qFUmgUSMM5au8GJT", "version": 25}' \
    '900nml5BidsK9dCE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSession' test.out

#- 53 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'zhVnOv0PQbVIaKiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteGameSession' test.out

#- 54 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"foeorY7A1otGFyv2": {}, "SMjbEr50qGdCZIc6": {}, "EFqBKxbS7Q2OgRuc": {}}, "backfillTicketID": "L1jwRXzfjDZZBmOa", "clientVersion": "u6syme06c6SKLc2m", "deployment": "EC3IXl5XCbkOfHaG", "fallbackClaimKeys": ["r5kdazlypvt6lSLf", "U7HByGXPMqxj4hBg", "VY3YAxZLKbcOdyjq"], "inactiveTimeout": 10, "inviteTimeout": 90, "joinability": "6Q4oiwoJcaRMEb15", "matchPool": "LBlTVufc5ZyODR2N", "maxPlayers": 98, "minPlayers": 35, "preferredClaimKeys": ["yn4PRqf3eRbZqBAo", "KGcVCdMiSNV4qBrt", "1kcLmRv6EJtl5xWn"], "requestedRegions": ["sb8oWq94RImNWVIJ", "nhhwFDV1VitaomvW", "TzdsW4N70wYS4Kj7"], "teams": [{"parties": [{"partyID": "Yi2VvoQNW8Yc481d", "userIDs": ["YdvGxJAMDRA1LF7j", "dWlekFwO94VBCV9q", "JhWva2FPBujX0geY"]}, {"partyID": "CpGJM4sqsPNJMiZX", "userIDs": ["XOFwmGWAvNF0Z0Gk", "wxUNYyNwGiKrknH0", "Y5mrQgLC6D2qsFiQ"]}, {"partyID": "HglUQMZi5WjMZfOa", "userIDs": ["dpgegCUjTdi1Ehr8", "OtqpNJ9R8TuNy4ej", "mVA3vMCsGyPd12B8"]}], "userIDs": ["QNUz0hFFNbH6j2W4", "roZM2UKAXEEsL5D0", "oiFchQnVeq3g2AB2"]}, {"parties": [{"partyID": "WIRUQmauIY5HXCZ0", "userIDs": ["W4XmWP0HzSdiylLh", "VYszm8xY33OQbumu", "2QHLyZNuysyM4OfC"]}, {"partyID": "zdQCXMAWnf87YPNO", "userIDs": ["e9Eevf1fhMg1E2k7", "QLFrVgtX7y0fPOie", "DCow2zXyFFVpM87y"]}, {"partyID": "qEwEacQMTlqN4LKk", "userIDs": ["xJ5v3SBafnKNiMPb", "FkFGA85W3HJkqgS2", "B37wwoPYOHiIsxms"]}], "userIDs": ["LBPBJuNLnWRrtW87", "0qD88ZcduZSe7W20", "UZcDaiq0nEZ7Pyhq"]}, {"parties": [{"partyID": "FJkDClOsKmfsgJdm", "userIDs": ["zsDPsWh1k0cQ08NG", "6dX2TZkil67kRngo", "Ua83ECh1gqPeS193"]}, {"partyID": "TNNzot3sVli3GN2X", "userIDs": ["TrFibRAhzzEWzWlT", "Y70qdgJRvpZrSpWX", "3KEe2BjV00ReCXFf"]}, {"partyID": "fjJJxlgjzIhpgOoI", "userIDs": ["OD74V21HWDAfvXwd", "xbyp4HAPbBbNPStV", "BUpKgOssFkz0F36p"]}], "userIDs": ["iDYXeHZ7FHls3nyv", "conqbHQqKLQKe3xm", "j6s0GqsWncp5Lrqb"]}], "ticketIDs": ["iKudv9z75SzoCV8Z", "Mi2o1nR482D6gNCl", "k9c87hosaPFC5zBW"], "tieTeamsSessionLifetime": false, "type": "gVZCj9ObVGT0Scwl", "version": 22}' \
    'm7MKclr5igjNTVIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PatchUpdateGameSession' test.out

#- 55 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "rH2X78hxJgaVfw5V"}' \
    'nyq8OzTE89WDNoMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSessionBackfillTicketID' test.out

#- 56 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'OmbfJrCJQIj1haAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GameSessionGenerateCode' test.out

#- 57 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'sKglqaCXE9ytpIO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicRevokeGameSessionCode' test.out

#- 58 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"btO3OwNEGSW5TaW4": "to7QCY2NGGvi9kg3", "rMIzNmhJTNQjKlwj": "fJ3TJ2xVpge70WsL", "fgbZieRvJI5sT9DH": "3DfLCv8q4Thmq09b"}, "platformID": "BgPAYxrBE9jlnTgt", "userID": "gW33wDwD9RKvQX4y"}' \
    'FQFdrRoM6FoqCYw7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionInvite' test.out

#- 59 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'AlxO6qdFpc71sSck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'JoinGameSession' test.out

#- 60 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "3ggZWJlSlCQMDji3"}' \
    '29PfVrvMEPtpsSNc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicPromoteGameSessionLeader' test.out

#- 61 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'pK1QkB2Sy8Ww79LV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'LeaveGameSession' test.out

#- 62 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'eVskqeUB7RSayqGF' \
    'guhh3bvadRthdbVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicKickGameSessionMember' test.out

#- 63 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'pebRA09rW8i8krFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionReject' test.out

#- 64 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'Jhe03coRFok5d3Ay' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetSessionServerSecret' test.out

#- 65 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "GrZO8GuoXNSoVEBG", "userIDs": ["7VbBPUWipz9C05Ya", "bFX4FCK5ucTFsAFz", "aO3yJpA3KMxBlrRy"]}, {"partyID": "tER1qdTelFAadM9y", "userIDs": ["66Drf4SSGGt3MiBK", "ohow3kKoaP1K4CDu", "H1mMIfOCDyVAHrHn"]}, {"partyID": "cR5dShqiBUI9esSs", "userIDs": ["XegSEhrPpK2q8kxR", "4BuEksS2A9VOA8H9", "VeHv0L2Acm960EYQ"]}], "proposedTeams": [{"parties": [{"partyID": "EuGJVl8xs1WId9Wl", "userIDs": ["alqshF9Rh2o7GCQG", "PCxwEdkyuT3MgzRe", "Rq0112ISArROIodc"]}, {"partyID": "mM6v2AEozWWaYvBL", "userIDs": ["E46bpuJip8JyxJ39", "vrtuWWrqTZbSqBSK", "p8AmgwhYzk33J34f"]}, {"partyID": "iTxK63OHpnUCGBVf", "userIDs": ["pctNFUsUQ6ZXQcb2", "o1J5euLAbBgejqc0", "apxqZ209BySn8aUa"]}], "userIDs": ["GlAyvIslt7N1qcxK", "s4nlf1MfqUZXkjHv", "cUOTlxNf09pefgFI"]}, {"parties": [{"partyID": "iJssShBKsQjXvfQg", "userIDs": ["QDt6ce8NDMErA82F", "rR1GSogkewIzTOqK", "kcjRh3l2gAJOTCbx"]}, {"partyID": "7J3gNLIlTk3Bpclr", "userIDs": ["k4hIRn0znIKzAEAH", "QpBOgHEP5l94s7Cb", "IJ7eHnVWOboMkyB7"]}, {"partyID": "FTexsOZ0b2p3b63K", "userIDs": ["rcwIcXMhGy83Xit6", "boOLGCcg16DqwdQP", "Q9HkSSV8e1MgTTLS"]}], "userIDs": ["2FgarY903INGIyEf", "RBEj7qms9AGQExPh", "gr9gGfC0GjvpgJfu"]}, {"parties": [{"partyID": "Bs1Vpqn47GVghTH2", "userIDs": ["wToOnq9U5lyW89Xw", "t3wmRTrDCjhnKvsH", "ezWTqgYPixtHk6lW"]}, {"partyID": "q6tEeUmU96FLEak0", "userIDs": ["mJqjRYldcTpdeCD9", "XPRi4bAQL7VE2wL8", "Y4JFVUdzA8bvXlDh"]}, {"partyID": "G7BrorbKIKuOXJPm", "userIDs": ["5ztrr09CDA8Ij5bG", "KSuopWQbaCvdPSq8", "Z27GpvHCDx55JZ5z"]}], "userIDs": ["6gujpFzlPspQD9IR", "IpDDubntPCFxfeoW", "2NdSWzOXjO1NQUqW"]}], "version": 69}' \
    'QyJCpKedhuzI7G9N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AppendTeamGameSession' test.out

#- 66 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'CKKXu1bqI2M5PmXf' \
    'KnQ7BYGjCUDMOrbm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionCancel' test.out

#- 67 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "oRvWnfmGFy0eUoOB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyJoinCode' test.out

#- 68 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'd90h9EDqSTOfoNew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGetParty' test.out

#- 69 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"WjwMWDKEt6JhbJ0f": {}, "wTDaq6b5RpMwhWPt": {}, "ndriXU9loOxpmEuw": {}}, "inactiveTimeout": 60, "inviteTimeout": 10, "joinability": "Vc12r0DVUGgGHkap", "maxPlayers": 94, "minPlayers": 59, "type": "mFI9TnvzEqBNMF9C", "version": 71}' \
    'vPxT5zbreMc9fBoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateParty' test.out

#- 70 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"3RHNDFjLKFrepy56": {}, "eW1kmb15QeIQF51c": {}, "4MqJzDSvELgBe6db": {}}, "inactiveTimeout": 29, "inviteTimeout": 90, "joinability": "b6ajBjgq6eY4PBNH", "maxPlayers": 75, "minPlayers": 73, "type": "Px62tHxDb06ZFy3u", "version": 13}' \
    'A009FAb21jxeWXk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPatchUpdateParty' test.out

#- 71 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '0y9uxgVLGgK8aVSC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGeneratePartyCode' test.out

#- 72 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'N6oCETQ8gIDRdD2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicRevokePartyCode' test.out

#- 73 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"wMXwKVXGPhEJsc7r": "ZpxaPHc9r8eToFmk", "HJ6BPOKFLxIwKssw": "647YwDudnGRufOUG", "fMjTU226l07jPlcY": "aqYM7YfBmhjI9Y28"}, "platformID": "qVceS9UX48dKPCFU", "userID": "IeyYEymNXzNX6TGh"}' \
    '4UdEweeBsJEvBbAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyInvite' test.out

#- 74 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "Cmlh6Z1oz9BaixUU"}' \
    'vmzbajE2gjooiDnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicPromotePartyLeader' test.out

#- 75 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '1NUb51lEgUwQ9tkW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyJoin' test.out

#- 76 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'aMOH47CAT7cBP091' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyLeave' test.out

#- 77 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '8JaEBQBP766LUnBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicPartyReject' test.out

#- 78 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'R84iAO7sBQt6YJ2t' \
    'WwF7RnP1oK3c4RVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyCancel' test.out

#- 79 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'jB0zi3XrYZUiN24o' \
    'l1qqbalgizL97ycJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyKick' test.out

#- 80 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"V5YqE2myQzl7X9fH": {}, "r6WvBxmBvNj3ktaD": {}, "f9B22HGgxakPt7IY": {}}, "configurationName": "zaZUTmvsEzLPnnGs", "inactiveTimeout": 27, "inviteTimeout": 11, "joinability": "H7yIS7b5TSDRIoMg", "maxPlayers": 44, "members": [{"ID": "Dc5APzfzXDELJFaI", "PlatformID": "aEMW5bhJyL72WDyh", "PlatformUserID": "BsCCbnfihnXKxGxa"}, {"ID": "upnTTq9ihZkvFKfS", "PlatformID": "HQh8I9xk3sFl0cbu", "PlatformUserID": "CRM69XKkLwioRaKn"}, {"ID": "Whlh80BhYe2fJDS6", "PlatformID": "T75Q4ulonMFjmYqE", "PlatformUserID": "1wJhfogWg2Apm0sU"}], "minPlayers": 51, "textChat": false, "type": "8aWn65Co0vdCk8so"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateParty' test.out

#- 81 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicGetRecentPlayer' test.out

#- 82 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetRecentTeamPlayer' test.out

#- 83 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"6JSaZAIadKDEZywo": {}, "nA2SrEdN2tmGuX6r": {}, "0gBVUUeKKlPKtE6g": {}}' \
    'nYxmkmCWbs5qugkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertSessionStorageLeader' test.out

#- 84 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"BUS6uwWrCQt86Jrg": {}, "8tLAJWpcyNkUvqn6": {}, "eXr6FNbKJ05Orya6": {}}' \
    'LSSUlugIAknXcSaV' \
    'YcAYp7qSiDvsfMUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertSessionStorage' test.out

#- 85 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["pWv46sXvpOjrpRo4", "mYrCeQUnYoID2UqO", "0iAXA9dB4ib8HDOJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 86 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetPlayerAttributes' test.out

#- 87 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "NiP8KgEAj3dbRTI0", "data": {"i6dO3zkbDseh4tJd": {}, "oGcwMBmegqVUaWMJ": {}, "BjrV0p9A7tcHrV0M": {}}, "platforms": [{"name": "bJGr4drgkDuWS05m", "userID": "0pGzazM2BUXnzUEW"}, {"name": "TiKMJAf6AgbiEDMf", "userID": "CckWogE5gcfF8AMG"}, {"name": "Z2FBS93Mg6TKwdRM", "userID": "raDLrwh3d0ykRGkg"}], "roles": ["qUNIbJMJ9ABbKVWO", "2YEDiqkwKbpdk7wl", "DngNiPPjpSAlZwFG"], "simultaneousPlatform": "pea5ObBB49Km4ClI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicStorePlayerAttributes' test.out

#- 88 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicDeletePlayerAttributes' test.out

#- 89 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicQueryMyGameSessions' test.out

#- 90 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
