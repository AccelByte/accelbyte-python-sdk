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
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"regionRetryMapping": {"EAxcVpFrttufHIRd": ["H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b"], "BZLCXLx8bbgorQeF": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "XlFcDtgOjchIua5t": ["WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X", "M4OI18mAQLnzjMf8"]}, "regionURLMapping": ["GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i", "7pKxR8dl0zRVW4EZ"], "testGameMode": "G9m0XcgGVbMqSszE", "testRegionURLMapping": ["8GHavj7AorKsxwko", "sAVerXpc1C8XfwHu", "Keb9l3rGN9A3sNm8"], "testTargetUserIDs": ["4hddSpHt0P7MIIR7", "CkyF6C7duuyZ0GhD", "ogqrhBRd8lDR6qVN"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 85}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 99}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 89, "PSNSupportedPlatforms": ["e5dNRljv7IPrDQQR", "gat0SevkLGMS0lyu", "I9a2I9u6Vpbsx5w8"], "SessionTitle": "hqUI06UpOXGSLmCV", "ShouldSync": true, "XboxServiceConfigID": "MdI4sNveabntBSxT", "XboxSessionTemplateName": "eIv53HGCiljvjKoy", "localizedSessionName": {"D6SCwGrncqmLtjQH": {}, "Af8TgoNm03VLisV6": {}, "zwPuo3td6TC6I3lM": {}}}, "PSNBaseUrl": "jGSWN2laRlxfcjHf", "autoJoin": true, "clientVersion": "akUCTqGkE7wcWfDs", "deployment": "lpJSqGAXQ0yYoNRK", "dsSource": "d3IL5TAQ6iiPlSC2", "fallbackClaimKeys": ["uE4o5Vwdo3fePqIJ", "A8IHtrkmu0hpDDWV", "Ala2l5BYNtIuS5S5"], "immutableStorage": true, "inactiveTimeout": 6, "inviteTimeout": 57, "joinability": "jsoqwGyzzWi9gwQY", "maxActiveSessions": 45, "maxPlayers": 54, "minPlayers": 39, "name": "yu7Vk6Jt4Ymos9Jc", "persistent": false, "preferredClaimKeys": ["7quIOvBMcaYmvCkG", "Z5dAgqxpBFmaLoxo", "zr6wfNPX2bOItRMv"], "requestedRegions": ["qtlB2jJCSQT279ZZ", "PYGu0rdlgdWyOtXi", "3choQrpOsDBU5Sep"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "MyKrQpM4hkkK6KKX"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'NB3Gv0IqmF51Tkhj' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 27, "PSNSupportedPlatforms": ["4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7", "il35MXbN9oCMNqq9"], "SessionTitle": "8SjTvhZNkSQ70D0H", "ShouldSync": true, "XboxServiceConfigID": "BXksUC9b6i5lZC9x", "XboxSessionTemplateName": "v32e8c5csSovoqsZ", "localizedSessionName": {"NBdte9NDUPVJf6c2": {}, "Z0QZxfgPubTDIHrv": {}, "qAThuwjRHpKKTlmV": {}}}, "PSNBaseUrl": "r9XuoJbRFQSKVPHb", "autoJoin": false, "clientVersion": "g7mSQUhAEtrmjqU6", "deployment": "YE3p4lSck0ZHn5GI", "dsSource": "39YBHqaTHeKtW18i", "fallbackClaimKeys": ["GeUlc9d9sogWa24C", "KNS0GqVvUfHQvsHX", "NUNe4mhgo5QB65lS"], "immutableStorage": true, "inactiveTimeout": 50, "inviteTimeout": 17, "joinability": "NApflxqMrj3oZk03", "maxActiveSessions": 88, "maxPlayers": 39, "minPlayers": 65, "name": "cKMDYDDxHSZjtqXy", "persistent": true, "preferredClaimKeys": ["8f7Gc26SaiGVkydw", "YWQG26yUZNmTBcvr", "bYCwZtxFHyPLtI8i"], "requestedRegions": ["lbyDPUIj88cekdqC", "t81P1ktfIovmv9gs", "R5cJcHm3SZLxoRDF"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "fRByjlBiuFM3FIoV"}' 'k8T3GpAnkCmBUqg2' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'SCnqntX9y1aZSWMi' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"Vi10sG6vxkfUcmqR": {}, "RbceJ5i0EeDxOgBn": {}, "hhqElIaDml48wdNF": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["LTm5T50x9WT0GfH2", "rtOa4EXsXzOXQAk4", "mqrxzTtuLl4XlbGL"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '8QOxtjzm8y2wNhmw' 'oYZyI4EFZKBcYrCE' 'AE7WIsfmx40NLRc6' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "m8heKnWhzfe2Nube", "clientSecret": "oKFeIaFQCYoDPICp", "scope": "nduEEQlULdJz4mnR"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-read-session-storage 'BkMNxvvKgAT8mJrY' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'q6hRkloqxM3gpwxc' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'fMy9XzjjI5YbsKoA' 'DkzJEN2VHzih3bit' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes '0VWn3CO39PXDNxtX' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"geO3FgkXhjDzaQY3": {}, "snn2ZkP7cFdP43e5": {}, "dC9XIBudfZgrbHDI": {}}, "autoJoin": true, "backfillTicketID": "AP2aMlu7WtjCtoYe", "clientVersion": "tOO847g8OudOfjnC", "configurationName": "uHZ3c46IjGa23YvY", "deployment": "mmDg7VYPXIuvUYTZ", "dsSource": "BRujIUE1Tq5jyAZv", "fallbackClaimKeys": ["kRCMNFIurjh2imdb", "4rbkXj0ZwsVC0gL9", "7ZVJSPqJiwv1qlYB"], "inactiveTimeout": 90, "inviteTimeout": 82, "joinability": "SKs6gQxC3Gb7S0o4", "matchPool": "zGYY7KQI1AeFgPqa", "maxPlayers": 83, "minPlayers": 39, "preferredClaimKeys": ["kvo1aolB4lkKB4EY", "OkQ1jMD3cym8xIfk", "OVW2grREOLx0KOww"], "requestedRegions": ["3HICQLfl7MUBG7qt", "Pu64yAtURKLRkb73", "8HGS6rDgMdIIlhS1"], "serverName": "fSiM9331m7Ta1PsK", "teams": [{"UserIDs": ["c50Kv6ecnEevcAx2", "K2zkRenmPZnGBt4P", "7WnbdSJtjX7ZshZy"], "parties": [{"partyID": "Zl5x4bRXBHUTrDzZ", "userIDs": ["SKscfOcYu3dpCROY", "qUiGKXVFCmpo6sPw", "VOEDSJsEK5QpNhlI"]}, {"partyID": "2iS5EpGhhvXYck0u", "userIDs": ["pMzUYnb76tFkEORV", "3bu1bNCtX7W40V6D", "o5sYadCCFrHHC3Dp"]}, {"partyID": "ZxkrQDXuNFviMarv", "userIDs": ["8mnfHK8CCmE2lPns", "bD3SGEdlwuUccE53", "6ugBp3HBvepnDCjg"]}]}, {"UserIDs": ["yJlXe36mgWjLfFmt", "eue9nzJ6fH24T805", "tVg8JqU0jZpjvsug"], "parties": [{"partyID": "AOS7u8RiWyerCSa8", "userIDs": ["SRgwsAj1ik1jglaD", "XTvKCWwNTAhd2wrS", "0uPdjhdinpng5BLy"]}, {"partyID": "8wbhMssAHjapIkY9", "userIDs": ["Rf4wP57dBZNR88Yb", "CtmKy8M9zVrjfGXZ", "nqAQUoY1GjlIIk0i"]}, {"partyID": "KoTTS1j02o7JjTXA", "userIDs": ["QN0qdskdQV0TqI8E", "FnmDbxIxi4YKlONk", "2Q5Y4Jvaizwiilat"]}]}, {"UserIDs": ["uUjjt9lIMGql5ElE", "a9EIIlGcHB3CfR3n", "cDlwi3v3MFFJ1Kes"], "parties": [{"partyID": "KoELCpobBEG8X645", "userIDs": ["xpdXpai0rYaT5hOP", "jaf3H0tYighU0VUf", "cYHJbBfAKSiPW3Vg"]}, {"partyID": "sZXiR1DJ7HVWqMkN", "userIDs": ["SawQUWDFJvJBWic7", "UkBeIXuqDuAXI66b", "Q71w0deoV9Lx5RDA"]}, {"partyID": "1l2XcrciYNEzvSZI", "userIDs": ["PkhSgORcz5S5Bvmg", "BLxh4ijFnE3Tam69", "qSZ7PC6f6QkmZXEl"]}]}], "textChat": false, "ticketIDs": ["uWJu3pDMUAeeZ97S", "BROPYuG6XqP6oo7G", "73zdxTgOfnwIdlNa"], "tieTeamsSessionLifetime": false, "type": "OJhtafxMSJlHeb34"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"sZKHcl5LLLOexL4f": {}, "ZvWtND2tcBFpX8lN": {}, "tFEJ7tnkY6Mca5af": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "j12K2IzrBvvWm4ud"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'E0OXudXgNne8kJAT' --login_with_auth "Bearer foo"
session-get-game-session 'wlc6esUp6Sw1I98j' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"eZQ7hfxnhLd3Knak": {}, "noed9DHhLOqQGhCU": {}, "r6iTrjyEgarAdNJO": {}}, "backfillTicketID": "IG36I6tRbRcrEveM", "clientVersion": "dAdiPKDUVSC00PYe", "deployment": "DcagginxnFIna3yd", "fallbackClaimKeys": ["dcbsPheTH26IUJNv", "YuGRUvpZaHCuESOi", "IZsMfB4ZH3mtgWgU"], "inactiveTimeout": 56, "inviteTimeout": 32, "joinability": "VXTIIJM9XsYIIZxi", "matchPool": "XNMR9BgaWcFX3SUB", "maxPlayers": 14, "minPlayers": 25, "preferredClaimKeys": ["yoTsMWPAxUMkawaG", "pAyrIwMif3BOdkoc", "VTd4BxqGWV6mTJ0s"], "requestedRegions": ["Qs6XNbjvqhnUVLWu", "8olKdxL6ozRmDD0j", "JvlfV5OemPYdYT7D"], "teams": [{"UserIDs": ["ROCjtuzFMbAG9YI8", "9hmguB8FOTjMLo4b", "9rIzqYkEpstyVTBc"], "parties": [{"partyID": "rM8rG0rH0zcswwVe", "userIDs": ["MK6MbGIVIu8vvwLc", "7KY3uVoJXTIMtpgk", "ieDyF97lGdMiHKxb"]}, {"partyID": "WCYzo8yO2KTK9tmm", "userIDs": ["OnYnOpas6ghP1y4Z", "i7s7QBlk44Z44B1G", "ZgKg4uKxaCgcGLuC"]}, {"partyID": "3brWdTYCfHkIySok", "userIDs": ["5DiXZtLW87rGysry", "od3dNQrmsApRA6HX", "3RwrKt2ecozL0TOg"]}]}, {"UserIDs": ["54vCE48L5oLF6M4l", "Na4JUMSHNgqRqCV7", "usamANkZlOX9Sfo9"], "parties": [{"partyID": "5HgXqKhTPkwfLM9u", "userIDs": ["SybRzWek2gZvRrvr", "0n9d9lvccKMLhrTr", "cBE2ItBS3KtKZWe8"]}, {"partyID": "aoFzAyBME74HUtip", "userIDs": ["UWYhWV1qx8CzPML5", "2faXUr9Sk4lq2faB", "cAXXKlhvyH8paOJt"]}, {"partyID": "xqMPpcVfRwNj547f", "userIDs": ["H0XrKEDpEY8VnocG", "Ajci0V3tBf2jnHGK", "Xphn50c9tNLDljhZ"]}]}, {"UserIDs": ["2jxLRX3z46OCaGBe", "MfPlNos4yBRjrERH", "EonAZR8GmEu0q1p6"], "parties": [{"partyID": "QCyY6vSkVFWdsbYu", "userIDs": ["VEGVxYheR3j5mNZ6", "vwv7K8Asvt1j1Rx5", "9hesNWy2NvZ85DDK"]}, {"partyID": "DAF8KDsBZOuYQJ03", "userIDs": ["BAHZ7c53q7akMpcm", "nnx6RVBrop9v7aZK", "3h65hbN15zfQSfQr"]}, {"partyID": "tfF3TQN0OcNDLr36", "userIDs": ["vzohZyjMQAg5mPYh", "rLTyU8OhgfY9JQYG", "F4bYXEcENx9xZlAc"]}]}], "ticketIDs": ["hob44lONDDwMvgI0", "HlyPR7wZNiVsF6xG", "2mXEQdbzIVy8alnc"], "tieTeamsSessionLifetime": false, "type": "vWgSHdfo07UctPEr", "version": 34}' 'PWam1jxR7SETWjte' --login_with_auth "Bearer foo"
session-delete-game-session 'oc8fgvZDDhoO05oK' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"qymxLD1Lcvw6T6mZ": {}, "EiwxxElpMYSWIeVz": {}, "m7z9noowmlTIKVow": {}}, "backfillTicketID": "i0RY2VN4ZONJREdU", "clientVersion": "Q3z9F1BxNNgnke4a", "deployment": "kncw7wu9TmXfJWBP", "fallbackClaimKeys": ["rx9Ns8eLzYEvwSWT", "aLQjctvrK2jhsYpK", "PlXn77AtYoFzLAAT"], "inactiveTimeout": 86, "inviteTimeout": 88, "joinability": "Y8P8P3cfoivvQxev", "matchPool": "ecWw7Rry0KK5rgAG", "maxPlayers": 83, "minPlayers": 62, "preferredClaimKeys": ["0dW8rX2MVUGKSZ4G", "cLkt4pK32sJxlZcC", "TpTdRtCHvuk6B6XT"], "requestedRegions": ["mSLyn50sigBVZxiK", "dV57GvRyd9UuL02L", "e8HSCslsDd4M1F5q"], "teams": [{"UserIDs": ["RIblS7Nz81GRazPA", "ANjfBoldFOyqA2cl", "J5gEOaCgM6Yn6Rug"], "parties": [{"partyID": "bNEIpGBFUjOn5mM7", "userIDs": ["k8nbLzvtCIW5ynMK", "quUicAeIVXtoWAXh", "MlW4tLqX7OICf5oD"]}, {"partyID": "1e6oI9FmYel0kOw7", "userIDs": ["2o8Zkgk0jS6rDWUw", "fhKvrf2AaH4yCWrH", "SppnIZkNnTn3rzH5"]}, {"partyID": "NvAtcvNedgS1fUfK", "userIDs": ["mihDbmu8ePWlQMVD", "XEHeiGTnwyEw6hIW", "DZrpP7rz3ISW510k"]}]}, {"UserIDs": ["Hr4isTKWjmv67nuH", "CXWfwnwGioVwVzmm", "BVVFfpqx1AeLtzcP"], "parties": [{"partyID": "J3jtDYBo4FUTH7CG", "userIDs": ["fKSyxgRR1DiCqSMz", "pqIFGLkDs7ACC1Rg", "BfoNrHlFi2qJLgmB"]}, {"partyID": "LE35YhyiDV90SeI5", "userIDs": ["yppBHoytVznCgNyx", "9fbT63ShEh8PbGik", "Ljgjcj34uulU6FYB"]}, {"partyID": "ZsWFbr3RSP0W9nBh", "userIDs": ["vhf8Q0DtJMcYQdN6", "6bswAgt65X4N1LQZ", "mB61JMdtwCVUrYQu"]}]}, {"UserIDs": ["e84dwmbwFEnAZaWs", "QJtRYoagRJK5PX9U", "cOvhPyE11TRT2SKs"], "parties": [{"partyID": "eoe8VLie0LBa36KN", "userIDs": ["zjf005CXNGehQ2aT", "jTDfKFDXC7eGL5Yh", "JDWh9YWqc0qgV6d9"]}, {"partyID": "yOfIMLds2DbPcaoM", "userIDs": ["dtRLTmSvTkQQgB7e", "xYvmHMxr5hPCJJzt", "JBg0tTJg46IewOXE"]}, {"partyID": "2AkCh3QIZsUf8lGF", "userIDs": ["XcmwTERHclOdxIwq", "ejxe18rNdb8Otq6j", "1mqUav7k05HAQltn"]}]}], "ticketIDs": ["SojV4jT65yclX2Ft", "Az0vJjFIYWOaNdsi", "mmkW2miH3xRHAKy4"], "tieTeamsSessionLifetime": true, "type": "xZkaXZ7vmiEd0JPx", "version": 97}' 'Ps3ztUIV0dS6hIH9' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "c4VfkyrwpuXxbaER"}' 'bfgPmi0eHkt1mr9E' --login_with_auth "Bearer foo"
session-game-session-generate-code 'OIFg0dnWIYN2NVL7' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code '0Iw157g00jr9b8Mu' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "YmmeKTmBNvGYxEQd", "userID": "f3ewoGGoY7xmFNAm"}' 'jDDCvs78mcMdiS76' --login_with_auth "Bearer foo"
session-join-game-session 'YApGJ9ufwLYkqIgL' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "uZS6hsQryiEtOAbp"}' 'eUNf26UqkCfgCUYB' --login_with_auth "Bearer foo"
session-leave-game-session 'n2xaOBdPF0JmX8qw' --login_with_auth "Bearer foo"
session-public-game-session-reject 'U1cTuHHPB5S3DvPR' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "CzBrVUxmDOj3cvRF", "userIDs": ["aTC11W0TGTCm4fZW", "uk6pQxDQpKqxLGeM", "vr9TsvcMQ7dBsaIe"]}, {"partyID": "cRxIsZvD6rmzVr5X", "userIDs": ["T1Nxw0v1dMQ9Rrbk", "6C2cVWf6ttvbU1PO", "6ApCD2VXidT7w0Oc"]}, {"partyID": "15N8WXBPp17PAewq", "userIDs": ["Sm5x3B4t7WQnp8jX", "Zedgt5cyNe27HLtw", "tVOaxgP6Jbct8puM"]}], "proposedTeams": [{"UserIDs": ["ybYGxD9IPmmsLmu3", "kaPj0O4zd8Tb7cUN", "GPTBxiFFCrn7djjs"], "parties": [{"partyID": "69FTFVGUVhvKhJCm", "userIDs": ["eisql14mUHVbMPim", "NhcZsU3VAdMDcb4q", "lkiFAamqvZI2Kwjq"]}, {"partyID": "PBiWXade41s3rH34", "userIDs": ["mB2yPlRpWjmHZAAv", "KTH8MuqIg0Czkguw", "uJCW7EEFB67AODbi"]}, {"partyID": "9BzupBsFpYc77GtR", "userIDs": ["UcCFeY5g4XgBsbfz", "qxBPNe8ae1Il4aAt", "Ebu4IjGdqthRxTjQ"]}]}, {"UserIDs": ["7gkZEY8rG0q0Q2Qd", "2JzRbkF2I03dIjvB", "bA6bfbYaJCJjfk2T"], "parties": [{"partyID": "Uvn95FhO7VW3mbDV", "userIDs": ["MDu87t0ldWf7iSGI", "iKFtWtn4Yr2svKM6", "pqLGZ0TBujELAUK6"]}, {"partyID": "mQ5iZgbwwm5iGzXt", "userIDs": ["cknrgidKupvXO6aj", "4hCmTC34jxW4pIDw", "dqXpmRmut9H9XyWI"]}, {"partyID": "8bp8fQxRuX91uYmt", "userIDs": ["rHJbEGTUj7YjERL1", "rEQG02zccA8wvLsW", "UNd6lPKvqDejvqkl"]}]}, {"UserIDs": ["TSvDwuOrP9lzpiX0", "VuFpZum7izxe7NPz", "jOa8E7wY76PxLv9H"], "parties": [{"partyID": "BEUe89AwEw1HO4Fn", "userIDs": ["Ktx4XLKAmlDr19uJ", "3nq6VerzVCcI8y3C", "z0YqCKUh5RD9vNAp"]}, {"partyID": "4jinFpnQ5xF9wwbv", "userIDs": ["MZyeDeRnVfPUa6xV", "VBcq3wZpFIYeAg79", "HcLJXJ7mpVI6eTYA"]}, {"partyID": "jdPlCiQQC35cj4Ky", "userIDs": ["OVgvnWbfRJtsB7cU", "QZ2QUAxJrINPXppP", "NO3AfmXcgwC3IN6t"]}]}], "version": 44}' 'qxEewuGS469k2hG0' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "WKt4sUmanYxM0UHZ"}' --login_with_auth "Bearer foo"
session-public-get-party 'VNYzGMNIpWoSLkUr' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"fuf4U3WeYeA9t2EN": {}, "KKWrFtHIi1CMgKAO": {}, "G5iDcCR5PbCvDLil": {}}, "inactiveTimeout": 18, "inviteTimeout": 47, "joinability": "PLfkVyyJsbGpO6Jg", "maxPlayers": 9, "minPlayers": 89, "type": "hDJxEN7JlZc8LMq1", "version": 30}' 'HGa4XfZcd9CVnGqM' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"X9FieeEssWEUl07b": {}, "hwntCVqiYOJf5KwM": {}, "ZQjzvjSozv6CTRDl": {}}, "inactiveTimeout": 53, "inviteTimeout": 92, "joinability": "p9CzHFwinkBNi4gv", "maxPlayers": 34, "minPlayers": 60, "type": "gl6TZ9TGVPmv34h6", "version": 93}' 'BQuxLvPuWYvE3fsN' --login_with_auth "Bearer foo"
session-public-generate-party-code 'y9Z9OhxXvCp9y7fL' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'D2qfCXnlUnqxT1Ws' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "RNMZcA92hzC7MNa8", "userID": "vVe4MHX6AgMep90A"}' 'yyUJyAK5PRMRMwdv' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "l0hv6g62GxBW2tQF"}' '5tkTjgJaMYvNQOsD' --login_with_auth "Bearer foo"
session-public-party-join 'a4bkcgepqtxjbrzt' --login_with_auth "Bearer foo"
session-public-party-leave 'ee7QLTGAak7Kaol0' --login_with_auth "Bearer foo"
session-public-party-reject '1DK97D2xnik42mit' --login_with_auth "Bearer foo"
session-public-party-kick 'eR5eQAe1rzmmgqBP' 'Rmd6mO4oI8KDqebm' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"83raNBJ5y7axEkvI": {}, "4oxZEDxGiBnNbn0z": {}, "af7CaOSlHXrUSA6s": {}}, "configurationName": "MJzA5mtqISQ83TTb", "inactiveTimeout": 39, "inviteTimeout": 61, "joinability": "efXWznDe4LQdXfFB", "maxPlayers": 16, "members": [{"ID": "AJ2Gp1r0sVZ6LJAO", "PlatformID": "ddIL2l3hPjNDKv2L", "PlatformUserID": "WfXqjr8fS79En3wY"}, {"ID": "owBdkaZ3y6i38XQj", "PlatformID": "LDRqkpiFK5BtiQ27", "PlatformUserID": "2Uo9UBJWodpdwsX1"}, {"ID": "jorcyR0x3YiHF8IT", "PlatformID": "GPRQBCgIs1Q2lzxl", "PlatformUserID": "0yF5m77TTh4gUoj8"}], "minPlayers": 41, "textChat": false, "type": "2WRcLiEtzVlnkflf"}' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"n7pHY48F1dl1q92m": {}, "3iRlfnBAk0CwiAsR": {}, "65yQ9ssuHdGmxncC": {}}' 'Er0KcgeqzGbruNB7' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"2HHMkjzyBB4UFKia": {}, "oV0VOem2yqPsMFxK": {}, "ybPkbuS6x9cLJ1AP": {}}' 'nNlsa2bRBr27fVMW' 'uAfDqLMR919IZPKO' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["KiAVQXXOmqFHLbyX", "mgCNiXH8uenbC5Cp", "hgMweexsIAP5vHLj"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "AmO2EGvJ4UMS93yO", "data": {"xNInDByhnoluO6ti": {}, "0QP2ssiJ66OzOj84": {}, "O6tgohjtC7bzjPpu": {}}, "platforms": [{"name": "cddXJ5zifF8y959a", "userID": "nrNSleywHbHig6IK"}, {"name": "WVZ77KeRWdECaFGz", "userID": "fZ2hxcJ2Fnemn7M2"}, {"name": "3SzUo4hNBDh9ZFP1", "userID": "OW0nXOErQPS4VsRo"}], "roles": ["YIK69yg9ADCGiXaL", "s2xjHkinOD975nAR", "HCmhNHSXuqIHsxva"]}' --login_with_auth "Bearer foo"
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
echo "1..70"

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

