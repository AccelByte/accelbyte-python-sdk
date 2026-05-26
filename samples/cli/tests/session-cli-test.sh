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
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"metricExcludedNamespaces": ["twYCA9kPI6LZrkq6", "Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh"], "regionRetryMapping": {"4n8mzZ0m8SAMTwE6": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "4CUkNmKJfh5pUkHO": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "vyE3cwyALczNIicX": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"]}, "regionURLMapping": ["n7Z4U68su8XfqlqN", "iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y"], "testGameMode": "sLEzth6mXhzkzWkF", "testRegionURLMapping": ["eZSoEAcBdW19m4eu", "6d5tA5jUmiTqpyhP", "FdxLzFQN05MYzYiK"], "testTargetUserIDs": ["We5dNRljv7IPrDQQ", "Rgat0SevkLGMS0ly", "uI9a2I9u6Vpbsx5w"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 96}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 15}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "activePlatforms": ["WytLPziZMdjxcBZu", "fQxGiHPllG4cYEzf", "TD1ZBm3MqHcUmLZZ"], "localizedSessionName": {"bSqb8RwNmn9HrNQy": {}, "4uZAAiE0mit9RGCC": {}, "HYzUOcEdscKHPEqg": {}}}, "PSNBaseUrl": "A8yu7Vk6Jt4Ymos9", "amsClaimTimeoutMinutes": 74, "appName": "5T7quIOvBMcaYmvC", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"GZ5dAgqxpBFmaLox": {}, "ozr6wfNPX2bOItRM": {}, "vqtlB2jJCSQT279Z": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Q9lNmqRBaAkLnvxk", "customURLGRPC": "T1X68cmDc3fxU8My", "deployment": "KrQpM4hkkK6KKXNB", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "J8aeCnaLpUKp44YU", "enableSecret": true, "fallbackClaimKeys": ["foWvXa3bMrXsDr6k", "ILsSSyDdmykmoPYg", "c2L4jk4Lo0LSP0pf"], "grpcSessionConfig": {"appName": "4IxjUkl535X3ateE", "customURL": "KDpADz1x3poD3Qgb", "functionFlag": 9}, "immutableStorage": false, "inactiveTimeout": 30, "inviteTimeout": 5, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 88, "manualRejoin": false, "maxActiveSessions": 88, "maxPlayers": 37, "minPlayers": 92, "name": "MzH7Qm8bwbmXgdAP", "partyCodeGeneratorString": "h1EThG96gAFKK2WD", "partyCodeLength": 12, "persistent": true, "preferredClaimKeys": ["DIHrvqAThuwjRHpK", "KTlmVr9XuoJbRFQS", "KVPHbn4Xxtu7LQRE"], "requestedRegions": ["NjEEztx1WsYSiZqa", "n0nSBJroav91GXlv", "PG6bFYReVHQipcCx"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 59, "type": "P2P"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'L7vIYhGGSyEW4ZJJ' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "KICK", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 57, "PSNSupportedPlatforms": ["hgo5QB65lSAiYnNj", "kfZrQvGgbLdLsFzH", "kBMr1yrOMlNFSrUE"], "SessionTitle": "irnjX9fDmIbeZxzf", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "G26yUZNmTBcvrbYC", "XboxServiceConfigID": "wZtxFHyPLtI8ilby", "XboxSessionTemplateName": "DPUIj88cekdqCt81", "XboxTitleID": "P1ktfIovmv9gsR5c", "activePlatforms": ["JcHm3SZLxoRDFuuu", "ySj29a9LJE8HoRS1", "X2PFAAMwzHPxB1Us"], "localizedSessionName": {"kYs4Yw20DOqOBSC2": {}, "DKHRuPMMWH8Yb33T": {}, "5UBJCjfcnLRfxeCS": {}}}, "PSNBaseUrl": "z9WEi8KlloeH0JT1", "amsClaimTimeoutMinutes": 51, "appName": "m5T50x9WT0GfH2rt", "asyncProcessDSRequest": {"async": false, "timeout": 0}, "attributes": {"msRE2w1yEkLgh3tI": {}, "Yt4SqYUTLDx9gIiD": {}, "andpGT2t24aOMh5e": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "HeHSKLCa3xreNDUW", "customURLGRPC": "ehwH3q31A806DJga", "deployment": "s4b6z3LNUj7fdgLA", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "Yk6QEgJjBbEDoNf3", "enableSecret": false, "fallbackClaimKeys": ["4mnRBkMNxvvKgAT8", "mJrYq6hRkloqxM3g", "pwxcfMy9XzjjI5Yb"], "grpcSessionConfig": {"appName": "sKoADkzJEN2VHzih", "customURL": "3bit0VWn3CO39PXD", "functionFlag": 81}, "immutableStorage": true, "inactiveTimeout": 48, "inviteTimeout": 95, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 24, "manualRejoin": false, "maxActiveSessions": 93, "maxPlayers": 8, "minPlayers": 61, "name": "O3FgkXhjDzaQY3sn", "partyCodeGeneratorString": "n2ZkP7cFdP43e5dC", "partyCodeLength": 1, "persistent": true, "preferredClaimKeys": ["9bRVhyaKwwrAP2aM", "lu7WtjCtoYetOO84", "7g8OudOfjnCuHZ3c"], "requestedRegions": ["46IjGa23YvYmmDg7", "VYPXIuvUYTZBRujI", "UE1Tq5jyAZvkRCMN"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 91, "type": "NONE"}' 'p7gh4TeUTkOkAYfJ' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'B8AT9t4Tv207Y2QD' --login_with_auth "Bearer foo"
session-admin-get-member-active-session '3oD5fLCr3OOlXVv8' 'ZGF7uYnGzpipNDig' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "NJma1MbqqZtfNWql"}' '4nmwAft4gqkNNlWk' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"D9eOziYRFOn0jJLH": {}, "C9LxhvNXTwGBCtoh": {}, "Ltl9Zuhytm5UDrT6": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["QXCs5SPBbRPZTF6o", "QAXVG7tnsZg5QgXj", "vyGJPN4eXbJE5Vs2"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'cyomQoIXimBJehyx' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "lNsjUgxBkF6wFPoJ", "deployment": "eQediogEhhM2rIiz", "description": "GdKvOPdq5xrgxSmy", "ip": "1DN9LFkYW5DQyj4b", "port": 19, "region": "FCmpo6sPwVOEDSJs", "serverId": "EK5QpNhlI2iS5EpG", "source": "hhvXYck0upMzUYnb", "status": "ENDED"}' 'RxpzwLR2AK6eXUGP' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'Jsw1fiP80G9Pclxc' 'ft2ulIJzPyrVEiOG' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '4UcqsuGKHhMRWLVd' '3DlhLuIpomM8sm1M' 'iaI1mX2tJoARtdbB' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["e7udsMrok0WvGYYn", "x4V709xbnGezKsDw", "G2omOR2nvYI9TVqJ"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'dvzcWbfUpaXp5JMl' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "5LL4bTxBmZjdrrIx", "clientSecret": "sB0NRsB1fPqqRRul", "scope": "pqpymDkQhtrHWwRV"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-upload-platform-credentials 'tmp.dat' 'wVBOqOHi8pWGd1ju' 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'hiqjRJOqB5F93zFQ' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'bJndUDpdONneAczb' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'BdHb2slt71B1SmZp' '2JZp50CnPb71ORYc' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'mQbTU5JX8ccLjMXJ' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'Rk0eaKQDOJvrTefg' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "lSs6g4iY9u02aCNY", "attributes": {"IWekp18lOC3mNqF7": {}, "Bl0LcghVHfPEspxw": {}, "hRON0bc1eMbEIjow": {}}, "autoJoin": true, "backfillTicketID": "KesKoELCpobBEG8X", "clientVersion": "645xpdXpai0rYaT5", "configurationName": "hOPjaf3H0tYighU0", "customURLGRPC": "VUfcYHJbBfAKSiPW", "deployment": "3VgsZXiR1DJ7HVWq", "dsSource": "MkNSawQUWDFJvJBW", "fallbackClaimKeys": ["ic7UkBeIXuqDuAXI", "66bQ71w0deoV9Lx5", "RDA1l2XcrciYNEzv"], "inactiveTimeout": 91, "inviteTimeout": 68, "joinability": "FRIENDS_OF_LEADER", "matchPool": "IPkhSgORcz5S5Bvm", "maxPlayers": 13, "minPlayers": 56, "password": "5uvuKNuy0ytZQ7M6", "preferredClaimKeys": ["Nzy1adnSKOLFKx1d", "X4LuWJu3pDMUAeeZ", "97SBROPYuG6XqP6o"], "requestedRegions": ["o7G73zdxTgOfnwId", "lNa29fDLh741IslK", "HzGlLKWUtDQs61OQ"], "serverName": "AoxyyQpRWCiiPDGQ", "storage": {"leader": {"hNPEwiJCf2XJVrlz": {}, "qQls1ozhLVA3kE8j": {}, "KvgatOEBM70TdlNB": {}}}, "teams": [{"parties": [{"partyID": "JYOmpu1VCarzBsV6", "userIDs": ["xnZ5Jrzzjrcaug6C", "WVG8SWP3glU6musw", "VJnNnN7kAa7j0riF"]}, {"partyID": "c5HTHQIoVsGo7dwV", "userIDs": ["9DBqFKHQkETJyTlU", "rwDTnoujQD4IEiH9", "Z5qXn3aoRtlqOECo"]}, {"partyID": "hViHA5CzgFSy8X1A", "userIDs": ["3PrIfapq5AAeMe4L", "3mDWORBVXTIIJM9X", "sYIIZxiXNMR9BgaW"]}], "teamID": "cFX3SUBhyoTsMWPA", "userIDs": ["xUMkawaGpAyrIwMi", "f3BOdkocVTd4BxqG", "WV6mTJ0sQs6XNbjv"]}, {"parties": [{"partyID": "qhnUVLWu8olKdxL6", "userIDs": ["ozRmDD0jJvlfV5Oe", "mPYdYT7DROCjtuzF", "MbAG9YI89hmguB8F"]}, {"partyID": "OTjMLo4b9rIzqYkE", "userIDs": ["pstyVTBcrM8rG0rH", "0zcswwVeMK6MbGIV", "Iu8vvwLc7KY3uVoJ"]}, {"partyID": "XTIMtpgkieDyF97l", "userIDs": ["GdMiHKxbWCYzo8yO", "2KTK9tmmOnYnOpas", "6ghP1y4Zi7s7QBlk"]}], "teamID": "44Z44B1GZgKg4uKx", "userIDs": ["aCgcGLuC3brWdTYC", "fHkIySok5DiXZtLW", "87rGysryod3dNQrm"]}, {"parties": [{"partyID": "sApRA6HX3RwrKt2e", "userIDs": ["cozL0TOg54vCE48L", "5oLF6M4lNa4JUMSH", "NgqRqCV7usamANkZ"]}, {"partyID": "lOX9Sfo95HgXqKhT", "userIDs": ["PkwfLM9uSybRzWek", "2gZvRrvr0n9d9lvc", "cKMLhrTrcBE2ItBS"]}, {"partyID": "3KtKZWe8aoFzAyBM", "userIDs": ["E74HUtipUWYhWV1q", "x8CzPML52faXUr9S", "k4lq2faBcAXXKlhv"]}], "teamID": "yH8paOJtxqMPpcVf", "userIDs": ["RwNj547fH0XrKEDp", "EY8VnocGAjci0V3t", "Bf2jnHGKXphn50c9"]}], "textChat": true, "textChatMode": "TEAM", "ticketIDs": ["ycMSQ4qfAacR0LgB", "5BUXvjcu2s6w3Vif", "nKqmTSoGH1XEfY6Q"], "tieTeamsSessionLifetime": true, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"Yn6WQ5UBEU1QAOHf": {}, "ZiGhxOdcuDXSxSc3": {}, "aZPV87pna08gxefT": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "YKhuxaEc7M4P7Uck"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'SC6ePeN8i4GrFES9' --login_with_auth "Bearer foo"
session-get-game-session 'z7xueHpATHccee9G' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"XhKcjmSEwdrkEnnq": {}, "KzFsLfYalUlfwEQK": {}, "jU7eHGebSVu0LQ40": {}}, "backfillTicketID": "kepEaC4dfiOMZfEh", "clientVersion": "Hr39pysFO3Zvc1BZ", "deployment": "G99LyvfvHEsJKQQe", "fallbackClaimKeys": ["wVLMUoAnaRcYp7FU", "jfIGaffoflEIByYq", "eKN0meGelYF5wWaD"], "inactiveTimeout": 16, "inviteTimeout": 24, "joinability": "FRIENDS_OF_LEADER", "matchPool": "ncV7vWgSHdfo07Uc", "maxPlayers": 40, "minPlayers": 24, "password": "PErqxyMyOK06MqQB", "preferredClaimKeys": ["ErxgjVBycvU4PbmR", "Dcrg0DjQjBECXvea", "7H1m2lJFRZ3ZprZ6"], "requestedRegions": ["0zMjhTHeh94TSenE", "5hCFkIf5weqZ18MH", "57l2Zsrh90ETtYmG"], "teams": [{"parties": [{"partyID": "ukz3MnlrjcHp6B8V", "userIDs": ["j7rXFgDnDkdZ9bpj", "b1tdA3QhjCMW64f4", "XhIjSoTB2NMKteza"]}, {"partyID": "pPr2QEPx3zTxBGtE", "userIDs": ["JIYppuUSsKoHw2hy", "d12uSE7BEv3aevq6", "iohU1cg4W1IS3Uv1"]}, {"partyID": "BpWoJBaqdg2FHcun", "userIDs": ["sS1lnaO2m9vqjhbe", "K2qN8g6x2PyYDo5R", "3hLiD5sf5y1JsxJN"]}], "teamID": "Gmyt0SQDUDoWBZVG", "userIDs": ["LlkUetzCAWc9x1aM", "jgGim51T107XIZRZ", "7tZdIs0xf4czdt7z"]}, {"parties": [{"partyID": "qmSKxOEQlVcx6Gqs", "userIDs": ["Bq8vdhWVnuYLgpZe", "hK0G2nmyuViB9kRT", "cSQdTnNYGeAfYFG3"]}, {"partyID": "wSkHKufBdS3ZOokZ", "userIDs": ["B4cXnAXyuGz6LlxH", "v8SwyagYvDJ3w3UN", "gIGj2jZtEYT8sIPS"]}, {"partyID": "E1XXPzySa0sZoFS6", "userIDs": ["xCOWMpyh9pMsQgb6", "4ELbzDMwyo4nIRys", "QdbufXjYnSoIFeou"]}], "teamID": "C2m38kXrDZWlGVE9", "userIDs": ["sJ4NpUtKp6M9I6nE", "wnZhsjwJeGwaPSDM", "Zz95OYKiqaZD63xe"]}, {"parties": [{"partyID": "5rruJVfLGea0Ztlz", "userIDs": ["UcuHAXz0UV31MfuG", "aXsAuGsZaSHevO0T", "QNEI3kfabxJWWSI1"]}, {"partyID": "ECUo1NPpeFhUztXD", "userIDs": ["gB7n4C97uAPP8PAT", "LpUpxeJlsBJT6Hh3", "OMjAjq2mK8lbSEEe"]}, {"partyID": "lxnb5QxWG2HFnZlA", "userIDs": ["6HKWW4fI1IQcoBQE", "LcNlZkqTZrKgXNwv", "m4e5GX6H742Oixht"]}], "teamID": "AoKiVm6URT95XhnU", "userIDs": ["cvWB28MpusuhhDJ5", "slzgiWZEtyd56Lfx", "nbY97jjYgXchCbkX"]}], "ticketIDs": ["X26uEdCfQaMAQuTK", "fC0I2kNjCMDtDMre", "ntgn3DhqciwIeShF"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 56}' 'b9vvxuJlhXbWhbwP' --login_with_auth "Bearer foo"
session-delete-game-session 'wToC6knjVwVnzaqS' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"fJiQFC2gXoda0kg1": {}, "6yUSpSOAjHJWwfCj": {}, "YwWkLob9gKLqs2nE": {}}, "backfillTicketID": "ZhpByfHZinxNfgPA", "clientVersion": "wkMBsznlBUqnLT4A", "deployment": "bGptKaWNvPbpg7yr", "fallbackClaimKeys": ["RvXfZ6rvgvEY3Hht", "1SwqTsKKKo37NHDO", "Qe91Ps3ztUIV0dS6"], "inactiveTimeout": 15, "inviteTimeout": 4, "joinability": "INVITE_ONLY", "matchPool": "FMXAMfVXe0GZeMgs", "maxPlayers": 89, "minPlayers": 62, "password": "smH1EQrYmkPKTPOl", "preferredClaimKeys": ["hTtSiZNCxuogFteT", "HJe4BhSSQkQD6WmO", "t6D7ufFVTOhvQpfb"], "requestedRegions": ["Bke8aEdd36xj6wyS", "oltDxsbzxrlaKEfk", "oYjY2o6ouRW9UtNq"], "teams": [{"parties": [{"partyID": "uwC3WgumrIz4NhGz", "userIDs": ["tZpr4U4fwQIiLXgm", "RasvjO4lj8m3XEwP", "2b4gd3xOeii8Jnms"]}, {"partyID": "sep2xD2NY0kABeGs", "userIDs": ["9yxahld1pO0Gyf5P", "O3COyMvczgEpzZ3F", "btxfhcRC7IVYa6iZ"]}, {"partyID": "5uFRYNn3SHiWxF0Y", "userIDs": ["buU5ar5qTLWUCy0A", "fgc050XIZRW491e9", "4mQjVOOBnIWhunEl"]}], "teamID": "qZUodp3IhtCSHy1e", "userIDs": ["i1fIrPvfHnRN06Ej", "RwEQlNapJRfk4f9Z", "cw1pEHAyNFxcVTKu"]}, {"parties": [{"partyID": "AQTGh5BxjWOozGoD", "userIDs": ["tsUuYo5p8ED5QZAu", "fwNa8lzfjv9oYMXM", "jlVHY1AHwF3vGoav"]}, {"partyID": "7MK0PcLnEkcokKwc", "userIDs": ["Q0baDT9OyJ2h23GU", "S2amU7syGlElXdEA", "OrVSnLocLVVYamQc"]}, {"partyID": "4wcG5nDBLJoJHbiQ", "userIDs": ["5duE5p4cfs2E41cK", "8QTwiIAvxSvNDlmM", "5nQFMGzs7fzjgyc4"]}], "teamID": "4mEh9tRk8knYSV30", "userIDs": ["lnroQehMDli6t9un", "QLYXxm09wpGAbpEm", "DY9vLh3u6EDsUmrV"]}, {"parties": [{"partyID": "6kH4OotKwG3UC6XC", "userIDs": ["nnZxF8CmQr17W65b", "r34rBBN9tU6TDm5G", "loFSKWM1eym5ydC6"]}, {"partyID": "p25xCWTqUOYZENJ1", "userIDs": ["QHZQxPRXH7uxBJEE", "CQE1li3Bg7Jxc9pU", "nZmvhidwCkZwqjYL"]}, {"partyID": "fTiCO1NDBvQvRPnA", "userIDs": ["z4VzW0CpoBCbyJsF", "5IjF1c0W338HS6CB", "gVRyihYNZ84CVhzi"]}], "teamID": "XV8HwSmvcvcDKF19", "userIDs": ["yVRafCjOuSYht83A", "dvBaagTiRJ8daGTV", "X3Bb7jlz5IfHgKjI"]}], "ticketIDs": ["9mwJSrN8jkIykR2z", "baI6PD7fEscShnGU", "GUtV9GJ279GDbLNw"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 24}' '3nq6VerzVCcI8y3C' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "z0YqCKUh5RD9vNAp"}' '4jinFpnQ5xF9wwbv' --login_with_auth "Bearer foo"
session-game-session-generate-code 'MZyeDeRnVfPUa6xV' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'VBcq3wZpFIYeAg79' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"HcLJXJ7mpVI6eTYA": "jdPlCiQQC35cj4Ky", "OVgvnWbfRJtsB7cU": "QZ2QUAxJrINPXppP", "NO3AfmXcgwC3IN6t": "vKgLB9QmJIOq9dP5"}, "platformID": "szG71utjsQ4CrRb9", "userID": "gUCeVz7fWbZIdhev"}' 'fZvyV7AcodcZwKjY' --login_with_auth "Bearer foo"
session-join-game-session '{"password": "DdmJOlzwm9Su4FnS"}' '98QqftSjq7sn8yre' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "ciPLfkVyyJsbGpO6"}' 'JgehDJxEN7JlZc8L' --login_with_auth "Bearer foo"
session-leave-game-session 'Mq1o2jZWu4yA3r0u' --login_with_auth "Bearer foo"
session-public-kick-game-session-member '4q1bTHXIjfJKyFlM' '0u1uuoVdn9yVoSlK' --login_with_auth "Bearer foo"
session-public-get-game-session-password 'NchPHNL4X3LLaGPG' --login_with_auth "Bearer foo"
session-public-update-game-session-password '{"newPassword": "dqLE8SohhhuiTnJa"}' 'rYYkHBDdSzBXdxap' --login_with_auth "Bearer foo"
session-public-game-session-reject 'whd5IQYBQuxLvPuW' --login_with_auth "Bearer foo"
session-get-session-server-secret 'YvE3fsNy9Z9OhxXv' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'Cp9y7fLD2qfCXnlU' 'nqxT1WsRNMZcA92h' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "zC7MNa8vVe4MHX6A"}' --login_with_auth "Bearer foo"
session-public-get-party 'gMep90AyyUJyAK5P' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"RMRMwdvl0hv6g62G": {}, "xBW2tQF5tkTjgJaM": {}, "YvNQOsDa4bkcgepq": {}}, "inactiveTimeout": 40, "inviteTimeout": 48, "joinability": "PASSWORD_PROTECTED", "maxPlayers": 19, "minPlayers": 19, "password": "brztee7QLTGAak7K", "type": "DS", "version": 100}' 'ol01DK97D2xnik42' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"miteR5eQAe1rzmmg": {}, "qBPRmd6mO4oI8KDq": {}, "ebm83raNBJ5y7axE": {}}, "inactiveTimeout": 22, "inviteTimeout": 75, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 72, "minPlayers": 9, "password": "oxZEDxGiBnNbn0za", "type": "DS", "version": 2}' 'CaOSlHXrUSA6sMJz' --login_with_auth "Bearer foo"
session-public-generate-party-code 'A5mtqISQ83TTbtef' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'XWznDe4LQdXfFBii' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"2RAMEX5RMjBFVZGY": "zQqV8d9mDdUIoiIJ", "FNxuNOmUSWw18T1I": "xVWCxdvPL9e4P01v", "xP8xj1LyEirURERn": "EMzpImW6sjAHyCK5"}, "platformID": "tNanGBrkzUvck3xT", "userID": "tmOFMebS4AdlNzwo"}' 'g2IhErkNhNcECWwc' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "hW6zL9SkbLlrNXnG"}' 'anMazb8jvRWenURH' --login_with_auth "Bearer foo"
session-public-get-party-password '48aJuALEcSqcE15u' --login_with_auth "Bearer foo"
session-public-update-party-password '{"newPassword": "6D31DjOsrs3CUYAT"}' 'dqnQGbqiqOkNeATj' --login_with_auth "Bearer foo"
session-public-read-party-session-storage '7eGjodd7CcJUrI6M' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage '{"AugK5kypNrp2nFe9": {}, "FmN86sK5LOq4ft5j": {}, "GcMICPUYnfG6jl9U": {}}' '4jReteIMgzISomCs' 'odJrhQW41q2OspCZ' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"bt3Uta5I0uGcL1ko": {}, "yHjCH5olYLETRpAB": {}, "AmO2EGvJ4UMS93yO": {}}' 'xNInDByhnoluO6ti' '0QP2ssiJ66OzOj84' --login_with_auth "Bearer foo"
session-public-party-join '{"password": "O6tgohjtC7bzjPpu"}' 'cddXJ5zifF8y959a' --login_with_auth "Bearer foo"
session-public-party-leave 'nrNSleywHbHig6IK' --login_with_auth "Bearer foo"
session-public-party-reject 'WVZ77KeRWdECaFGz' --login_with_auth "Bearer foo"
session-public-party-cancel 'fZ2hxcJ2Fnemn7M2' '3SzUo4hNBDh9ZFP1' --login_with_auth "Bearer foo"
session-public-party-kick 'OW0nXOErQPS4VsRo' 'YIK69yg9ADCGiXaL' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"s2xjHkinOD975nAR": {}, "HCmhNHSXuqIHsxva": {}, "UoXDmwWsukxncuD3": {}}, "configurationName": "QxCXMd00YBWCaVVm", "inactiveTimeout": 78, "inviteTimeout": 15, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 55, "members": [{"ID": "mfIZsWhkS476dGGJ", "PlatformID": "wJ00UH197MJ6zU7J", "PlatformUserID": "LMQyMWzYQCAaPJgo"}, {"ID": "xGJoJaSzUtY4ZD0X", "PlatformID": "tb0U4pH16NUsVY21", "PlatformUserID": "NVIs7NRen2Y3Ns0Q"}, {"ID": "JQeaWytPfds1BYx0", "PlatformID": "EaURydf8ZyyZeHAW", "PlatformUserID": "GgJUbUJRMbkcTglb"}], "minPlayers": 95, "password": "7gHPTPQbvLt2NRqJ", "textChat": false, "type": "P2P"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"jY3YYT9oTynmfIuB": {}, "WgJTNFfM8M0IW4oe": {}, "8KDgy0xZfAcNg14W": {}}' 's8TIP1LKiFQoLDvu' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"mfqrgSfnx2h61X9d": {}, "N1MGRXBJ6mVV7JS9": {}, "qjNLwvI8JdiY3RRi": {}}' 'LilmOGF6dLLIeIVI' 'jMcdlbdRXTGIrdNL' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["5gJPqTAjgqaTHf1A", "NTJ9Yk997XkGOdC6", "ItxDT8p4n4XCFkD1"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "VZw1ToLuPakQN1Mp", "data": {"Os1RVFrcg2CXxepx": {}, "78fvsyhE2BKtyTDS": {}, "IM7mkmvZ7Cmsh4US": {}}, "platforms": [{"name": "8o4jfMANPpmZDdMi", "userID": "CxmuCCVuFjS1GC1d"}, {"name": "2b92B4vEgj3HOmhc", "userID": "Wm428XejRF94NIY9"}, {"name": "nMrBZo0lNUBDShHD", "userID": "32vvL28FPwTiXfLc"}], "roles": ["xDC9Ynd02mECIQhf", "IhHtADUQ9zimQTQT", "95pFJUAJsyAfeKOu"], "simultaneousPlatform": "fV4f15NohXu6opxQ"}' --login_with_auth "Bearer foo"
session-public-delete-player-attributes --login_with_auth "Bearer foo"
session-public-query-my-game-sessions --login_with_auth "Bearer foo"
session-public-query-my-parties --login_with_auth "Bearer foo"
session-public-replace-session-storage-leader-v2 '{"GRt6PqlkL0diRhLC": {}, "10ih2EQfY3XCv4hd": {}, "Oa6FdZhNMd1onFjG": {}}' 'RbxtABPXDmgNEJBh' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader-v2 '{"gGq5GIDhNC66szbC": {}, "Cf73IFbRkPSSITz4": {}, "TjCrJHXGXku2YVuO": {}}' 'zhxHmnrrV9ZGWrZ0' --login_with_auth "Bearer foo"
session-public-replace-session-storage-user-v2 '{"5sxe6A6RpmKDebNk": {}, "ylbynkgT9vayLLii": {}, "zac7Ge6zKJdlt7rj": {}}' 'F5RaJwvkWVco2LTo' '5ijlvDF8qBWCQ9dL' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-user-v2 '{"WYyS8zdhMeBXH8x6": {}, "HdVfZVDAiU6iJOF7": {}, "JKZFNk2NKy59X8iO": {}}' 'g2sVBiCoeC5weXJl' '7PeiMH8z8dVej8N2' --login_with_auth "Bearer foo"
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
echo "1..104"

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
eval_tap 0 6 'AdminGetDSMCConfigurationDefault # SKIP deprecated' test.out

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
    '{"metricExcludedNamespaces": ["p6KlqwW4djrexcbH", "dEtoQvpV344RctmT", "ozCi8HeV6jbalHmq"], "regionRetryMapping": {"BBfi7sSF5BoGiTCV": ["sXsygWbjE2opXtds", "JQeJ1too0qvxphTL", "EEBGTtZyTjdKNKgY"], "azujsmSmylT1YtxI": ["q73aMb48jISd97KO", "RRhxSWLWLNfHRD3V", "15QaGGL46LuxJF3s"], "beqWBdQuWfgBAKx2": ["7MSBqabUXOGkkoMU", "Zn1YXj5zFZeOCOR9", "NvBQZSJPOIKrRBrY"]}, "regionURLMapping": ["Vzi9ui3lvozTt9Ts", "H7A0TuU2aL4bPkk1", "1sys6GdkDcos5uVJ"], "testGameMode": "0BJfZ0jvA54CSqZF", "testRegionURLMapping": ["DsO1skRjOU1SMfQV", "Qa6blj9Rdd85bdYU", "umPKVSZCg3XTc9vQ"], "testTargetUserIDs": ["e0dHJfF6KIuvnRCa", "9JktyBdxkZKrEWFw", "9GYxjiiOQAD77ci0"]}' \
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
    '{"durationDays": 45}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 10}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 89, "PSNSupportedPlatforms": ["sChSclSkb5aBi9K9", "zyv6gFZXI5nXJ7hL", "i6HweweRmyo91dIn"], "SessionTitle": "7QqXBDXJcrqKmXDw", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "EV6tCdrxw1KOPhuv", "XboxServiceConfigID": "HuYrGWDK41uMOC0m", "XboxSessionTemplateName": "RvSoaGk4ktF5wnJD", "XboxTitleID": "g9Q3WXiydCOInVol", "activePlatforms": ["sr6CHmj763vLwtYE", "JTSiXjcY5ZPkv90l", "yKSTWLxSFZ0LpupE"], "localizedSessionName": {"i5DbkVs3qFTi1t53": {}, "0Wj1WfzIvc3VlSXr": {}, "A3XUGud4tVjmxEf4": {}}}, "PSNBaseUrl": "XvVhFJTxFHITBg9x", "amsClaimTimeoutMinutes": 44, "appName": "unq3eOMHIKeTyBG5", "asyncProcessDSRequest": {"async": false, "timeout": 58}, "attributes": {"PHEaqbzHvDDl1jiL": {}, "w3XMGBA6JXDpA1tI": {}, "C45C0oaGouFu4hXO": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "n8jAdTn6xBhrciry", "customURLGRPC": "Lm67rkadH5Y41SLj", "deployment": "CPrFa05Xl5TPC5GO", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "4bmm7jPdKLddfdsU", "enableSecret": true, "fallbackClaimKeys": ["WKmCRRXBxlalCHtW", "lKxLpS8fLWoQ5nuJ", "hatQPxR7dvBVC5zg"], "grpcSessionConfig": {"appName": "OKLTDmHe8c1eJ9sd", "customURL": "e7Ryt4udIv22M18u", "functionFlag": 42}, "immutableStorage": true, "inactiveTimeout": 100, "inviteTimeout": 76, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 84, "manualRejoin": true, "maxActiveSessions": 56, "maxPlayers": 29, "minPlayers": 25, "name": "iR3UbJc1ZYapx7C4", "partyCodeGeneratorString": "77etqgfOJDUT0uKA", "partyCodeLength": 86, "persistent": true, "preferredClaimKeys": ["Rz3V7YbJM3bNLWHA", "bCZixe2cQ6O30lpz", "cBQMAEcNcJqrKxnM"], "requestedRegions": ["zSYoc4ZjiMY4H34B", "6wVd8ipcKDwQeUWt", "jCC2UH6jzMO3AfmO"], "textChat": false, "textChatMode": "GAME_AND_TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 78, "type": "P2P"}' \
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
    '6vtT27xv85K5MU2q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER", "KICK"], "PSNServiceLabel": 8, "PSNSupportedPlatforms": ["hCZxxPPdPwOtEuWB", "SO2jJepUnEEgja2m", "IE2kLTnJwc5XmkCu"], "SessionTitle": "L5W4tKt6G3j9LYdG", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "2PWsHiKYArAxnKBf", "XboxServiceConfigID": "BfDlrQQuAc10Djjw", "XboxSessionTemplateName": "Mv4vrIPRtvhQIyLa", "XboxTitleID": "rjaLOKnX51yAB8Pa", "activePlatforms": ["3uNGKhaLlJzJMSnJ", "IIgsAVmaGYxUX1B9", "oVuzG2CnYX2YBF2g"], "localizedSessionName": {"7TVtzYEHUodh3iUf": {}, "BthbepUCTWiZ1uqh": {}, "7GAi4FEIu44u83ZL": {}}}, "PSNBaseUrl": "RxYlYqlpq03BGdIk", "amsClaimTimeoutMinutes": 42, "appName": "oEogFVGR71rJOBy6", "asyncProcessDSRequest": {"async": false, "timeout": 40}, "attributes": {"sj1AKGBjnHmaAu4Y": {}, "K87DYAWWcbcbGWmK": {}, "gE8CZ4AELr5lraa5": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "5Cj8hgFsqHC9h5JP", "customURLGRPC": "iMEtgKuiGTYgwWv5", "deployment": "XldL6rOVGcRAn51r", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "QSxp4qTB54mKA3V9", "enableSecret": true, "fallbackClaimKeys": ["4ItzkMJ7cudf4r91", "6GPrhn2etVIQvRkQ", "JAtDUH9tx60AehGz"], "grpcSessionConfig": {"appName": "1ermJYXsYgL7TfyI", "customURL": "lAwjTZdRZJJzWZwv", "functionFlag": 94}, "immutableStorage": false, "inactiveTimeout": 50, "inviteTimeout": 2, "joinability": "CLOSED", "leaderElectionGracePeriod": 25, "manualRejoin": false, "maxActiveSessions": 91, "maxPlayers": 2, "minPlayers": 57, "name": "wMI4gGmvK9gW596F", "partyCodeGeneratorString": "wBNrFXt3TAuKBwBc", "partyCodeLength": 60, "persistent": true, "preferredClaimKeys": ["12ae6r3hHwya4Npd", "Ozg3hr6ucHf7dbh2", "iKNUl0qJqzoKMRMG"], "requestedRegions": ["541PAiNjULsx4SnK", "NXLMUaDSwwQlnNRZ", "JHBSB4fZWEFIZs28"], "textChat": false, "textChatMode": "GAME_AND_TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 21, "type": "NONE"}' \
    'Rvae4f4lhBPbarbW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Em8bVtZcfVCPdQhi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'm9QKUAFTVYelIlGJ' \
    'g9wdc8bihhWjfZpf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "cFBUsnnDJlmD1iEo"}' \
    'kbUiYzCQh2iNTwtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"ohddMzMTQ9P7sYLD": {}, "WAJOA75K4BYJ2fkq": {}, "YJoF2FI3vyyqRzc2": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["0O7FdsJP1G9tyBTf", "ERXdvgD1Qf7Ot2Dk", "Ut3yexZBRvxYnEBh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    '0qj0ltsqfiZrthVv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "yX0OCKDJE3RMUddw", "deployment": "SSgxCu8zru1DhGAY", "description": "OHR5BWa9VzIkaQEl", "ip": "1iUProNB6hI6IpGc", "port": 94, "region": "Y7kKU2u06Q4veujx", "serverId": "tyQENvJrBCqeg67d", "source": "4RWOqO4U0bitNQLz", "status": "ENDED"}' \
    'm3DQht4JwnPS2urJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'qerobWMZGVL5KLTx' \
    'ahWlS6XdBaKSLCgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'OPXM6XTUh2dJ90yq' \
    'HDNacl4F9G6Dl5TF' \
    'wBY6HKXAblkT8VGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
$PYTHON -m $MODULE 'session-admin-delete-bulk-parties' \
    '{"ids": ["SH8MGZGwiVj7eDTa", "ka9ABfX1IByPEOuP", "hGspRi3bhPQvBBJI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    '5JxytpcubN4AUUPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminReadPartySessionStorage' test.out

#- 36 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlatformCredentials' test.out

#- 37 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "PscZsXeJOD4DMtqf", "clientSecret": "IGiGJovgWSRxZ8N4", "scope": "UQ2fg3V1o2x0hL5D"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdatePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentials' test.out

#- 39 AdminDeletePlatformCredentialsByPlatformId
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials-by-platform-id' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 40 AdminSyncPlatformCredentials
$PYTHON -m $MODULE 'session-admin-sync-platform-credentials' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminSyncPlatformCredentials' test.out

#- 41 AdminUploadPlatformCredentials
$PYTHON -m $MODULE 'session-admin-upload-platform-credentials' \
    'tmp.dat' \
    'BDqMyIAzWze94MEd' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'crBXAupATO8uXsqV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'pdiWo8SjDAM0Riw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'wLYW3n4F3LD1EDwB' \
    'Xw5uBYeQZOzATNSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    '9E9yyNb7yaLXzAVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'ymOuhCkZu4htrsf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "eIFSovTGXaMsq8eP", "attributes": {"N1oco2jx8Upe8SjM": {}, "vpqM8puggOEdG47g": {}, "D5i2Ni6AnWn3NdEP": {}}, "autoJoin": false, "backfillTicketID": "Ponb59gQffkNOmub", "clientVersion": "xEJr2qEAuJbpZSrc", "configurationName": "bc4LWfKaY5c1tP5T", "customURLGRPC": "DuI5f6m4KC07CnsZ", "deployment": "e32hqEcB1ExYMBb3", "dsSource": "ckvoaJYdMqGegcg3", "fallbackClaimKeys": ["eRvBZXN3cjIXmFWR", "Jnj8xN7HDPTUEDPN", "1Kb4UTPWDXTSb55g"], "inactiveTimeout": 78, "inviteTimeout": 91, "joinability": "INVITE_ONLY", "matchPool": "Ts7Nf95lGlPrf6ob", "maxPlayers": 70, "minPlayers": 34, "password": "dnI6Ag7eUYcYJ4Qz", "preferredClaimKeys": ["XCmqr6gmPGaHP5SV", "PvRLiDi0mNHb6Lx8", "eq8SGNwEQO8dYXvB"], "requestedRegions": ["SYvJBwb6CjZUMRf2", "VJetWsokvx3BHuTE", "czr9KjQ3ttz8MTBt"], "serverName": "1xk9IyssSA8nP5PQ", "storage": {"leader": {"jpzk2Tb7iYdmNZWo": {}, "srsVBPZ64j0HUONs": {}, "cofwYLQcDvkaEIIP": {}}}, "teams": [{"parties": [{"partyID": "oJT83zEGXmVBZLyr", "userIDs": ["H9J7BoysmaORLkP5", "hc2Fh04JTsqDTynC", "ewqJligLlRxOelKy"]}, {"partyID": "kICRxF6HtlER2txs", "userIDs": ["4qrNARATn6KXOutl", "YBbLhL8KXx25FZfQ", "IodVBqQsBpCJBIXL"]}, {"partyID": "GYcwWVRK6UKk5ozr", "userIDs": ["XA4HZHNyq9odanhR", "1Zrm3thUvV87yfky", "cLSVdleSaAylsmLY"]}], "teamID": "e2phYOgT5kDTyPl3", "userIDs": ["dKF7NXEjrJMki8jv", "c3P8Gwjg3IOH0SDH", "gYKqxJiFJdrmj5vh"]}, {"parties": [{"partyID": "zgsJwex7wq8ZPlXN", "userIDs": ["aUNgdY2vfJuje5cP", "nmGjTvYa5Pqx1K7q", "cAoijBPAp6EPb988"]}, {"partyID": "NzxrDKVpULjjiw3N", "userIDs": ["eVG4DJi9DaMrc0WF", "gKjE945x2CPVYYG9", "WvoGmAmvaVV5Yfxn"]}, {"partyID": "UNcwjr7gSGhnfuF4", "userIDs": ["WZiQVICVpWd3UM08", "gMXhdf3juXW4JprI", "b3CJCAtvSG8Cfa9d"]}], "teamID": "zOJDGCTHIOFjeXbs", "userIDs": ["SgR43kIDzxBwqRJT", "zrHNZWUsq5lQo2jy", "29EJigqYhyVhURx1"]}, {"parties": [{"partyID": "yPeczRpdk0HATGyl", "userIDs": ["x2JG2KNGfhzfCTxx", "rsRRLee3TcJ7DQIi", "45aCDHN9mVug2zkV"]}, {"partyID": "f6KgpKOcn3tMD9UT", "userIDs": ["67bOwugFDa6wUQve", "hKqwCh86XmRkCEcf", "HDCdl59Wp9A3tXGv"]}, {"partyID": "e6DdK6uvg8f2cIoB", "userIDs": ["yk9fxtvsgeAxo57n", "KAbZpsbJ4Iu5KJ0y", "nxGBlacDCdFe8ATU"]}], "teamID": "qVxcSthrpnMUBsnU", "userIDs": ["fuQIcSbUt5UGkInF", "GpuUsdtq4dOwNESz", "CEW9dUVhZjLftC3s"]}], "textChat": true, "textChatMode": "GAME_AND_TEAM", "ticketIDs": ["8CpLCqPD9CeDEdCn", "nL6Kt1Bjj3b8QM8R", "r45ULqXQgvwD3PsK"], "tieTeamsSessionLifetime": true, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"JiWxQBwaS7rDBf2S": {}, "54phbdyGDt47f9GW": {}, "RlE9hqz6rjDNo4rh": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "jxUdMM83WekqfWv0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '4vvn9bk5qr8qs2mq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'tnGAqXUjNypF6MMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"WpdEJsPoaIbYz8cK": {}, "5jlpJdre5ur6yvWJ": {}, "DdvM7T7PX2vamIRZ": {}}, "backfillTicketID": "HzsIYOCUoiCXNjrd", "clientVersion": "QL2jdx1eIba1sB0H", "deployment": "sJ06DzfbzRYt4OVU", "fallbackClaimKeys": ["yumBeIqdQGZC5kM0", "3HHijsQRj7N8IAjm", "sonjj0ZR50BQ1U6a"], "inactiveTimeout": 64, "inviteTimeout": 61, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "V5uTcYsoahUrELQ1", "maxPlayers": 3, "minPlayers": 14, "password": "tjJOqQMgZWAU6E92", "preferredClaimKeys": ["nHJzvw7tnYtGfv0E", "JyjBu4EzwRjD7jmQ", "JeFPghqamSc5y0X4"], "requestedRegions": ["8eT7Mluexk87b9Z5", "BTsEA3EdmW8saabP", "4xRowfNojzPXI2v0"], "teams": [{"parties": [{"partyID": "prR3OEey0MkZwS6T", "userIDs": ["YwNN3UYhic03qGEg", "5fNzBVrjo3g8CfRw", "tyl1HeT7VEPgG40Q"]}, {"partyID": "yXzsOzgck078Igho", "userIDs": ["QBp2mWAOYksczxBS", "0OBCa2vWadLmQtYK", "mEMzicbuL2S3RiW8"]}, {"partyID": "dLTCBfGUdVEdvdQL", "userIDs": ["7sVwcZ2PofaJoSqt", "rEOqxH46fRTSZoDd", "T0fefo74eg3Nt2c0"]}], "teamID": "r4GqF0NHglOVuNZ9", "userIDs": ["LzNeJnBurh54CWbY", "b0Pebyt8b4DGscjw", "rizsFUgYwbaLvqvQ"]}, {"parties": [{"partyID": "2NbmDITuymTBjn3d", "userIDs": ["2sFzMS3QaVjZF7Ax", "6115Kg9U8vrQJXQx", "oIbVi2CLEk277Ivj"]}, {"partyID": "j1A647XQ3koaAfZI", "userIDs": ["im0sFPm1YN27bojD", "VaZLpx4kEWYkO6Kr", "KUMhJrASBh61hmWK"]}, {"partyID": "SSrF35anDGvur19V", "userIDs": ["18oIrUKXttgAI2Qd", "WJFLmoPEgd8EMspO", "s8nkic9gj5vyUMAA"]}], "teamID": "mIHYbsxG5N066FXb", "userIDs": ["88SbLOa21DiSFsm0", "XXQJWszvTQEuALzD", "Np1SZ58aDllwzTRH"]}, {"parties": [{"partyID": "ak1MXxj7Esrg7900", "userIDs": ["nml5BidsK9dCEzhV", "nOv0PQbVIaKiHfoe", "orY7A1otGFyv2SMj"]}, {"partyID": "bEr50qGdCZIc6EFq", "userIDs": ["BKxbS7Q2OgRucL1j", "wRXzfjDZZBmOau6s", "yme06c6SKLc2mEC3"]}, {"partyID": "IXl5XCbkOfHaGr5k", "userIDs": ["dazlypvt6lSLfU7H", "ByGXPMqxj4hBgVY3", "YAxZLKbcOdyjqf6Q"]}], "teamID": "4oiwoJcaRMEb15LB", "userIDs": ["lTVufc5ZyODR2NVy", "n4PRqf3eRbZqBAoK", "GcVCdMiSNV4qBrt1"]}], "ticketIDs": ["kcLmRv6EJtl5xWns", "b8oWq94RImNWVIJn", "hhwFDV1VitaomvWT"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 84}' \
    'sW4N70wYS4Kj7Yi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'VvoQNW8Yc481dYdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"GxJAMDRA1LF7jdWl": {}, "ekFwO94VBCV9qJhW": {}, "va2FPBujX0geYCpG": {}}, "backfillTicketID": "JM4sqsPNJMiZXXOF", "clientVersion": "wmGWAvNF0Z0GkwxU", "deployment": "NYyNwGiKrknH0Y5m", "fallbackClaimKeys": ["rQgLC6D2qsFiQHgl", "UQMZi5WjMZfOadpg", "egCUjTdi1Ehr8Otq"], "inactiveTimeout": 32, "inviteTimeout": 50, "joinability": "OPEN", "matchPool": "uoya4JgakZyUV7t7", "maxPlayers": 80, "minPlayers": 98, "password": "CsGyPd12B8QNUz0h", "preferredClaimKeys": ["FFNbH6j2W4roZM2U", "KAXEEsL5D0oiFchQ", "nVeq3g2AB2WIRUQm"], "requestedRegions": ["auIY5HXCZ0W4XmWP", "0HzSdiylLhVYszm8", "xY33OQbumu2QHLyZ"], "teams": [{"parties": [{"partyID": "NuysyM4OfCzdQCXM", "userIDs": ["AWnf87YPNOe9Eevf", "1fhMg1E2k7QLFrVg", "tX7y0fPOieDCow2z"]}, {"partyID": "XyFFVpM87yqEwEac", "userIDs": ["QMTlqN4LKkxJ5v3S", "BafnKNiMPbFkFGA8", "5W3HJkqgS2B37wwo"]}, {"partyID": "PYOHiIsxmsLBPBJu", "userIDs": ["NLnWRrtW870qD88Z", "cduZSe7W20UZcDai", "q0nEZ7PyhqFJkDCl"]}], "teamID": "OsKmfsgJdmzsDPsW", "userIDs": ["h1k0cQ08NG6dX2TZ", "kil67kRngoUa83EC", "h1gqPeS193TNNzot"]}, {"parties": [{"partyID": "3sVli3GN2XTrFibR", "userIDs": ["AhzzEWzWlTY70qdg", "JRvpZrSpWX3KEe2B", "jV00ReCXFffjJJxl"]}, {"partyID": "gjzIhpgOoIOD74V2", "userIDs": ["1HWDAfvXwdxbyp4H", "APbBbNPStVBUpKgO", "ssFkz0F36piDYXeH"]}, {"partyID": "Z7FHls3nyvconqbH", "userIDs": ["QqKLQKe3xmj6s0Gq", "sWncp5LrqbiKudv9", "z75SzoCV8ZMi2o1n"]}], "teamID": "R482D6gNClk9c87h", "userIDs": ["osaPFC5zBW3ZgVZC", "j9ObVGT0Scwl4kNm", "Ci15XTJTgCNNH7Rt"]}, {"parties": [{"partyID": "G5Xmo9Q0Wb07N17f", "userIDs": ["kxZSc6VbE0AGcekj", "MNHuPXtz8tXxrmza", "fMUguyDoN91uc28H"]}, {"partyID": "oSpGt1g0GGbT4Hf2", "userIDs": ["PPKOldkbgX9CWJKw", "XXSbv5eg9q86IaDF", "jjx6uZerWbtwTX9g"]}, {"partyID": "NRByjbE8lOLAfTXK", "userIDs": ["LzbrddqcKLa7Levx", "NHOSEhQRZIp693lR", "wtc43atCuCFxbfbz"]}], "teamID": "4aQERziPL4dHhOqG", "userIDs": ["5KDdUvk0LEi26Ls7", "mjRxNmvvNtjJNQep", "UTGhwlY4lPzlsCR5"]}], "ticketIDs": ["rVsyfcH7WjP7HuGz", "3b5WAEvdRF9bqMj4", "ro5B19VE838c7Oyd"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 52}' \
    '9rW8i8krFWJhe03c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "oRFok5d3AyGrZO8G"}' \
    'uoXNSoVEBG7VbBPU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'Wipz9C05YabFX4FC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'K5ucTFsAFzaO3yJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"A3KMxBlrRytER1qd": "TelFAadM9y66Drf4", "SSGGt3MiBKohow3k": "KoaP1K4CDuH1mMIf", "OCDyVAHrHncR5dSh": "qiBUI9esSsXegSEh"}, "platformID": "rPpK2q8kxR4BuEks", "userID": "S2A9VOA8H9VeHv0L"}' \
    '2Acm960EYQEuGJVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '{"password": "8xs1WId9WlalqshF"}' \
    '9Rh2o7GCQGPCxwEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "kyuT3MgzReRq0112"}' \
    'ISArROIodcmM6v2A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'EozWWaYvBLE46bpu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'Jip8JyxJ39vrtuWW' \
    'rqTZbSqBSKp8Amgw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGetGameSessionPassword
