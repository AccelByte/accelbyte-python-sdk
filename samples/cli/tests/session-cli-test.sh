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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 62, "SessionTitle": "twYCA9kPI6LZrkq6", "XboxServiceConfigID": "Dc09nIW0Oaiw9B0D", "XboxSessionTemplateName": "7eHpzSn3ZPUdc0qh"}, "clientVersion": "4n8mzZ0m8SAMTwE6", "deployment": "I56IaRDBXxyaNoMR", "inactiveTimeout": 87, "inviteTimeout": 14, "joinability": "1g7qbPngUNB1vRod", "maxPlayers": 46, "minPlayers": 63, "name": "pzS6DaDpv8N7ZQVq", "persistent": false, "requestedRegions": ["j6oDLjWjkY1aXlFc", "DtgOjchIua5tWEIC", "32ogW7olvbTgrhRT"], "textChat": false, "type": "bCbPOyNQkT7NvyE3"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'cwyALczNIicXm7ag' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 92, "SessionTitle": "ZqxYG3aREAu2D6QV", "XboxServiceConfigID": "KNCWP75TB0i7pKxR", "XboxSessionTemplateName": "8dl0zRVW4EZG9m0X"}, "clientVersion": "cgGVbMqSszE8GHav", "deployment": "j7AorKsxwkosAVer", "inactiveTimeout": 7, "inviteTimeout": 31, "joinability": "Ki5r6QEa1ysLEzth", "maxPlayers": 67, "minPlayers": 25, "name": "N9A3sNm84hddSpHt", "persistent": false, "requestedRegions": ["P7MIIR7CkyF6C7du", "uyZ0GhDogqrhBRd8", "lDR6qVNPRZYdFLIA"], "textChat": false, "type": "7IPrDQQRgat0Sevk"}' 'LGMS0lyuI9a2I9u6' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'Vpbsx5w8hqUI06Up' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["OXGSLmCVuHOPlLlk", "vR8sKgnuRkgghGoY", "upD391C2qtPYokah"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'FjkQsfCaTmt1d67F' 'XGk2s9Q0mPVo3twu' '0MesTCf9x4rt69ln' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'a7qxNeIxPz6MbwL6' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"IY69z1UaLqYSYWyt": {}, "LPziZMdjxcBZufQx": {}, "GiHPllG4cYEzfTD1": {}}, "backfillTicketID": "ZBm3MqHcUmLZZbSq", "clientVersion": "b8RwNmn9HrNQy4uZ", "configurationName": "AAiE0mit9RGCCHYz", "deployment": "UOcEdscKHPEqgA8y", "inactiveTimeout": 42, "inviteTimeout": 30, "joinability": "7Vk6Jt4Ymos9Jcdo", "matchPool": "s4fYcTVU6RBt0zYo", "maxPlayers": 79, "minPlayers": 6, "requestedRegions": ["cHyCUEXlAvxJMdal", "wSyliWMNW5NyLu0M", "3VHh2EI8JlDbPWbQ"], "serverName": "6Q9lNmqRBaAkLnvx", "teams": [{"UserIDs": ["kT1X68cmDc3fxU8M", "yKrQpM4hkkK6KKXN", "B3Gv0IqmF51TkhjY"], "parties": [{"partyID": "naq6foWvXa3bMrXs", "userIDs": ["Dr6kILsSSyDdmykm", "oPYgc2L4jk4Lo0LS", "P0pf4IxjUkl535X3"]}, {"partyID": "ateEKDpADz1x3poD", "userIDs": ["3Qgb3boLQQ1MzH7Q", "m8bwbmXgdAPh1ETh", "G96gAFKK2WDgCcxv"]}, {"partyID": "ONZm3EeERmDnyeFo", "userIDs": ["F7VSZ6pf3vneSD2T", "b3g7mSQUhAEtrmjq", "U6YE3p4lSck0ZHn5"]}]}, {"UserIDs": ["GI39YBHqaTHeKtW1", "8iGeUlc9d9sogWa2", "4CKNS0GqVvUfHQvs"], "parties": [{"partyID": "HXNUNe4mhgo5QB65", "userIDs": ["lSAiYnNjkfZrQvGg", "bLdLsFzHkBMr1yrO", "MlNFSrUEirnjX9fD"]}, {"partyID": "mIbeZxzfTcyiuATu", "userIDs": ["s9hsfpFDcSDG8aMV", "GLiBNrDjqoxcwgGL", "XpUL4pp2ncYAHdNz"]}, {"partyID": "DmeIP6rOvDz9KOsb", "userIDs": ["392k6YmJFfRByjlB", "iuFM3FIoVk8T3GpA", "nkCmBUqg2SCnqntX"]}]}, {"UserIDs": ["9y1aZSWMiVi10sG6", "vxkfUcmqRRbceJ5i", "0EeDxOgBnhhqElIa"], "parties": [{"partyID": "Dml48wdNFLTm5T50", "userIDs": ["x9WT0GfH2rtOa4EX", "sXzOXQAk4mqrxzTt", "uLl4XlbGL8QOxtjz"]}, {"partyID": "m8y2wNhmwoYZyI4E", "userIDs": ["FZKBcYrCEAE7WIsf", "mx40NLRc6m8heKnW", "hzfe2NubeoKFeIaF"]}, {"partyID": "QCYoDPICpnduEEQl", "userIDs": ["ULdJz4mnRBkMNxvv", "KgAT8mJrYq6hRklo", "qxM3gpwxcfMy9Xzj"]}]}], "textChat": false, "ticketIDs": ["Lbc0NaKDUL3sa13l", "k1dQBHO86IlBhnet", "U4RwTqUXlTDBzOuY"], "type": "saZA2yyd4mbqoOfA"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"DMMAXFaY9eKa699b": {}, "RVhyaKwwrAP2aMlu": {}, "7WtjCtoYetOO847g": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name '8OudOfjnCuHZ3c46' --login_with_auth "Bearer foo"
session-get-game-session 'IjGa23YvYmmDg7VY' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"PXIuvUYTZBRujIUE": {}, "1Tq5jyAZvkRCMNFI": {}, "urjh2imdb4rbkXj0": {}}, "backfillTicketID": "ZwsVC0gL97ZVJSPq", "clientVersion": "Jiwv1qlYB1RSKs6g", "deployment": "QxC3Gb7S0o4zGYY7", "inactiveTimeout": 75, "inviteTimeout": 12, "joinability": "QI1AeFgPqaOkvo1a", "matchPool": "olB4lkKB4EYOkQ1j", "maxPlayers": 79, "minPlayers": 60, "requestedRegions": ["D3cym8xIfkOVW2gr", "REOLx0KOww3HICQL", "fl7MUBG7qtPu64yA"], "teams": [{"UserIDs": ["tURKLRkb738HGS6r", "DgMdIIlhS1fSiM93", "31m7Ta1PsKc50Kv6"], "parties": [{"partyID": "ecnEevcAx2K2zkRe", "userIDs": ["nmPZnGBt4P7WnbdS", "JtjX7ZshZyZl5x4b", "RXBHUTrDzZSKscfO"]}, {"partyID": "cYu3dpCROYqUiGKX", "userIDs": ["VFCmpo6sPwVOEDSJ", "sEK5QpNhlI2iS5Ep", "GhhvXYck0upMzUYn"]}, {"partyID": "b76tFkEORV3bu1bN", "userIDs": ["CtX7W40V6Do5sYad", "CCFrHHC3DpZxkrQD", "XuNFviMarv8mnfHK"]}]}, {"UserIDs": ["8CCmE2lPnsbD3SGE", "dlwuUccE536ugBp3", "HBvepnDCjgyJlXe3"], "parties": [{"partyID": "6mgWjLfFmteue9nz", "userIDs": ["J6fH24T805tVg8Jq", "U0jZpjvsugAOS7u8", "RiWyerCSa8SRgwsA"]}, {"partyID": "j1ik1jglaDXTvKCW", "userIDs": ["wNTAhd2wrS0uPdjh", "dinpng5BLy8wbhMs", "sAHjapIkY9Rf4wP5"]}, {"partyID": "7dBZNR88YbCtmKy8", "userIDs": ["M9zVrjfGXZnqAQUo", "Y1GjlIIk0iKoTTS1", "j02o7JjTXAQN0qds"]}]}, {"UserIDs": ["kdQV0TqI8EFnmDbx", "Ixi4YKlONk2Q5Y4J", "vaizwiilatuUjjt9"], "parties": [{"partyID": "lIMGql5ElEa9EIIl", "userIDs": ["GcHB3CfR3ncDlwi3", "v3MFFJ1KesKoELCp", "obBEG8X645xpdXpa"]}, {"partyID": "i0rYaT5hOPjaf3H0", "userIDs": ["tYighU0VUfcYHJbB", "fAKSiPW3VgsZXiR1", "DJ7HVWqMkNSawQUW"]}, {"partyID": "DFJvJBWic7UkBeIX", "userIDs": ["uqDuAXI66bQ71w0d", "eoV9Lx5RDA1l2Xcr", "ciYNEzvSZIPkhSgO"]}]}], "ticketIDs": ["Rcz5S5BvmgBLxh4i", "jFnE3Tam69qSZ7PC", "6f6QkmZXElW9YfRS"], "type": "se6AAz3S4czz0QKF", "version": 24}' 'PYuG6XqP6oo7G73z' --login_with_auth "Bearer foo"
session-delete-game-session 'dxTgOfnwIdlNa29f' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"DLh741IslKHzGlLK": {}, "WUtDQs61OQAoxyyQ": {}, "pRWCiiPDGQhNPEwi": {}}, "backfillTicketID": "JCf2XJVrlzqQls1o", "clientVersion": "zhLVA3kE8jKvgatO", "deployment": "EBM70TdlNBJYOmpu", "inactiveTimeout": 23, "inviteTimeout": 98, "joinability": "c6esUp6Sw1I98jeZ", "matchPool": "Q7hfxnhLd3Knakno", "maxPlayers": 9, "minPlayers": 12, "requestedRegions": ["d9DHhLOqQGhCUr6i", "TrjyEgarAdNJOIG3", "6I6tRbRcrEveMdAd"], "teams": [{"UserIDs": ["iPKDUVSC00PYeDca", "gginxnFIna3yddcb", "sPheTH26IUJNvYuG"], "parties": [{"partyID": "RUvpZaHCuESOiIZs", "userIDs": ["MfB4ZH3mtgWgU4pC", "AKxeE70CaunQNxot", "371W9G4AvQkqsGnm"]}, {"partyID": "yo5JJTUVmb8GEXFT", "userIDs": ["lEMEsFzYqwgK1Np5", "nodqpLm7FhJBNXzA", "FdO0Khqf6kiTdSGv"]}, {"partyID": "2LFjAKY7CbgsWqFW", "userIDs": ["ZX7kPBom8F9GLLTG", "8phc3n4iLoIllKlp", "O2pqiXJF3WGRaoQo"]}]}, {"UserIDs": ["mSJC4DdrKF7SUQPL", "G59e0k5ZtX6wK7Pp", "UlcIW32iK7MGt1ix"], "parties": [{"partyID": "Y5rA1WoVeJIePF8Z", "userIDs": ["rQzP4zvtdxdbZUpd", "6FJtHJ1pyVwyKQLY", "6FEO65Rb3z7CYLM8"]}, {"partyID": "IlsHqffnrfsGlfPa", "userIDs": ["ZKBwa3Ddb60ufPpz", "wj1QGIFmlVf4jvap", "seE9LN9bvhOrHflI"]}, {"partyID": "Od6X3viLvtEk4mTI", "userIDs": ["pUA9gxo8SV38nEho", "XmM2W7l6jHMA2rG3", "nakopAywelu01nry"]}]}, {"UserIDs": ["EJ0NqoTow0qiOiC4", "j0iktm0ZPLkLOsp0", "LZ5njN86Hl8kUXzt"], "parties": [{"partyID": "6bSc6bWvgpVyW9dD", "userIDs": ["1kOmvrAejcq2LgkQ", "uaS7RBx3vim02jBO", "xrZDyvpcLYOWA8Nj"]}, {"partyID": "xOnaEok4nOOCzfsf", "userIDs": ["lhjbngJOUn18G5Ml", "fDTk8aG40NlncceI", "ZSwgAIkgzh4pTU0A"]}, {"partyID": "m4DZhl0bQxFJ3sWC", "userIDs": ["qQpQ2FbKPFMycMSQ", "4qfAacR0LgB5BUXv", "jcu2s6w3VifnKqmT"]}]}], "ticketIDs": ["SoGH1XEfY6QAYn6W", "Q5UBEU1QAOHfZiGh", "xOdcuDXSxSc3aZPV"], "type": "87pna08gxefTYKhu", "version": 49}' 'hesNWy2NvZ85DDKD' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "AF8KDsBZOuYQJ03B"}' 'AHZ7c53q7akMpcmn' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "nx6RVBrop9v7aZK3", "userID": "h65hbN15zfQSfQrt"}' 'fF3TQN0OcNDLr36v' --login_with_auth "Bearer foo"
session-join-game-session 'zohZyjMQAg5mPYhr' --login_with_auth "Bearer foo"
session-leave-game-session 'LTyU8OhgfY9JQYGF' --login_with_auth "Bearer foo"
session-public-game-session-reject '4bYXEcENx9xZlAch' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "ob44lONDDwMvgI0H", "userIDs": ["lyPR7wZNiVsF6xG2", "mXEQdbzIVy8alncV", "7vWgSHdfo07UctPE"]}, {"partyID": "rqxyMyOK06MqQBEr", "userIDs": ["xgjVBycvU4PbmRDc", "rg0DjQjBECXvea7H", "1m2lJFRZ3ZprZ60z"]}, {"partyID": "MjhTHeh94TSenE5h", "userIDs": ["CFkIf5weqZ18MH57", "l2Zsrh90ETtYmGuk", "z3MnlrjcHp6B8Vj7"]}], "proposedTeams": [{"UserIDs": ["rXFgDnDkdZ9bpjb1", "tdA3QhjCMW64f4Xh", "IjSoTB2NMKtezapP"], "parties": [{"partyID": "r2QEPx3zTxBGtEJI", "userIDs": ["YppuUSsKoHw2hyd1", "2uSE7BEv3aevq6io", "hU1cg4W1IS3Uv1Bp"]}, {"partyID": "WoJBaqdg2FHcunsS", "userIDs": ["1lnaO2m9vqjhbeK2", "qN8g6x2PyYDo5R3h", "LiD5sf5y1JsxJNGm"]}, {"partyID": "yt0SQDUDoWBZVGLl", "userIDs": ["kUetzCAWc9x1aMjg", "Gim51T107XIZRZ7t", "ZdIs0xf4czdt7zqm"]}]}, {"UserIDs": ["SKxOEQlVcx6GqsBq", "8vdhWVnuYLgpZehK", "0G2nmyuViB9kRTcS"], "parties": [{"partyID": "QdTnNYGeAfYFG3wS", "userIDs": ["kHKufBdS3ZOokZB4", "cXnAXyuGz6LlxHv8", "SwyagYvDJ3w3UNgI"]}, {"partyID": "Gj2jZtEYT8sIPSE1", "userIDs": ["XXPzySa0sZoFS6xC", "OWMpyh9pMsQgb64E", "LbzDMwyo4nIRysQd"]}, {"partyID": "bufXjYnSoIFeouC2", "userIDs": ["m38kXrDZWlGVE9sJ", "4NpUtKp6M9I6nEwn", "ZhsjwJeGwaPSDMZz"]}]}, {"UserIDs": ["95OYKiqaZD63xe5r", "ruJVfLGea0ZtlzUc", "uHAXz0UV31MfuGaX"], "parties": [{"partyID": "sAuGsZaSHevO0TQN", "userIDs": ["EI3kfabxJWWSI1EC", "Uo1NPpeFhUztXDgB", "7n4C97uAPP8PATLp"]}, {"partyID": "UpxeJlsBJT6Hh3OM", "userIDs": ["jAjq2mK8lbSEEelx", "nb5QxWG2HFnZlA6H", "KWW4fI1IQcoBQELc"]}, {"partyID": "NlZkqTZrKgXNwvm4", "userIDs": ["e5GX6H742OixhtAo", "KiVm6URT95XhnUcv", "WB28MpusuhhDJ5sl"]}]}], "version": 51}' '6KNzjf005CXNGehQ' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "2aTjTDfKFDXC7eGL"}' --login_with_auth "Bearer foo"
session-public-get-party '5YhJDWh9YWqc0qgV' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"6d9yOfIMLds2DbPc": {}, "aoMdtRLTmSvTkQQg": {}, "B7exYvmHMxr5hPCJ": {}}, "inactiveTimeout": 73, "inviteTimeout": 47, "joinability": "ztJBg0tTJg46IewO", "maxPlayers": 73, "minPlayers": 63, "type": "iQFC2gXoda0kg16y", "version": 96}' 'XcmwTERHclOdxIwq' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"ejxe18rNdb8Otq6j": {}, "1mqUav7k05HAQltn": {}, "SojV4jT65yclX2Ft": {}}, "inactiveTimeout": 54, "inviteTimeout": 40, "joinability": "z0vJjFIYWOaNdsim", "maxPlayers": 25, "minPlayers": 22, "type": "6rvgvEY3Hht1SwqT", "version": 38}' 'kaXZ7vmiEd0JPxVy' --login_with_auth "Bearer foo"
session-public-generate-party-code 'QpshaDwNqTbbFMXA' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'MfVXe0GZeMgsRsmH' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "1EQrYmkPKTPOlhTt", "userID": "SiZNCxuogFteTHJe"}' '4BhSSQkQD6WmOt6D' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "7ufFVTOhvQpfbBke"}' '8aEdd36xj6wySolt' --login_with_auth "Bearer foo"
session-public-party-join 'DxsbzxrlaKEfkoYj' --login_with_auth "Bearer foo"
session-public-party-leave 'Y2o6ouRW9UtNquwC' --login_with_auth "Bearer foo"
session-public-party-reject '3WgumrIz4NhGztZp' --login_with_auth "Bearer foo"
session-public-party-kick 'r4U4fwQIiLXgmRas' 'vjO4lj8m3XEwP2b4' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"gd3xOeii8Jnmssep": {}, "2xD2NY0kABeGs9yx": {}, "ahld1pO0Gyf5PO3C": {}}, "configurationName": "OyMvczgEpzZ3Fbtx", "inactiveTimeout": 12, "inviteTimeout": 14, "joinability": "TsvcMQ7dBsaIecRx", "maxPlayers": 71, "members": [{"ID": "Nn3SHiWxF0YbuU5a", "PlatformID": "r5qTLWUCy0Afgc05", "PlatformUserID": "0XIZRW491e94mQjV"}, {"ID": "OOBnIWhunElqZUod", "PlatformID": "p3IhtCSHy1ei1fIr", "PlatformUserID": "PvfHnRN06EjRwEQl"}, {"ID": "NapJRfk4f9Zcw1pE", "PlatformID": "HAyNFxcVTKuAQTGh", "PlatformUserID": "5BxjWOozGoDtsUuY"}], "minPlayers": 29, "textChat": true, "type": "4zd8Tb7cUNGPTBxi"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "FCrn7djjs69FTFVG", "data": {"UVhvKhJCmeisql14": {}, "mUHVbMPimNhcZsU3": {}, "VAdMDcb4qlkiFAam": {}}, "platforms": [{"name": "qvZI2KwjqPBiWXad", "userID": "e41s3rH34mB2yPlR"}, {"name": "pWjmHZAAvKTH8Muq", "userID": "Ig0CzkguwuJCW7EE"}, {"name": "FB67AODbi9BzupBs", "userID": "FpYc77GtRUcCFeY5"}]}' --login_with_auth "Bearer foo"
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
echo "1..48"

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

