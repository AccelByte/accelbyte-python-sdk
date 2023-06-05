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
'type: rejectFriendsNotif\nuserId: eMfPlNos4yBRjrER'
'type: rejectFriendsRequest\nid: 6QCyY6vSkVFWdsbY\nfriendId: HEonAZR8GmEu0q1p'
'type: rejectFriendsResponse\nid: hxOdcuDXSxSc3aZP\ncode: 41'
'type: rematchmakingNotif\nbanDuration: 98'
'type: requestFriendsNotif\nfriendId: vwv7K8Asvt1j1Rx5'
'type: requestFriendsRequest\nid: DAF8KDsBZOuYQJ03\nfriendId: 9hesNWy2NvZ85DDK'
'type: requestFriendsResponse\nid: eHpATHccee9GXhKc\ncode: 57'
'type: sendChannelChatRequest\nid: LfYalUlfwEQKjU7e\nchannelSlug: jmSEwdrkEnnqKzFs\npayload: HGebSVu0LQ40kepE'
'type: sendChannelChatResponse\nid: zohZyjMQAg5mPYhr\ncode: 1'
'type: setReadyConsentNotif\nmatchId: LTyU8OhgfY9JQYGF\nuserId: 4bYXEcENx9xZlAch'
'type: setReadyConsentRequest\nid: ob44lONDDwMvgI0H\nmatchId: lyPR7wZNiVsF6xG2'
'type: setReadyConsentResponse\nid: eGelYF5wWaDhukU4\ncode: 26'
'type: setSessionAttributeRequest\nid: khGG4vZFTYnPkmSu\nkey: 4PWam1jxR7SETWjt\nnamespace: eoc8fgvZDDhoO05o\nvalue: KqymxLD1Lcvw6T6m'
'type: setSessionAttributeResponse\nid: EiwxxElpMYSWIeVz\ncode: 24'
'type: setUserStatusRequest\nid: kIf5weqZ18MH57l2\nactivity: m7z9noowmlTIKVow\navailability: 16'
'type: setUserStatusResponse\nid: z9F1BxNNgnke4akn\ncode: 39'
'type: shutdownNotif\nmessage: cw7wu9TmXfJWBPrx'
'type: signalingP2PNotif\ndestinationId: 9Ns8eLzYEvwSWTaL\nmessage: QjctvrK2jhsYpKPl'
'type: startMatchmakingRequest\nid: cWw7Rry0KK5rgAGO\nextraAttributes: Xn77AtYoFzLAATPY\ngameMode: 8P8P3cfoivvQxeve\npartyAttributes: {"0dW8rX2MVUGKSZ4G":{},"cLkt4pK32sJxlZcC":{},"TpTdRtCHvuk6B6XT":{}}\npriority: 26\ntempParty: O2m9vqjhbeK2qN8g'
'type: startMatchmakingResponse\nid: x2PyYDo5R3hLiD5s\ncode: 97'
'type: unblockPlayerNotif\nunblockedUserId: f5y1JsxJNGmyt0SQ\nuserId: DUDoWBZVGLlkUetz'
'type: unblockPlayerRequest\nid: CAWc9x1aMjgGim51\nnamespace: T107XIZRZ7tZdIs0\nunblockedUserId: xf4czdt7zqmSKxOE'
'type: unblockPlayerResponse\nid: nbLzvtCIW5ynMKqu\ncode: 88\nnamespace: UicAeIVXtoWAXhMl\nunblockedUserId: W4tLqX7OICf5oD1e'
'type: unfriendNotif\nfriendId: 6oI9FmYel0kOw72o'
'type: unfriendRequest\nid: Kvrf2AaH4yCWrHSp\nfriendId: 8Zkgk0jS6rDWUwfh'
'type: unfriendResponse\nid: vDJ3w3UNgIGj2jZt\ncode: 31'
'type: userBannedNotification'
'type: userMetricRequest\nid: EYT8sIPSE1XXPzyS'
'type: userMetricResponse\nid: Dbmu8ePWlQMVDXEH\ncode: 0\nplayerCount: 8'
'type: userStatusNotif\nactivity: pMsQgb64ELbzDMwy\navailability: 30\nlastSeenAt: P7rz3ISW510kHr4i\nuserId: sTKWjmv67nuHCXWf'
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
echo "1..103"