$PYTHON -m $MODULE 'session-public-get-game-session-password' \
    'hYzk33J34fiTxK63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetGameSessionPassword' test.out

#- 67 PublicUpdateGameSessionPassword
$PYTHON -m $MODULE 'session-public-update-game-session-password' \
    '{"newPassword": "OHpnUCGBVfpctNFU"}' \
    'sUQ6ZXQcb2o1J5eu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateGameSessionPassword' test.out

#- 68 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'LAbBgejqc0apxqZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionReject' test.out

#- 69 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    '09BySn8aUaGlAyvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'GetSessionServerSecret' test.out

#- 70 AppendTeamGameSession
eval_tap 0 70 'AppendTeamGameSession # SKIP deprecated' test.out

#- 71 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'slt7N1qcxKs4nlf1' \
    'MfqUZXkjHvcUOTlx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGameSessionCancel' test.out

#- 72 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "Nf09pefgFIiJssSh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoinCode' test.out

#- 73 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'BKsQjXvfQgQDt6ce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetParty' test.out

#- 74 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"8NDMErA82FrR1GSo": {}, "gkewIzTOqKkcjRh3": {}, "l2gAJOTCbx7J3gNL": {}}, "inactiveTimeout": 71, "inviteTimeout": 27, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 63, "minPlayers": 94, "password": "73GLmSZns5owBhoU", "type": "DS", "version": 71}' \
    '4LsGP6KLPXkvUv2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateParty' test.out

