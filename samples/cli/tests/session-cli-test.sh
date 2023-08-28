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
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 62}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 39}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "PSNSupportedPlatforms": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"], "SessionTitle": "n8mzZ0m8SAMTwE6I", "ShouldSync": true, "XboxServiceConfigID": "IaRDBXxyaNoMR6hk", "XboxSessionTemplateName": "spInrAip6lyzSxwE", "localizedSessionName": {"lFHHdgs21Jub74CU": {}, "kNmKJfh5pUkHODpo": {}, "MF78NY4YkHs1cnz1": {}}}, "PSNBaseUrl": "JSDgY1TXp38zsCTC", "autoJoin": true, "clientVersion": "cPiSuL0Sly6XM4OI", "deployment": "18mAQLnzjMf8GZ2W", "dsSource": "BZqxYG3aREAu2D6Q", "fallbackClaimKeys": ["VKNCWP75TB0i7pKx", "R8dl0zRVW4EZG9m0", "XcgGVbMqSszE8GHa"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 92, "joinability": "7AorKsxwkosAVerX", "maxActiveSessions": 31, "maxPlayers": 76, "minPlayers": 5, "name": "i5r6QEa1ysLEzth6", "persistent": false, "preferredClaimKeys": ["N9A3sNm84hddSpHt", "0P7MIIR7CkyF6C7d", "uuyZ0GhDogqrhBRd"], "requestedRegions": ["8lDR6qVNPRZYdFLI", "AjGGJddVCvu9vx5K", "Q7KYnIuMBvaO35ll"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "aT5kPxUfofvnnSuB"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '0y5WUlrMdI4sNvea' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 2, "PSNSupportedPlatforms": ["8sKgnuRkgghGoYup", "D391C2qtPYokahFj", "kQsfCaTmt1d67FXG"], "SessionTitle": "k2s9Q0mPVo3twu0M", "ShouldSync": false, "XboxServiceConfigID": "C6I3lMjGSWN2laRl", "XboxSessionTemplateName": "xfcjHfYakUCTqGkE", "localizedSessionName": {"7wcWfDslpJSqGAXQ": {}, "0yYoNRKd3IL5TAQ6": {}, "iiPlSC2uE4o5Vwdo": {}}}, "PSNBaseUrl": "3fePqIJA8IHtrkmu", "autoJoin": true, "clientVersion": "hpDDWVAla2l5BYNt", "deployment": "IuS5S5XUdjsoqwGy", "dsSource": "zzWi9gwQYv7t1o7T", "fallbackClaimKeys": ["Tr1DmrhZv15T7quI", "OvBMcaYmvCkGZ5dA", "gqxpBFmaLoxozr6w"], "immutableStorage": false, "inactiveTimeout": 50, "inviteTimeout": 80, "joinability": "liWMNW5NyLu0M3VH", "maxActiveSessions": 16, "maxPlayers": 72, "minPlayers": 58, "name": "EI8JlDbPWbQ6Q9lN", "persistent": false, "preferredClaimKeys": ["gdWyOtXi3choQrpO", "sDBU5SepjChB3V0v", "52Dlym6puQ23xoJ8"], "requestedRegions": ["aeCnaLpUKp44YUDj", "asWIPUvmEejtGeoy", "IPa8ZRrvjj7il35M"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "9oCMNqq98SjTvhZN"}' 'kSQ70D0H6BXksUC9' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'b6i5lZC9xv32e8c5' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["csSovoqsZNBdte9N", "DUPVJf6c2Z0QZxfg", "PubTDIHrvqAThuwj"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'RHpKKTlmVr9XuoJb' 'RFQSKVPHbn4Xxtu7' 'LQRENjEEztx1WsYS' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "iZqan0nSBJroav91", "clientSecret": "GXlvPG6bFYReVHQi", "scope": "pcCx9Zw5D2L7vIYh"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-read-session-storage 'GGSyEW4ZJJ42d3PB' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'ddN8S48l9lyNApfl' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'xqMrj3oZk03QXcKM' 'DYDDxHSZjtqXyJ58' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'f7Gc26SaiGVkydwY' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"WQG26yUZNmTBcvrb": {}, "YCwZtxFHyPLtI8il": {}, "byDPUIj88cekdqCt": {}}, "autoJoin": false, "backfillTicketID": "1P1ktfIovmv9gsR5", "clientVersion": "cJcHm3SZLxoRDFuu", "configurationName": "uySj29a9LJE8HoRS", "deployment": "1X2PFAAMwzHPxB1U", "dsSource": "skYs4Yw20DOqOBSC", "fallbackClaimKeys": ["2DKHRuPMMWH8Yb33", "T5UBJCjfcnLRfxeC", "Sz9WEi8KlloeH0JT"], "inactiveTimeout": 93, "inviteTimeout": 51, "joinability": "m5T50x9WT0GfH2rt", "matchPool": "Oa4EXsXzOXQAk4mq", "maxPlayers": 37, "minPlayers": 72, "preferredClaimKeys": ["xzTtuLl4XlbGL8QO", "xtjzm8y2wNhmwoYZ", "yI4EFZKBcYrCEAE7"], "requestedRegions": ["WIsfmx40NLRc6m8h", "eKnWhzfe2NubeoKF", "eIaFQCYoDPICpndu"], "serverName": "EEQlULdJz4mnRBkM", "teams": [{"UserIDs": ["NxvvKgAT8mJrYq6h", "RkloqxM3gpwxcfMy", "9XzjjI5YbsKoADkz"], "parties": [{"partyID": "JEN2VHzih3bit0VW", "userIDs": ["n3CO39PXDNxtXgeO", "3FgkXhjDzaQY3snn", "2ZkP7cFdP43e5dC9"]}, {"partyID": "XIBudfZgrbHDIDm4", "userIDs": ["hMzF4TxodenSrUTv", "fqU0bfoMm5cTtFWb", "otQyXJRcQWsmqPNs"]}, {"partyID": "92epxk0i8VxsZNer", "userIDs": ["eSvf9699mCEHThUJ", "kETAsSp7gh4TeUTk", "OkAYfJB8AT9t4Tv2"]}]}, {"UserIDs": ["07Y2QD3oD5fLCr3O", "OlXVv8ZGF7uYnGzp", "ipNDigNJma1MbqqZ"], "parties": [{"partyID": "tfNWql4nmwAft4gq", "userIDs": ["kNNlWkD9eOziYRFO", "n0jJLHC9LxhvNXTw", "GBCtohLtl9Zuhytm"]}, {"partyID": "5UDrT6QXCs5SPBbR", "userIDs": ["PZTF6oQAXVG7tnsZ", "g5QgXjvyGJPN4eXb", "JE5Vs2GcyomQoIXi"]}, {"partyID": "mBJehyxlNsjUgxBk", "userIDs": ["F6wFPoJeQediogEh", "hM2rIizGdKvOPdq5", "xrgxSmy1DN9LFkYW"]}]}, {"UserIDs": ["5DQyj4bj5Ro2ogaK", "t2ujQSa3Zdb65UXm", "y0Zp6iIaTIKUkmkk"], "parties": [{"partyID": "9QM0NBMA9ORxpzwL", "userIDs": ["R2AK6eXUGPJsw1fi", "P80G9Pclxcft2ulI", "JzPyrVEiOG4Ucqsu"]}, {"partyID": "GKHhMRWLVd3DlhLu", "userIDs": ["IpomM8sm1MiaI1mX", "2tJoARtdbBe7udsM", "rok0WvGYYnx4V709"]}, {"partyID": "xbnGezKsDwG2omOR", "userIDs": ["2nvYI9TVqJdvzcWb", "fUpaXp5JMl5LL4bT", "xBmZjdrrIxsB0NRs"]}]}], "textChat": true, "ticketIDs": ["XTvKCWwNTAhd2wrS", "0uPdjhdinpng5BLy", "8wbhMssAHjapIkY9"], "tieTeamsSessionLifetime": false, "type": "OqB5F93zFQbJndUD"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"pdONneAczbBdHb2s": {}, "lt71B1SmZp2JZp50": {}, "CnPb71ORYcmQbTU5": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "JX8ccLjMXJRk0eaK"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'QDOJvrTefglSs6g4' --login_with_auth "Bearer foo"
session-get-game-session 'iY9u02aCNYIWekp1' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"8lOC3mNqF7Bl0Lcg": {}, "hVHfPEspxwhRON0b": {}, "c1eMbEIjowLqc3ec": {}}, "backfillTicketID": "jXJbZDKKoxLE1Y3D", "clientVersion": "ymtj3giPg4x4yiPX", "deployment": "6ues1Hhhkg1yLVbL", "fallbackClaimKeys": ["FzHEP8cM4NTwr0KH", "aAsmTej52WKi6tAr", "AURt9plCSVq8PdH6"], "inactiveTimeout": 16, "inviteTimeout": 56, "joinability": "JPUAc0RVwXgAgntL", "matchPool": "MCuaXBWQi6BqPg4x", "maxPlayers": 36, "minPlayers": 4, "preferredClaimKeys": ["lCancUZGCHsZYoLf", "R1KtOv7Zy0b65uvu", "KNuy0ytZQ7M6Nzy1"], "requestedRegions": ["adnSKOLFKx1dX4Lu", "WJu3pDMUAeeZ97SB", "ROPYuG6XqP6oo7G7"], "teams": [{"UserIDs": ["3zdxTgOfnwIdlNa2", "9fDLh741IslKHzGl", "LKWUtDQs61OQAoxy"], "parties": [{"partyID": "yQpRWCiiPDGQhNPE", "userIDs": ["wiJCf2XJVrlzqQls", "1ozhLVA3kE8jKvga", "tOEBM70TdlNBJYOm"]}, {"partyID": "pu1VCarzBsV6xnZ5", "userIDs": ["Jrzzjrcaug6CWVG8", "SWP3glU6muswVJnN", "nN7kAa7j0riFc5HT"]}, {"partyID": "HQIoVsGo7dwV9DBq", "userIDs": ["FKHQkETJyTlUrwDT", "noujQD4IEiH9Z5qX", "n3aoRtlqOECohViH"]}]}, {"UserIDs": ["A5CzgFSy8X1A3PrI", "fapq5AAeMe4L3mDW", "ORBVXTIIJM9XsYII"], "parties": [{"partyID": "ZxiXNMR9BgaWcFX3", "userIDs": ["SUBhyoTsMWPAxUMk", "awaGpAyrIwMif3BO", "dkocVTd4BxqGWV6m"]}, {"partyID": "TJ0sQs6XNbjvqhnU", "userIDs": ["VLWu8olKdxL6ozRm", "DD0jJvlfV5OemPYd", "YT7DROCjtuzFMbAG"]}, {"partyID": "9YI89hmguB8FOTjM", "userIDs": ["Lo4b9rIzqYkEpsty", "VTBcrM8rG0rH0zcs", "wwVeMK6MbGIVIu8v"]}]}, {"UserIDs": ["vwLc7KY3uVoJXTIM", "tpgkieDyF97lGdMi", "HKxbWCYzo8yO2KTK"], "parties": [{"partyID": "9tmmOnYnOpas6ghP", "userIDs": ["1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc", "GLuC3brWdTYCfHkI"]}, {"partyID": "ySok5DiXZtLW87rG", "userIDs": ["ysryod3dNQrmsApR", "A6HX3RwrKt2ecozL", "0TOg54vCE48L5oLF"]}, {"partyID": "6M4lNa4JUMSHNgqR", "userIDs": ["qCV7usamANkZlOX9", "Sfo95HgXqKhTPkwf", "LM9uSybRzWek2gZv"]}]}], "ticketIDs": ["Rrvr0n9d9lvccKML", "hrTrcBE2ItBS3KtK", "ZWe8aoFzAyBME74H"], "tieTeamsSessionLifetime": true, "type": "jBOxrZDyvpcLYOWA", "version": 77}' 'NjxOnaEok4nOOCzf' --login_with_auth "Bearer foo"
session-delete-game-session 'sflhjbngJOUn18G5' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"MlfDTk8aG40Nlncc": {}, "eIZSwgAIkgzh4pTU": {}, "0Am4DZhl0bQxFJ3s": {}}, "backfillTicketID": "WCqQpQ2FbKPFMycM", "clientVersion": "SQ4qfAacR0LgB5BU", "deployment": "Xvjcu2s6w3VifnKq", "fallbackClaimKeys": ["mTSoGH1XEfY6QAYn", "6WQ5UBEU1QAOHfZi", "GhxOdcuDXSxSc3aZ"], "inactiveTimeout": 86, "inviteTimeout": 98, "joinability": "vwv7K8Asvt1j1Rx5", "matchPool": "9hesNWy2NvZ85DDK", "maxPlayers": 61, "minPlayers": 85, "preferredClaimKeys": ["AF8KDsBZOuYQJ03B", "AHZ7c53q7akMpcmn", "nx6RVBrop9v7aZK3"], "requestedRegions": ["h65hbN15zfQSfQrt", "fF3TQN0OcNDLr36v", "zohZyjMQAg5mPYhr"], "teams": [{"UserIDs": ["LTyU8OhgfY9JQYGF", "4bYXEcENx9xZlAch", "ob44lONDDwMvgI0H"], "parties": [{"partyID": "lyPR7wZNiVsF6xG2", "userIDs": ["mXEQdbzIVy8alncV", "7vWgSHdfo07UctPE", "rqxyMyOK06MqQBEr"]}, {"partyID": "xgjVBycvU4PbmRDc", "userIDs": ["rg0DjQjBECXvea7H", "1m2lJFRZ3ZprZ60z", "MjhTHeh94TSenE5h"]}, {"partyID": "CFkIf5weqZ18MH57", "userIDs": ["l2Zsrh90ETtYmGuk", "z3MnlrjcHp6B8Vj7", "rXFgDnDkdZ9bpjb1"]}]}, {"UserIDs": ["tdA3QhjCMW64f4Xh", "IjSoTB2NMKtezapP", "r2QEPx3zTxBGtEJI"], "parties": [{"partyID": "YppuUSsKoHw2hyd1", "userIDs": ["2uSE7BEv3aevq6io", "hU1cg4W1IS3Uv1Bp", "WoJBaqdg2FHcunsS"]}, {"partyID": "1lnaO2m9vqjhbeK2", "userIDs": ["qN8g6x2PyYDo5R3h", "LiD5sf5y1JsxJNGm", "yt0SQDUDoWBZVGLl"]}, {"partyID": "kUetzCAWc9x1aMjg", "userIDs": ["Gim51T107XIZRZ7t", "ZdIs0xf4czdt7zqm", "SKxOEQlVcx6GqsBq"]}]}, {"UserIDs": ["8vdhWVnuYLgpZehK", "0G2nmyuViB9kRTcS", "QdTnNYGeAfYFG3wS"], "parties": [{"partyID": "kHKufBdS3ZOokZB4", "userIDs": ["cXnAXyuGz6LlxHv8", "SwyagYvDJ3w3UNgI", "Gj2jZtEYT8sIPSE1"]}, {"partyID": "XXPzySa0sZoFS6xC", "userIDs": ["OWMpyh9pMsQgb64E", "LbzDMwyo4nIRysQd", "bufXjYnSoIFeouC2"]}, {"partyID": "m38kXrDZWlGVE9sJ", "userIDs": ["4NpUtKp6M9I6nEwn", "ZhsjwJeGwaPSDMZz", "95OYKiqaZD63xe5r"]}]}], "ticketIDs": ["ruJVfLGea0ZtlzUc", "uHAXz0UV31MfuGaX", "sAuGsZaSHevO0TQN"], "tieTeamsSessionLifetime": true, "type": "eI5yppBHoytVznCg", "version": 81}' 'o1NPpeFhUztXDgB7' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "n4C97uAPP8PATLpU"}' 'pxeJlsBJT6Hh3OMj' --login_with_auth "Bearer foo"
session-game-session-generate-code 'Ajq2mK8lbSEEelxn' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'b5QxWG2HFnZlA6HK' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "WW4fI1IQcoBQELcN", "userID": "lZkqTZrKgXNwvm4e"}' '5GX6H742OixhtAoK' --login_with_auth "Bearer foo"
session-join-game-session 'iVm6URT95XhnUcvW' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "B28MpusuhhDJ5slz"}' 'giWZEtyd56LfxnbY' --login_with_auth "Bearer foo"
session-leave-game-session '97jjYgXchCbkXX26' --login_with_auth "Bearer foo"
session-public-game-session-reject 'uEdCfQaMAQuTKfC0' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "I2kNjCMDtDMrentg", "userIDs": ["n3DhqciwIeShF9RK", "b9vvxuJlhXbWhbwP", "wToC6knjVwVnzaqS"]}, {"partyID": "fJiQFC2gXoda0kg1", "userIDs": ["6yUSpSOAjHJWwfCj", "YwWkLob9gKLqs2nE", "ZhpByfHZinxNfgPA"]}, {"partyID": "wkMBsznlBUqnLT4A", "userIDs": ["bGptKaWNvPbpg7yr", "RvXfZ6rvgvEY3Hht", "1SwqTsKKKo37NHDO"]}], "proposedTeams": [{"UserIDs": ["Qe91Ps3ztUIV0dS6", "hIH9c4VfkyrwpuXx", "baERbfgPmi0eHkt1"], "parties": [{"partyID": "mr9EOIFg0dnWIYN2", "userIDs": ["NVL70Iw157g00jr9", "b8MuYmmeKTmBNvGY", "xEQdf3ewoGGoY7xm"]}, {"partyID": "FNAmjDDCvs78mcMd", "userIDs": ["iS76YApGJ9ufwLYk", "qIgLuZS6hsQryiEt", "OAbpeUNf26UqkCfg"]}, {"partyID": "CUYBn2xaOBdPF0Jm", "userIDs": ["X8qwU1cTuHHPB5S3", "DvPRCzBrVUxmDOj3", "cvRFaTC11W0TGTCm"]}]}, {"UserIDs": ["4fZWuk6pQxDQpKqx", "LGeMvr9TsvcMQ7dB", "saIecRxIsZvD6rmz"], "parties": [{"partyID": "Vr5XT1Nxw0v1dMQ9", "userIDs": ["Rrbk6C2cVWf6ttvb", "U1PO6ApCD2VXidT7", "w0Oc15N8WXBPp17P"]}, {"partyID": "AewqSm5x3B4t7WQn", "userIDs": ["p8jXZedgt5cyNe27", "HLtwtVOaxgP6Jbct", "8puMybYGxD9IPmms"]}, {"partyID": "Lmu3kaPj0O4zd8Tb", "userIDs": ["7cUNGPTBxiFFCrn7", "djjs69FTFVGUVhvK", "hJCmeisql14mUHVb"]}]}, {"UserIDs": ["MPimNhcZsU3VAdMD", "cb4qlkiFAamqvZI2", "KwjqPBiWXade41s3"], "parties": [{"partyID": "rH34mB2yPlRpWjmH", "userIDs": ["ZAAvKTH8MuqIg0Cz", "kguwuJCW7EEFB67A", "ODbi9BzupBsFpYc7"]}, {"partyID": "7GtRUcCFeY5g4XgB", "userIDs": ["sbfzqxBPNe8ae1Il", "4aAtEbu4IjGdqthR", "xTjQ7gkZEY8rG0q0"]}, {"partyID": "Q2Qd2JzRbkF2I03d", "userIDs": ["IjvBbA6bfbYaJCJj", "fk2TUvn95FhO7VW3", "mbDVMDu87t0ldWf7"]}]}], "version": 18}' 'C6p25xCWTqUOYZEN' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "J1QHZQxPRXH7uxBJ"}' --login_with_auth "Bearer foo"
session-public-get-party 'EECQE1li3Bg7Jxc9' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"pUnZmvhidwCkZwqj": {}, "YLfTiCO1NDBvQvRP": {}, "nAz4VzW0CpoBCbyJ": {}}, "inactiveTimeout": 37, "inviteTimeout": 49, "joinability": "F5IjF1c0W338HS6C", "maxPlayers": 56, "minPlayers": 25, "type": "gVRyihYNZ84CVhzi", "version": 97}' 'rEQG02zccA8wvLsW' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"UNd6lPKvqDejvqkl": {}, "TSvDwuOrP9lzpiX0": {}, "VuFpZum7izxe7NPz": {}}, "inactiveTimeout": 18, "inviteTimeout": 47, "joinability": "Oa8E7wY76PxLv9HB", "maxPlayers": 63, "minPlayers": 95, "type": "PD7fEscShnGUGUtV", "version": 67}' 'XLKAmlDr19uJ3nq6' --login_with_auth "Bearer foo"
session-public-generate-party-code 'VerzVCcI8y3Cz0Yq' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'CKUh5RD9vNAp4jin' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "FpnQ5xF9wwbvMZye", "userID": "DeRnVfPUa6xVVBcq"}' '3wZpFIYeAg79HcLJ' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "XJ7mpVI6eTYAjdPl"}' 'CiQQC35cj4KyOVgv' --login_with_auth "Bearer foo"
session-public-party-join 'nWbfRJtsB7cUQZ2Q' --login_with_auth "Bearer foo"
session-public-party-leave 'UAxJrINPXppPNO3A' --login_with_auth "Bearer foo"
session-public-party-reject 'fmXcgwC3IN6tvKgL' --login_with_auth "Bearer foo"
session-public-party-kick 'B9QmJIOq9dP5szG7' '1utjsQ4CrRb9gUCe' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"Vz7fWbZIdhevfZvy": {}, "V7AcodcZwKjYDdmJ": {}, "Olzwm9Su4FnS98Qq": {}}, "configurationName": "ftSjq7sn8yreciPL", "inactiveTimeout": 10, "inviteTimeout": 4, "joinability": "kVyyJsbGpO6JgehD", "maxPlayers": 72, "members": [{"ID": "GmWGgTJfHlJl4tHG", "PlatformID": "a4XfZcd9CVnGqMX9", "PlatformUserID": "FieeEssWEUl07bhw"}, {"ID": "ntCVqiYOJf5KwMZQ", "PlatformID": "jzvjSozv6CTRDl0z", "PlatformUserID": "p9CzHFwinkBNi4gv"}, {"ID": "qgl6TZ9TGVPmv34h", "PlatformID": "6T7EsufmfxKYB4LM", "PlatformUserID": "6H6QXmpZ9X3fUSR1"}], "minPlayers": 23, "textChat": true, "type": "xLPBsmAUrD9L1IiD"}' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"6MlcEPhMDFzjHZ3s": {}, "IhzOx2CXKlvIomU3": {}, "pIxM9n8D2eLMe3lt": {}}' '9qfx2UDcgVE7L9FK' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"6e0MrPc4vtxk9hVK": {}, "lG56HlzGr7XjdyRJ": {}, "unZPkp6ccIBnWyPw": {}}' '8mj7gyQ7XdIszGRj' '46COPipH1MWVTHG0' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["qHJCWEfOJpZm9yEY", "WNGMy2pgSGSUOK68", "eqGJtWf1Ybgg8rdw"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "9bmrvHmO07KNqX9L", "data": {"M2IwEsdOGBXBwnzD": {}, "X8v3xgC1Ge9PdbTT": {}, "AJ2Gp1r0sVZ6LJAO": {}}, "platforms": [{"name": "ddIL2l3hPjNDKv2L", "userID": "WfXqjr8fS79En3wY"}, {"name": "owBdkaZ3y6i38XQj", "userID": "LDRqkpiFK5BtiQ27"}, {"name": "2Uo9UBJWodpdwsX1", "userID": "jorcyR0x3YiHF8IT"}], "roles": ["GPRQBCgIs1Q2lzxl", "0yF5m77TTh4gUoj8", "u2WRcLiEtzVlnkfl"]}' --login_with_auth "Bearer foo"
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
echo "1..66"

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

