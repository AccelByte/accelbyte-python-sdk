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
'type: acceptFriendsNotif\nfriendId: cSJqyFh0'
'type: acceptFriendsRequest\nid: V4aesIls\nfriendId: eE0i3kpo'
'type: acceptFriendsResponse\nid: rNtLD2vZ\ncode: 41'
'type: blockPlayerNotif\nblockedUserId: pLOjEFAU\nuserId: hKPTVPcZ'
'type: blockPlayerRequest\nid: ieArEJDm\nblockUserId: oG6DIrnH\nnamespace: 5Qk2WFLJ'
'type: blockPlayerResponse\nid: fvNcwGjl\nblockUserId: enk3RYEy\ncode: 41\nnamespace: PlCAcGQO'
'type: cancelFriendsNotif\nuserId: qeLErNvO'
'type: cancelFriendsRequest\nid: GMHumbny\nfriendId: nF72m8TS'
'type: cancelFriendsResponse\nid: uKuCM56Q\ncode: 0'
'type: cancelMatchmakingRequest\nid: WtZjTYak\ngameMode: ShJXNKuh\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: J4XT6Qm7\ncode: 58'
'type: channelChatNotif\nchannelSlug: bjeQQLVU\nfrom: K9c809Gm\npayload: RFVpJElh\nsentAt: JgOOvO20'
'type: clientResetRequest\nnamespace: 9SpjwXtd\nuserId: Y4fqzyNP'
'type: connectNotif\nlobbySessionId: IPD04L3W'
'type: disconnectNotif\nconnectionId: pgHey1J0\nnamespace: 8VWVMWpd'
'type: dsNotif\nalternateIps: [ojUiOkTo,CGWG63iM,jqUFalnt]\ncustomAttribute: zhlwJDB8\ndeployment: Mh7bYz3H\ngameVersion: tKHdKPvI\nimageVersion: isQn3tjw\nip: kABSRAyb\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: iDGtrJmM\nmatchId: UYnPFt0a\nmessage: WLcaqZpI\nnamespace: AV6jNmX5\npodName: kx9shdIj\nport: 7\nports: {"HbSWorQ4":78,"OdszYDg9":39,"C0FN4aFy":58}\nprotocol: ZBytETBl\nprovider: jZOm9JDc\nregion: iHranFbX\nsessionId: ua06u6Lj\nstatus: rVhwz7nT'
'type: errorNotif\nmessage: GLKCkSoO'
'type: exitAllChannel\nnamespace: UdUa1rJ1\nuserId: 4BkNffkJ'
'type: friendsStatusRequest\nid: xbsL1SqB'
'type: friendsStatusResponse\nid: kObPL9OC\nactivity: [W5HfMDTP,PuhZuSl5,blwJPiuz]\navailability: [23,62,20]\ncode: 68\nfriendIds: [Pr5NE425,g92SFkFC,Y5AJdPov]\nlastSeenAt: [DwK106Cq,BVsZwPOo,zIHH5X0g]'
'type: getAllSessionAttributeRequest\nid: 7VbJMW7q'
'type: getAllSessionAttributeResponse\nid: rA79l2RM\nattributes: {"cS32LNSJ":"a4iANvb1","4tuBKkFK":"guGjZT40","nOJArZWE":"Rt9R7SCc"}\ncode: 56'
'type: getFriendshipStatusRequest\nid: kE8ykLce\nfriendId: LbHx6gqb'
'type: getFriendshipStatusResponse\nid: HKLNWcOp\ncode: 99\nfriendshipStatus: cQpKwshf'
'type: getSessionAttributeRequest\nid: oAGvqY5u\nkey: 20KhJqkG'
'type: getSessionAttributeResponse\nid: VwlnMxlX\ncode: 63\nvalue: 00DmkNkC'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: i2jw5ohi'
'type: joinDefaultChannelResponse\nid: FqTKiIVz\nchannelSlug: 03B5R4nA\ncode: 19'
'type: listIncomingFriendsRequest\nid: duIk47cJ'
'type: listIncomingFriendsResponse\nid: k6268sJf\ncode: 100\nuserIds: [XVKF1ZhH,p5oy0RfO,WDaTeGvv]'
'type: listOfFriendsRequest\nid: wBqRpO2n\nfriendId: h0G40Iic'
'type: listOfFriendsResponse\nid: 3eOcpB8v\ncode: 48\nfriendIds: [Cdf7qhMo,QFhblb8i,Gy6N8yTY]'
'type: listOnlineFriendsRequest\nid: sLUGkUbg'
'type: listOutgoingFriendsRequest\nid: JeR8aVrc'
'type: listOutgoingFriendsResponse\nid: caNJHV9A\ncode: 18\nfriendIds: [nLgtX7sh,kooMVLRx,G8erMDFi]'
'type: matchmakingNotif\ncounterPartyMember: [2E8oKSOp,YEoywQws,9Kguikti]\nmatchId: b1zAx10n\nmessage: i4CbpNuN\npartyMember: [X2DdxA9l,Xfbecga3,TRo5cSK4]\nreadyDuration: 75\nstatus: ifmawg72'
'type: messageNotif\nid: NeROfPq0\nfrom: X1siDdwi\npayload: pSKwPTJA\nsentAt: 53\nto: hdhwbYB4\ntopic: s03Sv6oM'
'type: offlineNotificationRequest\nid: c2NalyQx'
'type: offlineNotificationResponse\nid: vjRP4Jd0\ncode: 99'
'type: onlineFriends\nid: ar0EyX1A\ncode: 3\nonlineFriendIds: [mmbzjtZx,QpfiJFPt,jub4NEoZ]'
'type: partyChatNotif\nid: 7MooMsFs\nfrom: 2mvtcU0r\npayload: oRBlrInq\nreceivedAt: 13\nto: sxFoImGB'
'type: partyChatRequest\nid: q6SQpwsT\nfrom: JivlCN0J\npayload: miB35sBp\nreceivedAt: 66\nto: TEGnC866'
'type: partyChatResponse\nid: dIEEk5Ag\ncode: 92'
'type: partyCreateRequest\nid: 7oi924PD'
'type: partyCreateResponse\nid: NegATM3L\ncode: 93\ninvitationToken: YvTFIaB5\ninvitees: zGLdyJQJ\nleaderId: 8WXPzz4G\nmembers: s1y3976n\npartyId: MMoRT7XQ'
'type: partyDataUpdateNotif\ncustomAttributes: {"5FANBacJ":{},"GuI2huON":{},"JWKJMreh":{}}\ninvitees: [xXjAM1CR,7EcgqGVF,k7XrWgiX]\nleader: 1ZjeP5Hk\nmembers: [d4F9xPT9,kR8lu8PW,eTurLWIu]\nnamespace: KkQ3dZbc\npartyId: v5YiCTdh\nupdatedAt: 0'
'type: partyGetInvitedNotif\nfrom: xwcm747m\ninvitationToken: ZmWTZn9u\npartyId: KXYV5hB8'
'type: partyInfoRequest\nid: 2BgC0vtH'
'type: partyInfoResponse\nid: suGYkk6D\ncode: 2\ncustomAttributes: {"M0cDtAHL":{},"DhreeEMu":{},"LlGUeWYC":{}}\ninvitationToken: IOFFW3VW\ninvitees: YMo7UJgS\nleaderId: SNd9Fvo8\nmembers: rXjMq2ja\npartyId: 6JVPUhdd'
'type: partyInviteNotif\ninviteeId: CDgiydOL\ninviterId: SJxPjwgE'
'type: partyInviteRequest\nid: LXWLKuXJ\nfriendId: 0jKrzaU1'
'type: partyInviteResponse\nid: 7V7M6iz9\ncode: 42'
'type: partyJoinNotif\nuserId: OB0nKNUo'
'type: partyJoinRequest\nid: DBMhY12X\ninvitationToken: eLbndRDG\npartyId: 56xwQFsu'
'type: partyJoinResponse\nid: 3WcbT661\ncode: 3\ninvitationToken: tUMiMWVx\ninvitees: KKEG6W6Y\nleaderId: OKNA1RAf\nmembers: 4JMKQ9rQ\npartyId: CzHaaVVh'
'type: partyKickNotif\nleaderId: ke0HTFMy\npartyId: BHD7N3HY\nuserId: Vd4lPPgk'
'type: partyKickRequest\nid: BdVBwMDA\nmemberId: 2SoIxoqr'
'type: partyKickResponse\nid: F1Oc0erA\ncode: 61'
'type: partyLeaveNotif\nleaderId: ZDWhbj7x\nuserId: Iczsc8s8'
'type: partyLeaveRequest\nid: pboLqpMf\nignoreUserRegistry: True'
'type: partyLeaveResponse\nid: hQbZ8gvo\ncode: 41'
'type: partyPromoteLeaderRequest\nid: eUepiCSz\nnewLeaderUserId: VDoyr0bO'
'type: partyPromoteLeaderResponse\nid: 7W4miUG3\ncode: 3\ninvitationToken: o5UjbVV3\ninvitees: CbwVg8HE\nleaderId: w28xb3EF\nmembers: iEVYAv5w\npartyId: u1mwOm9r'
'type: partyRejectNotif\nleaderId: oNtDimfc\npartyId: uJFXvbwN\nuserId: hRes8nFV'
'type: partyRejectRequest\nid: kz8mcawU\ninvitationToken: fExIF6yQ\npartyId: MRbmLiQt'
'type: partyRejectResponse\nid: JP33glol\ncode: 47\npartyId: CxzYhHQ5'
'type: personalChatHistoryRequest\nid: opsrxP2t\nfriendId: Wb9zMVJJ'
'type: personalChatHistoryResponse\nid: NKTnK4wV\nchat: XSk05Gps\ncode: 57\nfriendId: MA2j5bdi'
'type: personalChatNotif\nid: lyg00dTb\nfrom: 9AL2geAu\npayload: 6CEg0hXA\nreceivedAt: 67\nto: t0CYOLsx'
'type: personalChatRequest\nid: kE93t91G\nfrom: H705bUaK\npayload: 2qYV0QOh\nreceivedAt: 34\nto: v5M3KQ9w'
'type: personalChatResponse\nid: PCg093Ct\ncode: 66'
'type: rejectFriendsNotif\nuserId: HTbACMUC'
'type: rejectFriendsRequest\nid: 1Ued04Hh\nfriendId: 7Yachy2r'
'type: rejectFriendsResponse\nid: gCthFXxL\ncode: 25'
'type: rematchmakingNotif\nbanDuration: 79'
'type: requestFriendsNotif\nfriendId: ZpHTq96d'
'type: requestFriendsRequest\nid: TzUquq6K\nfriendId: U3WwiBpb'
'type: requestFriendsResponse\nid: 0SrPdZeg\ncode: 84'
'type: sendChannelChatRequest\nid: 9IpwLw9O\nchannelSlug: xQVKjXb7\npayload: 9q5uicFU'
'type: sendChannelChatResponse\nid: X61drFX6\ncode: 34'
'type: setReadyConsentNotif\nmatchId: KP3UoZPl\nuserId: HCNNaKxa'
'type: setReadyConsentRequest\nid: L2wWLpd6\nmatchId: qsE4cIC0'
'type: setReadyConsentResponse\nid: yybFBCRv\ncode: 74'
'type: setSessionAttributeRequest\nid: xTjCkaKs\nkey: xlSyO4TR\nnamespace: 5RPmDkiw\nvalue: GOc7dWcm'
'type: setSessionAttributeResponse\nid: owyqPry9\ncode: 55'
'type: setUserStatusRequest\nid: MI5QOn7m\nactivity: sFuoQx6H\navailability: 71'
'type: setUserStatusResponse\nid: q82rjpAw\ncode: 68'
'type: shutdownNotif\nmessage: Mn6BKjF5'
'type: signalingP2PNotif\ndestinationId: 07BeEB3C\nmessage: snDeAflP'
'type: startMatchmakingRequest\nid: exyZflPX\nextraAttributes: VXNCHhJ3\ngameMode: PI44UG7B\npartyAttributes: {"TMKFqfef":{},"GbKrD2PE":{},"BqoOsN3g":{}}\npriority: 90\ntempParty: l9pXHTD0'
'type: startMatchmakingResponse\nid: Qp4vZt6N\ncode: 14'
'type: systemComponentsStatus\ncomponents: {"9wB2pU42":true,"XRPP6tHs":false,"tgmHmiNz":true}'
'type: unblockPlayerNotif\nunblockedUserId: 0OkWJK6e\nuserId: t12gUcdk'
'type: unblockPlayerRequest\nid: HwbklRvX\nnamespace: PsFxjZXB\nunblockedUserId: YB7zsJPF'
'type: unblockPlayerResponse\nid: AiIdLCin\ncode: 46\nnamespace: cerG5ONX\nunblockedUserId: FahcGECl'
'type: unfriendNotif\nfriendId: FeTQTAkT'
'type: unfriendRequest\nid: Nixy2FRv\nfriendId: I5bxpDRO'
'type: unfriendResponse\nid: OAJzG1xO\ncode: 85'
'type: userBannedNotification'
'type: userMetricRequest\nid: CG7CNRnh'
'type: userMetricResponse\nid: Q45SFcAv\ncode: 94\nplayerCount: 47'
'type: userStatusNotif\nactivity: 4oLOm2u3\navailability: 66\nlastSeenAt: hGYq0gCA\nuserId: 3d2M3nlv'
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
    'type: acceptFriendsNotif\nfriendId: zMuZCThO' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: bVkDEKep\nfriendId: hesa2pEa' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: swcQtIJI\ncode: 52' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: IIw9EAfK\nuserId: 4xN8Ejcn' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: uDbspyy3\nblockUserId: 11NVIc0q\nnamespace: YWsgOLv5' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: mOSo3rAa\nblockUserId: kMhYrIGF\ncode: 54\nnamespace: pDrAqOVt' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: flbUtpRk' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: L9Go1v73\nfriendId: TOxyM335' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: csPlbf6R\ncode: 9' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: xKE6AlYG\ngameMode: OebI1WnE\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: exKy6mvU\ncode: 49' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: W4uWTJIl\nfrom: cc0mwVnj\npayload: 1WF9tvDJ\nsentAt: D29BZ0nN' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: 4Eilb0Dv\nuserId: Lgv68qet' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: FbCSlfGO' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: wv3PRXJR\nnamespace: 9Tsc4Zed' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [kio2lAAV,cCG88GIS,imBTzFn2]\ncustomAttribute: V4uhrngj\ndeployment: vEPF2gpX\ngameVersion: cZcJ6dmn\nimageVersion: zJDUkrgk\nip: zMnkzZ0Q\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: 0VvH1oG0\nmatchId: svbdOMEN\nmessage: pDEL3DrU\nnamespace: 1ARBnVmM\npodName: 7XFAYaDk\nport: 28\nports: {"WdPzjiWN":81,"tOTusQmP":42,"iErAyZ2V":27}\nprotocol: AkPK5bFA\nprovider: jYYSUGjD\nregion: EV1rWVVG\nsessionId: 4cxEw5CO\nstatus: WsSgDr1i' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: VEwrPv79' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: JoDtrz0n\nuserId: PmNqZLfd' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: 6ZbW6nP7' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: F91rpxLX\nactivity: [R73gcN0l,LdtB88Gc,Jqp5WUrz]\navailability: [9,40,59]\ncode: 27\nfriendIds: [FrRa7ViP,ghNIl0NW,J9kChJKJ]\nlastSeenAt: [FftHgCZv,niyGoLlj,SP0NAcJP]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: z7KsPE38' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: CBLjzxFj\nattributes: {"F85cOEAM":"yhHxDyxw","LyYSo1zm":"1JFHiooN","B5wlMACV":"a2powfbh"}\ncode: 75' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: KiLiloaZ\nfriendId: TBoDfwCR' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: 0vSSTEqm\ncode: 14\nfriendshipStatus: LBZJR5Z9' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: C9gYEy85\nkey: zByCR30a' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: nYKGQvxO\ncode: 63\nvalue: T9XDFYdn' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: elKHIyfQ' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: ch8BQPYq\nchannelSlug: SWY8IcKU\ncode: 91' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: XEtET2Sm' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: oxh3oKj5\ncode: 91\nuserIds: [fnMVtuNQ,mTX07sOO,vtphlZ2d]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: hl9Lv0FS\nfriendId: iI1CHHWC' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: b0GBAFpT\ncode: 53\nfriendIds: [5W5J3GZi,GRN1m0Oi,ERwdEwlM]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: ICLfIime' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: ovRhQEyK' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: f0SIbrcA\ncode: 68\nfriendIds: [zz1Iia3F,0eKOrLWC,vrGXAbxt]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [NNP1IXVr,WN9byPY0,Bl0T5iu4]\nmatchId: CEZz6O2S\nmessage: ETagTe3T\npartyMember: [PZUO8TBO,qrMX2N7x,CrGCcVUo]\nreadyDuration: 60\nstatus: 2adUeRs1' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: Z8SxlLFK\nfrom: CuHPi9X7\npayload: EQ5civD2\nsentAt: 60\nto: JJRKt6u2\ntopic: SaRGhiXk' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: n2dRZdGc' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: PiboQOK8\ncode: 22' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: Nqll3QOY\ncode: 67\nonlineFriendIds: [zNWzAlEn,FsieBR28,sqW3aCyj]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: 75nv8gJw\nfrom: jxJWn6kS\npayload: oq9SvNtL\nreceivedAt: 55\nto: CDp17tJL' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: ijHhbrUA\nfrom: 8F2jHcwR\npayload: Z0Tjn1Pw\nreceivedAt: 70\nto: zO08SO9G' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: yPaVF37v\ncode: 34' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: oBJJQ7DB' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: A8F0zkhX\ncode: 68\ninvitationToken: waTSqZzA\ninvitees: qGD9BTwT\nleaderId: uzgF0dkj\nmembers: TNwv0zwn\npartyId: mFB8IRZS' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"SpOrYMQw":{},"P7YVUfNu":{},"NJg6GCGa":{}}\ninvitees: [euSgNGxd,IQtZSXmE,XPcdyJQD]\nleader: M7LCJIRk\nmembers: [ZienCtOc,ZmLJLhlp,RUFaAiHT]\nnamespace: SxrYT7Pb\npartyId: Lcg1On7P\nupdatedAt: 42' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: Yrz8r2z1\ninvitationToken: Q8E5uCYm\npartyId: CIm68Edd' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: TdQdVD0b' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: SCBgIUOg\ncode: 41\ncustomAttributes: {"2ZaJYgUn":{},"3DACeeGJ":{},"XDyFMhyC":{}}\ninvitationToken: ebncvNJc\ninvitees: 3jQpHwtp\nleaderId: Ov6VWAvR\nmembers: vX6ajr7x\npartyId: wFZi92qJ' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: WMEjhCg0\ninviterId: GMeh54Tx' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: ZlKk1D5S\nfriendId: 2C0LD39V' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: eV1Y4Hp6\ncode: 6' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: JHUUuaVR' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: ZTTS4DOZ\ninvitationToken: hanjaVb1\npartyId: Us3m2IZm' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: w06lbnuo\ncode: 3\ninvitationToken: MaAzN5yX\ninvitees: YPe1AA7e\nleaderId: bnELFm0y\nmembers: ONRTZj6H\npartyId: MJs0bNnN' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: 5pIa2mJJ\npartyId: vkVfYY2p\nuserId: KljQMgDP' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: BTeRAYcj\nmemberId: KvoCS9dU' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: GPsXSklC\ncode: 86' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 8yMEw9v1\nuserId: TmF0pwII' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: fWVZNtXs\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: uhzf2mco\ncode: 60' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: ep3Y1HUl\nnewLeaderUserId: NyiBc4j0' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: 5bmQIhM2\ncode: 36\ninvitationToken: 1ysMdYtw\ninvitees: qUz7HLn8\nleaderId: LXJ4m6zp\nmembers: DjGi3YX1\npartyId: eRNQ9KxX' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: GEGv4Ne8\npartyId: 1kIYne1C\nuserId: LxJG7IV4' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: ANNVv5qo\ninvitationToken: QQMv1UAF\npartyId: 41TuGDXp' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: ucEAZpw9\ncode: 63\npartyId: ow7WpaP1' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: EUQO57Xg\nfriendId: QZFIlVjm' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: FAKSWYl2\nchat: 0Aesccyh\ncode: 31\nfriendId: WwHaxEL6' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: r0oapZGF\nfrom: Hn6oj6Qt\npayload: gXPpdsKP\nreceivedAt: 31\nto: JOLHLwcI' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: JZjU3XD5\nfrom: bfTOXFU8\npayload: roUvu8iU\nreceivedAt: 65\nto: b78NJ917' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: KGSLvyzU\ncode: 57' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: iRePmzPL' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: MZ0FAuZb\nfriendId: UoB3wZjV' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: NO1hNAok\ncode: 64' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 21' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: yQgEqYvr' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: 0o1ilqD8\nfriendId: tfIJspsJ' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: HV4PLdkt\ncode: 61' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: FRAfTfX7\nchannelSlug: 9yxSR0y6\npayload: QYRNvCDe' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: SZd2XiyK\ncode: 43' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: jmCISlZF\nuserId: 1KJIx10x' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: vF4fPGk6\nmatchId: Gna515oM' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: KAa9WqPW\ncode: 80' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: gKFkSCyT\nkey: l0CPvo4T\nnamespace: iYiNJn7F\nvalue: To8nUZsw' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: TidTcQww\ncode: 25' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: rMuyKNCf\nactivity: oVQivAZ4\navailability: 93' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: VYyOmled\ncode: 60' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: RofWxzRO' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: jJsOBDn0\nmessage: YINgoPh5' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: xOJM9MPt\nextraAttributes: YfJxuY93\ngameMode: cy0qSc8v\npartyAttributes: {"YnhN3HGQ":{},"o6rmVbdb":{},"R4rZGvlZ":{}}\npriority: 64\ntempParty: EGNoi2ir' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: O9q6rG2y\ncode: 100' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"mwxsIyFk":true,"EgKDLkOh":false,"DjaS5Alz":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: Sl8koXzg\nuserId: MLHZKl7E' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: ogpJc6I8\nnamespace: NsEtIy8l\nunblockedUserId: mozzlYlQ' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: SFjQ237i\ncode: 8\nnamespace: e6Cr3PhY\nunblockedUserId: 1vaQ7RVc' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: Yoc95TMC' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: GmnbmViS\nfriendId: csDnvir3' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: SiiA0Cxc\ncode: 8' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: epH5fBHo' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: 8SmNyuMy\ncode: 81\nplayerCount: 23' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: bY9KGMkg\navailability: 42\nlastSeenAt: OngaAAt5\nuserId: Ql4YbVGa' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