#- 75 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"iXaBzsmaxjTZPlLi": {}, "tytGka7Kv5TacQKF": {}, "4OlRGdmXxETLEQrr": {}}, "inactiveTimeout": 75, "inviteTimeout": 58, "joinability": "PASSWORD_PROTECTED", "maxPlayers": 55, "minPlayers": 18, "password": "V9alq3hK1G4kKooS", "type": "P2P", "version": 88}' \
    'NUZuiynZ64IwncZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPatchUpdateParty' test.out

#- 76 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'k82GF3eTC0vzZUDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGeneratePartyCode' test.out

#- 77 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '9dzGgGVxo9OHgfHu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicRevokePartyCode' test.out

#- 78 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"myfuBNisecYbcOpR": "45VDlvSc0Mr7ImwC", "wGqOf0bNs97KvKyj": "3MqS7Dcmtfh50eOb", "brmgjhWK0x0ZidAJ": "1CU1eD1La16Bw3Jb"}, "platformID": "UnUDh5yGjjv4Mwrv", "userID": "2vancmR6Z7rb21A2"}' \
    'E9pX0BWCMqPsRk5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicPartyInvite' test.out

#- 79 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "tdM5T3fDSrSHrkoq"}' \
    'v2mM6soMaTvQq2a9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPromotePartyLeader' test.out