#- 6 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"regionRetryMapping": {"UoXDmwWsukxncuD3": ["QxCXMd00YBWCaVVm", "M45mfIZsWhkS476d", "GGJwJ00UH197MJ6z"], "U7JLMQyMWzYQCAaP": ["JgoxGJoJaSzUtY4Z", "D0Xtb0U4pH16NUsV", "Y21NVIs7NRen2Y3N"], "s0QJQeaWytPfds1B": ["Yx0EaURydf8ZyyZe", "HAWGgJUbUJRMbkcT", "glbU86FyOjApNHBV"]}, "regionURLMapping": ["fNOURcjY3YYT9oTy", "nmfIuBWgJTNFfM8M", "0IW4oe8KDgy0xZfA"], "testGameMode": "cNg14Ws8TIP1LKiF", "testRegionURLMapping": ["QoLDvumfqrgSfnx2", "h61X9dN1MGRXBJ6m", "VV7JS9qjNLwvI8Jd"], "testTargetUserIDs": ["iY3RRiLilmOGF6dL", "LIeIVIjMcdlbdRXT", "GIrdNL5gJPqTAjgq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 0}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 60}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 93, "PSNSupportedPlatforms": ["gw0ag7kSWE0Hiqm5", "IuLryiEXqvUWDjU1", "G0EVjVZw1ToLuPak"], "SessionTitle": "QN1MpOs1RVFrcg2C", "ShouldSync": true, "XboxServiceConfigID": "KbtZTGJpqgl2IzNX", "XboxSessionTemplateName": "GTuQPIDpor7t1aJL", "localizedSessionName": {"NNz6QIVC9Mfuc8VO": {}, "snmnlVljdWYmELe7": {}, "4p38vumnxAnYBTxa": {}}}, "PSNBaseUrl": "TIz0jcgDI8Pkz96v", "autoJoin": false, "clientVersion": "IY9nMrBZo0lNUBDS", "deployment": "hHD32vvL28FPwTiX", "dsSource": "fLcxDC9Ynd02mECI", "fallbackClaimKeys": ["QhfIhHtADUQ9zimQ", "TQT95pFJUAJsyAfe", "KOufV4f15NohXu6o"], "immutableStorage": true, "inactiveTimeout": 9, "inviteTimeout": 48, "joinability": "2znsqPzPkwCBo2Sw", "maxActiveSessions": 59, "maxPlayers": 59, "minPlayers": 95, "name": "10ih2EQfY3XCv4hd", "persistent": false, "preferredClaimKeys": ["a6FdZhNMd1onFjGR", "bxtABPXDmgNEJBhg", "Gq5GIDhNC66szbCC"], "requestedRegions": ["f73IFbRkPSSITz4T", "jCrJHXGXku2YVuOz", "hxHmnrrV9ZGWrZ05"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "xe6A6RpmKDebNkyl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationTemplateV1' test.out