#- 4 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 67}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 26, "PSNSupportedPlatforms": ["anMazb8jvRWenURH", "48aJuALEcSqcE15u", "6D31DjOsrs3CUYAT"], "SessionTitle": "dqnQGbqiqOkNeATj", "ShouldSync": false, "XboxServiceConfigID": "HMkjzyBB4UFKiaoV", "XboxSessionTemplateName": "0VOem2yqPsMFxKyb", "localizedSessionName": {"PkbuS6x9cLJ1APnN": {}, "lsa2bRBr27fVMWuA": {}, "fDqLMR919IZPKOKi": {}}}, "PSNBaseUrl": "AVQXXOmqFHLbyXmg", "autoJoin": true, "clientVersion": "3Uta5I0uGcL1koyH", "deployment": "jCH5olYLETRpABAm", "dsSource": "O2EGvJ4UMS93yOxN", "fallbackClaimKeys": ["InDByhnoluO6ti0Q", "P2ssiJ66OzOj84O6", "tgohjtC7bzjPpucd"], "immutableStorage": false, "inactiveTimeout": 15, "inviteTimeout": 72, "joinability": "jLBtn9pxpE7BYtzB", "maxActiveSessions": 8, "maxPlayers": 56, "minPlayers": 49, "name": "4CxyQrUpIFvORxTi", "persistent": true, "preferredClaimKeys": ["dECaFGzfZ2hxcJ2F", "nemn7M23SzUo4hNB", "Dh9ZFP1OW0nXOErQ"], "requestedRegions": ["PS4VsRoYIK69yg9A", "DCGiXaLs2xjHkinO", "D975nARHCmhNHSXu"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "3ahvxw9gwwhTnjN6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'wKZGW4y3f0R9s2kn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 6, "PSNSupportedPlatforms": ["VVmM45mfIZsWhkS4", "76dGGJwJ00UH197M", "J6zU7JLMQyMWzYQC"], "SessionTitle": "AaPJgoxGJoJaSzUt", "ShouldSync": true, "XboxServiceConfigID": "4ZD0Xtb0U4pH16NU", "XboxSessionTemplateName": "sVY21NVIs7NRen2Y", "localizedSessionName": {"3Ns0QJQeaWytPfds": {}, "1BYx0EaURydf8Zyy": {}, "ZeHAWGgJUbUJRMbk": {}}}, "PSNBaseUrl": "cTglbU86FyOjApNH", "autoJoin": true, "clientVersion": "2NRqJGIKzLyH1y72", "deployment": "L13Ornyx34luLdvt", "dsSource": "sTKXMjiw6gYPvfn2", "fallbackClaimKeys": ["Qt9iyq3Nyk8ncu2Z", "3eDHH9WaVO4iKhDc", "J7TCcNIsQ3PuppUx"], "immutableStorage": true, "inactiveTimeout": 25, "inviteTimeout": 92, "joinability": "VV7JS9qjNLwvI8Jd", "maxActiveSessions": 18, "maxPlayers": 81, "minPlayers": 2, "name": "3RRiLilmOGF6dLLI", "persistent": false, "preferredClaimKeys": ["fGt9GlyZVQ4X67tP", "ZSTpPq3xjrElvvDg", "w0ag7kSWE0Hiqm5I"], "requestedRegions": ["uLryiEXqvUWDjU1G", "0EVjVZw1ToLuPakQ", "N1MpOs1RVFrcg2CX"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "btZTGJpqgl2IzNXG"}' \
    'TuQPIDpor7t1aJLN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Nz6QIVC9Mfuc8VOs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["nmnlVljdWYmELe74", "p38vumnxAnYBTxaT", "Iz0jcgDI8Pkz96vd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '80msqIm5bufnBqrp' \
    'LeqhwVhjnnjKMEmt' \
    'biWsAQHbMrKYi0Zx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "s5SWCqZXHLLa31oQ", "clientSecret": "f7BULnZDhutDM6Bq", "scope": "guqD5xxGxBWtnTKU"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'e2znsqPzPkwCBo2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminReadSessionStorage' test.out