#- 80 PublicGetPartyPassword
$PYTHON -m $MODULE 'session-public-get-party-password' \
    'YdFNtRVSO0js0hG9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyPassword' test.out

#- 81 PublicUpdatePartyPassword
$PYTHON -m $MODULE 'session-public-update-party-password' \
    '{"newPassword": "xmSnzd7zgUxAogcn"}' \
    'GkXk17QPkJHRhmLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyPassword' test.out

#- 82 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'QuQVFSKiXl8G2uf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicReadPartySessionStorage' test.out

#- 83 PublicUpdateInsertPartySessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage' \
    '{"E8EajXLSAS8MKMax": {}, "Q1QyJCpKedhuzI7G": {}, "9NCKKXu1bqI2M5Pm": {}}' \
    'XfKnQ7BYGjCUDMOr' \
    'bmoRvWnfmGFy0eUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicUpdateInsertPartySessionStorage' test.out

#- 84 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"OBd90h9EDqSTOfoN": {}, "ewWjwMWDKEt6JhbJ": {}, "0fwTDaq6b5RpMwhW": {}}' \
    'PtndriXU9loOxpmE' \
    'uwDVc12r0DVUGgGH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 85 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '{"password": "kapTCafFMdvYiCBu"}' \
    'zUUwyI6Vtd4v9k4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyJoin' test.out