#- 5 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 12, "SessionTitle": "knYSV30lnroQehMD", "XboxServiceConfigID": "li6t9unQLYXxm09w", "XboxSessionTemplateName": "pGAbpEmDY9vLh3u6"}, "clientVersion": "EDsUmrV6kH4OotKw", "deployment": "G3UC6XCnnZxF8CmQ", "inactiveTimeout": 36, "inviteTimeout": 73, "joinability": "17W65br34rBBN9tU", "maxPlayers": 98, "minPlayers": 93, "name": "W3mbDVMDu87t0ldW", "persistent": false, "requestedRegions": ["ydC6p25xCWTqUOYZ", "ENJ1QHZQxPRXH7ux", "BJEECQE1li3Bg7Jx"], "textChat": false, "type": "iGzXtcknrgidKupv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'XO6aj4hCmTC34jxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 85, "SessionTitle": "pIDwdqXpmRmut9H9", "XboxServiceConfigID": "XyWI8bp8fQxRuX91", "XboxSessionTemplateName": "uYmtrHJbEGTUj7Yj"}, "clientVersion": "ERL1rEQG02zccA8w", "deployment": "vLsWUNd6lPKvqDej", "inactiveTimeout": 44, "inviteTimeout": 33, "joinability": "AdvBaagTiRJ8daGT", "maxPlayers": 97, "minPlayers": 98, "name": "Bb7jlz5IfHgKjI9m", "persistent": true, "requestedRegions": ["Oa8E7wY76PxLv9HB", "EUe89AwEw1HO4FnK", "tx4XLKAmlDr19uJ3"], "textChat": false, "type": "FK0nnX2poMfZ1hDH"}' \
    'tbh4HtMlFgvh2Dp2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'SoiIPp1yvfAHS0Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationTemplateV1' test.out

