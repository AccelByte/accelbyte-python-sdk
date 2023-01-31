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
'type: acceptFriendsNotif\nfriendId: JV0piaye'
'type: acceptFriendsRequest\nid: EHRd1c9h\nfriendId: YvbBXWtm'
'type: acceptFriendsResponse\nid: DoRKA6cK\ncode: 56'
'type: blockPlayerNotif\nblockedUserId: zCdBJOlg\nuserId: EHWqMWmU'
'type: blockPlayerRequest\nid: OQlr0WOE\nblockUserId: Xn8zBJXv\nnamespace: isUPwbdh'
'type: blockPlayerResponse\nid: vYwF1NlB\nblockUserId: 3MVyBKJH\ncode: 40\nnamespace: nTGPTBVg'
'type: cancelFriendsNotif\nuserId: YAlOBC0I'
'type: cancelFriendsRequest\nid: AB8eaU7d\nfriendId: pRy9GUmN'
'type: cancelFriendsResponse\nid: ktNBxbgC\ncode: 86'
'type: cancelMatchmakingRequest\nid: gZgXHT9m\ngameMode: WOAqJrJf\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: O2itpZAg\ncode: 83'
'type: channelChatNotif\nchannelSlug: s0i4guM4\nfrom: gsEFONus\npayload: EL3zDYyo\nsentAt: 9FqcCUCC'
'type: clientResetRequest\nnamespace: t5nm7KeA\nuserId: 0wVdXobQ'
'type: connectNotif\nlobbySessionId: rNQYrWEC'
'type: disconnectNotif\nconnectionId: 4TAl8KGh\nnamespace: thVXJQPh'
'type: dsNotif\nalternateIps: [5jXHIIkN,QomKzPbu,5JqZsPuV]\ncustomAttribute: E2zTG2ee\ndeployment: k8woIAgG\ngameVersion: x2NIu92Z\nimageVersion: egTJUCWD\nip: NkeZEAz6\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: ZlMtsCoX\nmatchId: YbIVX5gw\nmessage: NdzjMTXW\nnamespace: KCGfXJSB\npodName: zmI7ka9a\nport: 23\nports: {"e5gQ8hU1":37,"Pa92xY2U":55,"Y6aVVwF6":36}\nprotocol: t4qp2x5x\nprovider: IAgCH18B\nregion: onFKk3v3\nsessionId: uneu0arf\nstatus: Ey8Fn9sc'
'type: errorNotif\nmessage: fTLqGKsB'
'type: exitAllChannel\nnamespace: 2HBTODCn\nuserId: BGc8iw19'
'type: friendsStatusRequest\nid: 4eFWbE80'
'type: friendsStatusResponse\nid: qy1wtdfO\nactivity: [ca4rmZ0j,4a5ohVgU,xcg4Olfd]\navailability: [38,76,99]\ncode: 82\nfriendIds: [05QDW56S,68xS4Rws,MukzbWNg]\nlastSeenAt: [GS8emCfg,eMuGC8wy,wPLRymHi]'
'type: getAllSessionAttributeRequest\nid: lRmhPu6k'
'type: getAllSessionAttributeResponse\nid: FDHfFDnr\nattributes: {"CKFYZW60":"31DAUicv","yB70ea9B":"WsKh45Re","pOli2GJe":"UZSyC8qW"}\ncode: 83'
'type: getFriendshipStatusRequest\nid: SPK65f5d\nfriendId: LXsZVGDE'
'type: getFriendshipStatusResponse\nid: 4heHwocC\ncode: 50\nfriendshipStatus: B0UKTOGn'
'type: getSessionAttributeRequest\nid: vyKFouEC\nkey: yabsu2St'
'type: getSessionAttributeResponse\nid: lBfwryRY\ncode: 56\nvalue: Jj5rSHyM'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: KJfx99LC'
'type: joinDefaultChannelResponse\nid: G1n2mqky\nchannelSlug: 6wjGFfi8\ncode: 34'
'type: listIncomingFriendsRequest\nid: bBLtQNxp'
'type: listIncomingFriendsResponse\nid: wsk7DzGu\ncode: 32\nuserIds: [74tUpOEl,vDDXd5kf,lg2y9fqu]'
'type: listOfFriendsRequest\nid: 5fjXHYE6\nfriendId: 3MhVuHoF'
'type: listOfFriendsResponse\nid: MzaF72Jp\ncode: 23\nfriendIds: [gEWwftEH,aOkGx9JD,ev7hksNl]'
'type: listOnlineFriendsRequest\nid: 1YylS22p'
'type: listOutgoingFriendsRequest\nid: IocBi7bi'
'type: listOutgoingFriendsResponse\nid: qV00wAkG\ncode: 43\nfriendIds: [DDGL8VMA,LWFMK03e,i4iszbeS]'
'type: matchmakingNotif\ncounterPartyMember: [qakmFNj6,XQOZpuwH,2uvWpjTW]\nmatchId: hS8AxSfg\nmessage: rWbDjOHw\npartyMember: [54xWelX0,KKIFn4Zz,e8DEk3pD]\nreadyDuration: 80\nstatus: mZSNDpzH'
'type: messageNotif\nid: nyBAtBRp\nfrom: zaS7Ke6o\npayload: QSSOX7Rk\nsentAt: 53\nto: yCSVBq4r\ntopic: HyPsvVnZ'
'type: offlineNotificationRequest\nid: AV2h4FkR'
'type: offlineNotificationResponse\nid: AS0Da5sm\ncode: 83'
'type: onlineFriends\nid: t1T0icTQ\ncode: 52\nonlineFriendIds: [jbWzOkBc,br5XSm90,FvIqI7m0]'
'type: partyChatNotif\nid: n84TcfJZ\nfrom: WmoK3pU4\npayload: e7tTTEbz\nreceivedAt: 46\nto: YaEfohXj'
'type: partyChatRequest\nid: estOK6Pe\nfrom: AdftfaJZ\npayload: O4B5Fh2k\nreceivedAt: 85\nto: WQQPCc4h'
'type: partyChatResponse\nid: hlmN8bh2\ncode: 19'
'type: partyCreateRequest\nid: rEbOiHu7'
'type: partyCreateResponse\nid: TdZkRjEG\ncode: 69\ninvitationToken: j3kAJ3qs\ninvitees: buhr7F7q\nleaderId: lcvtufuC\nmembers: JwnHl3b5\npartyId: Neu0YscX'
'type: partyDataUpdateNotif\ncustomAttributes: {"MLiZeEbr":{},"owHIrZL5":{},"i2S1xuC9":{}}\ninvitees: [x5zf4tth,xBXq2gIi,J1rQ2E4r]\nleader: qyvepCK2\nmembers: [VC0tfUwY,sOPxzD2h,fQqBw6Cb]\nnamespace: zcN11eZy\npartyId: ZBN0pbGx\nupdatedAt: 81'
'type: partyGetInvitedNotif\nfrom: BW65uAwN\ninvitationToken: SnfZotkS\npartyId: 9idWcbBD'
'type: partyInfoRequest\nid: p5tRzmMi'
'type: partyInfoResponse\nid: 2N0HCCD4\ncode: 15\ncustomAttributes: {"AzbBj0mR":{},"uADDneNG":{},"c6goKk3m":{}}\ninvitationToken: M4BTY6hG\ninvitees: Qkk3n8t1\nleaderId: vOpyFXQq\nmembers: jeHgI4Qn\npartyId: oYm8OU55'
'type: partyInviteNotif\ninviteeId: y4ngMTwi\ninviterId: 7nDYK6YQ'
'type: partyInviteRequest\nid: L5rc1OHc\nfriendId: PrJ7aWZ1'
'type: partyInviteResponse\nid: 5OQ6p6T7\ncode: 17'
'type: partyJoinNotif\nuserId: D7yXWwZu'
'type: partyJoinRequest\nid: ozrdHJTo\ninvitationToken: 6cVHBEhE\npartyId: emOZghyn'
'type: partyJoinResponse\nid: WLfxapUw\ncode: 65\ninvitationToken: jS4nBEtn\ninvitees: t4beyMDL\nleaderId: BbB89liK\nmembers: 85QPNNpJ\npartyId: cxqhIqEt'
'type: partyKickNotif\nleaderId: 7V03Mprx\npartyId: 6F0f0h83\nuserId: MRtYHKSc'
'type: partyKickRequest\nid: KGe2DOdf\nmemberId: QUazkNIU'
'type: partyKickResponse\nid: wK8YzD4Z\ncode: 32'
'type: partyLeaveNotif\nleaderId: pFxLQt1f\nuserId: 3mDVaDJL'
'type: partyLeaveRequest\nid: bhcikfAS\nignoreUserRegistry: True'
'type: partyLeaveResponse\nid: UcEaAdjv\ncode: 53'
'type: partyPromoteLeaderRequest\nid: YXk5acch\nnewLeaderUserId: 9HHdYoGc'
'type: partyPromoteLeaderResponse\nid: y5MFuOVC\ncode: 23\ninvitationToken: aAyo6qzR\ninvitees: lfhMkYMB\nleaderId: Dudg5vG3\nmembers: jfb8fOTS\npartyId: 8svcXleH'
'type: partyRejectNotif\nleaderId: 9zinC8ur\npartyId: LJ61FfXH\nuserId: N0ZDKFUU'
'type: partyRejectRequest\nid: kPmdknB8\ninvitationToken: dsweYdzu\npartyId: miydhgsM'
'type: partyRejectResponse\nid: 0YBIxrBF\ncode: 48\npartyId: M2AbNATU'
'type: personalChatHistoryRequest\nid: AXCugedO\nfriendId: IWRBEQ4S'
'type: personalChatHistoryResponse\nid: M8PBUz5J\nchat: 2XNMzKDL\ncode: 77\nfriendId: VBjdkdpM'
'type: personalChatNotif\nid: EvsVNgNl\nfrom: Fap6Hl6Y\npayload: w8IJDYHk\nreceivedAt: 47\nto: 5cCnmMz3'
'type: personalChatRequest\nid: ACN9mWNe\nfrom: ynVInRcE\npayload: JEZkliVH\nreceivedAt: 13\nto: o9uKT02J'
'type: personalChatResponse\nid: h3uPBotD\ncode: 50'
'type: rejectFriendsNotif\nuserId: ENYhjJp8'
'type: rejectFriendsRequest\nid: sHRidfjx\nfriendId: T808D3Cm'
'type: rejectFriendsResponse\nid: c62lp30P\ncode: 41'
'type: rematchmakingNotif\nbanDuration: 17'
'type: requestFriendsNotif\nfriendId: zKTOqz0s'
'type: requestFriendsRequest\nid: 8LdE9cYy\nfriendId: MPU5nXj6'
'type: requestFriendsResponse\nid: 3H2hhldD\ncode: 54'
'type: sendChannelChatRequest\nid: H0QcbvxB\nchannelSlug: plfh9wim\npayload: 83oVSxjE'
'type: sendChannelChatResponse\nid: rrxZsSLk\ncode: 22'
'type: setReadyConsentNotif\nmatchId: 09BGgGWI\nuserId: A2F8P75P'
'type: setReadyConsentRequest\nid: b0o7uYsu\nmatchId: CoJozsuq'
'type: setReadyConsentResponse\nid: 83LAa8xp\ncode: 91'
'type: setSessionAttributeRequest\nid: Fe5SpZgO\nkey: FodrqtQP\nnamespace: XTZsDE68\nvalue: 1Sd4usQa'
'type: setSessionAttributeResponse\nid: q5hwk60e\ncode: 2'
'type: setUserStatusRequest\nid: YrQpN23W\nactivity: Nm5sjETN\navailability: 53'
'type: setUserStatusResponse\nid: z94PtgBl\ncode: 31'
'type: shutdownNotif\nmessage: LKJ1bJb0'
'type: signalingP2PNotif\ndestinationId: DNh8wnYs\nmessage: 4XIqQkzn'
'type: startMatchmakingRequest\nid: 9NHjNRQg\nextraAttributes: n3AiDLLu\ngameMode: tIK5hkra\npartyAttributes: {"dd76T6Mz":{},"CIBniEBM":{},"C9X5RFWN":{}}\npriority: 10\ntempParty: 6Roc02Nz'
'type: startMatchmakingResponse\nid: dBiSkPjL\ncode: 56'
'type: systemComponentsStatus\ncomponents: {"FDqWeyr1":false,"0hu22Gmo":true,"JPrh2JX1":true}'
'type: unblockPlayerNotif\nunblockedUserId: coa48hc7\nuserId: W1t9brZz'
'type: unblockPlayerRequest\nid: jxPDc1F9\nnamespace: FJlj8jOL\nunblockedUserId: SX3lEonb'
'type: unblockPlayerResponse\nid: cv7D1HPw\ncode: 82\nnamespace: KSE4xVnO\nunblockedUserId: KUErj6Nj'
'type: unfriendNotif\nfriendId: H22omC8o'
'type: unfriendRequest\nid: g4WUv20s\nfriendId: Ehsx3XDy'
'type: unfriendResponse\nid: c1adnXi0\ncode: 18'
'type: userBannedNotification'
'type: userMetricRequest\nid: RDbkRyWD'
'type: userMetricResponse\nid: iBmkb3r9\ncode: 32\nplayerCount: 13'
'type: userStatusNotif\nactivity: 0A1gc7Fo\navailability: 70\nlastSeenAt: Wiyxl8A8\nuserId: xymfH87j'
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
    'type: acceptFriendsNotif\nfriendId: TXAIaxel' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: 6m6vj7KZ\nfriendId: 1KJsdfia' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: 5FcgGKlk\ncode: 83' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: skdixlUL\nuserId: L9hWmAbP' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: ziQGnwNV\nblockUserId: yHLOnjTP\nnamespace: TOU0yJ61' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: mRlM84ZA\nblockUserId: 0MRqTmAT\ncode: 88\nnamespace: Rxw3uBjQ' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: NH7snVtf' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: hQtTvuTt\nfriendId: xKAtNlbn' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: MPuNk0cl\ncode: 63' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: lRu1tOL4\ngameMode: YEDD8i5V\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: xKjmXihV\ncode: 56' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: DvABy02f\nfrom: sXSIJfBT\npayload: l3kqXuMI\nsentAt: fYCxADPa' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: cdruZLQE\nuserId: JtKMbhab' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: 3izKD730' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: FeIAqwi1\nnamespace: RoyyRlFJ' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [VFnL5PP2,KmyMiSxm,y0c8P8tG]\ncustomAttribute: s33SwFJh\ndeployment: m6SGiUem\ngameVersion: 9on6o17S\nimageVersion: GM4km6TJ\nip: dZlN8wwQ\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: UZZBmo8m\nmatchId: mzPFGKWi\nmessage: R69bXSMS\nnamespace: Qb5IWA4V\npodName: hgFzhZSm\nport: 57\nports: {"yvdgWVao":50,"e2ar5xTf":96,"dy08ASS1":70}\nprotocol: CpG4kuIn\nprovider: U9s5tPIX\nregion: vt3KxpMz\nsessionId: McRPq1d0\nstatus: eKwJ98pB' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: KHcFcXFw' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: Nyu7x68k\nuserId: Edtn3Amq' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: bTZ3k4XC' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: 7V6EXUcA\nactivity: [NrUvhd8E,9ZmSyUfa,wyDAAxkG]\navailability: [81,50,9]\ncode: 97\nfriendIds: [gTpzYOdD,ZVQalr7d,yvagPRVf]\nlastSeenAt: [4E7cbf0D,jgP5gLqU,mO2TGV0a]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: rnkz1ZYv' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: 0CrQPl2V\nattributes: {"jMEV5jLu":"E5nq2Dyn","iItYmpq6":"XeE2poCN","uebVZTyC":"ba3Ra90k"}\ncode: 8' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: yHFahI82\nfriendId: KTKUPoem' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: oCBtpzBK\ncode: 5\nfriendshipStatus: nDCrj2BL' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: 1ERnZ7Mk\nkey: FAj7dC4Q' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: 3rohX7SG\ncode: 84\nvalue: FIUGTnXY' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: N2ewpyZm' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: nffsvOWz\nchannelSlug: pBtVRuGD\ncode: 55' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: 1090DPaq' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: DHtQrGXx\ncode: 100\nuserIds: [wzfL1pD7,4SONqaHx,bNXHipa4]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: aUvDFrm3\nfriendId: Tod2dbfp' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: vcpr82JP\ncode: 77\nfriendIds: [n2VIsuxy,IL81fP6a,sCYadLDt]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 12Q9XfBj' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: jxSaRpts' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: fgYh0FqV\ncode: 12\nfriendIds: [YBtwbdso,qXkvCfvM,nPne2X8P]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [ZiGKsooE,v9LNvDAF,2GLW2XAO]\nmatchId: C3iUXZjq\nmessage: Y8OMqTtl\npartyMember: [Yd0btCqT,vskrbD7T,N1HHunz2]\nreadyDuration: 16\nstatus: 9tOmZthl' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: kUfFcx9S\nfrom: f4ZDiUp7\npayload: qt1dL3sr\nsentAt: 47\nto: 1kjDiIrn\ntopic: 02I90zSG' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: MQYgORBV' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: mj3DEP6M\ncode: 66' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: hKQ2Gc19\ncode: 41\nonlineFriendIds: [9dKSzMEb,g2GB7ZfU,kOjcvakb]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: vx9vdizj\nfrom: nRQbpPeV\npayload: rrf80urA\nreceivedAt: 77\nto: 6r37XZec' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: e2q5VQgh\nfrom: 6FfghSjJ\npayload: wNRFiKON\nreceivedAt: 11\nto: gtmFLZh1' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: pBgMIqWf\ncode: 95' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: e61lF2YZ' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: jeoc2UsM\ncode: 22\ninvitationToken: CdNqXTlT\ninvitees: O6QQhtPs\nleaderId: LK6BN5Ae\nmembers: zLisbCVX\npartyId: tbbi6Qcw' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"X5ycrIsO":{},"3f6SmeWU":{},"7MyuJwDW":{}}\ninvitees: [KjPDZnvK,QjuirUWW,WzEwUkIw]\nleader: g8tQ3WbF\nmembers: [fRcbFvJu,8LN3yI44,aHM5NolW]\nnamespace: wAQzAoaR\npartyId: N3X28SPJ\nupdatedAt: 76' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: r1V5GiQL\ninvitationToken: GVioXxBi\npartyId: eFIoK6lm' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: KvDDz1si' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: lZoCSYLx\ncode: 53\ncustomAttributes: {"hCTCUns9":{},"4Izvv80b":{},"RJyoMerk":{}}\ninvitationToken: Ba2eaYFt\ninvitees: KJWhKFoQ\nleaderId: n3WxBo4d\nmembers: EUBRdwLB\npartyId: mNirDcGb' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: klFsG5J3\ninviterId: JviAEA4D' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: jjSICKeE\nfriendId: 6RQxCd32' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: Cy1snqeS\ncode: 92' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: lxjS6xGJ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: RZgraLSe\ninvitationToken: NhUuwJhz\npartyId: sfmqWI1s' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: yn3MGHVb\ncode: 55\ninvitationToken: fGEV6ldu\ninvitees: ZzHDfd9Q\nleaderId: cAB7uWYr\nmembers: cuUrPsPN\npartyId: SpLZZ4UT' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: jS3O1ekx\npartyId: dRtcQ9qR\nuserId: 8dH8WflA' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: MhLy76vj\nmemberId: F3QJDCnn' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: zAixylXB\ncode: 91' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: FqdKqDYZ\nuserId: dhTKTltC' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: FOLz8T3t\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: e12vpCQi\ncode: 50' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: e2Y5GfSn\nnewLeaderUserId: iwiNxojk' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: QxWEBZRV\ncode: 41\ninvitationToken: GaMnmrjf\ninvitees: Wi0jEQG8\nleaderId: LlXgCj7N\nmembers: OKTE7Tiv\npartyId: rz0Nfp8M' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: Y3HnwU0A\npartyId: DqZLFXm2\nuserId: Lp7l6KoF' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: xlJoSFer\ninvitationToken: WzNE7AZp\npartyId: 4MYT9tU3' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: HtBIs2Xe\ncode: 15\npartyId: o1WhFWIk' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: wvWNajcf\nfriendId: MuRnept5' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: v7AswOo9\nchat: b2V4upcd\ncode: 43\nfriendId: 8R4CJdMg' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: 9zzAMkp7\nfrom: GY7K3fem\npayload: AdySaCAU\nreceivedAt: 29\nto: NHopJwNs' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: w9etO6sG\nfrom: Nyr55Hqw\npayload: diVV6yWy\nreceivedAt: 53\nto: XMXWFMfn' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: tnPBjZgT\ncode: 8' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: br1ekRbl' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: POfKX2Xn\nfriendId: VA97eAlu' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: huNlcvcB\ncode: 29' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 80' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: H4izVoKU' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: V9kuGSG4\nfriendId: tJNmNDLi' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: 5k4tzq0t\ncode: 23' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: fgbYQDQc\nchannelSlug: xpcwUrlr\npayload: BAhToyoy' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: GRZucBHe\ncode: 44' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: J5AJQxow\nuserId: IRXy7rjt' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: Imz6rfZZ\nmatchId: EObRVHpM' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: VlwmruVj\ncode: 60' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: At9MTZGa\nkey: kGwdAJj3\nnamespace: WPk8Wl1e\nvalue: XsCmjetb' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: d8idvN9v\ncode: 52' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: itMAO1Wh\nactivity: fzw6oIJd\navailability: 82' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: mZ9pg4vc\ncode: 57' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: Vp6O1i5H' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: wozV7t3J\nmessage: zfrLjDxO' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: 4olDJ1PG\nextraAttributes: 7GLj52pF\ngameMode: IpiiT3DG\npartyAttributes: {"ziXa9ddC":{},"PXXqYbF3":{},"XD6sI4Gn":{}}\npriority: 2\ntempParty: qa1LR6nP' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: ATkZkcgQ\ncode: 70' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"BYZxQwtZ":true,"GmYIHVcZ":false,"fzrowbB6":true}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: mXRkFTE7\nuserId: Z5qTuHQn' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: SDwylDXy\nnamespace: ZOtKWuMQ\nunblockedUserId: PJtRwbeB' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: J4FFStBo\ncode: 40\nnamespace: 7GXcoV3P\nunblockedUserId: k0JOdmyF' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: aAvmVXBJ' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: r2edtu0z\nfriendId: 62o4lHxq' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: 1RE54kwM\ncode: 10' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: R079TLen' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: YufBrRFu\ncode: 52\nplayerCount: 88' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: vuLa0Uqv\navailability: 57\nlastSeenAt: 16jk7YZR\nuserId: 4xTtOShz' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