#- 86 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'v3kMiuQ3DhsKLxjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicPartyLeave' test.out

#- 87 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '5srPFxBgpFtDBmTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicPartyReject' test.out

#- 88 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'H9kP9U53z6joBAhA' \
    'lJGI2YYb6ajBjgq6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicPartyCancel' test.out

#- 89 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'eY4PBNHKPx62tHxD' \
    'b06ZFy3uglSp2Uxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicPartyKick' test.out

#- 90 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"F2uLXWilRD7HD6LC": {}, "gdFxRGj00RT6Lvcn": {}, "GMJbJIYLssMvy9gk": {}}, "configurationName": "fTMRrXVRcAVRDX6g", "inactiveTimeout": 26, "inviteTimeout": 36, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 10, "members": [{"ID": "eToFmkHJ6BPOKFLx", "PlatformID": "IwKssw647YwDudnG", "PlatformUserID": "RufOUGfMjTU226l0"}, {"ID": "7jPlcYaqYM7YfBmh", "PlatformID": "jI9Y28qVceS9UX48", "PlatformUserID": "dKPCFUIeyYEymNXz"}, {"ID": "NX6TGh4UdEweeBsJ", "PlatformID": "EvBbAvCmlh6Z1oz9", "PlatformUserID": "BaixUUvmzbajE2gj"}], "minPlayers": 30, "password": "P6a280S5RNB5dVCs", "textChat": true, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicCreateParty' test.out