#- 25 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'wCUsTag4MLAo3m61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteUserSessionStorage' test.out

#- 26 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'P2xaNfmn8Onb1a9g' \
    'Mz0F2UBRmMhAbUWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminReadUserSessionStorage' test.out

#- 27 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminQueryPlayerAttributes' test.out

#- 28 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'FhdYLWzMuv3zkUY0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerAttributes' test.out

#- 29 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"n0BAZkwbYkBLyO6A": {}, "0FqfhnaB3YxKNdOT": {}, "acCcJfIfXshuLUk5": {}}, "autoJoin": false, "backfillTicketID": "05sxe6A6RpmKDebN", "clientVersion": "kylbynkgT9vayLLi", "configurationName": "izac7Ge6zKJdlt7r", "deployment": "jF5RaJwvkWVco2LT", "dsSource": "o5ijlvDF8qBWCQ9d", "fallbackClaimKeys": ["LWYyS8zdhMeBXH8x", "6HdVfZVDAiU6iJOF", "7JKZFNk2NKy59X8i"], "inactiveTimeout": 83, "inviteTimeout": 12, "joinability": "MYXlrJ81lHvv9rqv", "matchPool": "EoM8YmVjAkO3HKsE", "maxPlayers": 32, "minPlayers": 44, "preferredClaimKeys": ["6KlqwW4djrexcbHd", "EtoQvpV344RctmTo", "zCi8HeV6jbalHmqB"], "requestedRegions": ["Bfi7sSF5BoGiTCVs", "XsygWbjE2opXtdsJ", "QeJ1too0qvxphTLE"], "serverName": "EBGTtZyTjdKNKgYa", "teams": [{"UserIDs": ["zujsmSmylT1YtxIq", "73aMb48jISd97KOR", "RhxSWLWLNfHRD3V1"], "parties": [{"partyID": "5QaGGL46LuxJF3sb", "userIDs": ["eqWBdQuWfgBAKx27", "MSBqabUXOGkkoMUZ", "n1YXj5zFZeOCOR9N"]}, {"partyID": "vBQZSJPOIKrRBrYV", "userIDs": ["zi9ui3lvozTt9TsH", "7A0TuU2aL4bPkk11", "sys6GdkDcos5uVJ0"]}, {"partyID": "BJfZ0jvA54CSqZFD", "userIDs": ["sO1skRjOU1SMfQVQ", "a6blj9Rdd85bdYUu", "mPKVSZCg3XTc9vQe"]}]}, {"UserIDs": ["0dHJfF6KIuvnRCa9", "JktyBdxkZKrEWFw9", "GYxjiiOQAD77ci0v"], "parties": [{"partyID": "fWVZoRRMPi57HyKK", "userIDs": ["z5nyI6ulKNKoXa0d", "gx1JgjC56pda3Yht", "QxpCYME6x21pdX2Q"]}, {"partyID": "SPAd9sxoLnWGP1Pa", "userIDs": ["fIjLX8ce0KbNN7Yc", "l2JfmQplvGjVQ4ae", "bjfgGu472oWJlfgl"]}, {"partyID": "LM4xjfkNL4lU6jaG", "userIDs": ["fsD1cfswmeFpvtDt", "etoQVFL8LNW11vtp", "aTxi7k489jRCn48b"]}]}, {"UserIDs": ["vkCPfKofwXOIZZQA", "Jza84lKKmVOaTS6x", "BbNrSUAW2ak7ISDr"], "parties": [{"partyID": "BVg6NuDZvPb1kuUf", "userIDs": ["NfUDe4g7q6PHEaqb", "zHvDDl1jiLw3XMGB", "A6JXDpA1tIC45C0o"]}, {"partyID": "aGouFu4hXONgUwJn", "userIDs": ["UpryDeRcpUvlrw2M", "wC1uuokpaIjL0Vxe", "5n9Lx3QcFo9gxOgv"]}, {"partyID": "Dc7xMrRKvw8ISP2W", "userIDs": ["KmCRRXBxlalCHtWl", "KxLpS8fLWoQ5nuJh", "atQPxR7dvBVC5zgO"]}]}], "textChat": false, "ticketIDs": ["TDmHe8c1eJ9sde7R", "yt4udIv22M18uux9", "xBomQFPFWy5cwNPI"], "tieTeamsSessionLifetime": false, "type": "C477etqgfOJDUT0u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateGameSession' test.out