#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AcceptFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsNotif\nfriendId: wnwGioVwVzmmBVVF' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: DYBo4FUTH7CGfKSy\nfriendId: fpqx1AeLtzcPJ3jt' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: ZD63xe5rruJVfLGe\ncode: 48' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: a0ZtlzUcuHAXz0UV\nuserId: 31MfuGaXsAuGsZaS' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: JWWSI1ECUo1NPpeF\nblockUserId: HevO0TQNEI3kfabx\nnamespace: hUztXDgB7n4C97uA' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: r3RSP0W9nBhvhf8Q\nblockUserId: PP8PATLpUpxeJlsB\ncode: 73\nnamespace: 0DtJMcYQdN66bswA' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: gt65X4N1LQZmB61J' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: mbwFEnAZaWsQJtRY\nfriendId: MdtwCVUrYQue84dw' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: OixhtAoKiVm6URT9\ncode: 29' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: hhDJ5slzgiWZEtyd\ngameMode: 5XhnUcvWB28Mpusu\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: NGehQ2aTjTDfKFDX\ncode: 78' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: C7eGL5YhJDWh9YWq\nfrom: c0qgV6d9yOfIMLds\npayload: 2DbPcaoMdtRLTmSv\nsentAt: TkQQgB7exYvmHMxr' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: 5hPCJJztJBg0tTJg\nuserId: 46IewOXE2AkCh3QI' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: ZsUf8lGFXcmwTERH' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: clOdxIwqejxe18rN\nnamespace: db8Otq6j1mqUav7k' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [05HAQltnSojV4jT6,5yclX2FtAz0vJjFI,YWOaNdsimmkW2miH]\ncustomAttribute: 3xRHAKy4QxZkaXZ7\ndeployment: vmiEd0JPxVyQpsha\ngameVersion: DwNqTbbFMXAMfVXe\nimageVersion: 0GZeMgsRsmH1EQrY\nip: mkPKTPOlhTtSiZNC\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: IYN2NVL70Iw157g0\nmatchId: 0jr9b8MuYmmeKTmB\nmessage: NvGYxEQdf3ewoGGo\nnamespace: Y7xmFNAmjDDCvs78\npodName: mcMdiS76YApGJ9uf\nport: 46\nports: {"W9UtNquwC3WgumrI":53,"iEtOAbpeUNf26Uqk":58,"iLXgmRasvjO4lj8m":72}\nprotocol: XEwP2b4gd3xOeii8\nprovider: Jnmssep2xD2NY0kA\nregion: BeGs9yxahld1pO0G\nsessionId: yf5PO3COyMvczgEp\nstatus: zZ3FbtxfhcRC7IVY' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: a6iZ5uFRYNn3SHiW' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: xF0YbuU5ar5qTLWU\nuserId: Cy0Afgc050XIZRW4' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: 91e94mQjVOOBnIWh' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: fwNa8lzfjv9oYMXM\nactivity: [unElqZUodp3IhtCS,Hy1ei1fIrPvfHnRN,06EjRwEQlNapJRfk]\navailability: [10,68,76]\ncode: 39\nfriendIds: [cw1pEHAyNFxcVTKu,AQTGh5BxjWOozGoD,tsUuYo5p8ED5QZAu]\nlastSeenAt: [jlVHY1AHwF3vGoav,7MK0PcLnEkcokKwc,Q0baDT9OyJ2h23GU]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: S2amU7syGlElXdEA' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: zqxBPNe8ae1Il4aA\nattributes: {"OrVSnLocLVVYamQc":"4wcG5nDBLJoJHbiQ","5duE5p4cfs2E41cK":"8QTwiIAvxSvNDlmM","5nQFMGzs7fzjgyc4":"4mEh9tRk8knYSV30"}\ncode: 22' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: Q7gkZEY8rG0q0Q2Q\nfriendId: tEbu4IjGdqthRxTj' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: nZxF8CmQr17W65br\ncode: 8\nfriendshipStatus: kH4OotKwG3UC6XCn' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: 34rBBN9tU6TDm5Gl\nkey: oFSKWM1eym5ydC6p' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: 5xCWTqUOYZENJ1QH\ncode: 18\nvalue: ZQxPRXH7uxBJEECQ' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: E1li3Bg7Jxc9pUnZ' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: hCmTC34jxW4pIDwd\nchannelSlug: mvhidwCkZwqjYLfT\ncode: 17' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: qXpmRmut9H9XyWI8' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: F1c0W338HS6CBgVR\ncode: 3\nuserIds: [yihYNZ84CVhziXV8,HwSmvcvcDKF19yVR,afCjOuSYht83AdvB]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: b7jlz5IfHgKjI9mw\nfriendId: aagTiRJ8daGTVX3B' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: q6VerzVCcI8y3Cz0\ncode: 74\nfriendIds: [a8E7wY76PxLv9HBE,Ue89AwEw1HO4FnKt,x4XLKAmlDr19uJ3n]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: YqCKUh5RD9vNAp4j' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: inFpnQ5xF9wwbvMZ' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: yrdt4XSpWBAetsan\ncode: 49\nfriendIds: [u11A3HTovFi4tPAG,fleyCA6jEtcqsnzo,VILjkwW61duF87aU]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [zqP8oxfrtbECD1CY,PwaiBAxfYL8Avt70,ZUT2fSk3LL0calqx]\nmatchId: EewuGS469k2hG0WK\nmessage: t4sUmanYxM0UHZVN\npartyMember: [YzGMNIpWoSLkUrfu,f4U3WeYeA9t2ENKK,WrFtHIi1CMgKAOG5]\nreadyDuration: 18\nstatus: qftSjq7sn8yreciP' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: hDJxEN7JlZc8LMq1\nfrom: LfkVyyJsbGpO6Jge\npayload: o2jZWu4yA3r0u4q1\nsentAt: 2\nto: X9FieeEssWEUl07b\ntopic: hwntCVqiYOJf5KwM' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: ZQjzvjSozv6CTRDl' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: SohhhuiTnJarYYkH\ncode: 53' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: qgl6TZ9TGVPmv34h\ncode: 56\nonlineFriendIds: [6T7EsufmfxKYB4LM,6H6QXmpZ9X3fUSR1,l9xLPBsmAUrD9L1I]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: 3sIhzOx2CXKlvIom\nfrom: iD6MlcEPhMDFzjHZ\npayload: U3pIxM9n8D2eLMe3\nreceivedAt: 23\nto: vl0hv6g62GxBW2tQ' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: Da4bkcgepqtxjbrz\nfrom: F5tkTjgJaMYvNQOs\npayload: tee7QLTGAak7Kaol\nreceivedAt: 46\nto: 1DK97D2xnik42mit' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: 46COPipH1MWVTHG0\ncode: 8' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: qHJCWEfOJpZm9yEY' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: raNBJ5y7axEkvI4o\ncode: 81\ninvitationToken: xZEDxGiBnNbn0zaf\ninvitees: 7CaOSlHXrUSA6sMJ\nleaderId: zA5mtqISQ83TTbte\nmembers: fXWznDe4LQdXfFBi\npartyId: i2RAMEX5RMjBFVZG' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"YzQqV8d9mDdUIoiI":{},"JFNxuNOmUSWw18T1":{},"IxVWCxdvPL9e4P01":{}}\ninvitees: [vxP8xj1LyEirURER,nEMzpImW6sjAHyCK,5tNanGBrkzUvck3x]\nleader: TtmOFMebS4AdlNzw\nmembers: [og2IhErkNhNcECWw,chW6zL9SkbLlrNXn,GanMazb8jvRWenUR]\nnamespace: H48aJuALEcSqcE15\npartyId: u6D31DjOsrs3CUYA\nupdatedAt: 93' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: Er0KcgeqzGbruNB7\ninvitationToken: 2HHMkjzyBB4UFKia\npartyId: oV0VOem2yqPsMFxK' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: ybPkbuS6x9cLJ1AP' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: bt3Uta5I0uGcL1ko\ncode: 28\ncustomAttributes: {"GcMICPUYnfG6jl9U":{},"4jReteIMgzISomCs":{},"odJrhQW41q2OspCZ":{}}\ninvitationToken: yHjCH5olYLETRpAB\ninvitees: AmO2EGvJ4UMS93yO\nleaderId: xNInDByhnoluO6ti\nmembers: 0QP2ssiJ66OzOj84\npartyId: O6tgohjtC7bzjPpu' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: cddXJ5zifF8y959a\ninviterId: nrNSleywHbHig6IK' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: fZ2hxcJ2Fnemn7M2\nfriendId: WVZ77KeRWdECaFGz' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: SzUo4hNBDh9ZFP1O\ncode: 75' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: W0nXOErQPS4VsRoY' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: IK69yg9ADCGiXaLs\ninvitationToken: 2xjHkinOD975nARH\npartyId: CmhNHSXuqIHsxvaU' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: w9gwwhTnjN6wKZGW\ncode: 29\ninvitationToken: 4y3f0R9s2kndhhZh\ninvitees: wAiLsZs4pmLDIQch\nleaderId: 4IjDq9aT3qZyI0rY\nmembers: sWucAkXsVJbXi7eR\npartyId: Za7WwIc895ImqK6t' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: VsaUq3stUh5J5Z9G\npartyId: iBiSAylX5cS0IeHp\nuserId: WCugmfOL0QQpxsuD' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: 8PGqku59eFJrOXyD\nmemberId: Yz9vMUOPG0iHDT8Q' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: bU86FyOjApNHBVfN\ncode: 2' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: OURcjY3YYT9oTynm\nuserId: fIuBWgJTNFfM8M0I' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: W4oe8KDgy0xZfAcN\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: 14Ws8TIP1LKiFQoL\ncode: 51' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: DvumfqrgSfnx2h61\nnewLeaderUserId: X9dN1MGRXBJ6mVV7' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: OTGMudcxlCV4cNbJ\ncode: 73\ninvitationToken: GQ57lPdinpjS2DRf\ninvitees: Gt9GlyZVQ4X67tPZ\nleaderId: STpPq3xjrElvvDgw\nmembers: 0ag7kSWE0Hiqm5Iu\npartyId: LryiEXqvUWDjU1G0' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: EVjVZw1ToLuPakQN\npartyId: 1MpOs1RVFrcg2CXx\nuserId: epx78fvsyhE2BKty' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: TDSIM7mkmvZ7Cmsh\ninvitationToken: 4US8o4jfMANPpmZD\npartyId: dMiCxmuCCVuFjS1G' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: p38vumnxAnYBTxaT\ncode: 58\npartyId: Iz0jcgDI8Pkz96vd' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: LeqhwVhjnnjKMEmt\nfriendId: 80msqIm5bufnBqrp' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: QT95pFJUAJsyAfeK\nchat: biWsAQHbMrKYi0Zx\ncode: 38\nfriendId: hfIhHtADUQ9zimQT' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: xQGRt6PqlkL0diRh\nfrom: OufV4f15NohXu6op\npayload: LC10ih2EQfY3XCv4\nreceivedAt: 16\nto: 2xaNfmn8Onb1a9gM' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: hdYLWzMuv3zkUY0n\nfrom: z0F2UBRmMhAbUWmF\npayload: 0BAZkwbYkBLyO6A0\nreceivedAt: 64\nto: 4TjCrJHXGXku2YVu' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: CcJfIfXshuLUk5Wd\ncode: 83' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: pxjZx5noXPhPUTKb' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: Dkci5rZ8iMlOuksQ\nfriendId: onoucNmzwOZOK56s' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: F5RaJwvkWVco2LTo\ncode: 73' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 94' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: ijlvDF8qBWCQ9dLW' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: dVfZVDAiU6iJOF7J\nfriendId: YyS8zdhMeBXH8x6H' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: c794ryY91lX8DD4M\ncode: 75' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: oM8YmVjAkO3HKsEp\nchannelSlug: YXlrJ81lHvv9rqvE\npayload: 6KlqwW4djrexcbHd' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: 1lsR7xxSVp3Gd2TK\ncode: 62' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: 0HzYviTgYmx82JVB\nuserId: RLPZ6Iz8tne5dbgu' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: BF6Gsvvdl8jHz9x7\nmatchId: XZIjU4IK9lOLaZaM' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: BGTtZyTjdKNKgYaz\ncode: 31' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: ujsmSmylT1YtxIq7\nkey: 3aMb48jISd97KORR\nnamespace: hxSWLWLNfHRD3V15\nvalue: QaGGL46LuxJF3sbe' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: 5aANNNs5kgSZZNUH\ncode: 33' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: j5zFZeOCOR9NvBQZ\nactivity: bIT9szApmWJO5vzz\navailability: 19' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: nZBJZkDnEiyfa2Lr\ncode: 91' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: npZxNnLRH36bqS2o' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: FY76PU1AziBOHEAj\nmessage: 1cT3u6Zc2FbrTFzn' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: jdcEfU61OJYMnW49\nextraAttributes: TgDIwZIRWf6T3by2\ngameMode: kYSCdnFKLc0xcTjq\npartyAttributes: {"rWynp1ck1vT90C6o":{},"86cSRL9cgbUmulhe":{},"98oaFKlQicdrxVhr":{}}\npriority: 39\ntempParty: iOQAD77ci0vfWVZo' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: xsChSclSkb5aBi9K\ncode: 89' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: 9zyv6gFZXI5nXJ7h\nuserId: Li6HweweRmyo91dI' \
    > test.out 2>&1