#- 91 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicGetRecentPlayer' test.out

#- 92 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicGetRecentTeamPlayer' test.out

#- 93 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"7xL4axSPgPCiwLxC": {}, "FLDixZwVtt3RVTl0": {}, "tR00oQgcHdGGK3x7": {}}' \
    '6U1EIcklttmrpgF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicUpdateInsertSessionStorageLeader' test.out

#- 94 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"szl0sMY8es36r1Fg": {}, "R70eNLHkVrEFd8xA": {}, "rWJuCAIfNBSHgpFN": {}}' \
    'w9K9pmAIc6VSfE9n' \
    'bE2PMv12ZSRJkujx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicUpdateInsertSessionStorage' test.out

#- 95 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["bCu1HFaj6Vxs3GuA", "4S1dS7H7yIS7b5TS", "DRIoMg7Dc5APzfzX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 96 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicGetPlayerAttributes' test.out

#- 97 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "LPxK1os4qR8LaQzE", "data": {"b39sZTdFfC8x5aHL": {}, "sXHlm1RJTTy9JrNz": {}, "1K5M1qgFddYvifGH": {}}, "platforms": [{"name": "awNx6yhniEHLbEQK", "userID": "c0aUvrKXDIjYC4df"}, {"name": "9qswSlpCI8DhjlxU", "userID": "yrs3OSesE5p0DwUj"}, {"name": "2HKUvPYUcQBxMSdO", "userID": "Osn2Nd8Jpa19GJDK"}], "roles": ["46Eehx7xasqMY9au", "lsL6NOV5agpS6A5m", "kufBpWVxIK9D2bTc"], "simultaneousPlatform": "gaKoccaSwWcZmzCW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicStorePlayerAttributes' test.out