#- 14 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetAllConfigurationTemplatesV1' test.out

#- 15 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'bynkgT9vayLLiiza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetConfigurationTemplateV1' test.out

#- 16 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 4, "PSNSupportedPlatforms": ["i5rZ8iMlOuksQJCi", "RFiZWwJ7NrTb1XTB", "9YQzUJ9XlYJ8BzP6"], "SessionTitle": "EUmUXGM5anIloyj9", "ShouldSync": false, "XboxServiceConfigID": "fZVDAiU6iJOF7JKZ", "XboxSessionTemplateName": "FNk2NKy59X8iOg2s", "localizedSessionName": {"VBiCoeC5weXJl7Pe": {}, "iMH8z8dVej8N2yv6": {}, "VTnOK7xAvM7tuL81": {}}}, "PSNBaseUrl": "lsR7xxSVp3Gd2TK0", "autoJoin": false, "clientVersion": "zYviTgYmx82JVBRL", "deployment": "PZ6Iz8tne5dbguBF", "dsSource": "6Gsvvdl8jHz9x7XZ", "fallbackClaimKeys": ["IjU4IK9lOLaZaMph", "KCqTq3EVheJjoEEX", "BLIxGnNuhoJM3WWP"], "immutableStorage": true, "inactiveTimeout": 78, "inviteTimeout": 44, "joinability": "b48jISd97KORRhxS", "maxActiveSessions": 99, "maxPlayers": 96, "minPlayers": 77, "name": "WNizk5UcPAGv6c1E", "persistent": true, "preferredClaimKeys": ["6LuxJF3sbeqWBdQu", "WfgBAKx27MSBqabU", "XOGkkoMUZn1YXj5z"], "requestedRegions": ["FZeOCOR9NvBQZSJP", "OIKrRBrYVzi9ui3l", "vozTt9TsH7A0TuU2"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "1AziBOHEAj1cT3u6"}' \
    'Zc2FbrTFznTgDIwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateConfigurationTemplateV1' test.out