#- 30 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"KAPrARya2IMlNiXp": {}, "F4qvsUUpHqi33TcB": {}, "Gkc0HjUcnkpU9oVz": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicQueryGameSessions' test.out

#- 31 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "l2kBuLFXIeCEKZUT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicSessionJoinCode' test.out

#- 32 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'z3GvCAZ5j24acYHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGameSessionByPodName' test.out

#- 33 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'rryHB6GO9zP3Faep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetGameSession' test.out

#- 34 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"A3b3YJ9nJM6vtT27": {}, "xv85K5MU2qmbeqaV": {}, "emINdClpF7OvlBIE": {}}, "backfillTicketID": "gjse5kd6GEDo08yq", "clientVersion": "5E5HleLoog4me2NB", "deployment": "Fp62xlXvVcJerTPW", "fallbackClaimKeys": ["02PWsHiKYArAxnKB", "fBfDlrQQuAc10Djj", "wMv4vrIPRtvhQIyL"], "inactiveTimeout": 0, "inviteTimeout": 36, "joinability": "qfKegvFTD1sPykS8", "matchPool": "YLmwtYgWGcA0h4G1", "maxPlayers": 77, "minPlayers": 70, "preferredClaimKeys": ["Z1HaX5UBMbsF44VT", "sLDRzdq22cbnyK3g", "gFDh2kaZP7pnnVfx"], "requestedRegions": ["Pwc259HF9ejHaILQ", "ruAuYyJLYGqMv824", "ouSgkpK70uJmUL0u"], "teams": [{"UserIDs": ["zElixc023dIvDiA0", "tQWlHwBcTtztx3VA", "l6tXFbnATCzUOIzV"], "parties": [{"partyID": "cy9k3ie64Vnwa0Cl", "userIDs": ["GQJultJe32AiwKad", "EoIVmprwPsa9YD92", "CX0rITajpwHITGeH"]}, {"partyID": "TnqRbzBB9ZFgJbQ3", "userIDs": ["Fj1umx4ItzkMJ7cu", "df4r916GPrhn2etV", "IQvRkQJAtDUH9tx6"]}, {"partyID": "0AehGz1ermJYXsYg", "userIDs": ["L7TfyIlAwjTZdRZJ", "JzWZwvTX2bamSCvX", "1nwvSWdDwD7WJHzg"]}]}, {"UserIDs": ["NZUKsI5y0mR3zMyT", "sftKqnsIJctAdxyZ", "VKHA9DkaSOWgtg8y"], "parties": [{"partyID": "w8lHEbVDwBAqanOl", "userIDs": ["scRIWw82k5K5VTkd", "ubkOFldMCQ98JH4n", "0JtgqzZv5kVu4S95"]}, {"partyID": "mj8YRvae4f4lhBPb", "userIDs": ["arbWEm8bVtZcfVCP", "dQhim9QKUAFTVYel", "IlGJg9wdc8bihhWj"]}, {"partyID": "fZpfcFBUsnnDJlmD", "userIDs": ["1iEokbUiYzCQh2iN", "TwtnohddMzMTQ9P7", "sYLDWAJOA75K4BYJ"]}]}, {"UserIDs": ["2fkqYJoF2FI3vyyq", "Rzc20O7FdsJP1G9t", "yBTfERXdvgD1Qf7O"], "parties": [{"partyID": "t2DkUt3yexZBRvxY", "userIDs": ["nEBhXtAVxCd3meTr", "T7cF9oVCh89wNOkK", "YssVejcL3kR3hCGN"]}, {"partyID": "gaJmuALlMQl9RLrt", "userIDs": ["hbfp0VgweLlT2sY3", "SsTnDQY7kKU2u06Q", "4veujxtyQENvJrBC"]}, {"partyID": "qeg67d4RWOqO4U0b", "userIDs": ["itNQLzwRoWnR0Abk", "CPY70FmvviVIBbcu", "jF8Vk5qb8NhWWwax"]}]}], "ticketIDs": ["yMchkt8l5IPSrwrJ", "l7wYIVw13NCo9yXl", "bQ52FTHTCj6SEAzT"], "tieTeamsSessionLifetime": false, "type": "TOpyiuvvQUm29Iac", "version": 33}' \
    '7eDTaka9ABfX1IBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSession' test.out

