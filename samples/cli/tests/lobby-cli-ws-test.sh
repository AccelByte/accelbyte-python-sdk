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
'type: acceptFriendsNotif\nfriendId: dWeDVvVk'
'type: acceptFriendsRequest\nid: 2hY1GB7E\nfriendId: z7Bojrs2'
'type: acceptFriendsResponse\nid: KnPk4XuS\ncode: 64'
'type: blockPlayerNotif\nblockedUserId: FdZnNP5S\nuserId: Awb3en7J'
'type: blockPlayerRequest\nid: 5D36jqv9\nblockUserId: 9Rt62QFq\nnamespace: 0SbkDVUV'
'type: blockPlayerResponse\nid: 2kVRmM82\nblockUserId: QyxmrTPt\ncode: 94\nnamespace: 6G53sI9E'
'type: cancelFriendsNotif\nuserId: n1BFTZCh'
'type: cancelFriendsRequest\nid: ykERMrUc\nfriendId: AaW1gkvX'
'type: cancelFriendsResponse\nid: 9IgRXREL\ncode: 9'
'type: cancelMatchmakingRequest\nid: emp151Kj\ngameMode: thP4wqGy\nisTempParty: True'
'type: cancelMatchmakingResponse\nid: z39rttFm\ncode: 90'
'type: channelChatNotif\nchannelSlug: kEt1NDQt\nfrom: q1Hr9SUl\npayload: 0jA3kwUy\nsentAt: shaE5ZgY'
'type: clientResetRequest\nnamespace: oRb7yqdE\nuserId: WGesN2WR'
'type: connectNotif\nlobbySessionId: txKaD6aJ'
'type: disconnectNotif\nconnectionId: FKXCqkKj\nnamespace: 7BBHl0vZ'
'type: dsNotif\nalternateIps: [UypZNqPx,L5jbZwtV,jGfd5vj5]\ncustomAttribute: YirJHcvo\ndeployment: DLa7ay8U\ngameVersion: ld25gH2Y\nimageVersion: FN0yxY3z\nip: yK77d1pH\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: 8Mmz4vKR\nmatchId: kXPToEcz\nmessage: b2xQH5wt\nnamespace: jvTGJhwQ\npodName: 1LpWnNGs\nport: 24\nports: {"jA80MORt":25,"wOr9FUsh":27,"VPq4qa56":51}\nprotocol: wClPdv0B\nprovider: nL63gi8r\nregion: 1NGLgNxD\nsessionId: NuOkPiGn\nstatus: K0Ciegrx'
'type: errorNotif\nmessage: jpgKGZUZ'
'type: exitAllChannel\nnamespace: KTqfS7hl\nuserId: Yy9kODZ2'
'type: friendsStatusRequest\nid: nHi1vp4i'
'type: friendsStatusResponse\nid: iUVy5M6F\nactivity: [507Gvt9o,bF9DZlMW,iIRMAJYQ]\navailability: [68,52,59]\ncode: 54\nfriendIds: [REHOYpoD,zTDMHsqS,aCkSQmBO]\nlastSeenAt: [jsw49ghd,rOvOzRby,rTa3Sdqg]'
'type: getAllSessionAttributeRequest\nid: iKeSP9k4'
'type: getAllSessionAttributeResponse\nid: GuasP1Gm\nattributes: {"Zw5Q43O1":"uFRLHIHi","mzMUJSoo":"n7LCwFjp","wNhhkku1":"PDZHbEvL"}\ncode: 9'
'type: getFriendshipStatusRequest\nid: iLVZZRgZ\nfriendId: VVkvj1LQ'
'type: getFriendshipStatusResponse\nid: c4CanVKA\ncode: 68\nfriendshipStatus: WFSuAoOk'
'type: getSessionAttributeRequest\nid: 0abGtBZS\nkey: U76PXbZN'
'type: getSessionAttributeResponse\nid: Wasn5jHM\ncode: 66\nvalue: VKhIfI55'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: VOkNUqat'
'type: joinDefaultChannelResponse\nid: vyCUqRs5\nchannelSlug: eqb4ANT7\ncode: 31'
'type: listIncomingFriendsRequest\nid: McsLot2z'
'type: listIncomingFriendsResponse\nid: C9AnPf6Q\ncode: 50\nuserIds: [GGdgYGQ7,ByKUcPNQ,bMb9plS5]'
'type: listOfFriendsRequest\nid: soWQYkEx\nfriendId: VdILJLd2'
'type: listOfFriendsResponse\nid: kguh5Xkb\ncode: 64\nfriendIds: [5mj6lq5c,grcHbVBk,XGguyIrc]'
'type: listOnlineFriendsRequest\nid: c37LBpVT'
'type: listOutgoingFriendsRequest\nid: 8XMnkozw'
'type: listOutgoingFriendsResponse\nid: f6jk8cEj\ncode: 13\nfriendIds: [MNnebkY1,fAROGQnD,X9OfZxlJ]'
'type: matchmakingNotif\ncounterPartyMember: [4VX0lHqA,YFnKzBd5,HcagKkN3]\nmatchId: ldrGNCoh\nmessage: aSrsrHNL\npartyMember: [pjGgajP6,S330rVjf,GAk8lOjP]\nreadyDuration: 65\nstatus: qA1n75kE'
'type: messageNotif\nid: gPjB4XEq\nfrom: RRyRCfsI\npayload: AoDGA2H0\nsentAt: 90\nto: 6YHOcTZk\ntopic: hSoZ3892'
'type: offlineNotificationRequest\nid: I2EiofJl'
'type: offlineNotificationResponse\nid: k4k1MQuF\ncode: 23'
'type: onlineFriends\nid: EL0mixfg\ncode: 93\nonlineFriendIds: [9aTUbzzY,zOp6WkOL,I4aCRimv]'
'type: partyChatNotif\nid: NDEpj7Rv\nfrom: WOWU4JoZ\npayload: v32grP0Q\nreceivedAt: 85\nto: yRN7Vhtm'
'type: partyChatRequest\nid: DCi6s538\nfrom: 3FDjDuJq\npayload: kNm3NUXr\nreceivedAt: 87\nto: sPzlTr8W'
'type: partyChatResponse\nid: tb9IRXOS\ncode: 12'
'type: partyCreateRequest\nid: sF5i3V10'
'type: partyCreateResponse\nid: hxbQOoni\ncode: 91\ninvitationToken: eafOmFtW\ninvitees: XDYY8wZB\nleaderId: h5hVVqyF\nmembers: FkSu1evg\npartyId: AGKPtY1J'
'type: partyDataUpdateNotif\ncustomAttributes: {"NnTbieYu":{},"YXzoBzHt":{},"EfhCWOff":{}}\ninvitees: [JOak9R09,rO7XLjMv,RrtCjtPw]\nleader: 2eORpgvL\nmembers: [ebz9i1rJ,sWrXcFD9,x8JaAUDF]\nnamespace: VbCMDbdH\npartyId: 1VACfML4\nupdatedAt: 91'
'type: partyGetInvitedNotif\nfrom: 5CbADeOY\ninvitationToken: eCZEVtyI\npartyId: 4Y1Tghji'
'type: partyInfoRequest\nid: fmwV5yh9'
'type: partyInfoResponse\nid: G5o6igE3\ncode: 60\ncustomAttributes: {"lqPzNHYK":{},"fmOvvGak":{},"eR6k44DQ":{}}\ninvitationToken: Rmppw5gv\ninvitees: lqF0svlY\nleaderId: JTaTJbQR\nmembers: L1dlUouA\npartyId: C4cFLipH'
'type: partyInviteNotif\ninviteeId: saMiutie\ninviterId: AatWuWs0'
'type: partyInviteRequest\nid: 80DNHhxe\nfriendId: Zm95dNLy'
'type: partyInviteResponse\nid: 7I6V4x3U\ncode: 55'
'type: partyJoinNotif\nuserId: W5oO1EEb'
'type: partyJoinRequest\nid: 03vvI0Hj\ninvitationToken: z6yjr6ik\npartyId: 7rzkMYGI'
'type: partyJoinResponse\nid: 7HJD79mw\ncode: 48\ninvitationToken: 82DBuWsC\ninvitees: 9tUsW7jD\nleaderId: khbfa86Z\nmembers: eQA6oQ38\npartyId: OwEKEGdX'
'type: partyKickNotif\nleaderId: CUSQgDEu\npartyId: eqXgKaPJ\nuserId: IJWP8yUh'
'type: partyKickRequest\nid: VqcrO62O\nmemberId: gTEYx9Je'
'type: partyKickResponse\nid: ZVtYkalN\ncode: 25'
'type: partyLeaveNotif\nleaderId: v92KVM5d\nuserId: H3FA2QG0'
'type: partyLeaveRequest\nid: OXI5Mruh\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: 4RGuFUBu\ncode: 10'
'type: partyPromoteLeaderRequest\nid: zPbpgh1T\nnewLeaderUserId: qXcyYK82'
'type: partyPromoteLeaderResponse\nid: Tt0x5PAK\ncode: 86\ninvitationToken: 7nkCP88I\ninvitees: hOhGOr7P\nleaderId: V687REEc\nmembers: ZeoDesYS\npartyId: DCZnIuzy'
'type: partyRejectNotif\nleaderId: AekdBEF3\npartyId: RsX26hZV\nuserId: VhFBcFDo'
'type: partyRejectRequest\nid: 3v7j62gy\ninvitationToken: p7hnrRum\npartyId: QtdMRqPM'
'type: partyRejectResponse\nid: 4oKprezR\ncode: 81\npartyId: y7EXMGf2'
'type: personalChatHistoryRequest\nid: 6a40mry4\nfriendId: fStwXeMi'
'type: personalChatHistoryResponse\nid: mCONoLI2\nchat: X73bsOUK\ncode: 14\nfriendId: acvKP4ES'
'type: personalChatNotif\nid: 7oQ7phOf\nfrom: pdjNjSwN\npayload: ZDtXtoEH\nreceivedAt: 86\nto: TeTv5bjX'
'type: personalChatRequest\nid: pJ1w6Xpt\nfrom: wEebEr1r\npayload: gGzVxzZC\nreceivedAt: 27\nto: GXHm5Ne1'
'type: personalChatResponse\nid: DUAN10HR\ncode: 9'
'type: rejectFriendsNotif\nuserId: uQHr3wCE'
'type: rejectFriendsRequest\nid: BosmTOfa\nfriendId: Nx2JcPQW'
'type: rejectFriendsResponse\nid: O0SGj8cP\ncode: 54'
'type: rematchmakingNotif\nbanDuration: 77'
'type: requestFriendsNotif\nfriendId: wrorOOMZ'
'type: requestFriendsRequest\nid: TDBhv08D\nfriendId: UhiKyn7h'
'type: requestFriendsResponse\nid: WBvoMKEa\ncode: 88'
'type: sendChannelChatRequest\nid: Tht2bNlM\nchannelSlug: 0k1qWcRu\npayload: lMV95TnU'
'type: sendChannelChatResponse\nid: FxkY6ypa\ncode: 43'
'type: setReadyConsentNotif\nmatchId: QqIE7YBv\nuserId: OdDt07WS'
'type: setReadyConsentRequest\nid: dzFRGuBw\nmatchId: m6oU16u1'
'type: setReadyConsentResponse\nid: OMvJ076I\ncode: 38'
'type: setSessionAttributeRequest\nid: UKwddWZH\nkey: caxTcHfJ\nnamespace: wNwyETar\nvalue: njbM82vM'
'type: setSessionAttributeResponse\nid: YYvoi0y6\ncode: 79'
'type: setUserStatusRequest\nid: Htmdd9I6\nactivity: CHlolM4F\navailability: 56'
'type: setUserStatusResponse\nid: ZvtpWjkv\ncode: 1'
'type: shutdownNotif\nmessage: EXmhkcuN'
'type: signalingP2PNotif\ndestinationId: Jt5R97FG\nmessage: YiyY0VxI'
'type: startMatchmakingRequest\nid: 4pD4UTW8\nextraAttributes: DnXhPudV\ngameMode: C3O37rg9\npartyAttributes: {"XP74Rmv9":{},"iAFmkinX":{},"lWLtX5cz":{}}\npriority: 62\ntempParty: pyvdej7u'
'type: startMatchmakingResponse\nid: yurZMGak\ncode: 12'
'type: systemComponentsStatus\ncomponents: {"VyO6mD3O":false,"q4ZkXwTy":false,"XBdskd0k":false}'
'type: unblockPlayerNotif\nunblockedUserId: yVluw42K\nuserId: y2ibtXYv'
'type: unblockPlayerRequest\nid: nq45b26Z\nnamespace: eacRqnsB\nunblockedUserId: GGinB3AV'
'type: unblockPlayerResponse\nid: XOY4OLof\ncode: 6\nnamespace: e5yikr8o\nunblockedUserId: TMBA3153'
'type: unfriendNotif\nfriendId: rNPzn8sI'
'type: unfriendRequest\nid: 0XbL1NyX\nfriendId: YZvecrPL'
'type: unfriendResponse\nid: PSAIC2sj\ncode: 2'
'type: userBannedNotification'
'type: userMetricRequest\nid: 9sEeo3Nu'
'type: userMetricResponse\nid: 6wAqCqPc\ncode: 38\nplayerCount: 16'
'type: userStatusNotif\nactivity: QfYNt5wp\navailability: 34\nlastSeenAt: CG6pqdZV\nuserId: 69oH0yOP'
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
echo "1..104"