#- 17 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'IRWf6T3by2kYSCdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteConfigurationTemplateV1' test.out

#- 18 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetDSMCConfiguration' test.out

#- 19 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminSyncDSMCConfiguration' test.out

#- 20 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryGameSessions' test.out

#- 21 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"FKLc0xcTjqjdcEfU": {}, "61OJYMnW49rWynp1": {}, "ck1vT90C6o86cSRL": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryGameSessionsByAttributes' test.out

#- 22 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["9cgbUmulhe98oaFK", "lQicdrxVhrtwSd9Q", "WVMYz7TU1TsxsChS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteBulkGameSessions' test.out

#- 23 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'clSkb5aBi9K9zyv6' \
    'gFZXI5nXJ7hLi6Hw' \
    'eweRmyo91dIn7QqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateGameSessionMember' test.out

#- 24 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryParties' test.out

#- 25 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetPlatformCredentials' test.out

#- 26 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "BDXJcrqKmXDwoEV6", "clientSecret": "tCdrxw1KOPhuvHuY", "scope": "rGWDK41uMOC0mRvS"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminUpdatePlatformCredentials' test.out

#- 27 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeletePlatformCredentials' test.out

#- 28 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'oaGk4ktF5wnJDg9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminReadSessionStorage' test.out

