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
'type: acceptFriendsNotif\nfriendId: xv8eMXSG'
'type: acceptFriendsRequest\nid: QfWSWZZU\nfriendId: denPiVvP'
'type: acceptFriendsResponse\nid: i35JrcPy\ncode: 51'
'type: blockPlayerNotif\nblockedUserId: UqsGOpAn\nuserId: getSrkLj'
'type: blockPlayerRequest\nid: L1BBcZ9J\nblockUserId: CK1RFmEK\nnamespace: SOHS7XHD'
'type: blockPlayerResponse\nid: K7rmQ30k\nblockUserId: EUpzAQqu\ncode: 27\nnamespace: WNPLLkAT'
'type: cancelFriendsNotif\nuserId: JBRA4UJ1'
'type: cancelFriendsRequest\nid: pKnZ8mgW\nfriendId: HPJ8w0gm'
'type: cancelFriendsResponse\nid: i7XUxwev\ncode: 9'
'type: cancelMatchmakingRequest\nid: E0W9D2kX\ngameMode: 4qW9TjuA\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: ZERcUGyq\ncode: 32'
'type: channelChatNotif\nchannelSlug: DhqpFN32\nfrom: nJifKb3Y\npayload: RZDbUGKQ\nsentAt: 8GY7DHXJ'
'type: clientResetRequest\nnamespace: vZb0f76q\nuserId: ZeMeTnDJ'
'type: connectNotif\nlobbySessionId: 18Q4KORT'
'type: disconnectNotif\nconnectionId: VaBZlWWP\nnamespace: 4A98CWI7'
'type: dsNotif\nalternateIps: [1yGmknzE,jwzvbMpA,ToCS1U9C]\ncustomAttribute: SOZTCVAS\ndeployment: JPYbeQsh\ngameVersion: vYpiehyW\nimageVersion: HjQGYMad\nip: 7Yxz6FK5\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: 9foNzeNH\nmatchId: bDkPtjbr\nmessage: wxGXKZLd\nnamespace: psCefDU6\npodName: SRATsh1E\nport: 74\nports: {"cLvLc5aH":95,"oasc68Un":15,"XRog030j":10}\nprotocol: UUqOvHME\nprovider: sHxkSe1A\nregion: 5wztbbeY\nsessionId: krvzmHbl\nstatus: qDrsWDLu'
'type: errorNotif\nmessage: OSdokiqb'
'type: exitAllChannel\nnamespace: HfQcHVhF\nuserId: XiaVUwCf'
'type: friendsStatusRequest\nid: IJXHnNQm'
'type: friendsStatusResponse\nid: stXaOyCx\nactivity: [hwCDAJD7,X3QPS6Ag,hHuLa6C2]\navailability: [7,69,69]\ncode: 45\nfriendIds: [DPmpYlkK,Djd3sMB1,lrQNNbM0]\nlastSeenAt: [H2omApNz,TkwhoTPS,ElwRcOfg]'
'type: getAllSessionAttributeRequest\nid: jzPmIvDE'
'type: getAllSessionAttributeResponse\nid: GuAepeSG\nattributes: {"kiFwzt3I":"3Rau32t9","b1FrRDOO":"ggQ19v7j","k2ewkPVw":"4xf6VMQy"}\ncode: 74'
'type: getFriendshipStatusRequest\nid: OkrbAOUt\nfriendId: umS2VZtZ'
'type: getFriendshipStatusResponse\nid: sb1a6iV9\ncode: 10\nfriendshipStatus: ouPhBXBL'
'type: getSessionAttributeRequest\nid: rqToy00i\nkey: xPPxazAm'
'type: getSessionAttributeResponse\nid: 1roQAZIH\ncode: 49\nvalue: BlDc2CZ7'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: 1Uk4j9DR'
'type: joinDefaultChannelResponse\nid: t2yl8pfm\nchannelSlug: ULzdCarh\ncode: 66'
'type: listIncomingFriendsRequest\nid: z6XIt4UD'
'type: listIncomingFriendsResponse\nid: tGpYh1mL\ncode: 90\nuserIds: [UkHAJ4Tc,Uu3h9MDb,h4g6cn4v]'
'type: listOfFriendsRequest\nid: xglbb7bF\nfriendId: rCFlAz1T'
'type: listOfFriendsResponse\nid: DYA8Fmt1\ncode: 94\nfriendIds: [J9nwwoTB,lN6RUiA7,MNeXHy2C]'
'type: listOnlineFriendsRequest\nid: 5AqHBMS6'
'type: listOutgoingFriendsRequest\nid: S6XRgWQf'
'type: listOutgoingFriendsResponse\nid: xrFL40PT\ncode: 96\nfriendIds: [qrlsBKhz,glSIY6jr,mBWxcdHp]'
'type: matchmakingNotif\ncounterPartyMember: [LAb0AVTl,tJ4yfqXb,1rfKk2eh]\nmatchId: s7qOAD8l\nmessage: GTViGpvJ\npartyMember: [dwU7soJQ,mqueUTTO,feC0Rmcc]\nreadyDuration: 4\nstatus: dDPRdOZX'
'type: messageNotif\nid: Lnh1YnaL\nfrom: VpqrCNQO\npayload: BSei4cmM\nsentAt: 1\nto: 1z5rQp2n\ntopic: ZfFnb4Bd'
'type: offlineNotificationRequest\nid: Kp3dJp2t'
'type: offlineNotificationResponse\nid: 9pThM8Ye\ncode: 100'
'type: onlineFriends\nid: Eu7NSatQ\ncode: 49\nonlineFriendIds: [fq6ZI6GD,VbG7LDFn,i9vxvLc7]'
'type: partyChatNotif\nid: TYLBXayR\nfrom: pDiJtoxX\npayload: 7kjICiuW\nreceivedAt: 50\nto: jO233FiU'
'type: partyChatRequest\nid: lc3He4Ox\nfrom: nzOS73bO\npayload: 8QfU37hr\nreceivedAt: 57\nto: NwaFKIgd'
'type: partyChatResponse\nid: ZV2IsWM6\ncode: 21'
'type: partyCreateRequest\nid: OLbY3Eog'
'type: partyCreateResponse\nid: A29ox83e\ncode: 12\ninvitationToken: krxJ8iI6\ninvitees: 6ZbSeyHN\nleaderId: ojOESoHR\nmembers: F1kHVhWg\npartyId: o8elQAK1'
'type: partyDataUpdateNotif\ncustomAttributes: {"wjlmgPaN":{},"QEXQeVFr":{},"rOe41UlO":{}}\ninvitees: [yNAFP7My,kWS7gyeQ,Le69Je4o]\nleader: OF1tqhHD\nmembers: [Tvi7a6gD,PAHCioal,QSW0TKPr]\nnamespace: 0wFNcvYx\npartyId: mKbgrFKE\nupdatedAt: 77'
'type: partyGetInvitedNotif\nfrom: xA3MZ4DM\ninvitationToken: bliILzfT\npartyId: EyorElgc'
'type: partyInfoRequest\nid: Npcik5fK'
'type: partyInfoResponse\nid: mTTeH7Iw\ncode: 53\ncustomAttributes: {"Xfj9r84e":{},"Qx5YJD1q":{},"r5L1BfPP":{}}\ninvitationToken: p3zfp2ue\ninvitees: nQYVFnKu\nleaderId: OJjIzQz6\nmembers: R544eriA\npartyId: KnBethfL'
'type: partyInviteNotif\ninviteeId: fAmevy1r\ninviterId: Xvuvi0AL'
'type: partyInviteRequest\nid: MoKQ1nwD\nfriendId: cfXbsJHm'
'type: partyInviteResponse\nid: phcXaM67\ncode: 78'
'type: partyJoinNotif\nuserId: 1THmgDnc'
'type: partyJoinRequest\nid: pDiz5qx0\ninvitationToken: vWf2myH4\npartyId: EV5b95SX'
'type: partyJoinResponse\nid: 9m5t4brN\ncode: 93\ninvitationToken: WgaJL5fY\ninvitees: LYXYLhPG\nleaderId: RXtdlgDZ\nmembers: hZieHNrj\npartyId: bnXRSwYg'
'type: partyKickNotif\nleaderId: sbq9KsXp\npartyId: mIIKIOKO\nuserId: PKoSnvgh'
'type: partyKickRequest\nid: FDdN9YRP\nmemberId: bzZUPDLP'
'type: partyKickResponse\nid: 2YrjcfGc\ncode: 100'
'type: partyLeaveNotif\nleaderId: LTS3chJj\nuserId: kTdt4fOY'
'type: partyLeaveRequest\nid: Sq3qIdmF\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: NYOiBfEx\ncode: 15'
'type: partyPromoteLeaderRequest\nid: zXAjyFop\nnewLeaderUserId: mzzEb7wO'
'type: partyPromoteLeaderResponse\nid: arj1rjlc\ncode: 48\ninvitationToken: y7uPCFxG\ninvitees: pP9bLlqS\nleaderId: VWJxyok4\nmembers: Fva3twrs\npartyId: oJeaThje'
'type: partyRejectNotif\nleaderId: mH1RRSd1\npartyId: 9k5jIRZk\nuserId: gZuFQATh'
'type: partyRejectRequest\nid: Dh01zlMe\ninvitationToken: 3bHyT0gW\npartyId: gR00xCS6'
'type: partyRejectResponse\nid: MtE0zeP2\ncode: 46\npartyId: gXdzYOwm'
'type: personalChatHistoryRequest\nid: SclvDhYm\nfriendId: g7RSW7qw'
'type: personalChatHistoryResponse\nid: ghd2wr7Z\nchat: XwYOwwLr\ncode: 56\nfriendId: ln9fLYBZ'
'type: personalChatNotif\nid: sLvoCtG3\nfrom: guRXuJZR\npayload: ZqaQ9Jak\nreceivedAt: 50\nto: cR0pYqyw'
'type: personalChatRequest\nid: 5trzsxHD\nfrom: KkkZE9z0\npayload: FiW4dJ35\nreceivedAt: 64\nto: xqAKfO81'
'type: personalChatResponse\nid: tuRk2Oat\ncode: 27'
'type: rejectFriendsNotif\nuserId: 6Cynvll1'
'type: rejectFriendsRequest\nid: fA9jtUsf\nfriendId: IsOFQxse'
'type: rejectFriendsResponse\nid: VH8tbmia\ncode: 63'
'type: rematchmakingNotif\nbanDuration: 69'
'type: requestFriendsNotif\nfriendId: R1oO1rjD'
'type: requestFriendsRequest\nid: QxxHxvSk\nfriendId: MXl19ZNb'
'type: requestFriendsResponse\nid: sWN5trP1\ncode: 24'
'type: sendChannelChatRequest\nid: oFLZCQMc\nchannelSlug: y2xBHt6c\npayload: GB7Z4TUX'
'type: sendChannelChatResponse\nid: mQC7Yppm\ncode: 42'
'type: setReadyConsentNotif\nmatchId: 8Nti85fC\nuserId: epu2Flk7'
'type: setReadyConsentRequest\nid: oICsoGo8\nmatchId: DJdZOltv'
'type: setReadyConsentResponse\nid: GtWmJ7D5\ncode: 18'
'type: setSessionAttributeRequest\nid: f9YUgdAI\nkey: HmOYEqet\nnamespace: q2hd5tpK\nvalue: b3UMRvly'
'type: setSessionAttributeResponse\nid: 1x2XnSUZ\ncode: 19'
'type: setUserStatusRequest\nid: WRz9i8uF\nactivity: oPPvZYS6\navailability: 55'
'type: setUserStatusResponse\nid: GyU4CKdZ\ncode: 82'
'type: shutdownNotif\nmessage: K4ZJa7zq'
'type: signalingP2PNotif\ndestinationId: KmxjnfiK\nmessage: b3PLoHeu'
'type: startMatchmakingRequest\nid: Kam5Fl0q\nextraAttributes: eEtu2fOb\ngameMode: qz3uh7uL\npartyAttributes: {"02lmB8nJ":{},"DNKz1i1A":{},"BBm7faU5":{}}\npriority: 41\ntempParty: xsQSK9pA'
'type: startMatchmakingResponse\nid: Ur99nFIq\ncode: 58'
'type: systemComponentsStatus\ncomponents: {"hhhsX6vh":true,"jM1d734M":true,"qwPRrrju":true}'
'type: unblockPlayerNotif\nunblockedUserId: iGwmpenv\nuserId: Oib3Z6Rm'
'type: unblockPlayerRequest\nid: fvmg5goX\nnamespace: 47WYkVNP\nunblockedUserId: 7kvYkxw2'
'type: unblockPlayerResponse\nid: EefNxUl2\ncode: 27\nnamespace: j7qBnqlM\nunblockedUserId: M5CNrl9f'
'type: unfriendNotif\nfriendId: axt93ZXe'
'type: unfriendRequest\nid: InW9J8li\nfriendId: S3Z8BVPD'
'type: unfriendResponse\nid: 1ZvwMqGX\ncode: 66'
'type: userBannedNotification'
'type: userMetricRequest\nid: NAD7XYRm'
'type: userMetricResponse\nid: 37xRFOlI\ncode: 14\nplayerCount: 51'
'type: userStatusNotif\nactivity: XPR1wjiw\navailability: 32\nlastSeenAt: 4Uvcza2R\nuserId: GY1VkIAM'
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
    'type: acceptFriendsNotif\nfriendId: 7Bd83Syd' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: tKbEps4Q\nfriendId: b6NsPPCO' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: 4k9OiqEy\ncode: 74' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: oTWg9X0c\nuserId: zwM6iaWy' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: KGRb6BPl\nblockUserId: DZrFEuoo\nnamespace: d8cLDqoN' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: Tf9Yr4YK\nblockUserId: mFvaf5Kr\ncode: 21\nnamespace: P9Ohz4ca' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: eWQoQAvV' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: pe7lF5un\nfriendId: tUiWlfEa' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: ln5harLx\ncode: 92' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: WLZEH3h4\ngameMode: 7uSznOkX\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: in6GyBAl\ncode: 26' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: 9T9X0B3C\nfrom: cjmYeEQo\npayload: gfJfRhUr\nsentAt: xEqcxDGS' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: t5YJkIaW\nuserId: 6jNV9Y9s' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: R4rAJx5Q' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: bIqXeQhM\nnamespace: pK749Y0f' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [Ib8knFfL,ADpjEcFP,B4GuaqPp]\ncustomAttribute: 46yXBa7W\ndeployment: bL17NQdt\ngameVersion: RSW6W77J\nimageVersion: srkII9rc\nip: QAz3LXFN\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: owFYir5P\nmatchId: kNsmbopo\nmessage: 1CND1ZRy\nnamespace: gxdusY8Y\npodName: kl03l9Hq\nport: 48\nports: {"0C5tBmNk":72,"4lZFtttm":99,"aFdZ9AF1":73}\nprotocol: PVB4TCNJ\nprovider: R4lHRrfH\nregion: V9gVchnX\nsessionId: UsaonEC2\nstatus: 4Gst5urV' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: KCsWIT3t' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: feCj1AxV\nuserId: cngEjsKp' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: kzXXR3tj' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: b6bhlVBq\nactivity: [XB1aZdYf,Wsz31y53,IYm93o5R]\navailability: [5,59,92]\ncode: 37\nfriendIds: [HVv6kMGk,BozsowWk,IRK5bXkI]\nlastSeenAt: [SFVSYBzy,LUprPcKs,9urzDCon]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: M5HQsVXa' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: s98QHZeJ\nattributes: {"BlpZHMFx":"Il8GXDo9","OASzyBvq":"jIFkMcJO","bXZF5TYd":"6TMmIUYs"}\ncode: 61' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: w4GsD6kt\nfriendId: qrRc6XPN' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: PmKh0avI\ncode: 23\nfriendshipStatus: XEwwSeXL' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: gxYQsQYk\nkey: ADy76leS' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: Iq384HvS\ncode: 4\nvalue: uqhqmjkV' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: 0rlSAfru' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: 5TfQeQtq\nchannelSlug: eRVYX9KH\ncode: 88' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: TWqXYRR8' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: XJrkU5EY\ncode: 7\nuserIds: [BhfoiGSd,yA7GJ2wA,Y6GiTJjE]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: zOVLccX3\nfriendId: 9LBsZR3J' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: oZb2sCTk\ncode: 10\nfriendIds: [WiUewP9h,8Bqu5H5q,Auay7MYh]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 5dizUA9M' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: bdv51YAH' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: oBYHENkr\ncode: 1\nfriendIds: [DE7x753v,xQasj28q,YCwyKb7X]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [4na4C4cl,TUbw1vya,9B0cYZGB]\nmatchId: jF2Z2Ubq\nmessage: a9fCchl9\npartyMember: [Qov9AwG5,R32tZ0uB,ntAbQ0lf]\nreadyDuration: 22\nstatus: c8Js0XHc' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: ftzP4RWz\nfrom: XCKatzHC\npayload: Th4735DC\nsentAt: 54\nto: rFJp8wkN\ntopic: QlHtJMYM' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: odU9tWz7' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: EyOEUIOO\ncode: 74' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: wRtPCxxJ\ncode: 69\nonlineFriendIds: [LAeF98Ge,iUi5Rf2q,UVdVVxGO]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: QpVH6z4x\nfrom: N04ZEZDg\npayload: WiaeGive\nreceivedAt: 50\nto: p3qzzFPd' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: Pztcjs86\nfrom: qnsRAqTA\npayload: 3ARXtJ0V\nreceivedAt: 73\nto: UZfbxEM1' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: eG11qAum\ncode: 57' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: V6OS2fpf' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: GekX7SZs\ncode: 88\ninvitationToken: TpzF0WG3\ninvitees: JhKuUM3F\nleaderId: Kj7CRLMQ\nmembers: ERe5eQYa\npartyId: UzfqzcnN' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"TulNpQS4":{},"ZVmWyvEb":{},"3jF1zWuq":{}}\ninvitees: [1pKzgGRE,9nuRMb0E,KX1KyGmO]\nleader: DZOdeOQv\nmembers: [ZfWZJHhq,eOtuEIcv,9vKyR4x2]\nnamespace: 0PP67PnQ\npartyId: IzBOTbnU\nupdatedAt: 66' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: 4A2egdLS\ninvitationToken: 8J4PjtYS\npartyId: FOusPVW6' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: IZB4JbI2' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: uSWhjj7u\ncode: 94\ncustomAttributes: {"C3CJCjJJ":{},"EtHUgb0v":{},"vfjkCHLs":{}}\ninvitationToken: k3rkcTXU\ninvitees: oAMPQTx4\nleaderId: uVH2KSHf\nmembers: tCbedOMP\npartyId: jeQyOT4B' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: wK5Vv3sd\ninviterId: GvIO1vcw' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: K9JIiZEp\nfriendId: gxAQHkpq' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: 3OF9GUSd\ncode: 72' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: ik9su2u6' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: 68sfKh20\ninvitationToken: FCl41ljp\npartyId: Zbqz6YHF' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: mLgSSEAr\ncode: 53\ninvitationToken: mwBSyPkZ\ninvitees: n7uIWdY1\nleaderId: 5s0l33WD\nmembers: xqIRSwXT\npartyId: 4kL84QMZ' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: mkrL77cP\npartyId: 7ZndgPne\nuserId: tSSwhf0W' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: tSgPgNRX\nmemberId: skUonlAZ' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: 0fTlnqqp\ncode: 68' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: RI2izOGs\nuserId: YhEKnuOD' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: MO6YHWwJ\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: JbrNULcH\ncode: 25' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: KI7foa1T\nnewLeaderUserId: ZOqKPfkV' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: ar2vfdSt\ncode: 48\ninvitationToken: NIadjUII\ninvitees: zpU24zVz\nleaderId: QRdY5vEX\nmembers: k7CdA28F\npartyId: QFBziS3p' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: qeXfMOrM\npartyId: zH7EyMTZ\nuserId: NpgJiX05' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: icORUgwT\ninvitationToken: Ifz0tw56\npartyId: 0389pjg9' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: cGhlP1ZH\ncode: 1\npartyId: hEv2vLMS' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: 9LraB7wT\nfriendId: rN97gz0a' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: c8bmt8E7\nchat: 570YLP30\ncode: 26\nfriendId: OllBpyj4' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: kzAoly95\nfrom: kUp3y7Ul\npayload: N7xYah6x\nreceivedAt: 11\nto: un3b4FfI' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: jsGcEn86\nfrom: TVAUA0MP\npayload: Jke3ZNpj\nreceivedAt: 62\nto: PPQEvwRx' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: DifoE7Sa\ncode: 34' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: 9W0PAi7Q' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: NW7ohwL0\nfriendId: LsGRBtrb' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: SlOfu2Vr\ncode: 94' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 78' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: Xu53iX8k' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: xTrWj4MD\nfriendId: RQNBXgao' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: q7cLXKrZ\ncode: 61' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: OGNtq4ZY\nchannelSlug: 79Rpo9GY\npayload: f9UmzW2N' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: Xr9JiqVO\ncode: 57' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: u4bmI9HA\nuserId: YShr8Mk2' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: OLbpmxOk\nmatchId: z6tF2Lbn' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: d6eSABmr\ncode: 33' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: uND7JL5K\nkey: Df4KZxZJ\nnamespace: 2rS0H0KG\nvalue: 5rt1a6YX' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: Rr891w9V\ncode: 38' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: D7lASphQ\nactivity: Be6WT7f6\navailability: 77' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: K4yiqoad\ncode: 60' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: 8htFOjOh' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: IZVDSVis\nmessage: fcNJG3Hy' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: GJwZxA9Z\nextraAttributes: 7DzZPhct\ngameMode: 0DYjbsRg\npartyAttributes: {"rdalarWk":{},"YvJCJKcb":{},"kWbtEST5":{}}\npriority: 35\ntempParty: lE3DR7Hg' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: sfYgmuE1\ncode: 2' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"6HezSJ6n":false,"q2kTwS4f":true,"matH93ja":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: Uh6t1KRc\nuserId: TnWPPj2F' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: olP4UHD1\nnamespace: hJ1O1tGi\nunblockedUserId: Xvxupp3B' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: R8C6JC6f\ncode: 84\nnamespace: 6MoBgzuK\nunblockedUserId: VmK27dbp' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: TvvZd9RE' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: SdhCRaeC\nfriendId: 2OBApohb' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: aO7nos9I\ncode: 49' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: inpB7uHI' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: TnsFv6mr\ncode: 43\nplayerCount: 9' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: cJgusqxG\navailability: 67\nlastSeenAt: amKHq9fw\nuserId: wVb3pJGg' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
