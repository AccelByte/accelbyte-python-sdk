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
'type: acceptFriendsNotif\nfriendId: AyA2Zd8i'
'type: acceptFriendsRequest\nid: sytn2rAz\nfriendId: Y60sfeZn'
'type: acceptFriendsResponse\nid: Y8qG94oG\ncode: 38'
'type: blockPlayerNotif\nblockedUserId: 0Jv9U2r7\nuserId: 4NO5X4x1'
'type: blockPlayerRequest\nid: Sr3En5Kv\nblockUserId: NuvjPJLx\nnamespace: BvXrIdon'
'type: blockPlayerResponse\nid: e25zAyq8\nblockUserId: viboeRIX\ncode: 18\nnamespace: EfpYCrpB'
'type: cancelFriendsNotif\nuserId: XAUS4Jxr'
'type: cancelFriendsRequest\nid: qb8FnUYL\nfriendId: z9Nd9hio'
'type: cancelFriendsResponse\nid: a7di1ir5\ncode: 39'
'type: cancelMatchmakingRequest\nid: MomAhIHt\ngameMode: VrEF9lQf\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: 19PnHkSn\ncode: 22'
'type: channelChatNotif\nchannelSlug: cGefknVr\nfrom: KLcM1cmQ\npayload: oYYXw1dU\nsentAt: kcLkI2vR'
'type: clientResetRequest\nnamespace: M4p1t8ch\nuserId: fJKUVXY3'
'type: connectNotif\nlobbySessionId: wqocVrSI'
'type: disconnectNotif\nconnectionId: oP5JgPea\nnamespace: j81xj0oM'
'type: dsNotif\nalternateIps: [YHpfj34d,RoGvoXre,uRuPKMvr]\ncustomAttribute: RDkFF5jU\ndeployment: zxwBxqBg\ngameVersion: lYyflMp7\nimageVersion: Z3kMPeFO\nip: jvqPHcrr\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: WyZsRdTt\nmatchId: BzV7AO87\nmessage: AW6AkdeZ\nnamespace: TR2lcEdp\npodName: 6tnzqcBy\nport: 29\nports: {"6N9fyU6K":65,"Yg39vvl8":60,"Rc6yh86n":47}\nprotocol: br0tKRsZ\nprovider: CIJs3m0B\nregion: kiDRkmWc\nsessionId: tpinGYDB\nstatus: xAtjyxZX'
'type: errorNotif\nmessage: nIXRxj7t'
'type: exitAllChannel\nnamespace: rtKKJkum\nuserId: dM4znWok'
'type: friendsStatusRequest\nid: Gfbhkn5i'
'type: friendsStatusResponse\nid: JPhEJiJ2\nactivity: [cu0ipSTR,WXgQquJr,basg7C41]\navailability: [29,43,45]\ncode: 8\nfriendIds: [IeWJ2wyW,SXRoYSqE,eqU9E8hv]\nlastSeenAt: [GzcfPj3E,rtoPspQH,6mXSYc59]'
'type: getAllSessionAttributeRequest\nid: PjyhfBVZ'
'type: getAllSessionAttributeResponse\nid: f7ijlaQ1\nattributes: {"6D6NsAs4":"cM6T9Tfo","Tb0rdfCQ":"JJU7Kdj6","7NEICw64":"PwpktdTd"}\ncode: 83'
'type: getFriendshipStatusRequest\nid: AGYk6XG7\nfriendId: LEweMEi6'
'type: getFriendshipStatusResponse\nid: OjwoECxP\ncode: 26\nfriendshipStatus: VjyAy3GN'
'type: getSessionAttributeRequest\nid: DYvV6WuY\nkey: uEMotyzl'
'type: getSessionAttributeResponse\nid: wyD2sRnJ\ncode: 47\nvalue: Kz2K3Y2z'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: 7ValCkdj'
'type: joinDefaultChannelResponse\nid: aVHVyte9\nchannelSlug: Ld0tqUrw\ncode: 74'
'type: listIncomingFriendsRequest\nid: 7hIcC9zY'
'type: listIncomingFriendsResponse\nid: nN3suaPH\ncode: 10\nuserIds: [pagngcnU,iFeYj1bG,DvobsPqB]'
'type: listOfFriendsRequest\nid: SO3vy1WP\nfriendId: drF43tkN'
'type: listOfFriendsResponse\nid: 35FRIv3t\ncode: 96\nfriendIds: [C86SdIsL,7CdPFFow,gwGCuAis]'
'type: listOnlineFriendsRequest\nid: hkEzw61a'
'type: listOutgoingFriendsRequest\nid: oSswAoBU'
'type: listOutgoingFriendsResponse\nid: pEv3Ig9X\ncode: 96\nfriendIds: [AUsrV3OX,dEUXFHwS,2GixR21n]'
'type: matchmakingNotif\ncounterPartyMember: [QcERbwlc,kMyIhuGc,9pPR1OMD]\nmatchId: qvyvRccG\nmessage: qB7vyjbS\npartyMember: [oaBbka9c,dL4xSWHs,IFH8HSzj]\nreadyDuration: 1\nstatus: j6ECiHmR'
'type: messageNotif\nid: 17nuWNod\nfrom: aXAoMV6J\npayload: NNENULx9\nsentAt: 72\nto: dp8koirB\ntopic: yh5X3XYG'
'type: offlineNotificationRequest\nid: WAjBpZrz'
'type: offlineNotificationResponse\nid: Z2nla0zu\ncode: 71'
'type: onlineFriends\nid: SMVwGM4L\ncode: 93\nonlineFriendIds: [LB3Ntqnz,2QWes98t,0WI7EJuA]'
'type: partyChatNotif\nid: 83H8SJHa\nfrom: 1d0svynj\npayload: O7JCmVXw\nreceivedAt: 83\nto: ujNwVDs4'
'type: partyChatRequest\nid: flhOUWPj\nfrom: gXthUPVw\npayload: nd9uJbpS\nreceivedAt: 70\nto: XCkVzfEs'
'type: partyChatResponse\nid: KgreUl85\ncode: 22'
'type: partyCreateRequest\nid: Rufd02ci'
'type: partyCreateResponse\nid: beImeBXu\ncode: 87\ninvitationToken: QSOgZ6la\ninvitees: 2dx9dHFT\nleaderId: 0LA5vxHH\nmembers: fbRA2rOG\npartyId: IAThKqBO'
'type: partyDataUpdateNotif\ncustomAttributes: {"HXayM5ha":{},"44wrDOBB":{},"M5uqm0S9":{}}\ninvitees: [GXmEoMXc,fuvbnmke,S1xi7OmS]\nleader: lso0sp0w\nmembers: [IL2x95xd,vpF3Wykl,iV3GJzh1]\nnamespace: DVm2LQWB\npartyId: w7F0M95K\nupdatedAt: 65'
'type: partyGetInvitedNotif\nfrom: 1yK5RsCO\ninvitationToken: D98EnRz6\npartyId: ADo3K7Tn'
'type: partyInfoRequest\nid: nyGnglgm'
'type: partyInfoResponse\nid: Vsdwx8iy\ncode: 27\ncustomAttributes: {"m4qaehe6":{},"cvZoLPLZ":{},"KHpj9u7P":{}}\ninvitationToken: nDEHCvhO\ninvitees: 4Ulakpw8\nleaderId: DkHWEazl\nmembers: dwVpJO8L\npartyId: eLxrzEK9'
'type: partyInviteNotif\ninviteeId: UWyViPC2\ninviterId: AysVEAz3'
'type: partyInviteRequest\nid: GNdaVmfN\nfriendId: 6xwOL0qQ'
'type: partyInviteResponse\nid: FjQ8efl1\ncode: 96'
'type: partyJoinNotif\nuserId: z8DAjxIU'
'type: partyJoinRequest\nid: hpP6Z7bY\ninvitationToken: 0Hnvza3l\npartyId: lStvpXOG'
'type: partyJoinResponse\nid: BFPcO0FU\ncode: 20\ninvitationToken: Ju7If5nn\ninvitees: M7QMDIXp\nleaderId: qZ31CdFa\nmembers: ivocWhtX\npartyId: 59iyWPwX'
'type: partyKickNotif\nleaderId: KYfdqs4E\npartyId: 0fenMonk\nuserId: VQG3eQoA'
'type: partyKickRequest\nid: TokB7UST\nmemberId: EevABPhH'
'type: partyKickResponse\nid: jGu1xDUq\ncode: 16'
'type: partyLeaveNotif\nleaderId: dTMWv808\nuserId: BT5JMxJa'
'type: partyLeaveRequest\nid: 9RTjvA3E\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: DdzBhqYq\ncode: 63'
'type: partyPromoteLeaderRequest\nid: 96V2ayyQ\nnewLeaderUserId: veQXXjOT'
'type: partyPromoteLeaderResponse\nid: Dz2NuWfU\ncode: 11\ninvitationToken: vB4EDGHc\ninvitees: loOhqvmX\nleaderId: ljS8bjMb\nmembers: k4QkqQt6\npartyId: wf0SHf0n'
'type: partyRejectNotif\nleaderId: T9B2G5Ic\npartyId: bQVEqif3\nuserId: 2kBBn3Td'
'type: partyRejectRequest\nid: dZdWMkF2\ninvitationToken: NnOG1pzl\npartyId: rcMltlNZ'
'type: partyRejectResponse\nid: 2OJDSqDX\ncode: 56\npartyId: YngrEBvP'
'type: personalChatHistoryRequest\nid: v7NO0M3p\nfriendId: D5WyhFP0'
'type: personalChatHistoryResponse\nid: mQ31uWeD\nchat: 8P79PkRM\ncode: 81\nfriendId: E7G4tD9K'
'type: personalChatNotif\nid: TFGBoS7s\nfrom: 2FSIqWuB\npayload: sTt9liwB\nreceivedAt: 57\nto: cvVGYjhb'
'type: personalChatRequest\nid: HGepQyC7\nfrom: KzQsTNFy\npayload: Glb7kqcx\nreceivedAt: 36\nto: 2J93pmXb'
'type: personalChatResponse\nid: Clt9VBbR\ncode: 38'
'type: rejectFriendsNotif\nuserId: NUFm2KGg'
'type: rejectFriendsRequest\nid: cRAXHzNF\nfriendId: qQBpiWTz'
'type: rejectFriendsResponse\nid: cSUJbLtC\ncode: 24'
'type: rematchmakingNotif\nbanDuration: 50'
'type: requestFriendsNotif\nfriendId: mgQTm0WX'
'type: requestFriendsRequest\nid: fiEURYv4\nfriendId: 0rl80P8s'
'type: requestFriendsResponse\nid: oXNmzp5f\ncode: 19'
'type: sendChannelChatRequest\nid: TELnf3PF\nchannelSlug: dWqRQpCf\npayload: H9kmVL9L'
'type: sendChannelChatResponse\nid: o1pgvDBa\ncode: 49'
'type: setReadyConsentNotif\nmatchId: sVfvvsiB\nuserId: vzkgIcAs'
'type: setReadyConsentRequest\nid: zRbkQKf7\nmatchId: 7qdZkUHE'
'type: setReadyConsentResponse\nid: WdMIDXkI\ncode: 88'
'type: setSessionAttributeRequest\nid: 40JnDmD3\nkey: NTBAsiTC\nnamespace: zliJsFGj\nvalue: kkgaL1D3'
'type: setSessionAttributeResponse\nid: NA0OO9O4\ncode: 39'
'type: setUserStatusRequest\nid: Xo1MlXth\nactivity: qBHVcRwc\navailability: 94'
'type: setUserStatusResponse\nid: sKASsX6g\ncode: 38'
'type: shutdownNotif\nmessage: sga72wn7'
'type: signalingP2PNotif\ndestinationId: svGWHO96\nmessage: RThrQE0R'
'type: startMatchmakingRequest\nid: ASewm46g\nextraAttributes: NlS3mpMh\ngameMode: vCq5T3vX\npartyAttributes: {"EEDr0m53":{},"QqwdgCyz":{},"LAe6kExE":{}}\npriority: 25\ntempParty: oEQc3pNk'
'type: startMatchmakingResponse\nid: a5qsxSdE\ncode: 23'
'type: systemComponentsStatus\ncomponents: {"NAMKXbQC":false,"5iJvxRv9":true,"577TgNTq":false}'
'type: unblockPlayerNotif\nunblockedUserId: GvmCLIFD\nuserId: oAzaWpQk'
'type: unblockPlayerRequest\nid: KH8QFUcO\nnamespace: v7JpzWTl\nunblockedUserId: KzX8AvRi'
'type: unblockPlayerResponse\nid: HCSi6h2q\ncode: 74\nnamespace: 0ZPMTxT3\nunblockedUserId: QVFyGjzu'
'type: unfriendNotif\nfriendId: kvov4edw'
'type: unfriendRequest\nid: QddKYTC5\nfriendId: Ys3PoUIb'
'type: unfriendResponse\nid: g3oGP6gc\ncode: 50'
'type: userBannedNotification'
'type: userMetricRequest\nid: MdTk1Xag'
'type: userMetricResponse\nid: RsqlsUTv\ncode: 95\nplayerCount: 52'
'type: userStatusNotif\nactivity: dyIBVhFm\navailability: 29\nlastSeenAt: SocfrHkP\nuserId: fTagZS4I'
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
    'type: acceptFriendsNotif\nfriendId: hs1vLAsu' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: u2sX4Pqi\nfriendId: xw66BF5X' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: keUK1SGZ\ncode: 0' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: NcUMNpXz\nuserId: ocWxvH9l' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: HMt7Ff7v\nblockUserId: 4dOdP0un\nnamespace: 4OPRQngN' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: hlKdSnDT\nblockUserId: 9ZzA5QpX\ncode: 42\nnamespace: ijsMML06' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: VB3ayJo9' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: YYDuFk8r\nfriendId: kiRavb3A' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: 6B5ekFuT\ncode: 2' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: AQErVkDL\ngameMode: Qg5uL0jd\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: X2nfswJm\ncode: 1' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: wZYM7ByL\nfrom: JhVOhXXk\npayload: jJbQAYqs\nsentAt: 9cWdKnI5' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: 8YIWDJOR\nuserId: FRopywYT' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: WiSyZtAI' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: 4V12dWiP\nnamespace: qTrPjcPI' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [gLHtWq7y,UthRgbtS,AvZqPBpM]\ncustomAttribute: 5VMhZJzW\ndeployment: qeydd9Vp\ngameVersion: fOBeTig1\nimageVersion: z0ZPrNEp\nip: PxxT8yUc\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: zINtfVPw\nmatchId: KcF1i9Oq\nmessage: bkRqqrP2\nnamespace: s4kjvkAj\npodName: Gvn3iwgV\nport: 19\nports: {"ClXLjyc3":47,"EpDNgeSu":4,"10ucQMYh":32}\nprotocol: vG3pPSaR\nprovider: zGCzYPWr\nregion: HxDKE9ZC\nsessionId: bYjYlKiD\nstatus: t6V0wybU' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: GC3YieFF' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: YEgtEF23\nuserId: HbtkXkX0' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: TPFy2EWB' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: QhJLViun\nactivity: [J8WQb2El,i869uzeH,wONJAGM9]\navailability: [94,1,13]\ncode: 73\nfriendIds: [OhWX2l0R,4RwJf6xs,d9aypWtW]\nlastSeenAt: [3VyB3lPI,Uauk28FL,H3YlUZm0]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: nI8US23u' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: J50XTPgu\nattributes: {"c8Hanq17":"8bgozFgr","gf4Y7Dxc":"ToqoKxms","U21h7Elb":"WiZBP4qO"}\ncode: 63' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: JLxH7zPe\nfriendId: kuibKrEU' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: xGYfJyfO\ncode: 1\nfriendshipStatus: B5W4HlMF' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: EXCrRR8Y\nkey: GOqkEdCq' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: bXq57NVD\ncode: 37\nvalue: QQSmujh1' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: BJW4pY0c' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: M3Dpyj0v\nchannelSlug: OOhZ9oTz\ncode: 57' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: ZIHPpyUM' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: lcL6Ydi3\ncode: 66\nuserIds: [S7AJd8Wl,7dV5QwQs,lysxsnNJ]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: TQRSjhLU\nfriendId: Ys1YSieb' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: 5OsWvey7\ncode: 22\nfriendIds: [AFXvcJFv,aKpyksej,yhJE4YRU]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: lyhdBzg2' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: 4cGMou5c' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: AFnq7f2l\ncode: 99\nfriendIds: [PY8B22d5,NF85wbq4,76gIdqA5]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [8QQwGEEj,Cc4CFsXv,DBMLDB9v]\nmatchId: Um9S2Fec\nmessage: FvGYMkvQ\npartyMember: [BqvKkaVi,mLHVnKub,NBD6nHYF]\nreadyDuration: 36\nstatus: GaRdG77i' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: p1cjcVOJ\nfrom: 1DWEsFhk\npayload: HWBugCIB\nsentAt: 10\nto: Ptr4kLXV\ntopic: uaL13Xx3' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: f3R2PdpL' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: ZxgImROO\ncode: 8' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: S1bjBStR\ncode: 52\nonlineFriendIds: [LoHD1r4W,IyxJSN4I,GbQZgypd]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: Kf2U2coJ\nfrom: CG54Am8n\npayload: D3sWfXNH\nreceivedAt: 38\nto: csCLrlGa' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: xMgZ1Tvk\nfrom: efymiLTn\npayload: e6OQRK7u\nreceivedAt: 31\nto: nctfdpVi' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: LLrzUbf9\ncode: 44' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: pNSwLhvl' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: pH7suily\ncode: 36\ninvitationToken: dUVljIfh\ninvitees: mcCBiFNl\nleaderId: Nd1jqb08\nmembers: T2vwWXYQ\npartyId: ZU9IwbK5' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"MoHAe56G":{},"r2LOGm8U":{},"7tj7etr9":{}}\ninvitees: [EDJWywcX,axj1Wx8S,RuaSKsZ4]\nleader: uR9ABtwa\nmembers: [OzzewoCR,apOh1zVd,MWVsjtS9]\nnamespace: HQGVbZhM\npartyId: ffnvHrcV\nupdatedAt: 86' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: hdsXS2sm\ninvitationToken: dGwdLLCA\npartyId: 8TqVoGo6' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: bVcDeZS2' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: btPDhMcL\ncode: 89\ncustomAttributes: {"iRus4qvz":{},"GBQ7s4m8":{},"nInOtmFB":{}}\ninvitationToken: c363wsVE\ninvitees: zPcaAxhh\nleaderId: la8rlLDX\nmembers: LDx1Ghcx\npartyId: kGfduenZ' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: ZGj4rBXi\ninviterId: dug1FrBc' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: brlmXmqV\nfriendId: r86jouZq' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: ZDZo9acz\ncode: 14' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: ZVZxYyIn' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: L5gdNaaT\ninvitationToken: QFPPd0VY\npartyId: LG81FUZ9' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: m1L7dDmS\ncode: 74\ninvitationToken: Vxm55ltl\ninvitees: gyPvpE26\nleaderId: XKuJ1lzf\nmembers: eSCqQ81s\npartyId: P7YOGx77' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: L0U2IPGf\npartyId: psxv4Szg\nuserId: i8EntlGZ' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: xuSlH1J3\nmemberId: tTmU4Hn6' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: 42KjWnLZ\ncode: 67' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 6jj4zKMM\nuserId: GAsq4Rtr' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: 1IE4yjxw\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: yVR3vQ5z\ncode: 32' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: XVCNCGy4\nnewLeaderUserId: mNPTKUDh' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: 0v21P48y\ncode: 41\ninvitationToken: Ir5Yvp4K\ninvitees: QZ4OcW3b\nleaderId: dtGuuk9K\nmembers: gQD4kKEK\npartyId: cvXD2tAc' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: 5nRaBOGU\npartyId: OtAI4Ims\nuserId: W7mUyZ0r' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: AxauxtDV\ninvitationToken: RC7FN5Dx\npartyId: 4DdNV1zM' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: JNkU7LPq\ncode: 55\npartyId: 7hLyD25c' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: mgCdM6JW\nfriendId: LOa7i4qK' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: PowOBzUn\nchat: bXkt31Ro\ncode: 83\nfriendId: ijVmqiDK' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: vCPTmBFH\nfrom: KD3IcEjc\npayload: y2hMb1EL\nreceivedAt: 80\nto: 2uzZryvc' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: N8T7Y4cp\nfrom: mgsTaomU\npayload: igR7s3jE\nreceivedAt: 68\nto: Bl2XCumo' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: e4zW3OJ2\ncode: 18' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: MBT668yr' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: JQou6Okx\nfriendId: zHmaCPA8' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: utAC5UYk\ncode: 15' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 47' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: UAbs5PLK' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: SuLvQKRH\nfriendId: qP31iRPb' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: S8xD6cR0\ncode: 60' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: 3Tql8VJw\nchannelSlug: FnySEeAF\npayload: V1194JpX' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: IyxIVely\ncode: 94' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: LuiinI6E\nuserId: m0c7tZ9q' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: hMuqtg1t\nmatchId: BC3Bxkmf' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: KnKn5wFy\ncode: 22' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: MPNvaUPu\nkey: 61yq6WQx\nnamespace: 8l2FXTtR\nvalue: KhhXreUA' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: pdtkrSAA\ncode: 44' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: L92eFKUb\nactivity: 6fTCowOz\navailability: 75' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: RaQIY8j8\ncode: 75' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: f2EW7fU2' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: FoJOcDzG\nmessage: t990jQ5Z' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: JoOiJVKI\nextraAttributes: bQ3nfjnZ\ngameMode: 7kBWNlvT\npartyAttributes: {"gVYisUzN":{},"daDM8aWm":{},"YvfX3ABc":{}}\npriority: 70\ntempParty: m8XvCsiE' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: dSUWW9Vx\ncode: 41' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"lelmLr53":true,"pLxx2C9v":false,"1WwIeSMQ":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: mybCkzLW\nuserId: DJnMTlbF' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: MEzP0SIF\nnamespace: 6MjAkVsI\nunblockedUserId: a6AupniM' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: U2sNTIBe\ncode: 56\nnamespace: QShg15bz\nunblockedUserId: qkcpPwpC' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: qF9qqeaw' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: yrbz4HYI\nfriendId: 9p22VwMR' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: qHf4xmJo\ncode: 27' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: g4Uezu7d' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: iCqTApWh\ncode: 22\nplayerCount: 14' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: UkADkHhY\navailability: 89\nlastSeenAt: lPf3Ulm0\nuserId: gnaxlc9Q' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