#- 29 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    '3WXiydCOInVolsr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteUserSessionStorage' test.out

#- 30 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'CHmj763vLwtYEJTS' \
    'iXjcY5ZPkv90lyKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminReadUserSessionStorage' test.out

#- 31 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryPlayerAttributes' test.out

#- 32 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'TWLxSFZ0LpupEi5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerAttributes' test.out

#- 33 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"bkVs3qFTi1t530Wj": {}, "1WfzIvc3VlSXrA3X": {}, "UGud4tVjmxEf4XvV": {}}, "autoJoin": false, "backfillTicketID": "7ISDrBVg6NuDZvPb", "clientVersion": "1kuUfNfUDe4g7q6P", "configurationName": "HEaqbzHvDDl1jiLw", "deployment": "3XMGBA6JXDpA1tIC", "dsSource": "45C0oaGouFu4hXON", "fallbackClaimKeys": ["gUwJnUpryDeRcpUv", "lrw2MwC1uuokpaIj", "L0Vxe5n9Lx3QcFo9"], "inactiveTimeout": 13, "inviteTimeout": 61, "joinability": "xOgvDc7xMrRKvw8I", "matchPool": "SP2WKmCRRXBxlalC", "maxPlayers": 68, "minPlayers": 38, "preferredClaimKeys": ["tWlKxLpS8fLWoQ5n", "uJhatQPxR7dvBVC5", "zgOKLTDmHe8c1eJ9"], "requestedRegions": ["sde7Ryt4udIv22M1", "8uux9xBomQFPFWy5", "cwNPI6aFo0MVwDZC"], "serverName": "IXFNEL3uWVRz3V7Y", "teams": [{"UserIDs": ["bJM3bNLWHAbCZixe", "2cQ6O30lpzcBQMAE", "cNcJqrKxnMzSYoc4"], "parties": [{"partyID": "ZjiMY4H34B6wVd8i", "userIDs": ["pcKDwQeUWtjCC2UH", "6jzMO3AfmOS5mQNy", "RPZFPNP56l1AT6OL"]}, {"partyID": "KmZhCZxxPPdPwOtE", "userIDs": ["uWBSO2jJepUnEEgj", "a2mIE2kLTnJwc5Xm", "kCuL5W4tKt6G3j9L"]}, {"partyID": "YdG7xVPqBqe9RDQM", "userIDs": ["BSYAFLqp8PF5hCco", "ukWpnbz4ys7j6lxu", "U3u2HEG0qfKegvFT"]}]}, {"UserIDs": ["D1sPykS8YLmwtYgW", "GcA0h4G1LZ1HaX5U", "BMbsF44VTsLDRzdq"], "parties": [{"partyID": "22cbnyK3ggFDh2ka", "userIDs": ["ZP7pnnVfxPwc259H", "F9ejHaILQruAuYyJ", "LYGqMv824ouSgkpK"]}, {"partyID": "70uJmUL0uzElixc0", "userIDs": ["23dIvDiA0tQWlHwB", "cTtztx3VAl6tXFbn", "ATCzUOIzVcy9k3ie"]}, {"partyID": "64Vnwa0ClGQJultJ", "userIDs": ["e32AiwKadEoIVmpr", "wPsa9YD92CX0rITa", "jpwHITGeHTnqRbzB"]}]}, {"UserIDs": ["B9ZFgJbQ3Fj1umx4", "ItzkMJ7cudf4r916", "GPrhn2etVIQvRkQJ"], "parties": [{"partyID": "AtDUH9tx60AehGz1", "userIDs": ["ermJYXsYgL7TfyIl", "AwjTZdRZJJzWZwvT", "X2bamSCvX1nwvSWd"]}, {"partyID": "DwD7WJHzgNZUKsI5", "userIDs": ["y0mR3zMyTsftKqns", "IJctAdxyZVKHA9Dk", "aSOWgtg8yw8lHEbV"]}, {"partyID": "DwBAqanOlscRIWw8", "userIDs": ["2k5K5VTkdubkOFld", "MCQ98JH4n0JtgqzZ", "v5kVu4S95mj8YRva"]}]}], "textChat": false, "ticketIDs": ["tx3N7WNMYIfcDKbL", "u8pnK34oA1keYXJv", "tggDdXjbdjMBahFZ"], "tieTeamsSessionLifetime": false, "type": "GMTcqnWrIprOv0BJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateGameSession' test.out

