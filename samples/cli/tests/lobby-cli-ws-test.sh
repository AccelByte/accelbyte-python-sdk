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
'type: friendsStatusResponse\nid: U6YE3p4lSck0ZHn5\nactivity: [oD3Qgb3boLQQ1MzH,7Qm8bwbmXgdAPh1E,ThG96gAFKK2WDgCc]\navailability: [49,69,43]\ncode: 36\nfriendIds: [ONZm3EeERmDnyeFo,F7VSZ6pf3vneSD2T,b3g7mSQUhAEtrmjq]\nlastSeenAt: [GI39YBHqaTHeKtW1,8iGeUlc9d9sogWa2,4CKNS0GqVvUfHQvs]'
'type: getAllSessionAttributeRequest\nid: HXNUNe4mhgo5QB65'
'type: getAllSessionAttributeResponse\nid: cekdqCt81P1ktfIo\nattributes: {"lSAiYnNjkfZrQvGg":"bLdLsFzHkBMr1yrO","MlNFSrUEirnjX9fD":"mIbeZxzfTcyiuATu","s9hsfpFDcSDG8aMV":"GLiBNrDjqoxcwgGL"}\ncode: 32'
'type: getFriendshipStatusRequest\nid: LxoRDFuuuySj29a9\nfriendId: vmv9gsR5cJcHm3SZ'
'type: getFriendshipStatusResponse\nid: CmBUqg2SCnqntX9y\ncode: 77\nfriendshipStatus: FM3FIoVk8T3GpAnk'
'type: getSessionAttributeRequest\nid: 1aZSWMiVi10sG6vx\nkey: kfUcmqRRbceJ5i0E'
'type: getSessionAttributeResponse\nid: nLRfxeCSz9WEi8Kl\ncode: 9\nvalue: loeH0JT1yduat2vQ'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: R3biBfsu4jmsRE2w'
'type: joinDefaultChannelResponse\nid: 4XlbGL8QOxtjzm8y\nchannelSlug: 1yEkLgh3tIYt4SqY\ncode: 95'
'type: listIncomingFriendsRequest\nid: 2wNhmwoYZyI4EFZK'
'type: listIncomingFriendsResponse\nid: KLCa3xreNDUWehwH\ncode: 56\nuserIds: [3q31A806DJgas4b6,z3LNUj7fdgLA84Z8,YYk6QEgJjBbEDoNf]'
'type: listOfFriendsRequest\nid: yabWAgIUXiI07A68\nfriendId: 3n0hEoRCAcf80zfF'
'type: listOfFriendsResponse\nid: DNxtXgeO3FgkXhjD\ncode: 8\nfriendIds: [gpwxcfMy9XzjjI5Y,bsKoADkzJEN2VHzi,h3bit0VWn3CO39PX]'
'type: listOnlineFriendsRequest\nid: zaQY3snn2ZkP7cFd'
'type: listOutgoingFriendsRequest\nid: P43e5dC9XIBudfZg'
'type: listOutgoingFriendsResponse\nid: 23YvYmmDg7VYPXIu\ncode: 35\nfriendIds: [aKwwrAP2aMlu7Wtj,CtoYetOO847g8Oud,OfjnCuHZ3c46IjGa]'
'type: matchmakingNotif\ncounterPartyMember: [vUYTZBRujIUE1Tq5,jyAZvkRCMNFIurjh,2imdb4rbkXj0ZwsV]\nmatchId: C0gL97ZVJSPqJiwv\nmessage: 1qlYB1RSKs6gQxC3\npartyMember: [Gb7S0o4zGYY7KQI1,AeFgPqaOkvo1aolB,4lkKB4EYOkQ1jMD3]\nreadyDuration: 4\nstatus: OziYRFOn0jJLHC9L'
'type: messageNotif\nid: 9Zuhytm5UDrT6QXC\nfrom: xhvNXTwGBCtohLtl\npayload: s5SPBbRPZTF6oQAX\nsentAt: 97\nto: dIIlhS1fSiM9331m\ntopic: 7Ta1PsKc50Kv6ecn'
'type: offlineNotificationRequest\nid: EevcAx2K2zkRenmP'
'type: offlineNotificationResponse\nid: nGBt4P7WnbdSJtjX\ncode: 19'
'type: onlineFriends\nid: ZshZyZl5x4bRXBHU\ncode: 16\nonlineFriendIds: [TrDzZSKscfOcYu3d,pCROYqUiGKXVFCmp,o6sPwVOEDSJsEK5Q]'
'type: partyChatNotif\nid: Yck0upMzUYnb76tF\nfrom: pNhlI2iS5EpGhhvX\npayload: kEORV3bu1bNCtX7W\nreceivedAt: 45\nto: 0V6Do5sYadCCFrHH'
'type: partyChatRequest\nid: Marv8mnfHK8CCmE2\nfrom: C3DpZxkrQDXuNFvi\npayload: lPnsbD3SGEdlwuUc\nreceivedAt: 4\nto: 1mX2tJoARtdbBe7u'
'type: partyChatResponse\nid: CjgyJlXe36mgWjLf\ncode: 6'
'type: partyCreateRequest\nid: Fmteue9nzJ6fH24T'
'type: partyCreateResponse\nid: 05tVg8JqU0jZpjvs\ncode: 83\ninvitationToken: ugAOS7u8RiWyerCS\ninvitees: a8SRgwsAj1ik1jgl\nleaderId: aDXTvKCWwNTAhd2w\nmembers: rS0uPdjhdinpng5B\npartyId: Ly8wbhMssAHjapIk'
'type: partyDataUpdateNotif\ncustomAttributes: {"Y9Rf4wP57dBZNR88":{},"YbCtmKy8M9zVrjfG":{},"XZnqAQUoY1GjlIIk":{}}\ninvitees: [0iKoTTS1j02o7JjT,XAQN0qdskdQV0TqI,8EFnmDbxIxi4YKlO]\nleader: Nk2Q5Y4Jvaizwiil\nmembers: [atuUjjt9lIMGql5E,lEa9EIIlGcHB3CfR,3ncDlwi3v3MFFJ1K]\nnamespace: esKoELCpobBEG8X6\npartyId: 45xpdXpai0rYaT5h\nupdatedAt: 83'
'type: partyGetInvitedNotif\nfrom: iPX6ues1Hhhkg1yL\ninvitationToken: VbLFzHEP8cM4NTwr\npartyId: 0KHaAsmTej52WKi6'
'type: partyInfoRequest\nid: tArAURt9plCSVq8P'
'type: partyInfoResponse\nid: IPkhSgORcz5S5Bvm\ncode: 7\ncustomAttributes: {"7UkBeIXuqDuAXI66":{},"bQ71w0deoV9Lx5RD":{},"A1l2XcrciYNEzvSZ":{}}\ninvitationToken: gBLxh4ijFnE3Tam6\ninvitees: 9qSZ7PC6f6QkmZXE\nleaderId: lW9YfRSse6AAz3S4\nmembers: czz0QKFlAVmVLu4A\npartyId: Oec0z8eBeeoip68J'
'type: partyInviteNotif\ninviteeId: 1nsv4W2OJhtafxMS\ninviterId: JlHeb34sZKHcl5LL'
'type: partyInviteRequest\nid: BFpX8lNtFEJ7tnkY\nfriendId: LOexL4fZvWtND2tc'
'type: partyInviteResponse\nid: Mca5afj12K2IzrBv\ncode: 52'
'type: partyJoinNotif\nuserId: vWm4udE0OXudXgNn'
'type: partyJoinRequest\nid: e8kJATwlc6esUp6S\ninvitationToken: w1I98jeZQ7hfxnhL\npartyId: d3Knaknoed9DHhLO'
'type: partyJoinResponse\nid: VJnNnN7kAa7j0riF\ncode: 33\ninvitationToken: c5HTHQIoVsGo7dwV\ninvitees: 9DBqFKHQkETJyTlU\nleaderId: rwDTnoujQD4IEiH9\nmembers: Z5qXn3aoRtlqOECo\npartyId: hViHA5CzgFSy8X1A'
'type: partyKickNotif\nleaderId: 3PrIfapq5AAeMe4L\npartyId: 3mDWORBVXTIIJM9X\nuserId: sYIIZxiXNMR9BgaW'
'type: partyKickRequest\nid: cFX3SUBhyoTsMWPA\nmemberId: xUMkawaGpAyrIwMi'
'type: partyKickResponse\nid: qwgK1Np5nodqpLm7\ncode: 10'
'type: partyLeaveNotif\nleaderId: FhJBNXzAFdO0Khqf\nuserId: 6kiTdSGv2LFjAKY7'
'type: partyLeaveRequest\nid: CbgsWqFWZX7kPBom\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: YT7DROCjtuzFMbAG\ncode: 66'
'type: partyPromoteLeaderRequest\nid: 9YI89hmguB8FOTjM\nnewLeaderUserId: Lo4b9rIzqYkEpsty'
'type: partyPromoteLeaderResponse\nid: UQPLG59e0k5ZtX6w\ncode: 98\ninvitationToken: K7PpUlcIW32iK7MG\ninvitees: t1ixY5rA1WoVeJIe\nleaderId: PF8ZrQzP4zvtdxdb\nmembers: ZUpd6FJtHJ1pyVwy\npartyId: KQLY6FEO65Rb3z7C'
'type: partyRejectNotif\nleaderId: YLM8IlsHqffnrfsG\npartyId: lfPaZKBwa3Ddb60u\nuserId: fPpzwj1QGIFmlVf4'
'type: partyRejectRequest\nid: jvapseE9LN9bvhOr\ninvitationToken: HflIOd6X3viLvtEk\npartyId: 4mTIpUA9gxo8SV38'
'type: partyRejectResponse\nid: TOg54vCE48L5oLF6\ncode: 28\npartyId: M4lNa4JUMSHNgqRq'
'type: personalChatHistoryRequest\nid: fo95HgXqKhTPkwfL\nfriendId: CV7usamANkZlOX9S'
'type: personalChatHistoryResponse\nid: 9dD1kOmvrAejcq2L\nchat: M9uSybRzWek2gZvR\ncode: 36\nfriendId: Xzt6bSc6bWvgpVyW'
'type: personalChatNotif\nid: jBOxrZDyvpcLYOWA\nfrom: gkQuaS7RBx3vim02\npayload: 8NjxOnaEok4nOOCz\nreceivedAt: 11\nto: aBcAXXKlhvyH8paO'
'type: personalChatRequest\nid: 7fH0XrKEDpEY8Vno\nfrom: JtxqMPpcVfRwNj54\npayload: cGAjci0V3tBf2jnH\nreceivedAt: 67\nto: WCqQpQ2FbKPFMycM'
'type: personalChatResponse\nid: Z2jxLRX3z46OCaGB\ncode: 91'
'type: refreshTokenRequest\nid: eMfPlNos4yBRjrER\ntoken: HEonAZR8GmEu0q1p'
'type: refreshTokenResponse\nid: QCyY6vSkVFWdsbYu\ncode: 100'
'type: rejectFriendsNotif\nuserId: VEGVxYheR3j5mNZ6'
'type: rejectFriendsRequest\nid: 9hesNWy2NvZ85DDK\nfriendId: vwv7K8Asvt1j1Rx5'
'type: rejectFriendsResponse\nid: PeN8i4GrFES9z7xu\ncode: 61'
'type: rematchmakingNotif\nbanDuration: 9'
'type: requestFriendsNotif\nfriendId: AHZ7c53q7akMpcmn'
'type: requestFriendsRequest\nid: h65hbN15zfQSfQrt\nfriendId: nx6RVBrop9v7aZK3'
'type: requestFriendsResponse\nid: GebSVu0LQ40kepEa\ncode: 10'
'type: sendChannelChatRequest\nid: ysFO3Zvc1BZG99Ly\nchannelSlug: C4dfiOMZfEhHr39p\npayload: vfvHEsJKQQewVLMU'
'type: sendChannelChatResponse\nid: b44lONDDwMvgI0Hl\ncode: 29'
'type: setReadyConsentNotif\nmatchId: yPR7wZNiVsF6xG2m\nuserId: XEQdbzIVy8alncV7'
'type: setReadyConsentRequest\nid: vWgSHdfo07UctPEr\nmatchId: qxyMyOK06MqQBErx'
'type: setReadyConsentResponse\nid: oc8fgvZDDhoO05oK\ncode: 12'
'type: setSessionAttributeRequest\nid: qymxLD1Lcvw6T6mZ\nkey: EiwxxElpMYSWIeVz\nnamespace: m7z9noowmlTIKVow\nvalue: i0RY2VN4ZONJREdU'
'type: setSessionAttributeResponse\nid: Zsrh90ETtYmGukz3\ncode: 87'
'type: setUserStatusRequest\nid: x9Ns8eLzYEvwSWTa\nactivity: MnlrjcHp6B8Vj7rX\navailability: 64'
'type: setUserStatusResponse\nid: 3QhjCMW64f4XhIjS\ncode: 78'
'type: shutdownNotif\nmessage: oTB2NMKtezapPr2Q'
'type: signalingP2PNotif\ndestinationId: EPx3zTxBGtEJIYpp\nmessage: uUSsKoHw2hyd12uS'
'type: startMatchmakingRequest\nid: Baqdg2FHcunsS1ln\nextraAttributes: E7BEv3aevq6iohU1\ngameMode: cg4W1IS3Uv1BpWoJ\npartyAttributes: {"aO2m9vqjhbeK2qN8":{},"g6x2PyYDo5R3hLiD":{},"5sf5y1JsxJNGmyt0":{}}\npriority: 90\ntempParty: RIblS7Nz81GRazPA'
'type: startMatchmakingResponse\nid: zCAWc9x1aMjgGim5\ncode: 55'
'type: unblockPlayerNotif\nunblockedUserId: 1T107XIZRZ7tZdIs\nuserId: 0xf4czdt7zqmSKxO'
'type: unblockPlayerRequest\nid: EQlVcx6GqsBq8vdh\nnamespace: WVnuYLgpZehK0G2n\nunblockedUserId: myuViB9kRTcSQdTn'
'type: unblockPlayerResponse\nid: e6oI9FmYel0kOw72\ncode: 80\nnamespace: o8Zkgk0jS6rDWUwf\nunblockedUserId: hKvrf2AaH4yCWrHS'
'type: unfriendNotif\nfriendId: ppnIZkNnTn3rzH5N'
'type: unfriendRequest\nid: ihDbmu8ePWlQMVDX\nfriendId: vAtcvNedgS1fUfKm'
'type: unfriendResponse\nid: h9pMsQgb64ELbzDM\ncode: 62'
'type: userBannedNotification'
'type: userMetricRequest\nid: wyo4nIRysQdbufXj'
'type: userMetricResponse\nid: isTKWjmv67nuHCXW\ncode: 28\nplayerCount: 11'
'type: userStatusNotif\nactivity: ZWlGVE9sJ4NpUtKp\navailability: 10\nlastSeenAt: M9I6nEwnZhsjwJeG\nuserId: waPSDMZz95OYKiqa'
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
    'type: acceptFriendsNotif\nfriendId: ZD63xe5rruJVfLGe' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: 31MfuGaXsAuGsZaS\nfriendId: a0ZtlzUcuHAXz0UV' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: hyiDV90SeI5yppBH\ncode: 68' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: oytVznCgNyx9fbT6\nuserId: 3ShEh8PbGikLjgjc' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: r3RSP0W9nBhvhf8Q\nblockUserId: j34uulU6FYBZsWFb\nnamespace: 0DtJMcYQdN66bswA' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: coBQELcNlZkqTZrK\nblockUserId: gt65X4N1LQZmB61J\ncode: 78\nnamespace: gXNwvm4e5GX6H742' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: OixhtAoKiVm6URT9' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: hhDJ5slzgiWZEtyd\nfriendId: 5XhnUcvWB28Mpusu' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: 6LfxnbY97jjYgXch\ncode: 58' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: QuTKfC0I2kNjCMDt\ngameMode: CbkXX26uEdCfQaMA\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: Mrentgn3DhqciwIe\ncode: 38' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: ShF9RKb9vvxuJlhX\nfrom: bWhbwPwToC6knjVw\npayload: VnzaqSfJiQFC2gXo\nsentAt: da0kg16yUSpSOAjH' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: JWwfCjYwWkLob9gK\nuserId: Lqs2nEZhpByfHZin' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: xNfgPAwkMBsznlBU' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: qnLT4AbGptKaWNvP\nnamespace: bpg7yrRvXfZ6rvgv' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [EY3Hht1SwqTsKKKo,37NHDOQe91Ps3ztU,IV0dS6hIH9c4Vfky]\ncustomAttribute: rwpuXxbaERbfgPmi\ndeployment: 0eHkt1mr9EOIFg0d\ngameVersion: nWIYN2NVL70Iw157\nimageVersion: g00jr9b8MuYmmeKT\nip: mBNvGYxEQdf3ewoG\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: 7xmFNAmjDDCvs78m\nmatchId: cMdiS76YApGJ9ufw\nmessage: LYkqIgLuZS6hsQry\nnamespace: iEtOAbpeUNf26Uqk\npodName: CfgCUYBn2xaOBdPF\nport: 72\nports: {"XEwP2b4gd3xOeii8":73,"3DvPRCzBrVUxmDOj":8,"cvRFaTC11W0TGTCm":10}\nprotocol: PO3COyMvczgEpzZ3\nprovider: FbtxfhcRC7IVYa6i\nregion: Z5uFRYNn3SHiWxF0\nsessionId: YbuU5ar5qTLWUCy0\nstatus: Afgc050XIZRW491e' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: 94mQjVOOBnIWhunE' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: lqZUodp3IhtCSHy1\nuserId: ei1fIrPvfHnRN06E' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: jRwEQlNapJRfk4f9' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: 0baDT9OyJ2h23GUS\nactivity: [Zcw1pEHAyNFxcVTK,uAQTGh5BxjWOozGo,DtsUuYo5p8ED5QZA]\navailability: [42,96,11]\ncode: 82\nfriendIds: [wNa8lzfjv9oYMXMj,lVHY1AHwF3vGoav7,MK0PcLnEkcokKwcQ]\nlastSeenAt: [2amU7syGlElXdEAO,rVSnLocLVVYamQc4,wcG5nDBLJoJHbiQ5]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: duE5p4cfs2E41cK8' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: 2JzRbkF2I03dIjvB\nattributes: {"QTwiIAvxSvNDlmM5":"nQFMGzs7fzjgyc44","mEh9tRk8knYSV30l":"nroQehMDli6t9unQ","LYXxm09wpGAbpEmD":"Y9vLh3u6EDsUmrV6"}\ncode: 21' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: Uvn95FhO7VW3mbDV\nfriendId: bA6bfbYaJCJjfk2T' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: 5xCWTqUOYZENJ1QH\ncode: 78\nfriendshipStatus: FSKWM1eym5ydC6p2' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: ZQxPRXH7uxBJEECQ\nkey: E1li3Bg7Jxc9pUnZ' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: knrgidKupvXO6aj4\ncode: 25\nvalue: hCmTC34jxW4pIDwd' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: qXpmRmut9H9XyWI8' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: yihYNZ84CVhziXV8\nchannelSlug: bp8fQxRuX91uYmtr\ncode: 69' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: HwSmvcvcDKF19yVR' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: d6lPKvqDejvqklTS\ncode: 1\nuserIds: [vDwuOrP9lzpiX0Vu,FpZum7izxe7NPzjO,a8E7wY76PxLv9HBE]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: x4XLKAmlDr19uJ3n\nfriendId: Ue89AwEw1HO4FnKt' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: u11A3HTovFi4tPAG\ncode: 33\nfriendIds: [K0nnX2poMfZ1hDHt,bh4HtMlFgvh2Dp2S,oiIPp1yvfAHS0VgL]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: fleyCA6jEtcqsnzo' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: VILjkwW61duF87aU' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: AfmXcgwC3IN6tvKg\ncode: 51\nfriendIds: [lCiQQC35cj4KyOVg,vnWbfRJtsB7cUQZ2,QUAxJrINPXppPNO3]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [LB9QmJIOq9dP5szG,71utjsQ4CrRb9gUC,eVz7fWbZIdhevfZv]\nmatchId: yV7AcodcZwKjYDdm\nmessage: JOlzwm9Su4FnS98Q\npartyMember: [qftSjq7sn8yreciP,LfkVyyJsbGpO6Jge,hDJxEN7JlZc8LMq1]\nreadyDuration: 30\nstatus: HGa4XfZcd9CVnGqM' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: hwntCVqiYOJf5KwM\nfrom: X9FieeEssWEUl07b\npayload: ZQjzvjSozv6CTRDl\nsentAt: 53\nto: SohhhuiTnJarYYkH\ntopic: BDdSzBXdxapwhd5I' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: QYBQuxLvPuWYvE3f' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: 6H6QXmpZ9X3fUSR1\ncode: 38' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: LD2qfCXnlUnqxT1W\ncode: 23\nonlineFriendIds: [sRNMZcA92hzC7MNa,8vVe4MHX6AgMep90,AyyUJyAK5PRMRMwd]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: F5tkTjgJaMYvNQOs\nfrom: vl0hv6g62GxBW2tQ\npayload: Da4bkcgepqtxjbrz\nreceivedAt: 40\nto: JunZPkp6ccIBnWyP' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: j46COPipH1MWVTHG\nfrom: w8mj7gyQ7XdIszGR\npayload: 0qHJCWEfOJpZm9yE\nreceivedAt: 81\nto: raNBJ5y7axEkvI4o' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: GJtWf1Ybgg8rdwY9\ncode: 47' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: bmrvHmO07KNqX9LM' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: IwEsdOGBXBwnzDX8\ncode: 55\ninvitationToken: v3xgC1Ge9PdbTTAJ\ninvitees: 2Gp1r0sVZ6LJAOdd\nleaderId: IL2l3hPjNDKv2LWf\nmembers: Xqjr8fS79En3wYow\npartyId: BdkaZ3y6i38XQjLD' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"RqkpiFK5BtiQ272U":{},"o9UBJWodpdwsX1jo":{},"rcyR0x3YiHF8ITGP":{}}\ninvitees: [RQBCgIs1Q2lzxl0y,F5m77TTh4gUoj8u2,WRcLiEtzVlnkflfn]\nleader: 7pHY48F1dl1q92m3\nmembers: [iRlfnBAk0CwiAsR6,5yQ9ssuHdGmxncCE,r0KcgeqzGbruNB72]\nnamespace: HHMkjzyBB4UFKiao\npartyId: V0VOem2yqPsMFxKy\nupdatedAt: 3' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: mN86sK5LOq4ft5jG\ninvitationToken: cMICPUYnfG6jl9U4\npartyId: jReteIMgzISomCso' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: dJrhQW41q2OspCZb' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: PwbwcvQU5kG8bXGF\ncode: 39\ncustomAttributes: {"CNiXH8uenbC5Cphg":{},"MweexsIAP5vHLjBJ":{},"9iqMcBL4BzhDUjhK":{}}\ninvitationToken: mPAnOkDiJq4xQye7\ninvitees: HqnVK3YVeOWs9mfV\nleaderId: Qh3jLBtn9pxpE7BY\nmembers: tzB0B4CxyQrUpIFv\npartyId: ORxTi79DpSjb39uk' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: cR6c2E2r3vk3IfAK\ninviterId: EbqcNXSGCCvNowNm' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: mulP4tQ6R1OqKVOT\nfriendId: dpcJgF88ySNq4Mj7' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: xjHkinOD975nARHC\ncode: 28' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: mhNHSXuqIHsxvaUo' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: XDmwWsukxncuD3Qx\ninvitationToken: CXMd00YBWCaVVmM4\npartyId: 5mfIZsWhkS476dGG' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: IjDq9aT3qZyI0rYs\ncode: 73\ninvitationToken: WucAkXsVJbXi7eRZ\ninvitees: a7WwIc895ImqK6tV\nleaderId: saUq3stUh5J5Z9Gi\nmembers: BiSAylX5cS0IeHpW\npartyId: CugmfOL0QQpxsuD8' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: PGqku59eFJrOXyDY\npartyId: z9vMUOPG0iHDT8Qb\nuserId: F7gHPTPQbvLt2NRq' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: JGIKzLyH1y72L13O\nmemberId: rnyx34luLdvtsTKX' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: 4oe8KDgy0xZfAcNg\ncode: 80' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 14Ws8TIP1LKiFQoL\nuserId: DvumfqrgSfnx2h61' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: X9dN1MGRXBJ6mVV7\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: jNLwvI8JdiY3RRiL\ncode: 79' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: ilmOGF6dLLIeIVIj\nnewLeaderUserId: McdlbdRXTGIrdNL5' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: q3xjrElvvDgw0ag7\ncode: 14\ninvitationToken: kSWE0Hiqm5IuLryi\ninvitees: EXqvUWDjU1G0EVjV\nleaderId: Zw1ToLuPakQN1MpO\nmembers: s1RVFrcg2CXxepx7\npartyId: 8fvsyhE2BKtyTDSI' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: M7mkmvZ7Cmsh4US8\npartyId: o4jfMANPpmZDdMiC\nuserId: xmuCCVuFjS1GC1d2' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: b92B4vEgj3HOmhcW\ninvitationToken: m428XejRF94NIY9n\npartyId: MrBZo0lNUBDShHD3' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: vvL28FPwTiXfLcxD\ncode: 46\npartyId: C9Ynd02mECIQhfIh' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: pFJUAJsyAfeKOufV\nfriendId: HtADUQ9zimQTQT95' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: ag4MLAo3m61P2xaN\nchat: 4f15NohXu6opxQGR\ncode: 40\nfriendId: qPzPkwCBo2SwCUsT' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: UBRmMhAbUWmFhdYL\nfrom: fmn8Onb1a9gMz0F2\npayload: WzMuv3zkUY0n0BAZ\nreceivedAt: 21\nto: 3IFbRkPSSITz4TjC' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: HmnrrV9ZGWrZ05sx\nfrom: rJHXGXku2YVuOzhx\npayload: e6A6RpmKDebNkylb\nreceivedAt: 51\nto: cNmzwOZOK56sDkci' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: rZ8iMlOuksQJCiRF\ncode: 67' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenRequest\nid: iZWwJ7NrTb1XTB9Y\ntoken: QzUJ9XlYJ8BzP6EU' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenResponse\nid: zdhMeBXH8x6HdVfZ\ncode: 26' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: VDAiU6iJOF7JKZFN' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: iCoeC5weXJl7PeiM\nfriendId: k2NKy59X8iOg2sVB' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: mVjAkO3HKsEp6Klq\ncode: 68' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 46' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: OK7xAvM7tuL81lsR' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: viTgYmx82JVBRLPZ\nfriendId: 7xxSVp3Gd2TK0HzY' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: Iz8tne5dbguBF6Gs\ncode: 91' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: 4IK9lOLaZaMphKCq\nchannelSlug: vvdl8jHz9x7XZIjU\npayload: Tq3EVheJjoEEXBLI' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: mylT1YtxIq73aMb4\ncode: 48' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: 8jISd97KORRhxSWL\nuserId: WLNfHRD3V15QaGGL' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: 46LuxJF3sbeqWBdQ\nmatchId: uWfgBAKx27MSBqab' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: zApmWJO5vzzXZj08\ncode: 96' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: a6K1XRVfriSpPFnZ\nkey: BJZkDnEiyfa2Lrnp\nnamespace: ZxNnLRH36bqS2oFY\nvalue: 76PU1AziBOHEAj1c' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: Dcos5uVJ0BJfZ0jv\ncode: 94' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: CdnFKLc0xcTjqjdc\nactivity: A54CSqZFDsO1skRj\navailability: 83' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: d85bdYUumPKVSZCg\ncode: 62' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: 3XTc9vQe0dHJfF6K' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: IuvnRCa9JktyBdxk\nmessage: ZKrEWFw9GYxjiiOQ' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: KNKoXa0dgx1JgjC5\nextraAttributes: AD77ci0vfWVZoRRM\ngameMode: Pi57HyKKz5nyI6ul\npartyAttributes: {"6pda3YhtQxpCYME6":{},"x21pdX2QSPAd9sxo":{},"LnWGP1PafIjLX8ce":{}}\npriority: 41\ntempParty: KbNN7Ycl2JfmQplv' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: SoaGk4ktF5wnJDg9\ncode: 66' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: Q3WXiydCOInVolsr\nuserId: 6CHmj763vLwtYEJT' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: SiXjcY5ZPkv90lyK\nnamespace: STWLxSFZ0LpupEi5\nunblockedUserId: DbkVs3qFTi1t530W' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: OIZZQAJza84lKKmV\ncode: 18\nnamespace: OaTS6xBbNrSUAW2a\nunblockedUserId: k7ISDrBVg6NuDZvP' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: b1kuUfNfUDe4g7q6' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: w3XMGBA6JXDpA1tI\nfriendId: PHEaqbzHvDDl1jiL' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: 4xYiLjLyZrXr9Bht\ncode: 58' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: zn8jAdTn6xBhrcir' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: lrw2MwC1uuokpaIj\ncode: 51\nplayerCount: 77' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: CPrFa05Xl5TPC5GO\navailability: 61\nlastSeenAt: xOgvDc7xMrRKvw8I\nuserId: SP2WKmCRRXBxlalC' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