#- 35 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'PEOuPhGspRi3bhPQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteGameSession' test.out

#- 36 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"vBBJI5JxytpcubN4": {}, "AUUPFPscZsXeJOD4": {}, "DMtqfIGiGJovgWSR": {}}, "backfillTicketID": "xZ8N4UQ2fg3V1o2x", "clientVersion": "0hL5DuBDqMyIAzWz", "deployment": "e94MEdJFAy2JTllJ", "fallbackClaimKeys": ["kRGB8jqJEd6eqqsB", "VyONV0JRtozI0jpl", "iCFQ6WgJpGPigdc5"], "inactiveTimeout": 98, "inviteTimeout": 49, "joinability": "OzATNSV9E9yyNb7y", "matchPool": "aLXzAVYymOuhCkZu", "maxPlayers": 61, "minPlayers": 16, "preferredClaimKeys": ["zJ20NFRJIhFXR2dY", "prPmbpuptECGd5cd", "XC2Sesc6y68whNBY"], "requestedRegions": ["l9iCqfW6rqGOQny4", "ij4ysYPonb59gQff", "kNOmubxEJr2qEAuJ"], "teams": [{"UserIDs": ["bpZSrcbc4LWfKaY5", "c1tP5TDuI5f6m4KC", "07CnsZe32hqEcB1E"], "parties": [{"partyID": "xYMBb3ckvoaJYdMq", "userIDs": ["Gegcg3eRvBZXN3cj", "IXmFWRJnj8xN7HDP", "TUEDPN1Kb4UTPWDX"]}, {"partyID": "TSb55g8LSTs7Nf95", "userIDs": ["lGlPrf6obIdnI6Ag", "7eUYcYJ4QzXCmqr6", "gmPGaHP5SVPvRLiD"]}, {"partyID": "i0mNHb6Lx8eq8SGN", "userIDs": ["wEQO8dYXvBSYvJBw", "b6CjZUMRf2VJetWs", "okvx3BHuTEczr9Kj"]}]}, {"UserIDs": ["Q3ttz8MTBt1xk9Iy", "ssSA8nP5PQjpzk2T", "b7iYdmNZWosrsVBP"], "parties": [{"partyID": "Z64j0HUONscofwYL", "userIDs": ["QcDvkaEIIPoJT83z", "EGXmVBZLyrH9J7Bo", "ysmaORLkP5hc2Fh0"]}, {"partyID": "4JTsqDTynCewqJli", "userIDs": ["gLlRxOelKykICRxF", "6HtlER2txs4qrNAR", "ATn6KXOutlYBbLhL"]}, {"partyID": "8KXx25FZfQIodVBq", "userIDs": ["QsBpCJBIXLGYcwWV", "RK6UKk5ozrXA4HZH", "Nyq9odanhR1Zrm3t"]}]}, {"UserIDs": ["hUvV87yfkycLSVdl", "eSaAylsmLYe2phYO", "gT5kDTyPl3dKF7NX"], "parties": [{"partyID": "EjrJMki8jvc3P8Gw", "userIDs": ["jg3IOH0SDHgYKqxJ", "iFJdrmj5vhzgsJwe", "x7wq8ZPlXNaUNgdY"]}, {"partyID": "2vfJuje5cPnmGjTv", "userIDs": ["Ya5Pqx1K7qcAoijB", "PAp6EPb988NzxrDK", "VpULjjiw3NeVG4DJ"]}, {"partyID": "i9DaMrc0WFgKjE94", "userIDs": ["5x2CPVYYG9WvoGmA", "mvaVV5YfxnUNcwjr", "7gSGhnfuF4WZiQVI"]}]}], "ticketIDs": ["CVpWd3UM08gMXhdf", "3juXW4JprIb3CJCA", "tvSG8Cfa9dzOJDGC"], "tieTeamsSessionLifetime": true, "type": "IOFjeXbsSgR43kID", "version": 52}' \
    '0JfMpPrSqYypRUnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PatchUpdateGameSession' test.out