#- 34 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"9Sgl7H1sdH2RIJz1": {}, "eI7Q5pu9PutLf6Ir": {}, "vZoBGQbO4S3rURGW": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicQueryGameSessionsByAttributes' test.out

#- 35 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "UzPAE6SdV4D5jftR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicSessionJoinCode' test.out

#- 36 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'l9rZmtQUvro8TWwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetGameSessionByPodName' test.out

#- 37 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'Wsz9TVmdMKEohKzu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetGameSession' test.out

#- 38 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"MYDUTLBeCidXjuGg": {}, "x8ncXejmeZtzT0qj": {}, "0ltsqfiZrthVvyX0": {}}, "backfillTicketID": "OCKDJE3RMUddwSSg", "clientVersion": "xCu8zru1DhGAYOHR", "deployment": "5BWa9VzIkaQEl1iU", "fallbackClaimKeys": ["ProNB6hI6IpGcToW", "gFvdRhG9NwV3zDuq", "VlVTypcYPK8IxrSZ"], "inactiveTimeout": 43, "inviteTimeout": 83, "joinability": "xWl0Je4fJIyFAm3D", "matchPool": "Qht4JwnPS2urJqer", "maxPlayers": 30, "minPlayers": 98, "preferredClaimKeys": ["bWMZGVL5KLTxahWl", "S6XdBaKSLCgOOPXM", "6XTUh2dJ90yqHDNa"], "requestedRegions": ["cl4F9G6Dl5TFwBY6", "HKXAblkT8VGgSH8M", "GZGwiVj7eDTaka9A"], "teams": [{"UserIDs": ["BfX1IByPEOuPhGsp", "Ri3bhPQvBBJI5Jxy", "tpcubN4AUUPFPscZ"], "parties": [{"partyID": "sXeJOD4DMtqfIGiG", "userIDs": ["JovgWSRxZ8N4UQ2f", "g3V1o2x0hL5DuBDq", "MyIAzWze94MEdJFA"]}, {"partyID": "y2JTllJkRGB8jqJE", "userIDs": ["d6eqqsBVyONV0JRt", "ozI0jpliCFQ6WgJp", "GPigdc5VyC4qvWjV"]}, {"partyID": "ac1cQvSxgTNIUzxD", "userIDs": ["gBlIbuzm7DzJ20NF", "RJIhFXR2dYprPmbp", "uptECGd5cdXC2Ses"]}]}, {"UserIDs": ["c6y68whNBYl9iCqf", "W6rqGOQny4ij4ysY", "Ponb59gQffkNOmub"], "parties": [{"partyID": "xEJr2qEAuJbpZSrc", "userIDs": ["bc4LWfKaY5c1tP5T", "DuI5f6m4KC07CnsZ", "e32hqEcB1ExYMBb3"]}, {"partyID": "ckvoaJYdMqGegcg3", "userIDs": ["eRvBZXN3cjIXmFWR", "Jnj8xN7HDPTUEDPN", "1Kb4UTPWDXTSb55g"]}, {"partyID": "8LSTs7Nf95lGlPrf", "userIDs": ["6obIdnI6Ag7eUYcY", "J4QzXCmqr6gmPGaH", "P5SVPvRLiDi0mNHb"]}]}, {"UserIDs": ["6Lx8eq8SGNwEQO8d", "YXvBSYvJBwb6CjZU", "MRf2VJetWsokvx3B"], "parties": [{"partyID": "HuTEczr9KjQ3ttz8", "userIDs": ["MTBt1xk9IyssSA8n", "P5PQjpzk2Tb7iYdm", "NZWosrsVBPZ64j0H"]}, {"partyID": "UONscofwYLQcDvka", "userIDs": ["EIIPoJT83zEGXmVB", "ZLyrH9J7BoysmaOR", "LkP5hc2Fh04JTsqD"]}, {"partyID": "TynCewqJligLlRxO", "userIDs": ["elKykICRxF6HtlER", "2txs4qrNARATn6KX", "OutlYBbLhL8KXx25"]}]}], "ticketIDs": ["FZfQIodVBqQsBpCJ", "BIXLGYcwWVRK6UKk", "5ozrXA4HZHNyq9od"], "tieTeamsSessionLifetime": false, "type": "j4vxmbH3rVaauufx", "version": 20}' \
    'fkycLSVdleSaAyls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSession' test.out

