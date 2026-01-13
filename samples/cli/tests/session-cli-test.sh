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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "localizedSessionName": {"WytLPziZMdjxcBZu": {}, "fQxGiHPllG4cYEzf": {}, "TD1ZBm3MqHcUmLZZ": {}}}, "PSNBaseUrl": "bSqb8RwNmn9HrNQy", "amsClaimTimeoutMinutes": 24, "appName": "uZAAiE0mit9RGCCH", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"qwGyzzWi9gwQYv7t": {}, "1o7TTr1DmrhZv15T": {}, "7quIOvBMcaYmvCkG": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "cHyCUEXlAvxJMdal", "customURLGRPC": "wSyliWMNW5NyLu0M", "deployment": "3VHh2EI8JlDbPWbQ", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "dlgdWyOtXi3choQr", "enableSecret": false, "fallbackClaimKeys": ["68cmDc3fxU8MyKrQ", "pM4hkkK6KKXNB3Gv", "0IqmF51TkhjYnaq6"], "grpcSessionConfig": {"appName": "foWvXa3bMrXsDr6k", "customURL": "ILsSSyDdmykmoPYg", "functionFlag": 4}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 18, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 29, "manualRejoin": true, "maxActiveSessions": 76, "maxPlayers": 79, "minPlayers": 30, "name": "Nqq98SjTvhZNkSQ7", "partyCodeGeneratorString": "0D0H6BXksUC9b6i5", "partyCodeLength": 23, "persistent": true, "preferredClaimKeys": ["ZC9xv32e8c5csSov", "oqsZNBdte9NDUPVJ", "f6c2Z0QZxfgPubTD"], "requestedRegions": ["IHrvqAThuwjRHpKK", "TlmVr9XuoJbRFQSK", "VPHbn4Xxtu7LQREN"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 35, "type": "NONE"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'U6YE3p4lSck0ZHn5' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 0, "PSNSupportedPlatforms": ["BHqaTHeKtW18iGeU", "lc9d9sogWa24CKNS", "0GqVvUfHQvsHXNUN"], "SessionTitle": "e4mhgo5QB65lSAiY", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "NjkfZrQvGgbLdLsF", "XboxServiceConfigID": "zHkBMr1yrOMlNFSr", "XboxSessionTemplateName": "UEirnjX9fDmIbeZx", "XboxTitleID": "zfTcyiuATus9hsfp", "localizedSessionName": {"FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}, "p2ncYAHdNzDmeIP6": {}}}, "PSNBaseUrl": "rOvDz9KOsb392k6Y", "amsClaimTimeoutMinutes": 26, "appName": "FuuuySj29a9LJE8H", "asyncProcessDSRequest": {"async": false, "timeout": 29}, "attributes": {"RS1X2PFAAMwzHPxB": {}, "1UskYs4Yw20DOqOB": {}, "SC2DKHRuPMMWH8Yb": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "UBJCjfcnLRfxeCSz", "customURLGRPC": "9WEi8KlloeH0JT1y", "deployment": "duat2vQR3biBfsu4", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "4EXsXzOXQAk4mqrx", "enableSecret": true, "fallbackClaimKeys": ["t4SqYUTLDx9gIiDa", "ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND"], "grpcSessionConfig": {"appName": "UWehwH3q31A806DJ", "customURL": "gas4b6z3LNUj7fdg", "functionFlag": 77}, "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 64, "joinability": "OPEN", "leaderElectionGracePeriod": 58, "manualRejoin": false, "maxActiveSessions": 60, "maxPlayers": 85, "minPlayers": 21, "name": "ICpnduEEQlULdJz4", "partyCodeGeneratorString": "mnRBkMNxvvKgAT8m", "partyCodeLength": 72, "persistent": true, "preferredClaimKeys": ["AgIUXiI07A68eaqC", "2J9jyEW6GLbc0NaK", "DUL3sa13lk1dQBHO"], "requestedRegions": ["86IlBhnetU4RwTqU", "XlTDBzOuYsaZA2yy", "d4mbqoOfADMMAXFa"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 74, "type": "DS"}' 'XIBudfZgrbHDIDm4' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'hMzF4TxodenSrUTv' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'fqU0bfoMm5cTtFWb' 'otQyXJRcQWsmqPNs' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "92epxk0i8VxsZNer"}' 'eSvf9699mCEHThUJ' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"kETAsSp7gh4TeUTk": {}, "OkAYfJB8AT9t4Tv2": {}, "07Y2QD3oD5fLCr3O": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["OlXVv8ZGF7uYnGzp", "ipNDigNJma1MbqqZ", "tfNWql4nmwAft4gq"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'OkQ1jMD3cym8xIfk' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "OVW2grREOLx0KOww", "deployment": "3HICQLfl7MUBG7qt", "description": "Pu64yAtURKLRkb73", "ip": "8HGS6rDgMdIIlhS1", "port": 11, "region": "5QgXjvyGJPN4eXbJ", "serverId": "E5Vs2GcyomQoIXim", "source": "BJehyxlNsjUgxBkF", "status": "6wFPoJeQediogEhh"}' 'M2rIizGdKvOPdq5x' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'rgxSmy1DN9LFkYW5' 'DQyj4bj5Ro2ogaKt' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '2ujQSa3Zdb65UXmy' '0Zp6iIaTIKUkmkk9' 'QM0NBMA9ORxpzwLR' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["2AK6eXUGPJsw1fiP", "80G9Pclxcft2ulIJ", "zPyrVEiOG4UcqsuG"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'KHhMRWLVd3DlhLuI' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "pomM8sm1MiaI1mX2", "clientSecret": "tJoARtdbBe7udsMr", "scope": "ok0WvGYYnx4V709x"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-upload-platform-credentials 'tmp.dat' 'nGezKsDwG2omOR2n' 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'g8JqU0jZpjvsugAO' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'S7u8RiWyerCSa8SR' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'gwsAj1ik1jglaDXT' 'vKCWwNTAhd2wrS0u' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Pdjhdinpng5BLy8w' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'bhMssAHjapIkY9Rf' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "4wP57dBZNR88YbCt", "attributes": {"mKy8M9zVrjfGXZnq": {}, "AQUoY1GjlIIk0iKo": {}, "TTS1j02o7JjTXAQN": {}}, "autoJoin": true, "backfillTicketID": "8ccLjMXJRk0eaKQD", "clientVersion": "OJvrTefglSs6g4iY", "configurationName": "9u02aCNYIWekp18l", "customURLGRPC": "OC3mNqF7Bl0LcghV", "deployment": "HfPEspxwhRON0bc1", "dsSource": "eMbEIjowLqc3ecjX", "fallbackClaimKeys": ["JbZDKKoxLE1Y3Dym", "tj3giPg4x4yiPX6u", "es1Hhhkg1yLVbLFz"], "inactiveTimeout": 68, "inviteTimeout": 2, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "BfAKSiPW3VgsZXiR", "maxPlayers": 93, "minPlayers": 59, "preferredClaimKeys": ["ej52WKi6tArAURt9", "plCSVq8PdH6hJPUA", "c0RVwXgAgntLMCua"], "requestedRegions": ["XBWQi6BqPg4xr0lC", "ancUZGCHsZYoLfR1", "KtOv7Zy0b65uvuKN"], "serverName": "uy0ytZQ7M6Nzy1ad", "storage": {"leader": {"nSKOLFKx1dX4LuWJ": {}, "u3pDMUAeeZ97SBRO": {}, "PYuG6XqP6oo7G73z": {}}}, "teams": [{"parties": [{"partyID": "dxTgOfnwIdlNa29f", "userIDs": ["DLh741IslKHzGlLK", "WUtDQs61OQAoxyyQ", "pRWCiiPDGQhNPEwi"]}, {"partyID": "JCf2XJVrlzqQls1o", "userIDs": ["zhLVA3kE8jKvgatO", "EBM70TdlNBJYOmpu", "1VCarzBsV6xnZ5Jr"]}, {"partyID": "zzjrcaug6CWVG8SW", "userIDs": ["P3glU6muswVJnNnN", "7kAa7j0riFc5HTHQ", "IoVsGo7dwV9DBqFK"]}], "teamID": "HQkETJyTlUrwDTno", "userIDs": ["ujQD4IEiH9Z5qXn3", "aoRtlqOECohViHA5", "CzgFSy8X1A3PrIfa"]}, {"parties": [{"partyID": "pq5AAeMe4L3mDWOR", "userIDs": ["BVXTIIJM9XsYIIZx", "iXNMR9BgaWcFX3SU", "BhyoTsMWPAxUMkaw"]}, {"partyID": "aGpAyrIwMif3BOdk", "userIDs": ["ocVTd4BxqGWV6mTJ", "0sQs6XNbjvqhnUVL", "Wu8olKdxL6ozRmDD"]}, {"partyID": "0jJvlfV5OemPYdYT", "userIDs": ["7DROCjtuzFMbAG9Y", "I89hmguB8FOTjMLo", "4b9rIzqYkEpstyVT"]}], "teamID": "BcrM8rG0rH0zcsww", "userIDs": ["VeMK6MbGIVIu8vvw", "Lc7KY3uVoJXTIMtp", "gkieDyF97lGdMiHK"]}, {"parties": [{"partyID": "xbWCYzo8yO2KTK9t", "userIDs": ["mmOnYnOpas6ghP1y", "4Zi7s7QBlk44Z44B", "1GZgKg4uKxaCgcGL"]}, {"partyID": "uC3brWdTYCfHkIyS", "userIDs": ["ok5DiXZtLW87rGys", "ryod3dNQrmsApRA6", "HX3RwrKt2ecozL0T"]}, {"partyID": "Og54vCE48L5oLF6M", "userIDs": ["4lNa4JUMSHNgqRqC", "V7usamANkZlOX9Sf", "o95HgXqKhTPkwfLM"]}], "teamID": "9uSybRzWek2gZvRr", "userIDs": ["vr0n9d9lvccKMLhr", "TrcBE2ItBS3KtKZW", "e8aoFzAyBME74HUt"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["pUWYhWV1qx8CzPML", "52faXUr9Sk4lq2fa", "BcAXXKlhvyH8paOJ"], "tieTeamsSessionLifetime": true, "type": "DS"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"xqMPpcVfRwNj547f": {}, "H0XrKEDpEY8VnocG": {}, "Ajci0V3tBf2jnHGK": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "Xphn50c9tNLDljhZ"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name '2jxLRX3z46OCaGBe' --login_with_auth "Bearer foo"
session-get-game-session 'MfPlNos4yBRjrERH' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"EonAZR8GmEu0q1p6": {}, "QCyY6vSkVFWdsbYu": {}, "VEGVxYheR3j5mNZ6": {}}, "backfillTicketID": "vwv7K8Asvt1j1Rx5", "clientVersion": "9hesNWy2NvZ85DDK", "deployment": "DAF8KDsBZOuYQJ03", "fallbackClaimKeys": ["BAHZ7c53q7akMpcm", "nnx6RVBrop9v7aZK", "3h65hbN15zfQSfQr"], "inactiveTimeout": 39, "inviteTimeout": 68, "joinability": "CLOSED", "matchPool": "GebSVu0LQ40kepEa", "maxPlayers": 57, "minPlayers": 30, "preferredClaimKeys": ["4dfiOMZfEhHr39py", "sFO3Zvc1BZG99Lyv", "fvHEsJKQQewVLMUo"], "requestedRegions": ["AnaRcYp7FUjfIGaf", "foflEIByYqeKN0me", "GelYF5wWaDhukU4k"], "teams": [{"parties": [{"partyID": "hGG4vZFTYnPkmSu4", "userIDs": ["PWam1jxR7SETWjte", "oc8fgvZDDhoO05oK", "qymxLD1Lcvw6T6mZ"]}, {"partyID": "EiwxxElpMYSWIeVz", "userIDs": ["m7z9noowmlTIKVow", "i0RY2VN4ZONJREdU", "Q3z9F1BxNNgnke4a"]}, {"partyID": "kncw7wu9TmXfJWBP", "userIDs": ["rx9Ns8eLzYEvwSWT", "aLQjctvrK2jhsYpK", "PlXn77AtYoFzLAAT"]}], "teamID": "PY8P8P3cfoivvQxe", "userIDs": ["vecWw7Rry0KK5rgA", "GO0dW8rX2MVUGKSZ", "4GcLkt4pK32sJxlZ"]}, {"parties": [{"partyID": "cCTpTdRtCHvuk6B6", "userIDs": ["XTmSLyn50sigBVZx", "iKdV57GvRyd9UuL0", "2Le8HSCslsDd4M1F"]}, {"partyID": "5qRIblS7Nz81GRaz", "userIDs": ["PAANjfBoldFOyqA2", "clJ5gEOaCgM6Yn6R", "ugbNEIpGBFUjOn5m"]}, {"partyID": "M7k8nbLzvtCIW5yn", "userIDs": ["MKquUicAeIVXtoWA", "XhMlW4tLqX7OICf5", "oD1e6oI9FmYel0kO"]}], "teamID": "w72o8Zkgk0jS6rDW", "userIDs": ["UwfhKvrf2AaH4yCW", "rHSppnIZkNnTn3rz", "H5NvAtcvNedgS1fU"]}, {"parties": [{"partyID": "fKmihDbmu8ePWlQM", "userIDs": ["VDXEHeiGTnwyEw6h", "IWDZrpP7rz3ISW51", "0kHr4isTKWjmv67n"]}, {"partyID": "uHCXWfwnwGioVwVz", "userIDs": ["mmBVVFfpqx1AeLtz", "cPJ3jtDYBo4FUTH7", "CGfKSyxgRR1DiCqS"]}, {"partyID": "MzpqIFGLkDs7ACC1", "userIDs": ["RgBfoNrHlFi2qJLg", "mBLE35YhyiDV90Se", "I5yppBHoytVznCgN"]}], "teamID": "yx9fbT63ShEh8PbG", "userIDs": ["ikLjgjcj34uulU6F", "YBZsWFbr3RSP0W9n", "Bhvhf8Q0DtJMcYQd"]}], "ticketIDs": ["N66bswAgt65X4N1L", "QZmB61JMdtwCVUrY", "Que84dwmbwFEnAZa"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 72}' 'H742OixhtAoKiVm6' --login_with_auth "Bearer foo"
session-delete-game-session 'URT95XhnUcvWB28M' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"pusuhhDJ5slzgiWZ": {}, "Etyd56LfxnbY97jj": {}, "YgXchCbkXX26uEdC": {}}, "backfillTicketID": "fQaMAQuTKfC0I2kN", "clientVersion": "jCMDtDMrentgn3Dh", "deployment": "qciwIeShF9RKb9vv", "fallbackClaimKeys": ["xuJlhXbWhbwPwToC", "6knjVwVnzaqSfJiQ", "FC2gXoda0kg16yUS"], "inactiveTimeout": 31, "inviteTimeout": 24, "joinability": "OPEN", "matchPool": "wTERHclOdxIwqejx", "maxPlayers": 8, "minPlayers": 2, "preferredClaimKeys": ["18rNdb8Otq6j1mqU", "av7k05HAQltnSojV", "4jT65yclX2FtAz0v"], "requestedRegions": ["JjFIYWOaNdsimmkW", "2miH3xRHAKy4QxZk", "aXZ7vmiEd0JPxVyQ"], "teams": [{"parties": [{"partyID": "pshaDwNqTbbFMXAM", "userIDs": ["fVXe0GZeMgsRsmH1", "EQrYmkPKTPOlhTtS", "iZNCxuogFteTHJe4"]}, {"partyID": "BhSSQkQD6WmOt6D7", "userIDs": ["ufFVTOhvQpfbBke8", "aEdd36xj6wySoltD", "xsbzxrlaKEfkoYjY"]}, {"partyID": "2o6ouRW9UtNquwC3", "userIDs": ["WgumrIz4NhGztZpr", "4U4fwQIiLXgmRasv", "jO4lj8m3XEwP2b4g"]}], "teamID": "d3xOeii8Jnmssep2", "userIDs": ["xD2NY0kABeGs9yxa", "hld1pO0Gyf5PO3CO", "yMvczgEpzZ3Fbtxf"]}, {"parties": [{"partyID": "hcRC7IVYa6iZ5uFR", "userIDs": ["YNn3SHiWxF0YbuU5", "ar5qTLWUCy0Afgc0", "50XIZRW491e94mQj"]}, {"partyID": "VOOBnIWhunElqZUo", "userIDs": ["dp3IhtCSHy1ei1fI", "rPvfHnRN06EjRwEQ", "lNapJRfk4f9Zcw1p"]}, {"partyID": "EHAyNFxcVTKuAQTG", "userIDs": ["h5BxjWOozGoDtsUu", "Yo5p8ED5QZAufwNa", "8lzfjv9oYMXMjlVH"]}], "teamID": "Y1AHwF3vGoav7MK0", "userIDs": ["PcLnEkcokKwcQ0ba", "DT9OyJ2h23GUS2am", "U7syGlElXdEAOrVS"]}, {"parties": [{"partyID": "nLocLVVYamQc4wcG", "userIDs": ["5nDBLJoJHbiQ5duE", "5p4cfs2E41cK8QTw", "iIAvxSvNDlmM5nQF"]}, {"partyID": "MGzs7fzjgyc44mEh", "userIDs": ["9tRk8knYSV30lnro", "QehMDli6t9unQLYX", "xm09wpGAbpEmDY9v"]}, {"partyID": "Lh3u6EDsUmrV6kH4", "userIDs": ["OotKwG3UC6XCnnZx", "F8CmQr17W65br34r", "BBN9tU6TDm5GloFS"]}], "teamID": "KWM1eym5ydC6p25x", "userIDs": ["CWTqUOYZENJ1QHZQ", "xPRXH7uxBJEECQE1", "li3Bg7Jxc9pUnZmv"]}], "ticketIDs": ["hidwCkZwqjYLfTiC", "O1NDBvQvRPnAz4Vz", "W0CpoBCbyJsF5IjF"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 86}' 'W338HS6CBgVRyihY' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "NZ84CVhziXV8HwSm"}' 'vcvcDKF19yVRafCj' --login_with_auth "Bearer foo"
session-game-session-generate-code 'OuSYht83AdvBaagT' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'iRJ8daGTVX3Bb7jl' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"z5IfHgKjI9mwJSrN": "8jkIykR2zbaI6PD7", "fEscShnGUGUtV9GJ": "279GDbLNwjm3FK0n", "nX2poMfZ1hDHtbh4": "HtMlFgvh2Dp2SoiI"}, "platformID": "Pp1yvfAHS0VgLu11", "userID": "A3HTovFi4tPAGfle"}' 'yCA6jEtcqsnzoVIL' --login_with_auth "Bearer foo"
session-join-game-session 'jkwW61duF87aUyrd' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "t4XSpWBAetsanzqP"}' '8oxfrtbECD1CYPwa' --login_with_auth "Bearer foo"
session-leave-game-session 'iBAxfYL8Avt70ZUT' --login_with_auth "Bearer foo"
session-public-kick-game-session-member '2fSk3LL0calqxEew' 'uGS469k2hG0WKt4s' --login_with_auth "Bearer foo"
session-public-game-session-reject 'UmanYxM0UHZVNYzG' --login_with_auth "Bearer foo"
session-get-session-server-secret 'MNIpWoSLkUrfuf4U' --login_with_auth "Bearer foo"
session-public-game-session-cancel '3WeYeA9t2ENKKWrF' 'tHIi1CMgKAOG5iDc' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "CR5PbCvDLil8wj9c"}' --login_with_auth "Bearer foo"
session-public-get-party 'KM3Ar6MF35hCER4n' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"GmWGgTJfHlJl4tHG": {}, "a4XfZcd9CVnGqMX9": {}, "FieeEssWEUl07bhw": {}}, "inactiveTimeout": 27, "inviteTimeout": 97, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 8, "minPlayers": 58, "type": "DS", "version": 98}' '9yVoSlKNchPHNL4X' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"3LLaGPGdqLE8Sohh": {}, "huiTnJarYYkHBDdS": {}, "zBXdxapwhd5IQYBQ": {}}, "inactiveTimeout": 42, "inviteTimeout": 38, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 42, "minPlayers": 77, "type": "DS", "version": 45}' 'mfxKYB4LM6H6QXmp' --login_with_auth "Bearer foo"
session-public-generate-party-code 'Z9X3fUSR1l9xLPBs' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'mAUrD9L1IiD6MlcE' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"PhMDFzjHZ3sIhzOx": "2CXKlvIomU3pIxM9", "n8D2eLMe3lt9qfx2": "UDcgVE7L9FK6e0Mr", "Pc4vtxk9hVKlG56H": "lzGr7XjdyRJunZPk"}, "platformID": "p6ccIBnWyPw8mj7g", "userID": "yQ7XdIszGRj46COP"}' 'ipH1MWVTHG0qHJCW' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "EfOJpZm9yEYWNGMy"}' '2pgSGSUOK68eqGJt' --login_with_auth "Bearer foo"
session-public-read-party-session-storage 'Wf1Ybgg8rdwY9bmr' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage '{"vHmO07KNqX9LM2Iw": {}, "EsdOGBXBwnzDX8v3": {}, "xgC1Ge9PdbTTAJ2G": {}}' 'p1r0sVZ6LJAOddIL' '2l3hPjNDKv2LWfXq' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"jr8fS79En3wYowBd": {}, "kaZ3y6i38XQjLDRq": {}, "kpiFK5BtiQ272Uo9": {}}' 'UBJWodpdwsX1jorc' 'yR0x3YiHF8ITGPRQ' --login_with_auth "Bearer foo"
session-public-party-join 'BCgIs1Q2lzxl0yF5' --login_with_auth "Bearer foo"
session-public-party-leave 'm77TTh4gUoj8u2WR' --login_with_auth "Bearer foo"
session-public-party-reject 'cLiEtzVlnkflfn7p' --login_with_auth "Bearer foo"
session-public-party-cancel 'HY48F1dl1q92m3iR' 'lfnBAk0CwiAsR65y' --login_with_auth "Bearer foo"
session-public-party-kick 'Q9ssuHdGmxncCEr0' 'KcgeqzGbruNB72HH' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"MkjzyBB4UFKiaoV0": {}, "VOem2yqPsMFxKybP": {}, "kbuS6x9cLJ1APnNl": {}}, "configurationName": "sa2bRBr27fVMWuAf", "inactiveTimeout": 61, "inviteTimeout": 9, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 39, "members": [{"ID": "LMR919IZPKOKiAVQ", "PlatformID": "XXOmqFHLbyXmgCNi", "PlatformUserID": "XH8uenbC5CphgMwe"}, {"ID": "exsIAP5vHLjBJ9iq", "PlatformID": "McBL4BzhDUjhKPwb", "PlatformUserID": "wcvQU5kG8bXGFmPA"}, {"ID": "nOkDiJq4xQye7Hqn", "PlatformID": "VK3YVeOWs9mfVQh3", "PlatformUserID": "jLBtn9pxpE7BYtzB"}], "minPlayers": 8, "textChat": true, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"4CxyQrUpIFvORxTi": {}, "79DpSjb39ukcR6c2": {}, "E2r3vk3IfAKEbqcN": {}}' 'XSGCCvNowNmdpcJg' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"F88ySNq4Mj7mulP4": {}, "tQ6R1OqKVOTniBgL": {}, "sNhdgQ0JWZjNRSzO": {}}' 'TqcVNX3ahvxw9gww' 'hTnjN6wKZGW4y3f0' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["R9s2kndhhZhwAiLs", "Zs4pmLDIQch4IjDq", "9aT3qZyI0rYsWucA"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "MWzYQCAaPJgoxGJo", "data": {"JaSzUtY4ZD0Xtb0U": {}, "4pH16NUsVY21NVIs": {}, "7NRen2Y3Ns0QJQea": {}}, "platforms": [{"name": "WytPfds1BYx0EaUR", "userID": "ydf8ZyyZeHAWGgJU"}, {"name": "bUJRMbkcTglbU86F", "userID": "yOjApNHBVfNOURcj"}, {"name": "Y3YYT9oTynmfIuBW", "userID": "gJTNFfM8M0IW4oe8"}], "roles": ["KDgy0xZfAcNg14Ws", "8TIP1LKiFQoLDvum", "fqrgSfnx2h61X9dN"], "simultaneousPlatform": "1MGRXBJ6mVV7JS9q"}' --login_with_auth "Bearer foo"
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
echo "1..96"

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
    '{"logLevel": "error"}' \
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
    '{"metricExcludedNamespaces": ["udcxlCV4cNbJGQ57", "lPdinpjS2DRfGt9G", "lyZVQ4X67tPZSTpP"], "regionRetryMapping": {"q3xjrElvvDgw0ag7": ["kSWE0Hiqm5IuLryi", "EXqvUWDjU1G0EVjV", "Zw1ToLuPakQN1MpO"], "s1RVFrcg2CXxepx7": ["8fvsyhE2BKtyTDSI", "M7mkmvZ7Cmsh4US8", "o4jfMANPpmZDdMiC"], "xmuCCVuFjS1GC1d2": ["b92B4vEgj3HOmhcW", "m428XejRF94NIY9n", "MrBZo0lNUBDShHD3"]}, "regionURLMapping": ["2vvL28FPwTiXfLcx", "DC9Ynd02mECIQhfI", "hHtADUQ9zimQTQT9"], "testGameMode": "5pFJUAJsyAfeKOuf", "testRegionURLMapping": ["V4f15NohXu6opxQG", "Rt6PqlkL0diRhLC1", "0ih2EQfY3XCv4hdO"], "testTargetUserIDs": ["a6FdZhNMd1onFjGR", "bxtABPXDmgNEJBhg", "Gq5GIDhNC66szbCC"]}' \
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
    '{"durationDays": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 21}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_INVITABLE_USER_TYPE", "KICK", "KICK"], "PSNServiceLabel": 21, "PSNSupportedPlatforms": ["RkPSSITz4TjCrJHX", "GXku2YVuOzhxHmnr", "rV9ZGWrZ05sxe6A6"], "SessionTitle": "RpmKDebNkylbynkg", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ZOK56sDkci5rZ8iM", "XboxServiceConfigID": "lOuksQJCiRFiZWwJ", "XboxSessionTemplateName": "7NrTb1XTB9YQzUJ9", "XboxTitleID": "XlYJ8BzP6EUmUXGM", "localizedSessionName": {"5anIloyj9lhbvuQd": {}, "W2jwKUckc794ryY9": {}, "1lX8DD4MYXlrJ81l": {}}}, "PSNBaseUrl": "Hvv9rqvEoM8YmVjA", "amsClaimTimeoutMinutes": 21, "appName": "Vej8N2yv6VTnOK7x", "asyncProcessDSRequest": {"async": true, "timeout": 35}, "attributes": {"vM7tuL81lsR7xxSV": {}, "p3Gd2TK0HzYviTgY": {}, "mx82JVBRLPZ6Iz8t": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "iTCVsXsygWbjE2op", "customURLGRPC": "XtdsJQeJ1too0qvx", "deployment": "phTLEEBGTtZyTjdK", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "YazujsmSmylT1Ytx", "enableSecret": true, "fallbackClaimKeys": ["WWPvvCiCf33ViEdq", "QpoGkUWNizk5UcPA", "Gv6c1ESC6hZYTYZb"], "grpcSessionConfig": {"appName": "zf5aANNNs5kgSZZN", "customURL": "UHbIT9szApmWJO5v", "functionFlag": 52}, "immutableStorage": false, "inactiveTimeout": 51, "inviteTimeout": 19, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 52, "manualRejoin": false, "maxActiveSessions": 64, "maxPlayers": 76, "minPlayers": 9, "name": "1XRVfriSpPFnZBJZ", "partyCodeGeneratorString": "kDnEiyfa2LrnpZxN", "partyCodeLength": 28, "persistent": true, "preferredClaimKeys": ["RH36bqS2oFY76PU1", "AziBOHEAj1cT3u6Z", "c2FbrTFznTgDIwZI"], "requestedRegions": ["RWf6T3by2kYSCdnF", "KLc0xcTjqjdcEfU6", "1OJYMnW49rWynp1c"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 88, "type": "P2P"}' \
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
    'e0dHJfF6KIuvnRCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 24, "PSNSupportedPlatforms": ["tyBdxkZKrEWFw9GY", "xjiiOQAD77ci0vfW", "VZoRRMPi57HyKKz5"], "SessionTitle": "nyI6ulKNKoXa0dgx", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "jC56pda3YhtQxpCY", "XboxServiceConfigID": "ME6x21pdX2QSPAd9", "XboxSessionTemplateName": "sxoLnWGP1PafIjLX", "XboxTitleID": "8ce0KbNN7Ycl2Jfm", "localizedSessionName": {"QplvGjVQ4aebjfgG": {}, "u472oWJlfglLM4xj": {}, "fkNL4lU6jaGfsD1c": {}}}, "PSNBaseUrl": "fswmeFpvtDtetoQV", "amsClaimTimeoutMinutes": 64, "appName": "0lyKSTWLxSFZ0Lpu", "asyncProcessDSRequest": {"async": true, "timeout": 62}, "attributes": {"89jRCn48bvkCPfKo": {}, "fwXOIZZQAJza84lK": {}, "KmVOaTS6xBbNrSUA": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "VhFJTxFHITBg9x4u", "customURLGRPC": "nq3eOMHIKeTyBG5d", "deployment": "CUoExnKfV3869IN4", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "GBA6JXDpA1tIC45C", "enableSecret": false, "fallbackClaimKeys": ["jLyZrXr9Bhtzn8jA", "dTn6xBhrciryLm67", "rkadH5Y41SLjCPrF"], "grpcSessionConfig": {"appName": "a05Xl5TPC5GODS44", "customURL": "bmm7jPdKLddfdsUq", "functionFlag": 19}, "immutableStorage": false, "inactiveTimeout": 98, "inviteTimeout": 59, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 89, "manualRejoin": true, "maxActiveSessions": 34, "maxPlayers": 49, "minPlayers": 48, "name": "lalCHtWlKxLpS8fL", "partyCodeGeneratorString": "WoQ5nuJhatQPxR7d", "partyCodeLength": 44, "persistent": false, "preferredClaimKeys": ["BVC5zgOKLTDmHe8c", "1eJ9sde7Ryt4udIv", "22M18uux9xBomQFP"], "requestedRegions": ["FWy5cwNPI6aFo0MV", "wDZCIXFNEL3uWVRz", "3V7YbJM3bNLWHAbC"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 69, "type": "DS"}' \
    'qi33TcBGkc0HjUcn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'kpU9oVzl2kBuLFXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'eCEKZUTz3GvCAZ5j' \
    '24acYHbrryHB6GO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "zP3FaepA3b3YJ9nJ"}' \
    'M6vtT27xv85K5MU2' \
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
    '{"qmbeqaVemINdClpF": {}, "7OvlBIEgjse5kd6G": {}, "EDo08yq5E5HleLoo": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["g4me2NBFp62xlXvV", "cJerTPW02PWsHiKY", "ArAxnKBfBfDlrQQu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'ukWpnbz4ys7j6lxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "U3u2HEG0qfKegvFT", "deployment": "D1sPykS8YLmwtYgW", "description": "GcA0h4G1LZ1HaX5U", "ip": "BMbsF44VTsLDRzdq", "port": 5, "region": "YBF2g7TVtzYEHUod", "serverId": "h3iUfBthbepUCTWi", "source": "Z1uqh7GAi4FEIu44", "status": "u83ZLRxYlYqlpq03"}' \
    'BGdIk4oEogFVGR71' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'rJOBy6lsj1AKGBjn' \
    'HmaAu4YK87DYAWWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'bcbGWmKgE8CZ4AEL' \
    'r5lraa5v5P5Cj8hg' \
    'FsqHC9h5JPiMEtgK' \
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
    '{"ids": ["uiGTYgwWv5XldL6r", "OVGcRAn51rVAQSxp", "4qTB54mKA3V9DKlC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'eZ7mLYsHooOIaxIp' \
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
    '{"psn": {"clientId": "b1cIOJPS3lJ80YJ4", "clientSecret": "1U4ooQ980ywmg1pW", "scope": "pWit1QC7FKe0fnHU"}}' \
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
    'PSN' \
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
    'ZdRZJJzWZwvTX2ba' \
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
    'bbwMI4gGmvK9gW59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    '6FwBNrFXt3TAuKBw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'BcD12ae6r3hHwya4' \
    'NpdOzg3hr6ucHf7d' \
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
    'bh2iKNUl0qJqzoKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'RMG541PAiNjULsx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "SnKNXLMUaDSwwQln", "attributes": {"NRZJHBSB4fZWEFIZ": {}, "s28Ff1kZp1Zktx3N": {}, "7WNMYIfcDKbLu8pn": {}}, "autoJoin": false, "backfillTicketID": "34oA1keYXJvtggDd", "clientVersion": "XjbdjMBahFZZGMTc", "configurationName": "qnWrIprOv0BJ9Sgl", "customURLGRPC": "7H1sdH2RIJz1eI7Q", "deployment": "5pu9PutLf6IrvZoB", "dsSource": "GQbO4S3rURGWUzPA", "fallbackClaimKeys": ["E6SdV4D5jftRl9rZ", "mtQUvro8TWwXWsz9", "TVmdMKEohKzuMYDU"], "inactiveTimeout": 94, "inviteTimeout": 11, "joinability": "INVITE_ONLY", "matchPool": "7Ot2DkUt3yexZBRv", "maxPlayers": 48, "minPlayers": 19, "preferredClaimKeys": ["YnEBhXtAVxCd3meT", "rT7cF9oVCh89wNOk", "KYssVejcL3kR3hCG"], "requestedRegions": ["NgaJmuALlMQl9RLr", "thbfp0VgweLlT2sY", "3SsTnDQY7kKU2u06"], "serverName": "Q4veujxtyQENvJrB", "storage": {"leader": {"Cqeg67d4RWOqO4U0": {}, "bitNQLzwRoWnR0Ab": {}, "kCPY70FmvviVIBbc": {}}}, "teams": [{"parties": [{"partyID": "ujF8Vk5qb8NhWWwa", "userIDs": ["xyMchkt8l5IPSrwr", "Jl7wYIVw13NCo9yX", "lbQ52FTHTCj6SEAz"]}, {"partyID": "T7TOpyiuvvQUm29I", "userIDs": ["acq4XRLaA643nTMt", "XSAyejnny0Ju13b6", "o5uB2XM6IHy7EEvH"]}, {"partyID": "yLmcvrZZOdwe1x8R", "userIDs": ["jU6Bi8JXE52sUBBq", "2SimQQoLbe5YOJvx", "GRxUzrTwagH7BMT1"]}], "teamID": "IZKTdNFVBQ1crBXA", "userIDs": ["upATO8uXsqVpdiWo", "8SjDAM0Riw8wLYW3", "n4F3LD1EDwBXw5uB"]}, {"parties": [{"partyID": "YeQZOzATNSV9E9yy", "userIDs": ["Nb7yaLXzAVYymOuh", "CkZu4htrsf8eIFSo", "vTGXaMsq8ePN1oco"]}, {"partyID": "2jx8Upe8SjMvpqM8", "userIDs": ["puggOEdG47gD5i2N", "i6AnWn3NdEPhNHSH", "7eKDfRcngEpTnRUQ"]}, {"partyID": "r3RLOM1vEx4gqDY6", "userIDs": ["jwyKRxhkLe5zohg9", "s9utRQt28b6o3K0C", "OF74tz6aeXZOYwbw"]}], "teamID": "jMNdxKWlBfnRyFS0", "userIDs": ["Ed7gTM5AVrtBQiDT", "cNnZa6Zuxk6u6HXX", "diC9ZDj4E4mv12FN"]}, {"parties": [{"partyID": "XypoOLl13j84P0Kq", "userIDs": ["irJ4PkMFtsnFfz8E", "w0X8fBuBSKLSQ4Gv", "Ltz50D3rpBfBovqL"]}, {"partyID": "wXBuT30EYeRj17xG", "userIDs": ["haBKoUfiHjGmCyPs", "KCJTv1ic9gvagF2c", "SuztsJ5tj64gV7nm"]}, {"partyID": "Dk29mcjSuz9vbNSt", "userIDs": ["qPtQmQN6eKAGiZFC", "ftT0RWECdjWYrnul", "xcCKAru8pOaAVLDB"]}], "teamID": "4k3JwkdaxR7GJpYm", "userIDs": ["uYCPG181q9GA5Dyd", "C2D8UT6KOc4VPDUR", "9ayazqXRqegIUicY"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["RxF6HtlER2txs4qr", "NARATn6KXOutlYBb", "LhL8KXx25FZfQIod"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"vMfTkPy0fGvTGgfL": {}, "Ksg0b1Bq78cE5O5p": {}, "mPnbiPJ9j4vxmbH3": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "rVaauufxkPHElug4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '8TgfNu0rqXUOyToL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'PIREGIKlJt3EP9kK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"wkENQ8VOHGwbADMf": {}, "uOmh0lciRhVZ2Deo": {}, "ODXMzLSrzoiBnYi5": {}}, "backfillTicketID": "UWs3tYlYeMoCimJy", "clientVersion": "SocRvUWDOrFZKPNo", "deployment": "N9AWtLK9TFgi9j2X", "fallbackClaimKeys": ["Mh9WpifqjNjLOtNQ", "ts2yxf6MLZJ2jZfZ", "bpTJezzriCDWXT59"], "inactiveTimeout": 91, "inviteTimeout": 90, "joinability": "FRIENDS_OF_LEADER", "matchPool": "x2CPVYYG9WvoGmAm", "maxPlayers": 44, "minPlayers": 92, "preferredClaimKeys": ["aVV5YfxnUNcwjr7g", "SGhnfuF4WZiQVICV", "pWd3UM08gMXhdf3j"], "requestedRegions": ["uXW4JprIb3CJCAtv", "SG8Cfa9dzOJDGCTH", "IOFjeXbsSgR43kID"], "teams": [{"parties": [{"partyID": "zxBwqRJTzrHNZWUs", "userIDs": ["q5lQo2jy29EJigqY", "hyVhURx1yPeczRpd", "k0HATGylx2JG2KNG"]}, {"partyID": "fhzfCTxxrsRRLee3", "userIDs": ["TcJ7DQIi45aCDHN9", "mVug2zkVf6KgpKOc", "n3tMD9UT67bOwugF"]}, {"partyID": "Da6wUQvehKqwCh86", "userIDs": ["XmRkCEcfHDCdl59W", "p9A3tXGve6DdK6uv", "g8f2cIoByk9fxtvs"]}], "teamID": "geAxo57nKAbZpsbJ", "userIDs": ["4Iu5KJ0ynxGBlacD", "CdFe8ATUqVxcSthr", "pnMUBsnUfuQIcSbU"]}, {"parties": [{"partyID": "t5UGkInFGpuUsdtq", "userIDs": ["4dOwNESzCEW9dUVh", "ZjLftC3sCS8CpLCq", "PD9CeDEdCnnL6Kt1"]}, {"partyID": "Bjj3b8QM8Rr45ULq", "userIDs": ["XQgvwD3PsKDJiWxQ", "BwaS7rDBf2S54phb", "dyGDt47f9GWRlE9h"]}, {"partyID": "qz6rjDNo4rhjxUdM", "userIDs": ["M83WekqfWv04vvn9", "bk5qr8qs2mqtnGAq", "XUjNypF6MMqWpdEJ"]}], "teamID": "sPoaIbYz8cK5jlpJ", "userIDs": ["dre5ur6yvWJDdvM7", "T7PX2vamIRZHzsIY", "OCUoiCXNjrdQL2jd"]}, {"parties": [{"partyID": "x1eIba1sB0HsJ06D", "userIDs": ["zfbzRYt4OVUyumBe", "IqdQGZC5kM03HHij", "sQRj7N8IAjmsonjj"]}, {"partyID": "0ZR50BQ1U6aFD3O2", "userIDs": ["kXQSc58zgZVl4gIF", "7v3qbZu9M3OxqVAT", "4H1lRZ9Z1JBrHRzE"]}, {"partyID": "OtIxzPqb6n73m0ji", "userIDs": ["aDH86d9rsKgzCsMu", "lpB8HZUtVVaJCiLg", "KOwrSfWhT5B4Wedo"]}], "teamID": "pzwSluBtRFPKThyG", "userIDs": ["nbjmPDKFS6u9FHuv", "1M3qfch4SqIV6LQP", "HlaeYl4csFq65cU6"]}], "ticketIDs": ["6yJaj4ovoKWE4EW0", "sw8v5peiuxoBJATa", "uyD3XCXVMiyEvMf9"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 17}' \
    'a2vWadLmQtYKmEMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'icbuL2S3RiW8dLTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"BfGUdVEdvdQL7sVw": {}, "cZ2PofaJoSqtrEOq": {}, "xH46fRTSZoDdT0fe": {}}, "backfillTicketID": "fo74eg3Nt2c0r4Gq", "clientVersion": "F0NHglOVuNZ9LzNe", "deployment": "JnBurh54CWbYb0Pe", "fallbackClaimKeys": ["byt8b4DGscjwrizs", "FUgYwbaLvqvQ2Nbm", "DITuymTBjn3d2sFz"], "inactiveTimeout": 79, "inviteTimeout": 48, "joinability": "OPEN", "matchPool": "2RfcRhXpmeeHdvph", "maxPlayers": 0, "minPlayers": 37, "preferredClaimKeys": ["U8vrQJXQxoIbVi2C", "LEk277Ivjj1A647X", "Q3koaAfZIim0sFPm"], "requestedRegions": ["1YN27bojDVaZLpx4", "kEWYkO6KrKUMhJrA", "SBh61hmWKSSrF35a"], "teams": [{"parties": [{"partyID": "nDGvur19V18oIrUK", "userIDs": ["XttgAI2QdWJFLmoP", "Egd8EMspOs8nkic9", "gj5vyUMAAmIHYbsx"]}, {"partyID": "G5N066FXb88SbLOa", "userIDs": ["21DiSFsm0XXQJWsz", "vTQEuALzDNp1SZ58", "aDllwzTRHak1MXxj"]}, {"partyID": "7Esrg7900nml5Bid", "userIDs": ["sK9dCEzhVnOv0PQb", "VIaKiHfoeorY7A1o", "tGFyv2SMjbEr50qG"]}], "teamID": "dCZIc6EFqBKxbS7Q", "userIDs": ["2OgRucL1jwRXzfjD", "ZZBmOau6syme06c6", "SKLc2mEC3IXl5XCb"]}, {"parties": [{"partyID": "kOfHaGr5kdazlypv", "userIDs": ["t6lSLfU7HByGXPMq", "xj4hBgVY3YAxZLKb", "cOdyjqf6Q4oiwoJc"]}, {"partyID": "aRMEb15LBlTVufc5", "userIDs": ["ZyODR2NVyn4PRqf3", "eRbZqBAoKGcVCdMi", "SNV4qBrt1kcLmRv6"]}, {"partyID": "EJtl5xWnsb8oWq94", "userIDs": ["RImNWVIJnhhwFDV1", "VitaomvWTzdsW4N7", "0wYS4Kj7Yi2VvoQN"]}], "teamID": "W8Yc481dYdvGxJAM", "userIDs": ["DRA1LF7jdWlekFwO", "94VBCV9qJhWva2FP", "BujX0geYCpGJM4sq"]}, {"parties": [{"partyID": "sPNJMiZXXOFwmGWA", "userIDs": ["vNF0Z0GkwxUNYyNw", "GiKrknH0Y5mrQgLC", "6D2qsFiQHglUQMZi"]}, {"partyID": "5WjMZfOadpgegCUj", "userIDs": ["Tdi1Ehr8OtqpNJ9R", "8TuNy4ejmVA3vMCs", "GyPd12B8QNUz0hFF"]}, {"partyID": "NbH6j2W4roZM2UKA", "userIDs": ["XEEsL5D0oiFchQnV", "eq3g2AB2WIRUQmau", "IY5HXCZ0W4XmWP0H"]}], "teamID": "zSdiylLhVYszm8xY", "userIDs": ["33OQbumu2QHLyZNu", "ysyM4OfCzdQCXMAW", "nf87YPNOe9Eevf1f"]}], "ticketIDs": ["hMg1E2k7QLFrVgtX", "7y0fPOieDCow2zXy", "FFVpM87yqEwEacQM"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 45}' \
    'N4LKkxJ5v3SBafnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "NiMPbFkFGA85W3HJ"}' \
    'kqgS2B37wwoPYOHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'IsxmsLBPBJuNLnWR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'rtW870qD88ZcduZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"e7W20UZcDaiq0nEZ": "7PyhqFJkDClOsKmf", "sgJdmzsDPsWh1k0c": "Q08NG6dX2TZkil67", "kRngoUa83ECh1gqP": "eS193TNNzot3sVli"}, "platformID": "3GN2XTrFibRAhzzE", "userID": "WzWlTY70qdgJRvpZ"}' \
    'rSpWX3KEe2BjV00R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'eCXFffjJJxlgjzIh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "pgOoIOD74V21HWDA"}' \
    'fvXwdxbyp4HAPbBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'NPStVBUpKgOssFkz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    '0F36piDYXeHZ7FHl' \
    's3nyvconqbHQqKLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'Ke3xmj6s0GqsWncp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    '5LrqbiKudv9z75Sz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'oCV8ZMi2o1nR482D' \
    '6gNClk9c87hosaPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "C5zBW3ZgVZCj9ObV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'GT0Scwl4kNmCi15X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"TJTgCNNH7RtG5Xmo": {}, "9Q0Wb07N17fkxZSc": {}, "6VbE0AGcekjMNHuP": {}}, "inactiveTimeout": 88, "inviteTimeout": 39, "joinability": "INVITE_ONLY", "maxPlayers": 53, "minPlayers": 19, "type": "NONE", "version": 15}' \
    'XxrmzafMUguyDoN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"1uc28HoSpGt1g0GG": {}, "bT4Hf2PPKOldkbgX": {}, "9CWJKwXXSbv5eg9q": {}}, "inactiveTimeout": 22, "inviteTimeout": 46, "joinability": "INVITE_ONLY", "maxPlayers": 18, "minPlayers": 1, "type": "DS", "version": 61}' \
    'J3TJ2xVpge70WsLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'gbZieRvJI5sT9DH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'DfLCv8q4Thmq09bB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"gPAYxrBE9jlnTgtg": "W33wDwD9RKvQX4yF", "QFdrRoM6FoqCYw7A": "lxO6qdFpc71sSck3", "ggZWJlSlCQMDji32": "9PfVrvMEPtpsSNcp"}, "platformID": "K1QkB2Sy8Ww79LVe", "userID": "VskqeUB7RSayqGFg"}' \
    'uhh3bvadRthdbVAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "ebRA09rW8i8krFWJ"}' \
    'he03coRFok5d3AyG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'rZO8GuoXNSoVEBG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage' \
    '{"VbBPUWipz9C05Yab": {}, "FX4FCK5ucTFsAFza": {}, "O3yJpA3KMxBlrRyt": {}}' \
    'ER1qdTelFAadM9y6' \
    '6Drf4SSGGt3MiBKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"how3kKoaP1K4CDuH": {}, "1mMIfOCDyVAHrHnc": {}, "R5dShqiBUI9esSsX": {}}' \
    'egSEhrPpK2q8kxR4' \
    'BuEksS2A9VOA8H9V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'eHv0L2Acm960EYQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'uGJVl8xs1WId9Wla' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'lqshF9Rh2o7GCQGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'CxwEdkyuT3MgzReR' \
    'q0112ISArROIodcm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'M6v2AEozWWaYvBLE' \
    '46bpuJip8JyxJ39v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"rtuWWrqTZbSqBSKp": {}, "8AmgwhYzk33J34fi": {}, "TxK63OHpnUCGBVfp": {}}, "configurationName": "ctNFUsUQ6ZXQcb2o", "inactiveTimeout": 81, "inviteTimeout": 74, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 49, "members": [{"ID": "euLAbBgejqc0apxq", "PlatformID": "Z209BySn8aUaGlAy", "PlatformUserID": "vIslt7N1qcxKs4nl"}, {"ID": "f1MfqUZXkjHvcUOT", "PlatformID": "lxNf09pefgFIiJss", "PlatformUserID": "ShBKsQjXvfQgQDt6"}, {"ID": "ce8NDMErA82FrR1G", "PlatformID": "SogkewIzTOqKkcjR", "PlatformUserID": "h3l2gAJOTCbx7J3g"}], "minPlayers": 82, "textChat": true, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"nE73GLmSZns5owBh": {}, "oUg4LsGP6KLPXkvU": {}, "v2XiXaBzsmaxjTZP": {}}' \
    'lLitytGka7Kv5Tac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"QKF4OlRGdmXxETLE": {}, "Qrr3KCAV9alq3hK1": {}, "G4kKooSNNUZuiynZ": {}}' \
    '64IwncZPk82GF3eT' \
    'C0vzZUDj9dzGgGVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["o9OHgfHumyfuBNis", "ecYbcOpR45VDlvSc", "0Mr7ImwCwGqOf0bN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 92 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicGetPlayerAttributes' test.out

#- 93 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "U5lyW89Xwt3wmRTr", "data": {"DCjhnKvsHezWTqgY": {}, "PixtHk6lWq6tEeUm": {}, "U96FLEak0mJqjRYl": {}}, "platforms": [{"name": "dcTpdeCD9XPRi4bA", "userID": "QL7VE2wL8Y4JFVUd"}, {"name": "zA8bvXlDhG7Brorb", "userID": "KIKuOXJPm5ztrr09"}, {"name": "CDA8Ij5bGKSuopWQ", "userID": "baCvdPSq8Z27GpvH"}], "roles": ["CDx55JZ5z6gujpFz", "lPspQD9IRIpDDubn", "tPCFxfeoW2NdSWzO"], "simultaneousPlatform": "XjO1NQUqWHBW78XR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicStorePlayerAttributes' test.out

#- 94 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicDeletePlayerAttributes' test.out

#- 95 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