#- 10 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetDSMCConfiguration' test.out

#- 11 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminSyncDSMCConfiguration' test.out

#- 12 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["Lu11A3HTovFi4tPA", "GfleyCA6jEtcqsnz", "oVILjkwW61duF87a"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'Uyrdt4XSpWBAetsa' \
    'nzqP8oxfrtbECD1C' \
    'YPwaiBAxfYL8Avt7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminUpdateGameSessionMember' test.out

#- 15 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryParties' test.out

#- 16 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryPlayerAttributes' test.out

#- 17 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    '0ZUT2fSk3LL0calq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"xEewuGS469k2hG0W": {}, "Kt4sUmanYxM0UHZV": {}, "NYzGMNIpWoSLkUrf": {}}, "backfillTicketID": "uf4U3WeYeA9t2ENK", "clientVersion": "KWrFtHIi1CMgKAOG", "configurationName": "5iDcCR5PbCvDLil8", "deployment": "wj9cKM3Ar6MF35hC", "inactiveTimeout": 62, "inviteTimeout": 9, "joinability": "R4nGmWGgTJfHlJl4", "matchPool": "tHGa4XfZcd9CVnGq", "maxPlayers": 78, "minPlayers": 2, "requestedRegions": ["X9FieeEssWEUl07b", "hwntCVqiYOJf5KwM", "ZQjzvjSozv6CTRDl"], "serverName": "0zp9CzHFwinkBNi4", "teams": [{"UserIDs": ["gvqgl6TZ9TGVPmv3", "4h6T7EsufmfxKYB4", "LM6H6QXmpZ9X3fUS"], "parties": [{"partyID": "R1l9xLPBsmAUrD9L", "userIDs": ["1IiD6MlcEPhMDFzj", "HZ3sIhzOx2CXKlvI", "omU3pIxM9n8D2eLM"]}, {"partyID": "e3lt9qfx2UDcgVE7", "userIDs": ["L9FK6e0MrPc4vtxk", "9hVKlG56HlzGr7Xj", "dyRJunZPkp6ccIBn"]}, {"partyID": "WyPw8mj7gyQ7XdIs", "userIDs": ["zGRj46COPipH1MWV", "THG0qHJCWEfOJpZm", "9yEYWNGMy2pgSGSU"]}]}, {"UserIDs": ["OK68eqGJtWf1Ybgg", "8rdwY9bmrvHmO07K", "NqX9LM2IwEsdOGBX"], "parties": [{"partyID": "BwnzDX8v3xgC1Ge9", "userIDs": ["PdbTTAJ2Gp1r0sVZ", "6LJAOddIL2l3hPjN", "DKv2LWfXqjr8fS79"]}, {"partyID": "En3wYowBdkaZ3y6i", "userIDs": ["38XQjLDRqkpiFK5B", "tiQ272Uo9UBJWodp", "dwsX1jorcyR0x3Yi"]}, {"partyID": "HF8ITGPRQBCgIs1Q", "userIDs": ["2lzxl0yF5m77TTh4", "gUoj8u2WRcLiEtzV", "lnkflfn7pHY48F1d"]}]}, {"UserIDs": ["l1q92m3iRlfnBAk0", "CwiAsR65yQ9ssuHd", "GmxncCEr0KcgeqzG"], "parties": [{"partyID": "bruNB72HHMkjzyBB", "userIDs": ["4UFKiaoV0VOem2yq", "PsMFxKybPkbuS6x9", "cLJ1APnNlsa2bRBr"]}, {"partyID": "27fVMWuAfDqLMR91", "userIDs": ["9IZPKOKiAVQXXOmq", "FHLbyXmgCNiXH8ue", "nbC5CphgMweexsIA"]}, {"partyID": "P5vHLjBJ9iqMcBL4", "userIDs": ["BzhDUjhKPwbwcvQU", "5kG8bXGFmPAnOkDi", "Jq4xQye7HqnVK3YV"]}]}], "textChat": false, "ticketIDs": ["bzjPpucddXJ5zifF", "8y959anrNSleywHb", "Hig6IKWVZ77KeRWd"], "type": "ECaFGzfZ2hxcJ2Fn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"emn7M23SzUo4hNBD": {}, "h9ZFP1OW0nXOErQP": {}, "S4VsRoYIK69yg9AD": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'CGiXaLs2xjHkinOD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '975nARHCmhNHSXuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"IHsxvaUoXDmwWsuk": {}, "xncuD3QxCXMd00YB": {}, "WCaVVmM45mfIZsWh": {}}, "backfillTicketID": "kS476dGGJwJ00UH1", "clientVersion": "97MJ6zU7JLMQyMWz", "deployment": "YQCAaPJgoxGJoJaS", "inactiveTimeout": 52, "inviteTimeout": 96, "joinability": "ImqK6tVsaUq3stUh", "matchPool": "5J5Z9GiBiSAylX5c", "maxPlayers": 91, "minPlayers": 72, "requestedRegions": ["3Ns0QJQeaWytPfds", "1BYx0EaURydf8Zyy", "ZeHAWGgJUbUJRMbk"], "teams": [{"UserIDs": ["cTglbU86FyOjApNH", "BVfNOURcjY3YYT9o", "TynmfIuBWgJTNFfM"], "parties": [{"partyID": "8M0IW4oe8KDgy0xZ", "userIDs": ["fAcNg14Ws8TIP1LK", "iFQoLDvumfqrgSfn", "x2h61X9dN1MGRXBJ"]}, {"partyID": "6mVV7JS9qjNLwvI8", "userIDs": ["JdiY3RRiLilmOGF6", "dLLIeIVIjMcdlbdR", "XTGIrdNL5gJPqTAj"]}, {"partyID": "gqaTHf1ANTJ9Yk99", "userIDs": ["7XkGOdC6ItxDT8p4", "n4XCFkD1AJLCwszb", "ZxuHSgDOK8bjoF7b"]}]}, {"UserIDs": ["L2635KbtZTGJpqgl", "2IzNXGTuQPIDpor7", "t1aJLNNz6QIVC9Mf"], "parties": [{"partyID": "uc8VOsnmnlVljdWY", "userIDs": ["mELe74p38vumnxAn", "YBTxaTIz0jcgDI8P", "kz96vd80msqIm5bu"]}, {"partyID": "fnBqrpLeqhwVhjnn", "userIDs": ["jKMEmtbiWsAQHbMr", "KYi0Zxs5SWCqZXHL", "La31oQf7BULnZDhu"]}, {"partyID": "tDM6BqguqD5xxGxB", "userIDs": ["WtnTKUe2znsqPzPk", "wCBo2SwCUsTag4ML", "Ao3m61P2xaNfmn8O"]}]}, {"UserIDs": ["nb1a9gMz0F2UBRmM", "hAbUWmFhdYLWzMuv", "3zkUY0n0BAZkwbYk"], "parties": [{"partyID": "BLyO6A0FqfhnaB3Y", "userIDs": ["xKNdOTacCcJfIfXs", "huLUk5WdpxjZx5no", "XPhPUTKbonoucNmz"]}, {"partyID": "wOZOK56sDkci5rZ8", "userIDs": ["iMlOuksQJCiRFiZW", "wJ7NrTb1XTB9YQzU", "J9XlYJ8BzP6EUmUX"]}, {"partyID": "GM5anIloyj9lhbvu", "userIDs": ["QdW2jwKUckc794ry", "Y91lX8DD4MYXlrJ8", "1lHvv9rqvEoM8YmV"]}]}], "ticketIDs": ["jAkO3HKsEp6KlqwW", "4djrexcbHdEtoQvp", "V344RctmTozCi8He"], "type": "V6jbalHmqBBfi7sS", "version": 65}' \
    'z8tne5dbguBF6Gsv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'vdl8jHz9x7XZIjU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"IK9lOLaZaMphKCqT": {}, "q3EVheJjoEEXBLIx": {}, "GnNuhoJM3WWPvvCi": {}}, "backfillTicketID": "Cf33ViEdqQpoGkUW", "clientVersion": "Nizk5UcPAGv6c1ES", "deployment": "C6hZYTYZbzf5aANN", "inactiveTimeout": 82, "inviteTimeout": 100, "joinability": "s5kgSZZNUHbIT9sz", "matchPool": "ApmWJO5vzzXZj08a", "maxPlayers": 76, "minPlayers": 9, "requestedRegions": ["1XRVfriSpPFnZBJZ", "kDnEiyfa2LrnpZxN", "nLRH36bqS2oFY76P"], "teams": [{"UserIDs": ["U1AziBOHEAj1cT3u", "6Zc2FbrTFznTgDIw", "ZIRWf6T3by2kYSCd"], "parties": [{"partyID": "nFKLc0xcTjqjdcEf", "userIDs": ["U61OJYMnW49rWynp", "1ck1vT90C6o86cSR", "L9cgbUmulhe98oaF"]}, {"partyID": "KlQicdrxVhrtwSd9", "userIDs": ["QWVMYz7TU1TsxsCh", "SclSkb5aBi9K9zyv", "6gFZXI5nXJ7hLi6H"]}, {"partyID": "weweRmyo91dIn7Qq", "userIDs": ["XBDXJcrqKmXDwoEV", "6tCdrxw1KOPhuvHu", "YrGWDK41uMOC0mRv"]}]}, {"UserIDs": ["SoaGk4ktF5wnJDg9", "Q3WXiydCOInVolsr", "6CHmj763vLwtYEJT"], "parties": [{"partyID": "SiXjcY5ZPkv90lyK", "userIDs": ["STWLxSFZ0LpupEi5", "DbkVs3qFTi1t530W", "j1WfzIvc3VlSXrA3"]}, {"partyID": "XUGud4tVjmxEf4Xv", "userIDs": ["VhFJTxFHITBg9x4u", "nq3eOMHIKeTyBG5d", "CUoExnKfV3869IN4"]}, {"partyID": "V1OdhH4GVU7Exlkm", "userIDs": ["c4xYiLjLyZrXr9Bh", "tzn8jAdTn6xBhrci", "ryLm67rkadH5Y41S"]}]}, {"UserIDs": ["LjCPrFa05Xl5TPC5", "GODS44bmm7jPdKLd", "dfdsUqjXVzW1Qqxn"], "parties": [{"partyID": "WR5sheLgsAF4ctv5", "userIDs": ["guycGiq9j2EyIknf", "LDpgHnMOn8nc3gUZ", "8ZFyyEr0KBXuJBqK"]}, {"partyID": "4QtEydPWLPBYiR3U", "userIDs": ["bJc1ZYapx7C477et", "qgfOJDUT0uKAPrAR", "ya2IMlNiXpF4qvsU"]}, {"partyID": "UpHqi33TcBGkc0Hj", "userIDs": ["UcnkpU9oVzl2kBuL", "FXIeCEKZUTz3GvCA", "Z5j24acYHbrryHB6"]}]}], "ticketIDs": ["GO9zP3FaepA3b3YJ", "9nJM6vtT27xv85K5", "MU2qmbeqaVemINdC"], "type": "lpF7OvlBIEgjse5k", "version": 7}' \
    'Egja2mIE2kLTnJwc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "5XmkCuL5W4tKt6G3"}' \
    'j9LYdG7xVPqBqe9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "DQMBSYAFLqp8PF5h", "userID": "CcoukWpnbz4ys7j6"}' \
    'lxuU3u2HEG0qfKeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'vFTD1sPykS8YLmwt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'YgWGcA0h4G1LZ1Ha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'X5UBMbsF44VTsLDR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "zdq22cbnyK3ggFDh", "userIDs": ["2kaZP7pnnVfxPwc2", "59HF9ejHaILQruAu", "YyJLYGqMv824ouSg"]}, {"partyID": "kpK70uJmUL0uzEli", "userIDs": ["xc023dIvDiA0tQWl", "HwBcTtztx3VAl6tX", "FbnATCzUOIzVcy9k"]}, {"partyID": "3ie64Vnwa0ClGQJu", "userIDs": ["ltJe32AiwKadEoIV", "mprwPsa9YD92CX0r", "ITajpwHITGeHTnqR"]}], "proposedTeams": [{"UserIDs": ["bzBB9ZFgJbQ3Fj1u", "mx4ItzkMJ7cudf4r", "916GPrhn2etVIQvR"], "parties": [{"partyID": "kQJAtDUH9tx60Aeh", "userIDs": ["Gz1ermJYXsYgL7Tf", "yIlAwjTZdRZJJzWZ", "wvTX2bamSCvX1nwv"]}, {"partyID": "SWdDwD7WJHzgNZUK", "userIDs": ["sI5y0mR3zMyTsftK", "qnsIJctAdxyZVKHA", "9DkaSOWgtg8yw8lH"]}, {"partyID": "EbVDwBAqanOlscRI", "userIDs": ["Ww82k5K5VTkdubkO", "FldMCQ98JH4n0Jtg", "qzZv5kVu4S95mj8Y"]}]}, {"UserIDs": ["Rvae4f4lhBPbarbW", "Em8bVtZcfVCPdQhi", "m9QKUAFTVYelIlGJ"], "parties": [{"partyID": "g9wdc8bihhWjfZpf", "userIDs": ["cFBUsnnDJlmD1iEo", "kbUiYzCQh2iNTwtn", "ohddMzMTQ9P7sYLD"]}, {"partyID": "WAJOA75K4BYJ2fkq", "userIDs": ["YJoF2FI3vyyqRzc2", "0O7FdsJP1G9tyBTf", "ERXdvgD1Qf7Ot2Dk"]}, {"partyID": "Ut3yexZBRvxYnEBh", "userIDs": ["XtAVxCd3meTrT7cF", "9oVCh89wNOkKYssV", "ejcL3kR3hCGNgaJm"]}]}, {"UserIDs": ["uALlMQl9RLrthbfp", "0VgweLlT2sY3SsTn", "DQY7kKU2u06Q4veu"], "parties": [{"partyID": "jxtyQENvJrBCqeg6", "userIDs": ["7d4RWOqO4U0bitNQ", "LzwRoWnR0AbkCPY7", "0FmvviVIBbcujF8V"]}, {"partyID": "k5qb8NhWWwaxyMch", "userIDs": ["kt8l5IPSrwrJl7wY", "IVw13NCo9yXlbQ52", "FTHTCj6SEAzT7TOp"]}, {"partyID": "yiuvvQUm29Iacq4X", "userIDs": ["RLaA643nTMtXSAye", "jnny0Ju13b6o5uB2", "XM6IHy7EEvHyLmcv"]}]}], "version": 35}' \
    'PFPscZsXeJOD4DMt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "qfIGiGJovgWSRxZ8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'N4UQ2fg3V1o2x0hL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"5DuBDqMyIAzWze94": {}, "MEdJFAy2JTllJkRG": {}, "B8jqJEd6eqqsBVyO": {}}, "inactiveTimeout": 81, "inviteTimeout": 97, "joinability": "Riw8wLYW3n4F3LD1", "maxPlayers": 63, "minPlayers": 100, "type": "DwBXw5uBYeQZOzAT", "version": 82}' \
    'WjVac1cQvSxgTNIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"zxDgBlIbuzm7DzJ2": {}, "0NFRJIhFXR2dYprP": {}, "mbpuptECGd5cdXC2": {}}, "inactiveTimeout": 91, "inviteTimeout": 18, "joinability": "esc6y68whNBYl9iC", "maxPlayers": 33, "minPlayers": 14, "type": "fW6rqGOQny4ij4ys", "version": 15}' \
    'Ponb59gQffkNOmub' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'xEJr2qEAuJbpZSrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'bc4LWfKaY5c1tP5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "DuI5f6m4KC07CnsZ", "userID": "e32hqEcB1ExYMBb3"}' \
    'ckvoaJYdMqGegcg3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "eRvBZXN3cjIXmFWR"}' \
    'Jnj8xN7HDPTUEDPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '1Kb4UTPWDXTSb55g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '8LSTs7Nf95lGlPrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '6obIdnI6Ag7eUYcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'J4QzXCmqr6gmPGaH' \
    'P5SVPvRLiDi0mNHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"6Lx8eq8SGNwEQO8d": {}, "YXvBSYvJBwb6CjZU": {}, "MRf2VJetWsokvx3B": {}}, "configurationName": "HuTEczr9KjQ3ttz8", "inactiveTimeout": 79, "inviteTimeout": 97, "joinability": "TBt1xk9IyssSA8nP", "maxPlayers": 80, "members": [{"ID": "PQjpzk2Tb7iYdmNZ", "PlatformID": "WosrsVBPZ64j0HUO", "PlatformUserID": "NscofwYLQcDvkaEI"}, {"ID": "IPoJT83zEGXmVBZL", "PlatformID": "yrH9J7BoysmaORLk", "PlatformUserID": "P5hc2Fh04JTsqDTy"}, {"ID": "nCewqJligLlRxOel", "PlatformID": "KykICRxF6HtlER2t", "PlatformUserID": "xs4qrNARATn6KXOu"}], "minPlayers": 40, "textChat": false, "type": "3KbbQGERMNpqWb51"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicCreateParty' test.out

#- 44 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetPlayerAttributes' test.out

#- 45 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "IodVBqQsBpCJBIXL", "data": {"GYcwWVRK6UKk5ozr": {}, "XA4HZHNyq9odanhR": {}, "1Zrm3thUvV87yfky": {}}, "platforms": [{"name": "cLSVdleSaAylsmLY", "userID": "e2phYOgT5kDTyPl3"}, {"name": "dKF7NXEjrJMki8jv", "userID": "c3P8Gwjg3IOH0SDH"}, {"name": "gYKqxJiFJdrmj5vh", "userID": "zgsJwex7wq8ZPlXN"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicStorePlayerAttributes' test.out

#- 46 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerAttributes' test.out

#- 47 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyGameSessions' test.out

#- 48 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
