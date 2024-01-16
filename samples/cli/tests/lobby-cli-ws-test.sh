#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-ws-unit-test.j2

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

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-batched-ws-session' --continue_on_error '--writer=tap' << END
'type: acceptFriendsNotif\nfriendId: EAxcVpFrttufHIRd'
'type: acceptFriendsRequest\nid: W2ktQG0h5JAav5kR\nfriendId: H9UzVRiXbqlAw7r6'
'type: acceptFriendsResponse\nid: 4n8mzZ0m8SAMTwE6\ncode: 0'
'type: blockPlayerNotif\nblockedUserId: I56IaRDBXxyaNoMR\nuserId: 6hkspInrAip6lyzS'
'type: blockPlayerRequest\nid: 4CUkNmKJfh5pUkHO\nblockUserId: xwElFHHdgs21Jub7\nnamespace: DpoMF78NY4YkHs1c'
'type: blockPlayerResponse\nid: hRTcPiSuL0Sly6XM\nblockUserId: nz1JSDgY1TXp38zs\ncode: 58\nnamespace: 4OI18mAQLnzjMf8G'
'type: cancelFriendsNotif\nuserId: Z2WBZqxYG3aREAu2'
'type: cancelFriendsRequest\nid: pKxR8dl0zRVW4EZG\nfriendId: D6QVKNCWP75TB0i7'
'type: cancelFriendsResponse\nid: Z4U68su8XfqlqNiT\ncode: 25'
'type: cancelMatchmakingRequest\nid: MecdKi5r6QEa1ysL\ngameMode: vB6SdAdIhUDrwoZ5\nisTempParty: True'
'type: cancelMatchmakingResponse\nid: l3rGN9A3sNm84hdd\ncode: 53'
'type: channelChatNotif\nchannelSlug: SpHt0P7MIIR7CkyF\nfrom: 6C7duuyZ0GhDogqr\npayload: hBRd8lDR6qVNPRZY\nsentAt: dFLIAjGGJddVCvu9'
'type: clientResetRequest\nnamespace: vx5KQ7KYnIuMBvaO\nuserId: 35llzQRaT5kPxUfo'
'type: connectNotif\nlobbySessionId: fvnnSuB0y5WUlrMd'
'type: disconnectNotif\nconnectionId: I4sNveabntBSxTeI\nnamespace: v53HGCiljvjKoyD6'
'type: dsNotif\nalternateIps: [SCwGrncqmLtjQHAf,8TgoNm03VLisV6zw,Puo3td6TC6I3lMjG]\ncustomAttribute: SWN2laRlxfcjHfYa\ndeployment: kUCTqGkE7wcWfDsl\ngameVersion: pJSqGAXQ0yYoNRKd\nimageVersion: 3IL5TAQ6iiPlSC2u\nip: E4o5Vwdo3fePqIJA\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: Sqb8RwNmn9HrNQy4\nmatchId: uZAAiE0mit9RGCCH\nmessage: YzUOcEdscKHPEqgA\nnamespace: 8yu7Vk6Jt4Ymos9J\npodName: cdos4fYcTVU6RBt0\nport: 52\nports: {"GZ5dAgqxpBFmaLox":30,"dalwSyliWMNW5NyL":41,"qtlB2jJCSQT279ZZ":86}\nprotocol: bQ6Q9lNmqRBaAkLn\nprovider: vxkT1X68cmDc3fxU\nregion: 8MyKrQpM4hkkK6KK\nsessionId: XNB3Gv0IqmF51Tkh\nstatus: jYnaq6foWvXa3bMr'
'type: errorNotif\nmessage: XsDr6kILsSSyDdmy'
'type: exitAllChannel\nnamespace: kmoPYgc2L4jk4Lo0\nuserId: LSP0pf4IxjUkl535'
'type: friendsStatusRequest\nid: X3ateEKDpADz1x3p'
'type: friendsStatusResponse\nid: w5D2L7vIYhGGSyEW\nactivity: [oD3Qgb3boLQQ1MzH,7Qm8bwbmXgdAPh1E,ThG96gAFKK2WDgCc]\navailability: [xvONZm3EeERmDnye,FoF7VSZ6pf3vneSD,2Tb3g7mSQUhAEtrm]\ncode: 20\nfriendIds: [EEztx1WsYSiZqan0,nSBJroav91GXlvPG,6bFYReVHQipcCx9Z]\nlastSeenAt: [4ZJJ42d3PBddN8S4,8l9lyNApflxqMrj3,oZk03QXcKMDYDDxH]'
'type: getAllSessionAttributeRequest\nid: SZjtqXyJ58f7Gc26'
'type: getAllSessionAttributeResponse\nid: a9LJE8HoRS1X2PFA\nattributes: {"SaiGVkydwYWQG26y":"UZNmTBcvrbYCwZtx","FHyPLtI8ilbyDPUI":"j88cekdqCt81P1kt","fIovmv9gsR5cJcHm":"3SZLxoRDFuuuySj2"}\ncode: 56'
'type: getFriendshipStatusRequest\nid: w20DOqOBSC2DKHRu\nfriendId: AMwzHPxB1UskYs4Y'
'type: getFriendshipStatusResponse\nid: 0EeDxOgBnhhqElIa\ncode: 85\nfriendshipStatus: vxkfUcmqRRbceJ5i'
'type: getSessionAttributeRequest\nid: Dml48wdNFLTm5T50\nkey: x9WT0GfH2rtOa4EX'
'type: getSessionAttributeResponse\nid: 2w1yEkLgh3tIYt4S\ncode: 39\nvalue: qYUTLDx9gIiDandp'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: GT2t24aOMh5eC3IH'
'type: joinDefaultChannelResponse\nid: x40NLRc6m8heKnWh\nchannelSlug: eHSKLCa3xreNDUWe\ncode: 15'
'type: listIncomingFriendsRequest\nid: zfe2NubeoKFeIaFQ'
'type: listIncomingFriendsResponse\nid: Z8YYk6QEgJjBbEDo\ncode: 58\nuserIds: [Nf3n0hEoRCAcf80z,fFyabWAgIUXiI07A,68eaqC2J9jyEW6GL]'
'type: listOfFriendsRequest\nid: 1dQBHO86IlBhnetU\nfriendId: bc0NaKDUL3sa13lk'
'type: listOfFriendsResponse\nid: hyaKwwrAP2aMlu7W\ncode: 85\nfriendIds: [RwTqUXlTDBzOuYsa,ZA2yyd4mbqoOfADM,MAXFaY9eKa699bRV]'
'type: listOnlineFriendsRequest\nid: tjCtoYetOO847g8O'
'type: listOutgoingFriendsRequest\nid: udOfjnCuHZ3c46Ij'
'type: listOutgoingFriendsResponse\nid: 7gh4TeUTkOkAYfJB\ncode: 66\nfriendIds: [cQWsmqPNs92epxk0,i8VxsZNereSvf969,9mCEHThUJkETAsSp]'
'type: matchmakingNotif\ncounterPartyMember: [8AT9t4Tv207Y2QD3,oD5fLCr3OOlXVv8Z,GF7uYnGzpipNDigN]\nmatchId: Jma1MbqqZtfNWql4\nmessage: nmwAft4gqkNNlWkD\npartyMember: [9eOziYRFOn0jJLHC,9LxhvNXTwGBCtohL,tl9Zuhytm5UDrT6Q]\nreadyDuration: 96\nstatus: Cs5SPBbRPZTF6oQA'
'type: messageNotif\nid: GJPN4eXbJE5Vs2Gc\nfrom: XVG7tnsZg5QgXjvy\npayload: yomQoIXimBJehyxl\nsentAt: 81\nto: PZnGBt4P7WnbdSJt\ntopic: jX7ZshZyZl5x4bRX'
'type: offlineNotificationRequest\nid: BHUTrDzZSKscfOcY'
'type: offlineNotificationResponse\nid: N9LFkYW5DQyj4bj5\ncode: 41'
'type: onlineFriends\nid: mpo6sPwVOEDSJsEK\ncode: 89\nonlineFriendIds: [5QpNhlI2iS5EpGhh,vXYck0upMzUYnb76,tFkEORV3bu1bNCtX]'
'type: partyChatNotif\nid: rHHC3DpZxkrQDXuN\nfrom: 7W40V6Do5sYadCCF\npayload: FviMarv8mnfHK8CC\nreceivedAt: 25\nto: 3DlhLuIpomM8sm1M'
'type: partyChatRequest\nid: e7udsMrok0WvGYYn\nfrom: iaI1mX2tJoARtdbB\npayload: x4V709xbnGezKsDw\nreceivedAt: 66\nto: 24T805tVg8JqU0jZ'
'type: partyChatResponse\nid: vzcWbfUpaXp5JMl5\ncode: 31'
'type: partyCreateRequest\nid: LL4bTxBmZjdrrIxs'
'type: partyCreateResponse\nid: jglaDXTvKCWwNTAh\ncode: 56\ninvitationToken: d2wrS0uPdjhdinpn\ninvitees: g5BLy8wbhMssAHja\nleaderId: pIkY9Rf4wP57dBZN\nmembers: R88YbCtmKy8M9zVr\npartyId: jfGXZnqAQUoY1Gjl'
'type: partyDataUpdateNotif\ncustomAttributes: {"IIk0iKoTTS1j02o7":{},"JjTXAQN0qdskdQV0":{},"TqI8EFnmDbxIxi4Y":{}}\ninvitees: [KlONk2Q5Y4Jvaizw,iilatuUjjt9lIMGq,l5ElEa9EIIlGcHB3]\nleader: CfR3ncDlwi3v3MFF\nmembers: [J1KesKoELCpobBEG,8X645xpdXpai0rYa,T5hOPjaf3H0tYigh]\nnamespace: U0VUfcYHJbBfAKSi\npartyId: PW3VgsZXiR1DJ7HV\nupdatedAt: 99'
'type: partyGetInvitedNotif\nfrom: Ki6tArAURt9plCSV\ninvitationToken: q8PdH6hJPUAc0RVw\npartyId: XgAgntLMCuaXBWQi'
'type: partyInfoRequest\nid: 6BqPg4xr0lCancUZ'
'type: partyInfoResponse\nid: ZXElW9YfRSse6AAz\ncode: 66\ncustomAttributes: {"vSZIPkhSgORcz5S5":{},"BvmgBLxh4ijFnE3T":{},"am69qSZ7PC6f6Qkm":{}}\ninvitationToken: 3S4czz0QKFlAVmVL\ninvitees: u4AOec0z8eBeeoip\nleaderId: 68J1nsv4W2OJhtaf\nmembers: xMSJlHeb34sZKHcl\npartyId: 5LLLOexL4fZvWtND'
'type: partyInviteNotif\ninviteeId: 2tcBFpX8lNtFEJ7t\ninviterId: nkY6Mca5afj12K2I'
'type: partyInviteRequest\nid: XgNne8kJATwlc6es\nfriendId: zrBvvWm4udE0OXud'
'type: partyInviteResponse\nid: BsV6xnZ5Jrzzjrca\ncode: 95'
'type: partyJoinNotif\nuserId: ug6CWVG8SWP3glU6'
'type: partyJoinRequest\nid: muswVJnNnN7kAa7j\ninvitationToken: 0riFc5HTHQIoVsGo\npartyId: 7dwV9DBqFKHQkETJ'
'type: partyJoinResponse\nid: UVSC00PYeDcaggin\ncode: 50\ninvitationToken: xnFIna3yddcbsPhe\ninvitees: TH26IUJNvYuGRUvp\nleaderId: ZaHCuESOiIZsMfB4\nmembers: ZH3mtgWgU4pCAKxe\npartyId: E70CaunQNxot371W'
'type: partyKickNotif\nleaderId: 9G4AvQkqsGnmyo5J\npartyId: JTUVmb8GEXFTlEME\nuserId: sFzYqwgK1Np5nodq'
'type: partyKickRequest\nid: pLm7FhJBNXzAFdO0\nmemberId: Khqf6kiTdSGv2LFj'
'type: partyKickResponse\nid: xL6ozRmDD0jJvlfV\ncode: 54'
'type: partyLeaveNotif\nleaderId: 5OemPYdYT7DROCjt\nuserId: uzFMbAG9YI89hmgu'
'type: partyLeaveRequest\nid: B8FOTjMLo4b9rIzq\nignoreUserRegistry: True'
'type: partyLeaveResponse\nid: drKF7SUQPLG59e0k\ncode: 21'
'type: partyPromoteLeaderRequest\nid: 5ZtX6wK7PpUlcIW3\nnewLeaderUserId: 2iK7MGt1ixY5rA1W'
'type: partyPromoteLeaderResponse\nid: JXTIMtpgkieDyF97\ncode: 30\ninvitationToken: lGdMiHKxbWCYzo8y\ninvitees: O2KTK9tmmOnYnOpa\nleaderId: s6ghP1y4Zi7s7QBl\nmembers: k44Z44B1GZgKg4uK\npartyId: xaCgcGLuC3brWdTY'
'type: partyRejectNotif\nleaderId: CfHkIySok5DiXZtL\npartyId: W87rGysryod3dNQr\nuserId: msApRA6HX3RwrKt2'
'type: partyRejectRequest\nid: ecozL0TOg54vCE48\ninvitationToken: L5oLF6M4lNa4JUMS\npartyId: HNgqRqCV7usamANk'
'type: partyRejectResponse\nid: lOX9Sfo95HgXqKhT\ncode: 30\npartyId: PkwfLM9uSybRzWek'
'type: personalChatHistoryRequest\nid: cKMLhrTrcBE2ItBS\nfriendId: 2gZvRrvr0n9d9lvc'
'type: personalChatHistoryResponse\nid: LYOWA8NjxOnaEok4\nchat: 3KtKZWe8aoFzAyBM\ncode: 63\nfriendId: vim02jBOxrZDyvpc'
'type: personalChatNotif\nid: Un18G5MlfDTk8aG4\nfrom: nOOCzfsflhjbngJO\npayload: 0NlncceIZSwgAIkg\nreceivedAt: 51\nto: Y8VnocGAjci0V3tB'
'type: personalChatRequest\nid: NLDljhZ2jxLRX3z4\nfrom: f2jnHGKXphn50c9t\npayload: 6OCaGBeMfPlNos4y\nreceivedAt: 57\nto: ifnKqmTSoGH1XEfY'
'type: personalChatResponse\nid: QAYn6WQ5UBEU1QAO\ncode: 42'
'type: refreshTokenRequest\nid: HfZiGhxOdcuDXSxS\ntoken: c3aZPV87pna08gxe'
'type: refreshTokenResponse\nid: j1Rx59hesNWy2NvZ\ncode: 11'
'type: rejectFriendsNotif\nuserId: 85DDKDAF8KDsBZOu'
'type: rejectFriendsRequest\nid: kMpcmnnx6RVBrop9\nfriendId: YQJ03BAHZ7c53q7a'
'type: rejectFriendsResponse\nid: qKzFsLfYalUlfwEQ\ncode: 44'
'type: rematchmakingNotif\nbanDuration: 74'
'type: requestFriendsNotif\nfriendId: SfQrtfF3TQN0OcND'
'type: requestFriendsRequest\nid: mPYhrLTyU8OhgfY9\nfriendId: Lr36vzohZyjMQAg5'
'type: requestFriendsResponse\nid: G99LyvfvHEsJKQQe\ncode: 73'
'type: sendChannelChatRequest\nid: jfIGaffoflEIByYq\nchannelSlug: wVLMUoAnaRcYp7FU\npayload: eKN0meGelYF5wWaD'
'type: sendChannelChatResponse\nid: lncV7vWgSHdfo07U\ncode: 16'
'type: setReadyConsentNotif\nmatchId: ctPErqxyMyOK06Mq\nuserId: QBErxgjVBycvU4Pb'
'type: setReadyConsentRequest\nid: mRDcrg0DjQjBECXv\nmatchId: ea7H1m2lJFRZ3Zpr'
'type: setReadyConsentResponse\nid: 60zMjhTHeh94TSen\ncode: 99'
'type: setSessionAttributeRequest\nid: E5hCFkIf5weqZ18M\nkey: H57l2Zsrh90ETtYm\nnamespace: Gukz3MnlrjcHp6B8\nvalue: Vj7rXFgDnDkdZ9bp'
'type: setSessionAttributeResponse\nid: wSWTaLQjctvrK2jh\ncode: 18'
'type: setUserStatusRequest\nid: pPr2QEPx3zTxBGtE\nactivity: sYpKPlXn77AtYoFz\navailability: 76'
'type: setUserStatusResponse\nid: QxevecWw7Rry0KK5\ncode: 73'
'type: shutdownNotif\nmessage: rgAGO0dW8rX2MVUG'
'type: signalingP2PNotif\ndestinationId: KSZ4GcLkt4pK32sJ\nmessage: xlZcCTpTdRtCHvuk'
'type: startMatchmakingRequest\nid: uL02Le8HSCslsDd4\nextraAttributes: 6B6XTmSLyn50sigB\ngameMode: VZxiKdV57GvRyd9U\npartyAttributes: {"M1F5qRIblS7Nz81G":{},"RazPAANjfBoldFOy":{},"qA2clJ5gEOaCgM6Y":{}}\npriority: 28\ntempParty: tZdIs0xf4czdt7zq'
'type: startMatchmakingResponse\nid: 5mM7k8nbLzvtCIW5\ncode: 26'
'type: unblockPlayerNotif\nunblockedUserId: ynMKquUicAeIVXto\nuserId: WAXhMlW4tLqX7OIC'
'type: unblockPlayerRequest\nid: f5oD1e6oI9FmYel0\nnamespace: kOw72o8Zkgk0jS6r\nunblockedUserId: DWUwfhKvrf2AaH4y'
'type: unblockPlayerResponse\nid: SwyagYvDJ3w3UNgI\ncode: 58\nnamespace: Gj2jZtEYT8sIPSE1\nunblockedUserId: XXPzySa0sZoFS6xC'
'type: unfriendNotif\nfriendId: OWMpyh9pMsQgb64E'
'type: unfriendRequest\nid: bufXjYnSoIFeouC2\nfriendId: LbzDMwyo4nIRysQd'
'type: unfriendResponse\nid: nuHCXWfwnwGioVwV\ncode: 25'
'type: userBannedNotification'
'type: userMetricRequest\nid: zmmBVVFfpqx1AeLt'
'type: userMetricResponse\nid: hsjwJeGwaPSDMZz9\ncode: 52\nplayerCount: 58'
'type: userStatusNotif\nactivity: OYKiqaZD63xe5rru\navailability: 73\nlastSeenAt: zpqIFGLkDs7ACC1R\nuserId: gBfoNrHlFi2qJLgm'
send()
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
echo "1..105"


