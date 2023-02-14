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
'type: acceptFriendsNotif\nfriendId: uuv46FDp'
'type: acceptFriendsRequest\nid: 2BN1aGnM\nfriendId: fHUFouhw'
'type: acceptFriendsResponse\nid: 8dNbXFCF\ncode: 96'
'type: blockPlayerNotif\nblockedUserId: cAuzHOCt\nuserId: iOCTIHrq'
'type: blockPlayerRequest\nid: 8Vbshblo\nblockUserId: 6idkkQEm\nnamespace: XvA0q1Hs'
'type: blockPlayerResponse\nid: djC3K1wc\nblockUserId: 3a6xQCy0\ncode: 4\nnamespace: phiQrqkc'
'type: cancelFriendsNotif\nuserId: 4jTEEWQN'
'type: cancelFriendsRequest\nid: IwFGnRJ5\nfriendId: OeiwKlpw'
'type: cancelFriendsResponse\nid: 4v2YYoYC\ncode: 50'
'type: cancelMatchmakingRequest\nid: uucsqh6m\ngameMode: c51dhoQ7\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: bcj39bVR\ncode: 94'
'type: channelChatNotif\nchannelSlug: wKSR27tB\nfrom: qzCYnIVT\npayload: RsG55GpW\nsentAt: BDUwKYjk'
'type: clientResetRequest\nnamespace: 6YhMEBZi\nuserId: 0vUaFfA9'
'type: connectNotif\nlobbySessionId: Ck4ZZhXL'
'type: disconnectNotif\nconnectionId: wieUKDGc\nnamespace: oysy4ewK'
'type: dsNotif\nalternateIps: [u601YdPL,d0x17xSP,SDWN5kGE]\ncustomAttribute: cJjQdl9j\ndeployment: koZqfLUz\ngameVersion: fPZBMxHh\nimageVersion: NsqH4FWM\nip: gp1M2C8A\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: 7QS3hlwx\nmatchId: kvq4fVTp\nmessage: rcg5JBDJ\nnamespace: gpsY2Vkh\npodName: sztToocM\nport: 45\nports: {"zmgc3PMV":15,"N8slnDxh":49,"mJBToM7g":54}\nprotocol: l9OM2azW\nprovider: N1r40uXZ\nregion: Vq7Ac3iE\nsessionId: GI2zFdch\nstatus: QKVC3XVM'
'type: errorNotif\nmessage: 8uwTGAyr'
'type: exitAllChannel\nnamespace: fDe53BOa\nuserId: dpmuqy9n'
'type: friendsStatusRequest\nid: zwupg6r3'
'type: friendsStatusResponse\nid: mDeGOwMs\nactivity: [a5KUL8Cc,tqCtZ9hk,OoY0MKOv]\navailability: [11,32,21]\ncode: 91\nfriendIds: [CzwPhwoi,TQdM1COz,KMjfW0EJ]\nlastSeenAt: [CBRBSjpv,yNF2LbQ9,uAktnV4Z]'
'type: getAllSessionAttributeRequest\nid: ixcSo4Fj'
'type: getAllSessionAttributeResponse\nid: YUbFebxL\nattributes: {"Tvl3PuaR":"zl86Srtx","4Lgx3arG":"3chOQLMx","rRZEdGyg":"F33irZ47"}\ncode: 46'
'type: getFriendshipStatusRequest\nid: Oekfoe2B\nfriendId: T0sScUFu'
'type: getFriendshipStatusResponse\nid: i02MV7qJ\ncode: 46\nfriendshipStatus: PqK8Ag8H'
'type: getSessionAttributeRequest\nid: 0S47uoWQ\nkey: 5CfW9fNV'
'type: getSessionAttributeResponse\nid: BYyQwS5k\ncode: 39\nvalue: 6EwCdlsV'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: emd3LD2g'
'type: joinDefaultChannelResponse\nid: cWQflhly\nchannelSlug: f66JutX6\ncode: 24'
'type: listIncomingFriendsRequest\nid: 6wcMEzfz'
'type: listIncomingFriendsResponse\nid: cXs4dIOF\ncode: 22\nuserIds: [6Xfux2X3,SkyJYP2w,4XxsIVfU]'
'type: listOfFriendsRequest\nid: XUNAuCXw\nfriendId: kS749hEL'
'type: listOfFriendsResponse\nid: B22rGmi8\ncode: 58\nfriendIds: [nrHszFXp,9OJEiEXM,vLYXgCUk]'
'type: listOnlineFriendsRequest\nid: zcMXn9uI'
'type: listOutgoingFriendsRequest\nid: UKSaf5rl'
'type: listOutgoingFriendsResponse\nid: X9XiOccJ\ncode: 52\nfriendIds: [LiRg5T7Q,sR7DDF2u,1w1qqtrz]'
'type: matchmakingNotif\ncounterPartyMember: [wY3npCHi,ocSVyDda,lRFunW1Z]\nmatchId: BTrDZJVV\nmessage: fGGlNGNz\npartyMember: [jQq6TcKU,7jhgIch1,M3l0hj3x]\nreadyDuration: 89\nstatus: g89v6lzB'
'type: messageNotif\nid: xhhnp977\nfrom: ftRSgEac\npayload: zbP0HaUg\nsentAt: 41\nto: Wvd1IUkK\ntopic: RAeKPBla'
'type: offlineNotificationRequest\nid: hTgT9mZN'
'type: offlineNotificationResponse\nid: cYyLFwp4\ncode: 12'
'type: onlineFriends\nid: fuZO6mQS\ncode: 68\nonlineFriendIds: [3DJ50JSU,qp5MS3SR,DOsPHYAS]'
'type: partyChatNotif\nid: SUDE1WXT\nfrom: cPdrcAHe\npayload: PG4S0Xk0\nreceivedAt: 19\nto: ITmG8ICk'
'type: partyChatRequest\nid: ce0sBB62\nfrom: DwR5RYks\npayload: SkcmhySm\nreceivedAt: 52\nto: 7TE1azaS'
'type: partyChatResponse\nid: Dod9jj0t\ncode: 18'
'type: partyCreateRequest\nid: L2jbQdKZ'
'type: partyCreateResponse\nid: ZMAzRmvt\ncode: 85\ninvitationToken: BUB45Xo1\ninvitees: 8WZj42ah\nleaderId: zUygGlb7\nmembers: Jf6cObLa\npartyId: IgzZGL96'
'type: partyDataUpdateNotif\ncustomAttributes: {"blYCvVMT":{},"WAkyZNKj":{},"gvPr7tQU":{}}\ninvitees: [YuVmL4y3,7u2UvFoB,BhfZsMMD]\nleader: RVuZNfXM\nmembers: [y6wfdLwZ,MlSaUCYD,sOcjVwDM]\nnamespace: 5LD3F69z\npartyId: 1UbCM7f5\nupdatedAt: 88'
'type: partyGetInvitedNotif\nfrom: hRggfEdR\ninvitationToken: YaxvCrtg\npartyId: Bzc3TGNU'
'type: partyInfoRequest\nid: un6kuwz6'
'type: partyInfoResponse\nid: bj0Uq9vt\ncode: 63\ncustomAttributes: {"gdsikpZj":{},"J0PbKutS":{},"MFo0CfUN":{}}\ninvitationToken: o0k2eAI9\ninvitees: OGNP6ZJ0\nleaderId: Piub7LOg\nmembers: Wr8Evh8e\npartyId: HLhIxrhU'
'type: partyInviteNotif\ninviteeId: 2NbDEnB6\ninviterId: 0TtST4IM'
'type: partyInviteRequest\nid: F88ZfT4Z\nfriendId: GSTIGTDz'
'type: partyInviteResponse\nid: oY29t9Yt\ncode: 66'
'type: partyJoinNotif\nuserId: g2F20iGI'
'type: partyJoinRequest\nid: k8t0hAMQ\ninvitationToken: UnCpJSwl\npartyId: oi2nuckO'
'type: partyJoinResponse\nid: VHWrDIRN\ncode: 47\ninvitationToken: PqNqYVcL\ninvitees: yJUsR8RI\nleaderId: vUaErTx9\nmembers: XUlNWoHe\npartyId: OHE63mLM'
'type: partyKickNotif\nleaderId: aWijSlYl\npartyId: yqrPprUu\nuserId: jIEVDAYl'
'type: partyKickRequest\nid: 2L83VrBa\nmemberId: RV5RFneR'
'type: partyKickResponse\nid: HAWZmRcH\ncode: 83'
'type: partyLeaveNotif\nleaderId: eN6nHUNW\nuserId: S5sPpCCO'
'type: partyLeaveRequest\nid: aMLgF5OK\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: FPItlxeq\ncode: 18'
'type: partyPromoteLeaderRequest\nid: FLyau2Yi\nnewLeaderUserId: xWE2AGNb'
'type: partyPromoteLeaderResponse\nid: i6YMC5f6\ncode: 56\ninvitationToken: YfmBOiYn\ninvitees: eh5ZJHpP\nleaderId: CiL2GHUl\nmembers: hDBBn9tv\npartyId: rH5Ersq5'
'type: partyRejectNotif\nleaderId: 6aFFEeFT\npartyId: SFUuqcQ4\nuserId: BKZ53zuj'
'type: partyRejectRequest\nid: jH7hhiJr\ninvitationToken: oNR1O64o\npartyId: BjBcR1LV'
'type: partyRejectResponse\nid: MGBDOJ1D\ncode: 14\npartyId: J2fkWCdZ'
'type: personalChatHistoryRequest\nid: PjOPPFdE\nfriendId: zx7Vg7xT'
'type: personalChatHistoryResponse\nid: TWcJ9mrw\nchat: oapgnCMC\ncode: 66\nfriendId: giXSBOew'
'type: personalChatNotif\nid: iJs6tY2H\nfrom: 48hUsPsD\npayload: ALO72I81\nreceivedAt: 56\nto: EFjTlbq5'
'type: personalChatRequest\nid: mdz23oci\nfrom: pKYHbTQZ\npayload: ABI56zYh\nreceivedAt: 96\nto: Dbj4Uvup'
'type: personalChatResponse\nid: 2KW3WF7G\ncode: 54'
'type: rejectFriendsNotif\nuserId: wswH9UAU'
'type: rejectFriendsRequest\nid: 6Y5ukdit\nfriendId: 1SGG9XF8'
'type: rejectFriendsResponse\nid: 5pFymLj8\ncode: 66'
'type: rematchmakingNotif\nbanDuration: 79'
'type: requestFriendsNotif\nfriendId: ftHj4v9n'
'type: requestFriendsRequest\nid: WGmIAaeJ\nfriendId: rhc6wAtp'
'type: requestFriendsResponse\nid: B2NOVguy\ncode: 38'
'type: sendChannelChatRequest\nid: Cfc8DVGU\nchannelSlug: RT8fD3rs\npayload: zWiPGpjh'
'type: sendChannelChatResponse\nid: jLxXVgvG\ncode: 78'
'type: setReadyConsentNotif\nmatchId: BINUdYQ4\nuserId: rx3bvR4V'
'type: setReadyConsentRequest\nid: i4oAXtld\nmatchId: 0rt5Mb0M'
'type: setReadyConsentResponse\nid: SstdTvnt\ncode: 45'
'type: setSessionAttributeRequest\nid: Xbz423yR\nkey: osS71q1B\nnamespace: Cuh6nqLx\nvalue: jf803nSZ'
'type: setSessionAttributeResponse\nid: wYuEQjHe\ncode: 86'
'type: setUserStatusRequest\nid: hLq2LnVH\nactivity: uOoqpB9b\navailability: 56'
'type: setUserStatusResponse\nid: AQSRmgGg\ncode: 52'
'type: shutdownNotif\nmessage: 2DcnSTf2'
'type: signalingP2PNotif\ndestinationId: v73pYdOT\nmessage: tBMYVCWw'
'type: startMatchmakingRequest\nid: UyJa8t2h\nextraAttributes: AoyToNGO\ngameMode: XatZ2mQ5\npartyAttributes: {"EX2WCjxd":{},"AVwruR91":{},"OWYWf297":{}}\npriority: 25\ntempParty: FO5uKbQX'
'type: startMatchmakingResponse\nid: qI5phOwP\ncode: 23'
'type: systemComponentsStatus\ncomponents: {"X52iC3il":true,"XgYSvhcF":true,"gEAzzKUF":false}'
'type: unblockPlayerNotif\nunblockedUserId: eCbgpJHj\nuserId: J6bTd7co'
'type: unblockPlayerRequest\nid: Gn2fk4Qx\nnamespace: RbL3AaAO\nunblockedUserId: D8LGdHCd'
'type: unblockPlayerResponse\nid: Ztsk7rJl\ncode: 53\nnamespace: 8DODy7ce\nunblockedUserId: 3B5EbXdv'
'type: unfriendNotif\nfriendId: nkIGNPK7'
'type: unfriendRequest\nid: 71FhP3vk\nfriendId: cV7VR7i3'
'type: unfriendResponse\nid: g3qGtvsO\ncode: 15'
'type: userBannedNotification'
'type: userMetricRequest\nid: 6RB1Ha2Y'
'type: userMetricResponse\nid: wrof6rt7\ncode: 80\nplayerCount: 34'
'type: userStatusNotif\nactivity: W0zq2FdA\navailability: 65\nlastSeenAt: Q51yrx6m\nuserId: 49TOMqob'
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
    'type: acceptFriendsNotif\nfriendId: ljlFdIaH' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: qyqlXiaA\nfriendId: Gtkr6MzT' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: kDfvj8br\ncode: 35' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: qnlU3CUf\nuserId: b1f36Idg' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: xTb95aVk\nblockUserId: 2obJm9BQ\nnamespace: XrTeOFdy' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: 2bRunyFm\nblockUserId: 11XrNj35\ncode: 57\nnamespace: zyI2xvcY' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: aQrix85w' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: KCkldwRs\nfriendId: UMNbNUG5' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: xw3Gfgl4\ncode: 94' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: MaqG3jJ0\ngameMode: MCrNDg3G\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: mAoUJeon\ncode: 82' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: LNCOwGwn\nfrom: EacMou33\npayload: xm0qofPf\nsentAt: YBsdrnxJ' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: QaqbPYvz\nuserId: TpugTREr' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: GjmUnCvh' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: DONZtzJh\nnamespace: 8qfxELfG' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [rmXTOVFM,RA2l5Jk1,NAUkQ2Bh]\ncustomAttribute: L7jDYKHU\ndeployment: pVJSkiyt\ngameVersion: nNVwslHc\nimageVersion: 8gIK5Idz\nip: ACSZHLeY\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: ebOworpc\nmatchId: xOeg5tas\nmessage: F1PemIwf\nnamespace: dagLRDne\npodName: J8HauX8P\nport: 84\nports: {"NIAVH9al":15,"xl5cdXjN":7,"Uz9D6Ohs":88}\nprotocol: MumppQxi\nprovider: Ze1WH7tC\nregion: AxxAEIsD\nsessionId: xGhtx7ry\nstatus: Jxh3tdTo' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: LQVGgXwa' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: 1VC1XpBY\nuserId: lV5sqzeM' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: UL2mssYo' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: 81v6IZQ6\nactivity: [2smPAD7y,CZ2jwACb,E0HAboc5]\navailability: [55,45,19]\ncode: 91\nfriendIds: [Yi2ND7ek,SrPIlRlS,rMsRABOD]\nlastSeenAt: [t0wbvOTg,g0VgJKux,VVEMQjCC]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: Wjbqq5yp' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: EoJnzigv\nattributes: {"EiLj8td5":"idfOHQGH","w84w6Qix":"U0oANKM5","Pjb6sEbR":"Zu4pvaz1"}\ncode: 70' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: rjv2J9Si\nfriendId: 7IaEX4NY' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: lbDvnz26\ncode: 88\nfriendshipStatus: UhkVjCB7' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: RbBYdEZ0\nkey: 5sPVKPqp' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: oOjh4Jss\ncode: 70\nvalue: pVkIZfhw' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: N4qSuEDY' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: t5SFYnkz\nchannelSlug: AUovnLlj\ncode: 26' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: pEfOb12M' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: yKbqmLGh\ncode: 3\nuserIds: [gEzEYvM6,TteDORvJ,jP35V4dH]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: bqo6n4pR\nfriendId: yWSdAajO' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: Op18SPNV\ncode: 61\nfriendIds: [ZAmG3Msz,pZO5Ye7d,vGH64MYJ]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: nw2jhIJj' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: oAKZHJY6' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: 2xKzwkKc\ncode: 98\nfriendIds: [UHS0d4c3,oQ836alu,419KWIGK]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [PNUqGDip,ebmfaoDD,bOSsDUm5]\nmatchId: fBLnLT6F\nmessage: TrzwK8Du\npartyMember: [Z7AaJpYW,14MQMujT,HLhgAgDF]\nreadyDuration: 7\nstatus: QdeS89sk' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: 5pBZsSCa\nfrom: EE0FiTDJ\npayload: eZIqjhm9\nsentAt: 30\nto: xREm7IfF\ntopic: sEA0cIc9' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: ot5wtCJY' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: YLNErP4t\ncode: 79' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: HVCjOjCR\ncode: 53\nonlineFriendIds: [f32qc0fM,FdPz2DpP,eU53W1J9]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: bBVSOXHa\nfrom: vUkuJByS\npayload: sjcZhPAp\nreceivedAt: 30\nto: r6BCLvAA' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: ccPsRcHU\nfrom: 3kaoFioj\npayload: P8Tj7T8E\nreceivedAt: 3\nto: 2y1i1hL7' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: 23dc5VFk\ncode: 33' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: n0UlZdxS' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: VWbwv6KL\ncode: 99\ninvitationToken: ymisbMXx\ninvitees: XTFOHfxW\nleaderId: ec99kLqr\nmembers: eN9zEowX\npartyId: hSvDaXUY' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"LbnPJMlA":{},"SGDzwryW":{},"AobC9syb":{}}\ninvitees: [4U0dWwzP,OJdzZkkS,tp7YQKZ2]\nleader: tLEQ42Dw\nmembers: [d1QNs4s1,CXeLK0Zf,b6fQPUFO]\nnamespace: zq2nFP3d\npartyId: r0kzkyva\nupdatedAt: 44' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: UJPTLpMO\ninvitationToken: fmlOIYDA\npartyId: oGHNJWnr' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: wBsUlOat' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: ChVF85um\ncode: 29\ncustomAttributes: {"TREdXXed":{},"lk6lMIDT":{},"g9AkyskW":{}}\ninvitationToken: fC9xUi66\ninvitees: JCT3X6HA\nleaderId: HBOmOMH0\nmembers: mVOFwqyk\npartyId: LwHwoGPU' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: WjYtrhvR\ninviterId: 3Abh0GMD' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: ESvzAWgM\nfriendId: 2xfirG1P' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: TrXcw4nF\ncode: 54' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: RGZI1uDt' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: 6HhcpOiM\ninvitationToken: 2IihZQYx\npartyId: F0d3mNNT' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: UAAtwT6q\ncode: 35\ninvitationToken: zpfTbRKR\ninvitees: BtAErb72\nleaderId: e7SYQXq5\nmembers: gb9QLyA0\npartyId: PJxupeAA' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: iq7GCaPC\npartyId: JP75HE6X\nuserId: HrbtpH2h' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: Fg6pEQIN\nmemberId: AIterb1o' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: bZc5oBwg\ncode: 44' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 1JncrQNl\nuserId: VPcVoVPl' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: ErmPdzI7\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: xYvLU1rN\ncode: 12' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: MEPRQmyS\nnewLeaderUserId: nRlhNbrE' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: KGnSJcSS\ncode: 84\ninvitationToken: fiw2x28Z\ninvitees: 1Zn7KT8z\nleaderId: VhIzEFW5\nmembers: JIzwySoD\npartyId: GqAGSik7' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: Wh2wJv8H\npartyId: H10cmF4w\nuserId: oXkDEWTT' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: uFcmYR3s\ninvitationToken: BHMTN7rO\npartyId: 7iKK1nWF' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: bMrngYum\ncode: 49\npartyId: Dfet238B' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: JpHbqZZl\nfriendId: YvBDyzMp' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: nQ1PXNTh\nchat: GKeN79kr\ncode: 30\nfriendId: FjIyvhLl' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: 9ytFXXvj\nfrom: Kmrwvocq\npayload: HD7LP21j\nreceivedAt: 16\nto: 8MKwpdS2' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: s8oSL8p9\nfrom: 742rqRQI\npayload: 09tYCknC\nreceivedAt: 9\nto: 58FwQAk6' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: 5sSwIYW7\ncode: 26' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: OrEygn5R' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: DnIKSUu9\nfriendId: KlN1Gaqy' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: NXNZV8Qz\ncode: 22' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 44' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: nWXP2yii' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: 4RqAYy9V\nfriendId: R6QPccIs' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: RiBV4F5g\ncode: 11' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: QY00bxga\nchannelSlug: 1lkoIlMs\npayload: OUQeSIGd' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: XNLgzbVt\ncode: 26' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: kgBPnkXP\nuserId: goT1uHtA' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: CZbJ2IF0\nmatchId: ZeJaWjZa' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: lFVK2QMe\ncode: 91' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: Qh9vvGwT\nkey: 0Nk8pYQp\nnamespace: oY6bymIU\nvalue: 5qMJtIVa' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: sGpDQffC\ncode: 97' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: 6D0yGpsn\nactivity: U1V9l9BY\navailability: 28' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: kqtSTBkG\ncode: 65' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: A0QsXaSE' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: 4wLNVH9d\nmessage: bobGtg4I' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: 7gPEicjf\nextraAttributes: d634xqgs\ngameMode: fANol8wy\npartyAttributes: {"mWPR3hud":{},"T9xPMjqs":{},"5unVEXRM":{}}\npriority: 10\ntempParty: iiIbA4Kx' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: tWip20nO\ncode: 56' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"EEVyUjKq":false,"8fzxUl0f":false,"Z8oZnerN":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: 8SSMPVom\nuserId: 62KxTyfF' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: 3c5abqVI\nnamespace: OSyHuSBK\nunblockedUserId: lsYN7Jbp' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: UNd1qqFj\ncode: 44\nnamespace: vhPmyizK\nunblockedUserId: XcLlUJLP' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: C4uq7NFg' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: gf7yOcFd\nfriendId: gYYuBYdE' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: 3NjMRyb3\ncode: 58' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: EiKwozYn' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: f6G8xRUt\ncode: 88\nplayerCount: 76' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: r53IG8dA\navailability: 69\nlastSeenAt: 4xRMvJxM\nuserId: mudrOmZU' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