#- 37 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "5o4ETeCUYG9ccTt7"}' \
    'Wxw8OQ13t3uTw6zQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateGameSessionBackfillTicketID' test.out

#- 38 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'uoZcXQpoTOxe8y1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GameSessionGenerateCode' test.out

#- 39 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'orNsg9ZKYCKoISyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicRevokeGameSessionCode' test.out

#- 40 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "tHzoWGdYohxMp3uO", "userID": "QIybqWfG9BJ6FVKl"}' \
    'bYHtbPtaxvagSlpG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGameSessionInvite' test.out

#- 41 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'gVTF6VeDAPOGBwwe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'JoinGameSession' test.out

#- 42 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "yFfXEOEAEtbag82K"}' \
    'gBgyCd5vjkfz3eR4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicPromoteGameSessionLeader' test.out

#- 43 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'DtNp129hzBw3xLUc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'LeaveGameSession' test.out

#- 44 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'CEt0DzmkJq1sml5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionReject' test.out

#- 45 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "Yt76BNsi4giR9434", "userIDs": ["WpKKdzxoufCNlFoO", "cWQQy4bjmQeEweoB", "HTdwAk7ZQnbqY1cQ"]}, {"partyID": "wVEtAr5kKKAo9MM2", "userIDs": ["Cqm84jVi9kIpqgrz", "pUkNOBWydXV0Fi02", "aFr8CDapjwNOl4k8"]}, {"partyID": "rVNrm8drv8QD2JOe", "userIDs": ["2Ntz7EFvowPgIGue", "txFMqXCQMAqQ2ZRG", "zNtrThFa9XU8mosl"]}], "proposedTeams": [{"UserIDs": ["uiHZJ7O8sAQ32wj9", "uaDzsr9xYiWRuuzQ", "JiLc1eI9w3JEhxPG"], "parties": [{"partyID": "bEk7s7gw07FlounC", "userIDs": ["3vJKBC7SwgoViPeI", "B4Ehy0Y5aSJVDgin", "xAM77eY9C14FbfiI"]}, {"partyID": "2NPvl1kCY5bEokxX", "userIDs": ["xkWZbjf7GZxaossQ", "mjo69wohJFyTNk5F", "GUPhR4LEZvz3EjFR"]}, {"partyID": "7996Ug5m4axDV5uT", "userIDs": ["cYsoahUrELQ1btjJ", "OqQMgZWAU6E92nHJ", "zvw7tnYtGfv0EJyj"]}]}, {"UserIDs": ["Bu4EzwRjD7jmQJeF", "PghqamSc5y0X48eT", "7Mluexk87b9Z5BTs"], "parties": [{"partyID": "EA3EdmW8saabP4xR", "userIDs": ["owfNojzPXI2v0prR", "3OEey0MkZwS6TYwN", "N3UYhic03qGEg5fN"]}, {"partyID": "zBVrjo3g8CfRwtyl", "userIDs": ["1HeT7VEPgG40QyXz", "sOzgck078IghoQBp", "2mWAOYksczxBS0OB"]}, {"partyID": "Ca2vWadLmQtYKmEM", "userIDs": ["zicbuL2S3RiW8dLT", "CBfGUdVEdvdQL7sV", "wcZ2PofaJoSqtrEO"]}]}, {"UserIDs": ["qxH46fRTSZoDdT0f", "efo74eg3Nt2c0r4G", "qF0NHglOVuNZ9LzN"], "parties": [{"partyID": "eJnBurh54CWbYb0P", "userIDs": ["ebyt8b4DGscjwriz", "sFUgYwbaLvqvQ2Nb", "mDITuymTBjn3d2sF"]}, {"partyID": "zMS3QaVjZF7Ax611", "userIDs": ["5Kg9U8vrQJXQxoIb", "Vi2CLEk277Ivjj1A", "647XQ3koaAfZIim0"]}, {"partyID": "sFPm1YN27bojDVaZ", "userIDs": ["Lpx4kEWYkO6KrKUM", "hJrASBh61hmWKSSr", "F35anDGvur19V18o"]}]}], "version": 71}' \
    'hyhoS6a9oe0JaXFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AppendTeamGameSession' test.out

