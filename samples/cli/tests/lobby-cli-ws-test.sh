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
'type: acceptFriendsNotif\nfriendId: Cbmz1ttJ'
'type: acceptFriendsRequest\nid: QZ3FtpcI\nfriendId: mzrGzUsN'
'type: acceptFriendsResponse\nid: 1X7Uyrre\ncode: 2'
'type: blockPlayerNotif\nblockedUserId: AfiOgomM\nuserId: voak4FXE'
'type: blockPlayerRequest\nid: YjnprJGH\nblockUserId: xhcjQUeU\nnamespace: YEpGiBNQ'
'type: blockPlayerResponse\nid: 48MUVZtX\nblockUserId: ZGwCJKXs\ncode: 44\nnamespace: rJwvj8uS'
'type: cancelFriendsNotif\nuserId: mLvIXBkc'
'type: cancelFriendsRequest\nid: 5cUBceUC\nfriendId: GHWZVZ2R'
'type: cancelFriendsResponse\nid: eDZcCUf4\ncode: 69'
'type: cancelMatchmakingRequest\nid: 1WDp2XGc\ngameMode: nJnNhVFu\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: A4GMS2Pa\ncode: 1'
'type: channelChatNotif\nchannelSlug: NxXftntb\nfrom: RUaQusoW\npayload: rUwEdggw\nsentAt: CP1a5hh8'
'type: clientResetRequest\nnamespace: nuzd5yH7\nuserId: 7JWM3SxI'
'type: connectNotif\nlobbySessionId: jvpUycDP'
'type: disconnectNotif\nconnectionId: yShtLirl\nnamespace: vIWWYjgV'
'type: dsNotif\nalternateIps: [wd8ugZA5,8mHRoxyO,vUiXwYCJ]\ncustomAttribute: 5RMfzeDl\ndeployment: WwSR8L28\ngameVersion: Y4Y9J2EB\nimageVersion: yWEHq4fa\nip: 3tkHPWiW\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: HKBnS3KD\nmatchId: uOl72m5U\nmessage: R3XegeXb\nnamespace: EMV3jfMV\npodName: twAUqSu2\nport: 26\nports: {"VqasdH8Z":38,"4ZXxPCt0":59,"BmdBCGqT":83}\nprotocol: zWEuCcpe\nprovider: jf6OxIkp\nregion: 7z3LRgl8\nsessionId: uueul4np\nstatus: MUIfstnO'
'type: errorNotif\nmessage: HxsHQxe4'
'type: exitAllChannel\nnamespace: qru4BP7g\nuserId: Y9EmZWrP'
'type: friendsStatusRequest\nid: ZaOKUVx5'
'type: friendsStatusResponse\nid: 11iz3UGc\nactivity: [iEI2SA5g,WBYEYEkH,oaERHLqu]\navailability: [90,18,67]\ncode: 79\nfriendIds: [CX4FJNce,n8nJ7RTV,hPPlmGiX]\nlastSeenAt: [2JaU7JWI,7RijkXBz,mgjFMSZr]'
'type: getAllSessionAttributeRequest\nid: Qvm5L2qN'
'type: getAllSessionAttributeResponse\nid: sgeFrpa2\nattributes: {"Qsm0xhrf":"lPScX7cP","TIRWonC2":"hqvuROD2","tFBhj1Ag":"mL32lAN6"}\ncode: 63'
'type: getFriendshipStatusRequest\nid: HbW6wZ7f\nfriendId: LoHxBoAC'
'type: getFriendshipStatusResponse\nid: 5gCO81Tb\ncode: 68\nfriendshipStatus: l6KyfFBC'
'type: getSessionAttributeRequest\nid: SGlvsOPW\nkey: Ge7SERIg'
'type: getSessionAttributeResponse\nid: FCPlcPjM\ncode: 26\nvalue: Qb56i6d6'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: td9TFt3o'
'type: joinDefaultChannelResponse\nid: jlJKEdbq\nchannelSlug: MPAJuBjy\ncode: 53'
'type: listIncomingFriendsRequest\nid: fxvcreHK'
'type: listIncomingFriendsResponse\nid: 4Ow6v6ba\ncode: 46\nuserIds: [Laclnl0p,4bUJXra5,O3CO2NLT]'
'type: listOfFriendsRequest\nid: TVg2wnJt\nfriendId: JZExCodk'
'type: listOfFriendsResponse\nid: yF3ziitZ\ncode: 81\nfriendIds: [bxx2eGK0,i0nYS2kQ,QTQ909KH]'
'type: listOnlineFriendsRequest\nid: DBuIoNKZ'
'type: listOutgoingFriendsRequest\nid: JadTSTwj'
'type: listOutgoingFriendsResponse\nid: 7TDq334g\ncode: 34\nfriendIds: [TKTfYXnT,QE9nAEWX,m4NuJ7gy]'
'type: matchmakingNotif\ncounterPartyMember: [YNMIUNuk,drZSWHvx,m7AjqEl6]\nmatchId: HDfSj9BN\nmessage: GQux34ci\npartyMember: [yk95j3IR,OFG6cYN0,PGOBSjIb]\nreadyDuration: 54\nstatus: C2a9dYdW'
'type: messageNotif\nid: DqzB88q4\nfrom: 8p6eIvVx\npayload: GM6cAE6M\nsentAt: 52\nto: NYjyxunn\ntopic: 98N4CDM6'
'type: offlineNotificationRequest\nid: hv62Q2Ka'
'type: offlineNotificationResponse\nid: 2Ze1UI06\ncode: 18'
'type: onlineFriends\nid: jTkrq3UJ\ncode: 6\nonlineFriendIds: [WCLPhXUJ,dInKTvj1,nQ0UhyfK]'
'type: partyChatNotif\nid: Eq1eEpwC\nfrom: VgrWFz2Q\npayload: AbrXdsCi\nreceivedAt: 97\nto: ZybCqZ5b'
'type: partyChatRequest\nid: qz97IXZE\nfrom: uSZ1GHsK\npayload: JqZKZsoE\nreceivedAt: 91\nto: l4aGtOUa'
'type: partyChatResponse\nid: 1VFvh0lu\ncode: 71'
'type: partyCreateRequest\nid: ko20FqaD'
'type: partyCreateResponse\nid: Hxbezffr\ncode: 62\ninvitationToken: FtMxnFdK\ninvitees: g5Pha5CJ\nleaderId: igSJBE23\nmembers: 4dWJhpGT\npartyId: cpfUVbUd'
'type: partyDataUpdateNotif\ncustomAttributes: {"x13orgZU":{},"6VI0iq1Z":{},"Chfw9IWT":{}}\ninvitees: [tvwuSxaY,mnhPvoD7,DeO9sTPN]\nleader: AbhrLika\nmembers: [BfCEeWe9,DuCXeYRz,zC0lZ4P8]\nnamespace: bgiPtHw1\npartyId: R4Ms0fCJ\nupdatedAt: 74'
'type: partyGetInvitedNotif\nfrom: vNVgfhgV\ninvitationToken: WlbOkZsC\npartyId: rfAgmPHg'
'type: partyInfoRequest\nid: CvfIrkcq'
'type: partyInfoResponse\nid: Jw0SuOtk\ncode: 97\ncustomAttributes: {"EM7ps9iy":{},"mBFicbbf":{},"Aq40CU9c":{}}\ninvitationToken: koOTBBAD\ninvitees: PtbDE9hc\nleaderId: bCTjEhgV\nmembers: 0EzC8kPo\npartyId: mSkBSf9N'
'type: partyInviteNotif\ninviteeId: sJQ1uHHv\ninviterId: KqgYqy0P'
'type: partyInviteRequest\nid: CIIqG0lO\nfriendId: 24Ix7jyG'
'type: partyInviteResponse\nid: wjOWRMKC\ncode: 29'
'type: partyJoinNotif\nuserId: Ap86B0Zt'
'type: partyJoinRequest\nid: ylQQO60F\ninvitationToken: A5Kkz379\npartyId: PF8c1Jr8'
'type: partyJoinResponse\nid: jubGaA9v\ncode: 34\ninvitationToken: hxfJcK2t\ninvitees: sJl5WKv8\nleaderId: Q65sNNuf\nmembers: ILqXyMwm\npartyId: JJQEVeby'
'type: partyKickNotif\nleaderId: POGSvmDn\npartyId: sbKCZWf1\nuserId: oKSbvGyT'
'type: partyKickRequest\nid: HRimya8x\nmemberId: jgAs4F0K'
'type: partyKickResponse\nid: JHMJ3fkI\ncode: 48'
'type: partyLeaveNotif\nleaderId: YzN4HvFd\nuserId: oh80ZAby'
'type: partyLeaveRequest\nid: gTKRvjpD\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: uR4k10rt\ncode: 21'
'type: partyPromoteLeaderRequest\nid: l48SpvUB\nnewLeaderUserId: d7v05oBS'
'type: partyPromoteLeaderResponse\nid: TBAeYvVG\ncode: 4\ninvitationToken: QUes0ufM\ninvitees: JdxicZk0\nleaderId: YE0xzKRV\nmembers: nJ1lT2AC\npartyId: A1mjnquN'
'type: partyRejectNotif\nleaderId: JDY5Jtsx\npartyId: K5wi5nhQ\nuserId: leXtY2qg'
'type: partyRejectRequest\nid: NmEfAoJ3\ninvitationToken: vbYYJ3Ii\npartyId: m6sMFYlo'
'type: partyRejectResponse\nid: 7eDQMHYz\ncode: 55\npartyId: VfDG2YNE'
'type: personalChatHistoryRequest\nid: BhQzfoGx\nfriendId: LbamuiF0'
'type: personalChatHistoryResponse\nid: 2O21FFni\nchat: hey9Tuk5\ncode: 77\nfriendId: a8ZaUSoz'
'type: personalChatNotif\nid: uDUorGI0\nfrom: tk7wmJms\npayload: 4cUumTsU\nreceivedAt: 4\nto: qyBqPnJq'
'type: personalChatRequest\nid: CawbBUUK\nfrom: tGGwl2df\npayload: VCZq1XgR\nreceivedAt: 63\nto: fk4zW0VD'
'type: personalChatResponse\nid: DdcJqE5H\ncode: 20'
'type: rejectFriendsNotif\nuserId: omib8aSA'
'type: rejectFriendsRequest\nid: mVeOJtVh\nfriendId: b2DhOk0c'
'type: rejectFriendsResponse\nid: 1x73EGhy\ncode: 21'
'type: rematchmakingNotif\nbanDuration: 2'
'type: requestFriendsNotif\nfriendId: X41AvTwD'
'type: requestFriendsRequest\nid: tDC1aK2P\nfriendId: iw87VkyU'
'type: requestFriendsResponse\nid: 4Pwt1GY9\ncode: 44'
'type: sendChannelChatRequest\nid: vgTtr5PJ\nchannelSlug: m0kOxO4C\npayload: lDqQc0AJ'
'type: sendChannelChatResponse\nid: 9TSNbvwt\ncode: 68'
'type: setReadyConsentNotif\nmatchId: e5QCYJpJ\nuserId: Zpozx58K'
'type: setReadyConsentRequest\nid: gKkvwtps\nmatchId: FoX9GCF5'
'type: setReadyConsentResponse\nid: J8sxiIyO\ncode: 40'
'type: setSessionAttributeRequest\nid: 9xHViZH8\nkey: 4uc2Uhcs\nnamespace: U3bUSCvi\nvalue: D6XVBJ6I'
'type: setSessionAttributeResponse\nid: HPBHuu7Z\ncode: 13'
'type: setUserStatusRequest\nid: oBMLVpt5\nactivity: svnw9CaP\navailability: 88'
'type: setUserStatusResponse\nid: kooBg6Y8\ncode: 1'
'type: shutdownNotif\nmessage: IquWGlkC'
'type: signalingP2PNotif\ndestinationId: xUPU84KC\nmessage: ETwYJfpx'
'type: startMatchmakingRequest\nid: 27byx4ez\nextraAttributes: sp56aHbi\ngameMode: boGIXohV\npartyAttributes: {"Uck0uQmR":{},"xWVFb48b":{},"5VtW5m24":{}}\npriority: 85\ntempParty: gn1fJ0nC'
'type: startMatchmakingResponse\nid: nrycDBYE\ncode: 19'
'type: systemComponentsStatus\ncomponents: {"KmUZ63YW":false,"lCxR16ad":false,"FOynZ7KF":false}'
'type: unblockPlayerNotif\nunblockedUserId: A4iDDDLD\nuserId: 8eHAGP5F'
'type: unblockPlayerRequest\nid: FJQyWjbO\nnamespace: 2vxSNQeH\nunblockedUserId: vPDuvLWJ'
'type: unblockPlayerResponse\nid: caLOnvW9\ncode: 92\nnamespace: dJXHAUdW\nunblockedUserId: LlrHKjUp'
'type: unfriendNotif\nfriendId: CuYaix66'
'type: unfriendRequest\nid: 7VE3IZ2H\nfriendId: tACQxDcz'
'type: unfriendResponse\nid: Ih7ZYfdN\ncode: 31'
'type: userBannedNotification'
'type: userMetricRequest\nid: 9LqoAJ4N'
'type: userMetricResponse\nid: Xe5mO5mB\ncode: 89\nplayerCount: 95'
'type: userStatusNotif\nactivity: gT82d2Mz\navailability: 35\nlastSeenAt: CU5b2IqV\nuserId: xU4kiRY7'
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
    'type: acceptFriendsNotif\nfriendId: 4pZK7E6S' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: vZmLMC1r\nfriendId: k6J9sSF1' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: 98Vx7pMP\ncode: 68' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: xDNOE1rA\nuserId: ptHkb1Lu' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: kt6tWNwr\nblockUserId: 1glkJw19\nnamespace: 6vkovuKp' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: KJ9Iyob6\nblockUserId: TmunFLDv\ncode: 87\nnamespace: YRsAvwYu' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: ljQj1DcJ' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: aR0O3cQF\nfriendId: 9vSD10nC' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: LJJauvtr\ncode: 5' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: GEDmslXs\ngameMode: i3lbDNLZ\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: OlmjgdXO\ncode: 0' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: VoopLMOt\nfrom: qe7JzHSl\npayload: tB7BtxzI\nsentAt: 9Nmj0smr' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: Vjh0sckY\nuserId: PMhF8V0C' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: EevFj1Lo' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: KNRohtHF\nnamespace: A87ri6gG' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [Slf2bqoX,WLKI3ZBG,yeanSrrU]\ncustomAttribute: lFPLVwmh\ndeployment: Q2BwImdz\ngameVersion: qtfDQgwg\nimageVersion: WGa3fPyu\nip: PpVqmaV3\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: vYBJQot8\nmatchId: SRgSA8rR\nmessage: BrUMTfCo\nnamespace: n1lYBQo1\npodName: 84xUNVEN\nport: 55\nports: {"7K0x3ZQo":69,"sq2Ev7Qc":65,"QNW16FDz":83}\nprotocol: DSN8Oc9E\nprovider: q4beYwEB\nregion: 0HXBteOJ\nsessionId: eY32GWpt\nstatus: TFRcjLeU' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: MOFXHE4M' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: gXUus2iT\nuserId: v6xxpw8t' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: mXd5bR0L' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: Pnq26CVO\nactivity: [wCv7P125,A3j3679h,hqfgbCQ7]\navailability: [37,53,31]\ncode: 84\nfriendIds: [1NhH5Mwk,RCvsithT,6US9gBdO]\nlastSeenAt: [GhKHM5E0,rVyU3DhX,4GVv8I8T]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: S9XHOnwD' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: eHjoZOkp\nattributes: {"GhyI7WpB":"5byUuYe2","PwzeVmx4":"1wpep1xx","eCswKmuc":"ThMSQBWa"}\ncode: 44' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: zURWO5wt\nfriendId: Zvcf23Un' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: SsJmldrO\ncode: 19\nfriendshipStatus: Em6D12PJ' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: 76zhUzWi\nkey: XyqF4rGX' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: DPbEFLkY\ncode: 75\nvalue: xxiXg7SS' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: z1zfe9LH' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: BB70kwPf\nchannelSlug: a1xxXsbi\ncode: 61' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: dtPoekdJ' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: PHfHa600\ncode: 31\nuserIds: [gEoOzyQ8,xpRH51Ve,k9Rkxgv1]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: yV85BkZu\nfriendId: YeYhRESr' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: XgHvsJ1y\ncode: 30\nfriendIds: [8hfXIApk,McON6QCg,u5fznTu2]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: kk0wDGMe' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: o7DuxjtY' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: BdCjoZOl\ncode: 3\nfriendIds: [afB4ehZ0,TXFzfeML,H7yiiQ1F]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [fMnn74Ne,BA0eo3Wt,GK5omQjw]\nmatchId: 9eS6F5cE\nmessage: VWJShAxy\npartyMember: [4s8gqDkv,JNuFI28I,JjzFZwOg]\nreadyDuration: 86\nstatus: J9JhEPcJ' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: P1ux18Go\nfrom: 0dXRQdyK\npayload: xHdypqmi\nsentAt: 36\nto: TSA5InUg\ntopic: vqzubxpa' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: mHQDcUKR' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: pbo8IHKb\ncode: 25' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: raE4HIRe\ncode: 96\nonlineFriendIds: [1Uz1XEHr,Nu83RAUm,yem2foGi]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: kdLf2f7z\nfrom: uPQknl4n\npayload: OyHzMFR5\nreceivedAt: 55\nto: CJJG33iG' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: hoeSDCme\nfrom: q4kEuEBe\npayload: 3hfKK2zI\nreceivedAt: 18\nto: WSwWgeGw' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: wEDWj3qz\ncode: 11' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: l76bZcuH' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: 21SYZgEy\ncode: 92\ninvitationToken: J1eJuEER\ninvitees: rxhfhaBm\nleaderId: Js9VIAYw\nmembers: CrdpHgrY\npartyId: UPAn0U2A' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"oIuOxWuR":{},"8McswqCV":{},"RSNnfFCo":{}}\ninvitees: [BJXZDdlY,xXVoVKOC,4wIJdiQz]\nleader: fcXyNvQc\nmembers: [NnkLar6j,LYrqnsHI,hGKdtZq8]\nnamespace: MYpsq0Zr\npartyId: Gs7FPh9c\nupdatedAt: 62' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: dEkWu76T\ninvitationToken: 58tj5bUg\npartyId: hi7fRYOA' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: wo6qXiFG' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: 2d3rHKF6\ncode: 35\ncustomAttributes: {"MI9yeMEd":{},"AYxX2Yra":{},"Gou0jVwT":{}}\ninvitationToken: 7r7UAvtJ\ninvitees: xZc6R1ZC\nleaderId: iF4GS45W\nmembers: 5Ku1gFE6\npartyId: lebfw4DA' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: 8dAmuTQC\ninviterId: yXhTA9wG' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: Hvak9OoB\nfriendId: wEtyetDF' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: BzyBP8rD\ncode: 86' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: iqQpoqQC' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: Jl1sp62i\ninvitationToken: BHPfs5jJ\npartyId: bKEi4s84' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: FfnGKKEi\ncode: 95\ninvitationToken: wmqBgZTB\ninvitees: ywgl7lkQ\nleaderId: RMUZwX26\nmembers: ajpjBsMo\npartyId: GPQ70AXc' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: WNps6vas\npartyId: MvBxk8k9\nuserId: HesM813O' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: uTNS7wSB\nmemberId: ZR5yn5z8' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: rIkQgQuk\ncode: 56' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 2YDDXWxN\nuserId: mh7OZoEA' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: m0T9TJjF\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: O00jdUoo\ncode: 28' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: 8SkRA7Gu\nnewLeaderUserId: 4pP6qzUm' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: GV1CWvps\ncode: 77\ninvitationToken: Uw8Ak7ZZ\ninvitees: uNlc6Kfm\nleaderId: jfUhvORa\nmembers: DbsD0rG4\npartyId: ayssvs34' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: 7UEnrG6g\npartyId: Bu3HDCoO\nuserId: TdPJLEPP' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: N0SQwW9m\ninvitationToken: 5TbDv0S1\npartyId: QYFRIShE' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: 8yj9pDYm\ncode: 10\npartyId: AdjVjTNm' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: 0uOw9WAy\nfriendId: SV7msvru' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: 73L9EVv9\nchat: SeVgjqTK\ncode: 6\nfriendId: Ge08H9LE' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: NUBP6DXy\nfrom: 0CMIEEIZ\npayload: mp1ePgGC\nreceivedAt: 68\nto: bWX8sO43' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: h5MZTitz\nfrom: CjGUUq4r\npayload: 1flbz9In\nreceivedAt: 19\nto: DYOL77Kw' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: M7R4yrNA\ncode: 35' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: Y1Fxe35x' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: ntQWawar\nfriendId: G477itn6' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: BntdKKbL\ncode: 76' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 99' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: 92Ah3POU' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: cJFYgAoo\nfriendId: AqBcxEqt' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: 4ULcrWr0\ncode: 16' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: VcsIUVgQ\nchannelSlug: a30cM5D4\npayload: 8mdfJRlJ' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: kyFnCBSr\ncode: 65' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: JUotX8MM\nuserId: KpDkOstJ' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: UFkHkil6\nmatchId: yZoWRHDN' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: rxr81n01\ncode: 50' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: IwwmKbAE\nkey: R54B2sBO\nnamespace: q25MlWAV\nvalue: aL1kV2oA' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: x7jRxTtA\ncode: 63' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: myYovf7q\nactivity: xBfZXRzp\navailability: 44' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: xRQKvUxZ\ncode: 11' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: dYeKYFcG' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: ItELZvX4\nmessage: HO5gA0DR' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: uPuNknsi\nextraAttributes: IL5A90Sv\ngameMode: dmq0xCXA\npartyAttributes: {"Nz0klQt2":{},"FJzWvCbe":{},"6cFHXB2n":{}}\npriority: 22\ntempParty: tsRFCUGL' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: d4nCaoey\ncode: 8' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"ES831cXm":true,"IvBYpRXg":true,"W7BpAimY":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: w9YaTXvu\nuserId: 8giaCnWS' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: C37siMUa\nnamespace: 2GDg9F2h\nunblockedUserId: Kxn6ubYd' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: uw2OS0rO\ncode: 51\nnamespace: XOGM1AfH\nunblockedUserId: akzLnn1P' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: VKR0QG7x' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: uV47SJ4t\nfriendId: XmIRVzRv' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: Zo6AKjvv\ncode: 64' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: vueQZuqA' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: Gve5hYT3\ncode: 58\nplayerCount: 69' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: PKOqxP06\navailability: 39\nlastSeenAt: sKbSiTEu\nuserId: VCQIlXvy' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