#- 98 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicDeletePlayerAttributes' test.out

#- 99 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PublicQueryMyGameSessions' test.out

#- 100 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PublicQueryMyParties' test.out

#- 101 PublicReplaceSessionStorageLeaderV2
$PYTHON -m $MODULE 'session-public-replace-session-storage-leader-v2' \
    '{"GI1cIQcPWAShIhie": {}, "SKUf3zKbyQk2vQTY": {}, "X1xsth28NZZgsXyc": {}}' \
    'uQNGIDeHlf6IcX1K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PublicReplaceSessionStorageLeaderV2' test.out

#- 102 PublicUpdateInsertSessionStorageLeaderV2
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader-v2' \
    '{"9JrK6Or2xx7rLwrP": {}, "oWiywnxuDLLuIaSx": {}, "oloIH1gBCWVFrvls": {}}' \
    '0ZwosKhDlLfTKxpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PublicUpdateInsertSessionStorageLeaderV2' test.out

#- 103 PublicReplaceSessionStorageUserV2
$PYTHON -m $MODULE 'session-public-replace-session-storage-user-v2' \
    '{"OXvGSrdkqddI3ezq": {}, "u6FB0sL2xt6fX9j7": {}, "rhZCAlDlVKBsLZiB": {}}' \
    'RXszE7CL1cQCSoqH' \
    'vH7g63cOx6yrIw37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'PublicReplaceSessionStorageUserV2' test.out

#- 104 PublicUpdateInsertSessionStorageUserV2
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-user-v2' \
    '{"pKOLrF5i3gr3Cc4M": {}, "2O7NrTQO7KLdZDGw": {}, "qx7T3l1ut2oyolli": {}}' \
    'YsTJUmpscwLcUml3' \
    'KuoMKh7tprnacA34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PublicUpdateInsertSessionStorageUserV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