#- 39 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'mLYe2phYOgT5kDTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteGameSession' test.out

#- 40 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Pl3dKF7NXEjrJMki": {}, "8jvc3P8Gwjg3IOH0": {}, "SDHgYKqxJiFJdrmj": {}}, "backfillTicketID": "5vhzgsJwex7wq8ZP", "clientVersion": "lXNaUNgdY2vfJuje", "deployment": "5cPnmGjTvYa5Pqx1", "fallbackClaimKeys": ["K7qcAoijBPAp6EPb", "988NzxrDKVpULjji", "w3NeVG4DJi9DaMrc"], "inactiveTimeout": 59, "inviteTimeout": 100, "joinability": "DWXT59SRu0YqUxKD", "matchPool": "c84OMIzvTScdbKBs", "maxPlayers": 53, "minPlayers": 27, "preferredClaimKeys": ["yJMz4ILNDvhB4Eoe", "s9a6XaJeRbzTPwD3", "jxF7vxRUY0ilrNoF"], "requestedRegions": ["T98SgtJd4Z5f8nfa", "KqdZFLbZEHxsDxeR", "6d7r1SQw80JfMpPr"], "teams": [{"UserIDs": ["SqYypRUnq5o4ETeC", "UYG9ccTt7Wxw8OQ1", "3t3uTw6zQuoZcXQp"], "parties": [{"partyID": "oTOxe8y1jorNsg9Z", "userIDs": ["KYCKoISyXtHzoWGd", "YohxMp3uOQIybqWf", "G9BJ6FVKlbYHtbPt"]}, {"partyID": "axvagSlpGgVTF6Ve", "userIDs": ["DAPOGBwweyFfXEOE", "AEtbag82KgBgyCd5", "vjkfz3eR4DtNp129"]}, {"partyID": "hzBw3xLUcCEt0Dzm", "userIDs": ["kJq1sml5bYt76BNs", "i4giR9434WpKKdzx", "oufCNlFoOcWQQy4b"]}]}, {"UserIDs": ["jmQeEweoBHTdwAk7", "ZQnbqY1cQwVEtAr5", "kKKAo9MM2Cqm84jV"], "parties": [{"partyID": "i9kIpqgrzpUkNOBW", "userIDs": ["ydXV0Fi02aFr8CDa", "pjwNOl4k8rVNrm8d", "rv8QD2JOe2Ntz7EF"]}, {"partyID": "vowPgIGuetxFMqXC", "userIDs": ["QMAqQ2ZRGzNtrThF", "a9XU8mosluiHZJ7O", "8sAQ32wj9uaDzsr9"]}, {"partyID": "xYiWRuuzQJiLc1eI", "userIDs": ["9w3JEhxPGbEk7s7g", "w07FlounC3vJKBC7", "SwgoViPeIB4Ehy0Y"]}]}, {"UserIDs": ["5aSJVDginxAM77eY", "9C14FbfiI2NPvl1k", "CY5bEokxXxkWZbjf"], "parties": [{"partyID": "7GZxaossQmjo69wo", "userIDs": ["hJFyTNk5FGUPhR4L", "EZvz3EjFR7996Ug5", "m4axDV5uTcYsoahU"]}, {"partyID": "rELQ1btjJOqQMgZW", "userIDs": ["AU6E92nHJzvw7tnY", "tGfv0EJyjBu4EzwR", "jD7jmQJeFPghqamS"]}, {"partyID": "c5y0X48eT7Mluexk", "userIDs": ["87b9Z5BTsEA3EdmW", "8saabP4xRowfNojz", "PXI2v0prR3OEey0M"]}]}], "ticketIDs": ["kZwS6TYwNN3UYhic", "03qGEg5fNzBVrjo3", "g8CfRwtyl1HeT7VE"], "tieTeamsSessionLifetime": false, "type": "gG40QyXzsOzgck07", "version": 48}' \
    'IghoQBp2mWAOYksc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PatchUpdateGameSession' test.out

#- 41 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "zxBS0OBCa2vWadLm"}' \
    'QtYKmEMzicbuL2S3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateGameSessionBackfillTicketID' test.out

#- 42 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'RiW8dLTCBfGUdVEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GameSessionGenerateCode' test.out

#- 43 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'vdQL7sVwcZ2PofaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokeGameSessionCode' test.out

#- 44 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "oSqtrEOqxH46fRTS", "userID": "ZoDdT0fefo74eg3N"}' \
    't2c0r4GqF0NHglOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGameSessionInvite' test.out

#- 45 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'uNZ9LzNeJnBurh54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'JoinGameSession' test.out

#- 46 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "CWbYb0Pebyt8b4DG"}' \
    'scjwrizsFUgYwbaL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPromoteGameSessionLeader' test.out

#- 47 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'vqvQ2NbmDITuymTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'LeaveGameSession' test.out

#- 48 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'jn3d2sFzMS3QaVjZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionReject' test.out