#- 46 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "ff28uYbe4Cf2HEHv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoinCode' test.out

#- 47 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'VevhISjbtBJUK5fE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetParty' test.out

#- 48 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"3OufPSX3PdOU2V9y": {}, "w94oa8UJ34TIedV3": {}, "HyoX4VnO2LpBU08w": {}}, "inactiveTimeout": 11, "inviteTimeout": 27, "joinability": "58aDllwzTRHak1MX", "maxPlayers": 49, "minPlayers": 0, "type": "j7Esrg7900nml5Bi", "version": 8}' \
    '3QaJPGrTNcXXTUIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicUpdateParty' test.out

#- 49 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"goH89QNmI17UDb19": {}, "R6H7r1ta3m7jK5px": {}, "e82pgFiAS6piIzmc": {}}, "inactiveTimeout": 36, "inviteTimeout": 83, "joinability": "KrKEPGSAcong6eNE", "maxPlayers": 89, "minPlayers": 57, "type": "Uf8kjci1Ctccv9Gv", "version": 4}' \
    'tOcbnuCqf0lm6WBk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicPatchUpdateParty' test.out

#- 50 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'IzjoSV31tvmMB6jz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicGeneratePartyCode' test.out

#- 51 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'rpRGESmooHiCV4GU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicRevokePartyCode' test.out