#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AcceptFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsNotif\nfriendId: WlKAjtZN' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: RBMhMDjT\nfriendId: ho3Fys2a' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: Eflwx3yk\ncode: 41' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: MpcDAT58\nuserId: K5zLHDCP' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: pvDGXIRU\nblockUserId: oNAg9oOi\nnamespace: RoxPtNpJ' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: OCn9HPwB\nblockUserId: t0DjE58b\ncode: 51\nnamespace: 97Xno5oA' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: O5qBHpJH' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: YjfVW1LM\nfriendId: Cb55F3RT' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: nh1vV5qi\ncode: 47' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: KoEmyAES\ngameMode: FY4BpC6s\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: Q9a5DNhR\ncode: 12' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: YPA9ImyF\nfrom: hLDDIiLw\npayload: K602NbJT\nsentAt: LWmRKd17' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: 4Q1y9enk\nuserId: APm4gGOq' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: n2wviXZe' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: 8cEV87bb\nnamespace: uILrLkkW' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [U8XOf1Jc,lJIbUzUN,IalDyX7E]\ncustomAttribute: xbRDhDuC\ndeployment: sjQZXLsY\ngameVersion: UgKN35JB\nimageVersion: MBXeLQ5P\nip: Y1OZ9LqZ\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: Q1tIxZMZ\nmatchId: pL4dTBXA\nmessage: 08fl2xSS\nnamespace: nVoDi8xz\npodName: 0AhWZAh1\nport: 7\nports: {"ftI9gB4P":64,"03xGwPmu":26,"LcrxoKI8":75}\nprotocol: YSBhfYrf\nprovider: BjIJtvyR\nregion: PpQx5T9Q\nsessionId: OJZUG3Sq\nstatus: Ps4fKTNV' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: MOv1pycE' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: hLE6JNc9\nuserId: uYXxWPTe' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: 0nwr8A1m' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: pEIshzXR\nactivity: [H0Gryy52,7RBYxIID,p5SYHRt1]\navailability: [79,57,93]\ncode: 21\nfriendIds: [EEpzYjP3,Dn345M89,MYjrsPok]\nlastSeenAt: [BsQ26msf,fnXd9svL,dTavmMbJ]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: WDedG91x' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: huSHH9kh\nattributes: {"5DEfxf2v":"tvS6BddS","VcBUoQGd":"Gd0VGMvF","HAuhMXh6":"aMdYinav"}\ncode: 46' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: llHqYRvF\nfriendId: Zuc5rl35' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: pB3U4tCG\ncode: 88\nfriendshipStatus: nfzOa5Nw' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: RxvCsjV7\nkey: qIV2PJZw' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: JQNuijD0\ncode: 91\nvalue: b2Sfih7Y' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: HeS19C5G' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: ohNrvRJu\nchannelSlug: 6vuDa3s0\ncode: 23' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: 72mcaCD7' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: cRLAZBpE\ncode: 16\nuserIds: [COnfCxl0,8XXMfLia,jl02W4e2]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: 4s8ASwfs\nfriendId: vxezYLbi' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: MZEavBnN\ncode: 8\nfriendIds: [DQTZwts5,hIsQ7hrW,OjVSOuj9]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 5IiWyM9H' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: K4bDfp7b' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: kxHm1oG9\ncode: 84\nfriendIds: [qjMIwX81,pHxzuh6Y,g6KOtG87]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [2uw3TgXy,G7hxuaUZ,EWTBIkTH]\nmatchId: Krd6Fdu3\nmessage: drJvIB1v\npartyMember: [5toD3C2r,Ax5ooD1d,XLVcDeKW]\nreadyDuration: 94\nstatus: yByYBJWl' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: Oz0KwHkI\nfrom: ksqmZLQI\npayload: unM804Uj\nsentAt: 74\nto: f10M9odv\ntopic: 9N23YhTl' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: GFYyjgvc' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: pP2hWf0z\ncode: 20' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: oYYr6cAT\ncode: 97\nonlineFriendIds: [xayrqaC6,VxLrNdoF,4KNyQvWq]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: XBtWeePv\nfrom: HTardXro\npayload: 6ohbDTLu\nreceivedAt: 66\nto: 5tjKGAL4' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: LTfRzWiw\nfrom: hqETxEKo\npayload: vP0k7J5Z\nreceivedAt: 44\nto: DmE3yeux' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: bsqhmKgz\ncode: 20' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: Dkzcz72Z' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: zVUOl9uy\ncode: 78\ninvitationToken: HyXrahKd\ninvitees: 12y5g0Cy\nleaderId: xGoxosyx\nmembers: USX0SWtT\npartyId: LAbYPymp' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"3Ggx9NOt":{},"uWHraeMj":{},"Ovk3s9Eb":{}}\ninvitees: [qtC80Nom,PehPOqcE,yt1clo0P]\nleader: QsJ1yAdw\nmembers: [qAUxpKKM,gkc1HTOc,eSC0Rz7t]\nnamespace: 2A5n2Bqb\npartyId: yC4rMjtN\nupdatedAt: 90' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: p5tVpvyH\ninvitationToken: xxOpyJC9\npartyId: 6B9hQVuU' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: pC10oeWy' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: 1o3Qe1ic\ncode: 62\ncustomAttributes: {"K4eP08zt":{},"3GXXga4x":{},"nsJyrP3X":{}}\ninvitationToken: GCi8Zvnw\ninvitees: oqv2lZ1b\nleaderId: tSzyfBrQ\nmembers: Vo6FaX1D\npartyId: NYDLufqn' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: ZYr5p6Z7\ninviterId: EQvQtJ47' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: ZnSVmlLK\nfriendId: MTA28pPl' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: EPYqApvx\ncode: 89' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: 5ZOIp8IT' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: fxKMRjSB\ninvitationToken: DRq5bDVh\npartyId: IsXyme9G' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: PhpQZCU2\ncode: 22\ninvitationToken: CVivNr6x\ninvitees: SeWwVQjY\nleaderId: 9dTBFNd6\nmembers: pPQVTnZ3\npartyId: YxkKcRtF' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: CUV8bM5c\npartyId: 8l9KrZRC\nuserId: fO34dWzL' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: rhVjLoda\nmemberId: QOzTut9c' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: VFap5KGF\ncode: 0' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 8L7Hz0A8\nuserId: puv4z7Uc' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: 12tLLXIv\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: vDMpSdE1\ncode: 70' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: 00VYY1Jb\nnewLeaderUserId: 2dcHf595' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: mFEQZDVL\ncode: 63\ninvitationToken: FEQFqE2V\ninvitees: CYc1MpWT\nleaderId: 7ySO17K0\nmembers: QQNoZhTx\npartyId: tFzWkqi9' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: 4pf8Fvct\npartyId: xhUqg1Py\nuserId: CpA7CbYN' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: sJlXjIm1\ninvitationToken: 2OAL2B3K\npartyId: TgZq8z6m' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: ETh0NsKZ\ncode: 95\npartyId: kKOhKMmD' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: DbrGCbRW\nfriendId: E9DKhQoD' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: tOpUHdlH\nchat: OcMnN94B\ncode: 94\nfriendId: VPvuv7jZ' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: MSnj8XYa\nfrom: qizlSXRE\npayload: zF3YDIjd\nreceivedAt: 29\nto: AORAJcPc' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: qommbeLp\nfrom: cno8GoKB\npayload: F6yVv8iY\nreceivedAt: 23\nto: SBck35g7' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: 6PDB1XxJ\ncode: 92' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: CMD2ViUh' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: ZaKK3HRd\nfriendId: 1mrXGbFc' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: CQxvHweI\ncode: 35' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 50' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: hQEteHRm' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: 8lUGymeQ\nfriendId: 0QGzDcKd' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: BWugd8tK\ncode: 97' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: 2KrbO49G\nchannelSlug: 4z55wFaU\npayload: WGas9cGv' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: eOufh51z\ncode: 65' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: u0w4ptSA\nuserId: ruD9ZOpp' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: s8rLJW12\nmatchId: WfATGEHF' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: fdBLRoQy\ncode: 49' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: S7p4h6TH\nkey: xXNXY160\nnamespace: ikok0ILB\nvalue: CpwBxbdB' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: VNOIbxRL\ncode: 25' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: caCAFxyK\nactivity: Wqzamc5n\navailability: 48' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: Ny5e6IEB\ncode: 91' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: iZHPLbfP' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: jzcdVSYF\nmessage: nqM5mUIq' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: Xhp4hZOE\nextraAttributes: K9FtQuz9\ngameMode: P9aPBTSu\npartyAttributes: {"577D9NaT":{},"WnIYXLlT":{},"2LiRp864":{}}\npriority: 89\ntempParty: JXlcFvYV' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: U68EuSIp\ncode: 98' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"ESsxTWPd":true,"JaZ0VbT6":false,"toNZeD9k":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: aiShHC0X\nuserId: jlfOMUsD' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: 2lu76jpM\nnamespace: HgIUbc4E\nunblockedUserId: upkgPtfg' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: zDKjicQp\ncode: 24\nnamespace: JGefufs6\nunblockedUserId: BVI3FLkC' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: AdE8dSi5' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: 8OcpKfAo\nfriendId: 3I7iLRqQ' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: irpWeOyU\ncode: 37' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: CXnNP7lJ' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: QXAFtuts\ncode: 96\nplayerCount: 28' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: 6Ylahbm1\navailability: 36\nlastSeenAt: d07XWqR5\nuserId: FiZVsP8U' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