#- 49 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "F7Ax6115Kg9U8vrQ", "userIDs": ["JXQxoIbVi2CLEk27", "7Ivjj1A647XQ3koa", "AfZIim0sFPm1YN27"]}, {"partyID": "bojDVaZLpx4kEWYk", "userIDs": ["O6KrKUMhJrASBh61", "hmWKSSrF35anDGvu", "r19V18oIrUKXttgA"]}, {"partyID": "I2QdWJFLmoPEgd8E", "userIDs": ["MspOs8nkic9gj5vy", "UMAAmIHYbsxG5N06", "6FXb88SbLOa21DiS"]}], "proposedTeams": [{"UserIDs": ["Fsm0XXQJWszvTQEu", "ALzDNp1SZ58aDllw", "zTRHak1MXxj7Esrg"], "parties": [{"partyID": "7900nml5BidsK9dC", "userIDs": ["EzhVnOv0PQbVIaKi", "HfoeorY7A1otGFyv", "2SMjbEr50qGdCZIc"]}, {"partyID": "6EFqBKxbS7Q2OgRu", "userIDs": ["cL1jwRXzfjDZZBmO", "au6syme06c6SKLc2", "mEC3IXl5XCbkOfHa"]}, {"partyID": "Gr5kdazlypvt6lSL", "userIDs": ["fU7HByGXPMqxj4hB", "gVY3YAxZLKbcOdyj", "qf6Q4oiwoJcaRMEb"]}]}, {"UserIDs": ["15LBlTVufc5ZyODR", "2NVyn4PRqf3eRbZq", "BAoKGcVCdMiSNV4q"], "parties": [{"partyID": "Brt1kcLmRv6EJtl5", "userIDs": ["xWnsb8oWq94RImNW", "VIJnhhwFDV1Vitao", "mvWTzdsW4N70wYS4"]}, {"partyID": "Kj7Yi2VvoQNW8Yc4", "userIDs": ["81dYdvGxJAMDRA1L", "F7jdWlekFwO94VBC", "V9qJhWva2FPBujX0"]}, {"partyID": "geYCpGJM4sqsPNJM", "userIDs": ["iZXXOFwmGWAvNF0Z", "0GkwxUNYyNwGiKrk", "nH0Y5mrQgLC6D2qs"]}]}, {"UserIDs": ["FiQHglUQMZi5WjMZ", "fOadpgegCUjTdi1E", "hr8OtqpNJ9R8TuNy"], "parties": [{"partyID": "4ejmVA3vMCsGyPd1", "userIDs": ["2B8QNUz0hFFNbH6j", "2W4roZM2UKAXEEsL", "5D0oiFchQnVeq3g2"]}, {"partyID": "AB2WIRUQmauIY5HX", "userIDs": ["CZ0W4XmWP0HzSdiy", "lLhVYszm8xY33OQb", "umu2QHLyZNuysyM4"]}, {"partyID": "OfCzdQCXMAWnf87Y", "userIDs": ["PNOe9Eevf1fhMg1E", "2k7QLFrVgtX7y0fP", "OieDCow2zXyFFVpM"]}]}], "version": 77}' \
    '7yqEwEacQMTlqN4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AppendTeamGameSession' test.out

#- 50 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "KkxJ5v3SBafnKNiM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyJoinCode' test.out

#- 51 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'PbFkFGA85W3HJkqg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGetParty' test.out

#- 52 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"S2B37wwoPYOHiIsx": {}, "msLBPBJuNLnWRrtW": {}, "870qD88ZcduZSe7W": {}}, "inactiveTimeout": 26, "inviteTimeout": 27, "joinability": "UZcDaiq0nEZ7Pyhq", "maxPlayers": 64, "minPlayers": 61, "type": "JkDClOsKmfsgJdmz", "version": 37}' \
    'Hi8i9gOVqajUWrgE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicUpdateParty' test.out

#- 53 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"sWDtaKzn8dZwnnGe": {}, "ZsZVgbPzPFbrOMZM": {}, "gWkFN7Tpkx6GcfyO": {}}, "inactiveTimeout": 12, "inviteTimeout": 64, "joinability": "6ZUrrp9ubg9mndW2", "maxPlayers": 72, "minPlayers": 34, "type": "KmQafUs2bxYztOEy", "version": 97}' \
    '2BjV00ReCXFffjJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicPatchUpdateParty' test.out

#- 54 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'xlgjzIhpgOoIOD74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratePartyCode' test.out

#- 55 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'V21HWDAfvXwdxbyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicRevokePartyCode' test.out

#- 56 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "4HAPbBbNPStVBUpK", "userID": "gOssFkz0F36piDYX"}' \
    'eHZ7FHls3nyvconq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyInvite' test.out

#- 57 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "bHQqKLQKe3xmj6s0"}' \
    'GqsWncp5LrqbiKud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPromotePartyLeader' test.out

#- 58 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'v9z75SzoCV8ZMi2o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoin' test.out

#- 59 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '1nR482D6gNClk9c8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicPartyLeave' test.out

#- 60 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '7hosaPFC5zBW3ZgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyReject' test.out

#- 61 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'ZCj9ObVGT0Scwl4k' \
    'NmCi15XTJTgCNNH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyKick' test.out

#- 62 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"RtG5Xmo9Q0Wb07N1": {}, "7fkxZSc6VbE0AGce": {}, "kjMNHuPXtz8tXxrm": {}}, "configurationName": "zafMUguyDoN91uc2", "inactiveTimeout": 40, "inviteTimeout": 69, "joinability": "O3OwNEGSW5TaW4to", "maxPlayers": 86, "members": [{"ID": "QCY2NGGvi9kg3rMI", "PlatformID": "zNmhJTNQjKlwjfJ3", "PlatformUserID": "TJ2xVpge70WsLfgb"}, {"ID": "ZieRvJI5sT9DH3Df", "PlatformID": "LCv8q4Thmq09bBgP", "PlatformUserID": "AYxrBE9jlnTgtgW3"}, {"ID": "3wDwD9RKvQX4yFQF", "PlatformID": "drRoM6FoqCYw7Alx", "PlatformUserID": "O6qdFpc71sSck3gg"}], "minPlayers": 19, "textChat": true, "type": "lSlCQMDji329PfVr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicCreateParty' test.out

#- 63 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"vMEPtpsSNcpK1QkB": {}, "2Sy8Ww79LVeVskqe": {}, "UB7RSayqGFguhh3b": {}}' \
    'vadRthdbVApebRA0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateInsertSessionStorageLeader' test.out

#- 64 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"9rW8i8krFWJhe03c": {}, "oRFok5d3AyGrZO8G": {}, "uoXNSoVEBG7VbBPU": {}}' \
    'Wipz9C05YabFX4FC' \
    'K5ucTFsAFzaO3yJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateInsertSessionStorage' test.out

#- 65 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["A3KMxBlrRytER1qd", "TelFAadM9y66Drf4", "SSGGt3MiBKohow3k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 66 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetPlayerAttributes' test.out

#- 67 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "oaP1K4CDuH1mMIfO", "data": {"CDyVAHrHncR5dShq": {}, "iBUI9esSsXegSEhr": {}, "PpK2q8kxR4BuEksS": {}}, "platforms": [{"name": "2A9VOA8H9VeHv0L2", "userID": "Acm960EYQEuGJVl8"}, {"name": "xs1WId9WlalqshF9", "userID": "Rh2o7GCQGPCxwEdk"}, {"name": "yuT3MgzReRq0112I", "userID": "SArROIodcmM6v2AE"}], "roles": ["ozWWaYvBLE46bpuJ", "ip8JyxJ39vrtuWWr", "qTZbSqBSKp8Amgwh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicStorePlayerAttributes' test.out

#- 68 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicDeletePlayerAttributes' test.out

#- 69 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryMyGameSessions' test.out

#- 70 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