#- 52 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "OnXpapXQGRakUbcG", "userID": "7PcR4eiU3Idi55jN"}' \
    'rGNT2VHTKuIT5Fww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyInvite' test.out

#- 53 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "Hj0Ur5F2PWGTTD81"}' \
    'xhNP4t6kYBUjyXAn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicPromotePartyLeader' test.out

#- 54 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '3bWQF6QcAiJpXIrg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoin' test.out

#- 55 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'roixptZhckUTGkcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyLeave' test.out

#- 56 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'OE4qMcH1Kyi8ZFvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyReject' test.out

#- 57 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'cV8DY0XOkDstxZcY' \
    '1HgAnZV4IOglVLqb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyKick' test.out

#- 58 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"9lGAJUg21Lt7Jwgw": {}, "MUSuC3Bajy3BcEMC": {}, "tQs2FcEcvVAyId6C": {}}, "configurationName": "p85HVDsZBQgOnXuX", "inactiveTimeout": 38, "inviteTimeout": 80, "joinability": "GThYZrmm0wrFMnPp", "maxPlayers": 99, "members": [{"ID": "0GkwxUNYyNwGiKrk", "PlatformID": "nH0Y5mrQgLC6D2qs", "PlatformUserID": "FiQHglUQMZi5WjMZ"}, {"ID": "fOadpgegCUjTdi1E", "PlatformID": "hr8OtqpNJ9R8TuNy", "PlatformUserID": "4ejmVA3vMCsGyPd1"}, {"ID": "2B8QNUz0hFFNbH6j", "PlatformID": "2W4roZM2UKAXEEsL", "PlatformUserID": "5D0oiFchQnVeq3g2"}], "minPlayers": 53, "textChat": false, "type": "B2WIRUQmauIY5HXC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateParty' test.out

#- 59 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"Z0W4XmWP0HzSdiyl": {}, "LhVYszm8xY33OQbu": {}, "mu2QHLyZNuysyM4O": {}}' \
    'fCzdQCXMAWnf87YP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateInsertSessionStorageLeader' test.out

#- 60 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"NOe9Eevf1fhMg1E2": {}, "k7QLFrVgtX7y0fPO": {}, "ieDCow2zXyFFVpM8": {}}' \
    '7yqEwEacQMTlqN4L' \
    'KkxJ5v3SBafnKNiM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorage' test.out

#- 61 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["PbFkFGA85W3HJkqg", "S2B37wwoPYOHiIsx", "msLBPBJuNLnWRrtW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 62 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetPlayerAttributes' test.out

#- 63 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "9v8MpBSpo3AKRmnJ", "data": {"kzJHAckUyBksYQfD": {}, "m0RNFwiz70tRVLMl": {}, "Hi8i9gOVqajUWrgE": {}}, "platforms": [{"name": "sWDtaKzn8dZwnnGe", "userID": "ZsZVgbPzPFbrOMZM"}, {"name": "gWkFN7Tpkx6GcfyO", "userID": "g6ZUrrp9ubg9mndW"}, {"name": "2JKmQafUs2bxYztO", "userID": "EyVbKIf1ZbzgUwd8"}], "roles": ["DHoCQykmXHYmkRlg", "7gYs6unPYQ9jNQN1", "di1ldhOh6HvjnYuV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicStorePlayerAttributes' test.out

#- 64 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicDeletePlayerAttributes' test.out

#- 65 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicQueryMyGameSessions' test.out

#- 66 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