#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AcceptFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsNotif\nfriendId: BLE35YhyiDV90SeI' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: x9fbT63ShEh8PbGi\nfriendId: 5yppBHoytVznCgNy' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: C97uAPP8PATLpUpx\ncode: 22' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: eJlsBJT6Hh3OMjAj\nuserId: q2mK8lbSEEelxnb5' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: 4fI1IQcoBQELcNlZ\nblockUserId: QxWG2HFnZlA6HKWW\nnamespace: kqTZrKgXNwvm4e5G' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: cOvhPyE11TRT2SKs\nblockUserId: X6H742OixhtAoKiV\ncode: 25\nnamespace: eoe8VLie0LBa36KN' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: zjf005CXNGehQ2aT' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: JDWh9YWqc0qgV6d9\nfriendId: jTDfKFDXC7eGL5Yh' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: NjCMDtDMrentgn3D\ncode: 49' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: vxuJlhXbWhbwPwTo\ngameMode: hqciwIeShF9RKb9v\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: 6knjVwVnzaqSfJiQ\ncode: 56' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: FC2gXoda0kg16yUS\nfrom: pSOAjHJWwfCjYwWk\npayload: Lob9gKLqs2nEZhpB\nsentAt: yfHZinxNfgPAwkMB' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: sznlBUqnLT4AbGpt\nuserId: KaWNvPbpg7yrRvXf' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: Z6rvgvEY3Hht1Swq' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: TsKKKo37NHDOQe91\nnamespace: Ps3ztUIV0dS6hIH9' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [c4VfkyrwpuXxbaER,bfgPmi0eHkt1mr9E,OIFg0dnWIYN2NVL7]\ncustomAttribute: 0Iw157g00jr9b8Mu\ndeployment: YmmeKTmBNvGYxEQd\ngameVersion: f3ewoGGoY7xmFNAm\nimageVersion: jDDCvs78mcMdiS76\nip: YApGJ9ufwLYkqIgL\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: ZS6hsQryiEtOAbpe\nmatchId: UNf26UqkCfgCUYBn\nmessage: 2xaOBdPF0JmX8qwU\nnamespace: 1cTuHHPB5S3DvPRC\npodName: zBrVUxmDOj3cvRFa\nport: 93\nports: {"ahld1pO0Gyf5PO3C":84,"6pQxDQpKqxLGeMvr":14,"TsvcMQ7dBsaIecRx":71}\nprotocol: Nn3SHiWxF0YbuU5a\nprovider: r5qTLWUCy0Afgc05\nregion: 0XIZRW491e94mQjV\nsessionId: OOBnIWhunElqZUod\nstatus: p3IhtCSHy1ei1fIr' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: PvfHnRN06EjRwEQl' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: NapJRfk4f9Zcw1pE\nuserId: HAyNFxcVTKuAQTGh' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: 5BxjWOozGoDtsUuY' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: 7EEFB67AODbi9Bzu\nactivity: [o5p8ED5QZAufwNa8,lzfjv9oYMXMjlVHY,1AHwF3vGoav7MK0P]\navailability: [cLnEkcokKwcQ0baD,T9OyJ2h23GUS2amU,7syGlElXdEAOrVSn]\ncode: 78\nfriendIds: [Xade41s3rH34mB2y,PlRpWjmHZAAvKTH8,MuqIg0CzkguwuJCW]\nlastSeenAt: [pBsFpYc77GtRUcCF,eY5g4XgBsbfzqxBP,Ne8ae1Il4aAtEbu4]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: IjGdqthRxTjQ7gkZ' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: 0TBujELAUK6mQ5iZ\nattributes: {"EY8rG0q0Q2Qd2JzR":"bkF2I03dIjvBbA6b","fbYaJCJjfk2TUvn9":"5FhO7VW3mbDVMDu8","7t0ldWf7iSGIiKFt":"Wtn4Yr2svKM6pqLG"}\ncode: 89' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: idKupvXO6aj4hCmT\nfriendId: gbwwm5iGzXtcknrg' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: poBCbyJsF5IjF1c0\ncode: 58\nfriendshipStatus: DBvQvRPnAz4VzW0C' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: W338HS6CBgVRyihY\nkey: NZ84CVhziXV8HwSm' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: zccA8wvLsWUNd6lP\ncode: 43\nvalue: KvqDejvqklTSvDwu' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: OrP9lzpiX0VuFpZu' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: jkIykR2zbaI6PD7f\nchannelSlug: m7izxe7NPzjOa8E7\ncode: 45' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: EscShnGUGUtV9GJ2' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: 9GDbLNwjm3FK0nnX\ncode: 54\nuserIds: [2poMfZ1hDHtbh4Ht,MlFgvh2Dp2SoiIPp,1yvfAHS0VgLu11A3]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: A6jEtcqsnzoVILjk\nfriendId: HTovFi4tPAGfleyC' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: rINPXppPNO3AfmXc\ncode: 47\nfriendIds: [pVI6eTYAjdPlCiQQ,C35cj4KyOVgvnWbf,RJtsB7cUQZ2QUAxJ]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: gwC3IN6tvKgLB9Qm' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: JIOq9dP5szG71utj' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: i1CMgKAOG5iDcCR5\ncode: 38\nfriendIds: [nYxM0UHZVNYzGMNI,pWoSLkUrfuf4U3We,YeA9t2ENKKWrFtHI]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [PbCvDLil8wj9cKM3,Ar6MF35hCER4nGmW,GgTJfHlJl4tHGa4X]\nmatchId: fZcd9CVnGqMX9Fie\nmessage: eEssWEUl07bhwntC\npartyMember: [VqiYOJf5KwMZQjzv,jSozv6CTRDl0zp9C,zHFwinkBNi4gvqgl]\nreadyDuration: 51\nstatus: TZ9TGVPmv34h6T7E' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: XmpZ9X3fUSR1l9xL\nfrom: sufmfxKYB4LM6H6Q\npayload: PBsmAUrD9L1IiD6M\nsentAt: 24\nto: ZcA92hzC7MNa8vVe\ntopic: 4MHX6AgMep90AyyU' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: JyAK5PRMRMwdvl0h' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: x2UDcgVE7L9FK6e0\ncode: 44' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: jgJaMYvNQOsDa4bk\ncode: 78\nonlineFriendIds: [cgepqtxjbrztee7Q,LTGAak7Kaol01DK9,7D2xnik42miteR5e]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: mO4oI8KDqebm83ra\nfrom: QAe1rzmmgqBPRmd6\npayload: NBJ5y7axEkvI4oxZ\nreceivedAt: 62\nto: tWf1Ybgg8rdwY9bm' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: wEsdOGBXBwnzDX8v\nfrom: rvHmO07KNqX9LM2I\npayload: 3xgC1Ge9PdbTTAJ2\nreceivedAt: 67\nto: AMEX5RMjBFVZGYzQ' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: 2l3hPjNDKv2LWfXq\ncode: 33' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: jr8fS79En3wYowBd' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: CxdvPL9e4P01vxP8\ncode: 22\ninvitationToken: xj1LyEirURERnEMz\ninvitees: pImW6sjAHyCK5tNa\nleaderId: nGBrkzUvck3xTtmO\nmembers: FMebS4AdlNzwog2I\npartyId: hErkNhNcECWwchW6' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"zL9SkbLlrNXnGanM":{},"azb8jvRWenURH48a":{},"JuALEcSqcE15u6D3":{}}\ninvitees: [1DjOsrs3CUYATdqn,QGbqiqOkNeATj7eG,jodd7CcJUrI6MAug]\nleader: K5kypNrp2nFe9FmN\nmembers: [86sK5LOq4ft5jGcM,ICPUYnfG6jl9U4jR,eteIMgzISomCsodJ]\nnamespace: rhQW41q2OspCZbt3\npartyId: Uta5I0uGcL1koyHj\nupdatedAt: 59' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: eexsIAP5vHLjBJ9i\ninvitationToken: qMcBL4BzhDUjhKPw\npartyId: bwcvQU5kG8bXGFmP' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: AnOkDiJq4xQye7Hq' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: 7KeRWdECaFGzfZ2h\ncode: 28\ncustomAttributes: {"ohjtC7bzjPpucddX":{},"J5zifF8y959anrNS":{},"leywHbHig6IKWVZ7":{}}\ninvitationToken: xcJ2Fnemn7M23SzU\ninvitees: o4hNBDh9ZFP1OW0n\nleaderId: XOErQPS4VsRoYIK6\nmembers: 9yg9ADCGiXaLs2xj\npartyId: HkinOD975nARHCmh' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: NHSXuqIHsxvaUoXD\ninviterId: mwWsukxncuD3QxCX' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: fIZsWhkS476dGGJw\nfriendId: Md00YBWCaVVmM45m' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: Dq9aT3qZyI0rYsWu\ncode: 74' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: cAkXsVJbXi7eRZa7' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: WwIc895ImqK6tVsa\ninvitationToken: Uq3stUh5J5Z9GiBi\npartyId: SAylX5cS0IeHpWCu' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: eaWytPfds1BYx0Ea\ncode: 12\ninvitationToken: URydf8ZyyZeHAWGg\ninvitees: JUbUJRMbkcTglbU8\nleaderId: 6FyOjApNHBVfNOUR\nmembers: cjY3YYT9oTynmfIu\npartyId: BWgJTNFfM8M0IW4o' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: e8KDgy0xZfAcNg14\npartyId: Ws8TIP1LKiFQoLDv\nuserId: umfqrgSfnx2h61X9' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: dN1MGRXBJ6mVV7JS\nmemberId: 9qjNLwvI8JdiY3RR' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: 57lPdinpjS2DRfGt\ncode: 17' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 9GlyZVQ4X67tPZST\nuserId: pPq3xjrElvvDgw0a' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: g7kSWE0Hiqm5IuLr\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: iEXqvUWDjU1G0EVj\ncode: 70' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: VZw1ToLuPakQN1Mp\nnewLeaderUserId: Os1RVFrcg2CXxepx' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: 8fvsyhE2BKtyTDSI\ncode: 94\ninvitationToken: M7mkmvZ7Cmsh4US8\ninvitees: o4jfMANPpmZDdMiC\nleaderId: xmuCCVuFjS1GC1d2\nmembers: b92B4vEgj3HOmhcW\npartyId: m428XejRF94NIY9n' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: MrBZo0lNUBDShHD3\npartyId: 2vvL28FPwTiXfLcx\nuserId: DC9Ynd02mECIQhfI' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: hHtADUQ9zimQTQT9\ninvitationToken: 5pFJUAJsyAfeKOuf\npartyId: V4f15NohXu6opxQG' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: sqPzPkwCBo2SwCUs\ncode: 88\npartyId: Tag4MLAo3m61P2xa' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: 2UBRmMhAbUWmFhdY\nfriendId: Nfmn8Onb1a9gMz0F' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: rJHXGXku2YVuOzhx\nchat: LWzMuv3zkUY0n0BA\ncode: 21\nfriendId: 3IFbRkPSSITz4TjC' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: e6A6RpmKDebNkylb\nfrom: HmnrrV9ZGWrZ05sx\npayload: ynkgT9vayLLiizac\nreceivedAt: 67\nto: rZ8iMlOuksQJCiRF' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: QzUJ9XlYJ8BzP6EU\nfrom: iZWwJ7NrTb1XTB9Y\npayload: mUXGM5anIloyj9lh\nreceivedAt: 2\nto: VDAiU6iJOF7JKZFN' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: ryY91lX8DD4MYXlr\ncode: 22' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenRequest\nid: J81lHvv9rqvEoM8Y\ntoken: mVjAkO3HKsEp6Klq' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenResponse\nid: OK7xAvM7tuL81lsR\ncode: 46' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: 7xxSVp3Gd2TK0HzY' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: 6Iz8tne5dbguBF6G\nfriendId: viTgYmx82JVBRLPZ' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: bjE2opXtdsJQeJ1t\ncode: 38' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 29' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: 4IK9lOLaZaMphKCq' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: xGnNuhoJM3WWPvvC\nfriendId: Tq3EVheJjoEEXBLI' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: 8jISd97KORRhxSWL\ncode: 17' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: 46LuxJF3sbeqWBdQ\nchannelSlug: WLNfHRD3V15QaGGL\npayload: uWfgBAKx27MSBqab' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: zApmWJO5vzzXZj08\ncode: 96' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: a6K1XRVfriSpPFnZ\nuserId: BJZkDnEiyfa2Lrnp' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: ZxNnLRH36bqS2oFY\nmatchId: 76PU1AziBOHEAj1c' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: Dcos5uVJ0BJfZ0jv\ncode: 94' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: A54CSqZFDsO1skRj\nkey: OU1SMfQVQa6blj9R\nnamespace: dd85bdYUumPKVSZC\nvalue: g3XTc9vQe0dHJfF6' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: SRL9cgbUmulhe98o\ncode: 75' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: AD77ci0vfWVZoRRM\nactivity: aFKlQicdrxVhrtwS\navailability: 6' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: hSclSkb5aBi9K9zy\ncode: 85' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: v6gFZXI5nXJ7hLi6' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: HweweRmyo91dIn7Q\nmessage: qXBDXJcrqKmXDwoE' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: vSoaGk4ktF5wnJDg\nextraAttributes: V6tCdrxw1KOPhuvH\ngameMode: uYrGWDK41uMOC0mR\npartyAttributes: {"9Q3WXiydCOInVols":{},"r6CHmj763vLwtYEJ":{},"TSiXjcY5ZPkv90ly":{}}\npriority: 75\ntempParty: NW11vtpaTxi7k489' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: DbkVs3qFTi1t530W\ncode: 18' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: j1WfzIvc3VlSXrA3\nuserId: XUGud4tVjmxEf4Xv' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: VhFJTxFHITBg9x4u\nnamespace: nq3eOMHIKeTyBG5d\nunblockedUserId: CUoExnKfV3869IN4' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: w3XMGBA6JXDpA1tI\ncode: 97\nnamespace: C45C0oaGouFu4hXO\nunblockedUserId: NgUwJnUpryDeRcpU' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: vlrw2MwC1uuokpaI' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: 9gxOgvDc7xMrRKvw\nfriendId: jL0Vxe5n9Lx3QcFo' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: ISP2WKmCRRXBxlal\ncode: 11' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: CHtWlKxLpS8fLWoQ' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: nuJhatQPxR7dvBVC\ncode: 50\nplayerCount: 13' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: zgOKLTDmHe8c1eJ9\navailability: 38\nlastSeenAt: yEr0KBXuJBqK4QtE\nuserId: ydPWLPBYiR3UbJc1' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