eval_tap $? 94 'UnblockPlayerNotif' test.out

#- 95 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: n7QqXBDXJcrqKmXD\nnamespace: woEV6tCdrxw1KOPh\nunblockedUserId: uvHuYrGWDK41uMOC' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerRequest' test.out

#- 96 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: mRvSoaGk4ktF5wnJ\ncode: 31\nnamespace: Dg9Q3WXiydCOInVo\nunblockedUserId: lsr6CHmj763vLwtY' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerResponse' test.out

#- 97 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: EJTSiXjcY5ZPkv90' \
    > test.out 2>&1
eval_tap $? 97 'UnfriendNotif' test.out

#- 98 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: Ei5DbkVs3qFTi1t5\nfriendId: lyKSTWLxSFZ0Lpup' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendRequest' test.out

#- 99 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: 0Wj1WfzIvc3VlSXr\ncode: 11' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendResponse' test.out

#- 100 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 100 'UserBannedNotification' test.out

#- 101 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: A3XUGud4tVjmxEf4' \
    > test.out 2>&1
eval_tap $? 101 'UserMetricRequest' test.out

#- 102 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: ak7ISDrBVg6NuDZv\ncode: 43\nplayerCount: 85' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricResponse' test.out

#- 103 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: nq3eOMHIKeTyBG5d\navailability: 58\nlastSeenAt: PHEaqbzHvDDl1jiL\nuserId: w3XMGBA6JXDpA1tI' \
    > test.out 2>&1
eval_tap $? 103 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
