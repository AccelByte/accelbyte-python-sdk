#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-ws-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
PIPE_FILE='file.pipe'

MODELS_COUNT=103

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

delete_file() {
    [ ! -e $1 ] || rm $1
}

delete_file $PIPE_FILE
MKFIFO $PIPE_FILE

#echo 'TAP version 13'
#echo "1..$MODELS_COUNT"

$PYTHON -m $MODULE enter-websocket-mode \
    --compare_with_last_message \
    --exit_on_error \
    --uri_prefix 'ws://' \
    < $PIPE_FILE &

sleep 1

#- 1 AcceptFriendsNotif
echo 'type: acceptFriendsNotif\nfriendId: FtBxyZcD' >> $PIPE_FILE

#- 2 AcceptFriendsRequest
echo 'type: acceptFriendsRequest\nid: Ju8vMf0I\nfriendId: XBpGlsQu' >> $PIPE_FILE

#- 3 AcceptFriendsResponse
echo 'type: acceptFriendsResponse\nid: DcV2zXnT\ncode: sJkTrd8I' >> $PIPE_FILE

#- 4 BlockPlayerNotif
echo 'type: blockPlayerNotif\nblockedUserId: KjXY1bPq\nuserId: amiBxx9C' >> $PIPE_FILE

#- 5 BlockPlayerRequest
echo 'type: blockPlayerRequest\nid: kItqRzHU\nblockUserId: s18EY84e\nnamespace: 1oh570KQ' >> $PIPE_FILE

#- 6 BlockPlayerResponse
echo 'type: blockPlayerResponse\nid: 3Ynozp1C\nblockUserId: BVaewc72\ncode: krSha68n\nnamespace: 2KmIQTuB' >> $PIPE_FILE

#- 7 CancelFriendsNotif
echo 'type: cancelFriendsNotif\nuserId: dNEUsxFb' >> $PIPE_FILE

#- 8 CancelFriendsRequest
echo 'type: cancelFriendsRequest\nid: JZaMSxEC\nfriendId: 8CJ17M7D' >> $PIPE_FILE

#- 9 CancelFriendsResponse
echo 'type: cancelFriendsResponse\nid: rORoeNHS\ncode: bZbygyoa' >> $PIPE_FILE

#- 10 CancelMatchmakingRequest
echo 'type: cancelMatchmakingRequest\nid: 9qqJbnQs\ngameMode: b8Rh3kgs\nisTempParty: False' >> $PIPE_FILE

#- 11 CancelMatchmakingResponse
echo 'type: cancelMatchmakingResponse\nid: m3yvASUo\ncode: BgiVpP8C' >> $PIPE_FILE

#- 12 ChannelChatNotif
echo 'type: channelChatNotif\nchannelSlug: xdxxFqmA\nfrom: GTJ8IEda\npayload: gEtp4w29\nsentAt: KOu9c19R' >> $PIPE_FILE

#- 13 ClientResetRequest
echo 'type: clientResetRequest\nnamespace: 6XDqWHkk\nuserId: P8npLEKM' >> $PIPE_FILE

#- 14 ConnectNotif
echo 'type: connectNotif\nlobbySessionId: fjiX7jpk' >> $PIPE_FILE

#- 15 DisconnectNotif
echo 'type: disconnectNotif\nconnectionId: VZk3IaQY\nnamespace: EmqGodOE' >> $PIPE_FILE

#- 16 DsNotif
echo 'type: dsNotif\nalternateIps: [Gt9gPOj0]\ncustomAttribute: c6i0JkvI\ndeployment: as73ucYn\ngameVersion: FAJ3DK5T\nimageVersion: 4Eogg0Y3\nip: 9UoYlpv5\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: gtsDhUTD\nmatchId: UscbQDjb\nmessage: TQuPMz2P\nnamespace: TRlkyU89\npodName: ZPOw6zPF\nport: 71\nports: {"42cwmzBB":88}\nprotocol: MNcoAAOj\nprovider: KNjfcYHm\nregion: 093aYgBU\nsessionId: 1sqjyK0X\nstatus: H45PaRSO' >> $PIPE_FILE

#- 17 ErrorNotif
echo 'type: errorNotif\nmessage: FQBtu23R' >> $PIPE_FILE

#- 18 ExitAllChannel
echo 'type: exitAllChannel\nnamespace: EZ8hRVX7\nuserId: LGOvDdYi' >> $PIPE_FILE

#- 19 FriendsStatusRequest
echo 'type: friendsStatusRequest\nid: QS9i7mV1' >> $PIPE_FILE

#- 20 FriendsStatusResponse
echo 'type: friendsStatusResponse\nid: QWEXL6LF\nactivity: [C91pjG9g]\navailability: [31]\ncode: xL6ycTQd\nfriendIds: [vln2LAuS]\nlastSeenAt: [E1YHo9m1]' >> $PIPE_FILE

#- 21 GetAllSessionAttributeRequest
echo 'type: getAllSessionAttributeRequest\nid: 26ZWc8hH' >> $PIPE_FILE

#- 22 GetAllSessionAttributeResponse
echo 'type: getAllSessionAttributeResponse\nid: 8kU9dBBp\nattributes: {"tWvbNYqg":"UqslArFP"}\ncode: iHUIvaCv' >> $PIPE_FILE

#- 23 GetFriendshipStatusRequest
echo 'type: getFriendshipStatusRequest\nid: Exrkxoot\nfriendId: dsJLhsVy' >> $PIPE_FILE

#- 24 GetFriendshipStatusResponse
echo 'type: getFriendshipStatusResponse\nid: 7Ds7YSfE\ncode: 0B7WOfer\nfriendshipStatus: cZdpMci3' >> $PIPE_FILE

#- 25 GetSessionAttributeRequest
echo 'type: getSessionAttributeRequest\nid: xaI3uzLt\nkey: eMbFAlt4' >> $PIPE_FILE

#- 26 GetSessionAttributeResponse
echo 'type: getSessionAttributeResponse\nid: BA5ltAOX\ncode: hr7HmOYi\nvalue: mlG6eh1d' >> $PIPE_FILE

#- 27 Heartbeat
echo 'type: heartbeat' >> $PIPE_FILE

#- 28 JoinDefaultChannelRequest
echo 'type: joinDefaultChannelRequest\nid: TdoTFpBI' >> $PIPE_FILE

#- 29 JoinDefaultChannelResponse
echo 'type: joinDefaultChannelResponse\nid: 9vD8ldz7\nchannelSlug: cuC1dQY9\ncode: 3OJnJ6Te' >> $PIPE_FILE

#- 30 ListIncomingFriendsRequest
echo 'type: listIncomingFriendsRequest\nid: Hu8AD79k' >> $PIPE_FILE

#- 31 ListIncomingFriendsResponse
echo 'type: listIncomingFriendsResponse\nid: 0q1pHyhh\ncode: dWunvizU\nuserIds: [ERoGgdry]' >> $PIPE_FILE

#- 32 ListOfFriendsRequest
echo 'type: listOfFriendsRequest\nid: dP2l7DNS\nfriendId: sMizBGSR' >> $PIPE_FILE

#- 33 ListOfFriendsResponse
echo 'type: listOfFriendsResponse\nid: ddOGTMlJ\ncode: Z8Aq0XiP\nfriendIds: [LQXSe07Z]' >> $PIPE_FILE

#- 34 ListOnlineFriendsRequest
echo 'type: listOnlineFriendsRequest\nid: jBwj9HJH' >> $PIPE_FILE

#- 35 ListOutgoingFriendsRequest
echo 'type: listOutgoingFriendsRequest\nid: QKseEdSX' >> $PIPE_FILE

#- 36 ListOutgoingFriendsResponse
echo 'type: listOutgoingFriendsResponse\nid: Sl9MLH0N\ncode: RDSvguau\nfriendIds: [w1xT7eMw]' >> $PIPE_FILE

#- 37 MatchmakingNotif
echo 'type: matchmakingNotif\ncounterPartyMember: [nTJ2ulNz]\nmatchId: BvwJaQa5\nmessage: 47JllvA8\npartyMember: [RWSpabUt]\nreadyDuration: 47\nstatus: k6QxyWhf' >> $PIPE_FILE

#- 38 MessageNotif
echo 'type: messageNotif\nid: 8oWUqvPC\nfrom: qoWfJw2o\npayload: Z2HzT7NX\nsentAt: 25\nto: WDlXsuNI\ntopic: dQJR5lsN' >> $PIPE_FILE

#- 39 OfflineNotificationRequest
echo 'type: offlineNotificationRequest\nid: OlvkfwaS' >> $PIPE_FILE

#- 40 OfflineNotificationResponse
echo 'type: offlineNotificationResponse\nid: oxuVTekJ\ncode: bnsuLCgT' >> $PIPE_FILE

#- 41 OnlineFriends
echo 'type: onlineFriends\nid: pH0Dvipl\ncode: gvg6h5HI\nonlineFriendIds: [Ek4vj3LD]' >> $PIPE_FILE

#- 42 PartyChatNotif
echo 'type: partyChatNotif\nid: UZDpxlHa\nfrom: p4yqDt8Q\npayload: sinGcjrk\nreceivedAt: 25\nto: RMttgjDS' >> $PIPE_FILE

#- 43 PartyChatRequest
echo 'type: partyChatRequest\nid: Udg7p9PG\nfrom: aIVBmft3\npayload: mY2H5kX4\nreceivedAt: 77\nto: sisSX28n' >> $PIPE_FILE

#- 44 PartyChatResponse
echo 'type: partyChatResponse\nid: ou5xtvd2\ncode: ARxWRpv5' >> $PIPE_FILE

#- 45 PartyCreateRequest
echo 'type: partyCreateRequest\nid: 8OUfCt8U' >> $PIPE_FILE

#- 46 PartyCreateResponse
echo 'type: partyCreateResponse\nid: 6HsTtX8P\ncode: JC5flNyj\ninvitationToken: 3llnaaS9\ninvitees: lqyygPcf\nleaderId: kJIxfQZz\nmembers: a8kNVbDx\npartyId: VMq7HJk0' >> $PIPE_FILE

#- 47 PartyDataUpdateNotif
echo 'type: partyDataUpdateNotif\ncustomAttributes: {"F89xAc3Y":{}}\ninvitees: [VfaENtrl]\nleader: 0pTKZTXq\nmembers: [zHuBMYQS]\nnamespace: A2jz1ZOp\npartyId: dOjSyMdd\nupdatedAt: 55' >> $PIPE_FILE

#- 48 PartyGetInvitedNotif
echo 'type: partyGetInvitedNotif\nfrom: 41JuMf7R\ninvitationToken: UyBHRj8I\npartyId: iRimRllH' >> $PIPE_FILE

#- 49 PartyInfoRequest
echo 'type: partyInfoRequest\nid: T6Dc40vF' >> $PIPE_FILE

#- 50 PartyInfoResponse
echo 'type: partyInfoResponse\nid: 55gOeqQI\ncode: FA6gpU7E\ncustomAttributes: {"W3x1dCpm":{}}\ninvitationToken: qcJVKmBM\ninvitees: 1J1IbuTr\nleaderId: rkbmuT1w\nmembers: hOqmEnDX\npartyId: IWrBPlSa' >> $PIPE_FILE

#- 51 PartyInviteNotif
echo 'type: partyInviteNotif\ninviteeId: y46mv71B\ninviterId: AZAOjtFJ' >> $PIPE_FILE

#- 52 PartyInviteRequest
echo 'type: partyInviteRequest\nid: 7TZHWDdC\nfriendId: 2vmTj7tT' >> $PIPE_FILE

#- 53 PartyInviteResponse
echo 'type: partyInviteResponse\nid: wPHcyFAd\ncode: kIsZoArW' >> $PIPE_FILE

#- 54 PartyJoinNotif
echo 'type: partyJoinNotif\nuserId: AtYciLIg' >> $PIPE_FILE

#- 55 PartyJoinRequest
echo 'type: partyJoinRequest\nid: RwFRr0gw\ninvitationToken: B9tz3vp9\npartyId: 9XVlV8rK' >> $PIPE_FILE

#- 56 PartyJoinResponse
echo 'type: partyJoinResponse\nid: ip1tw3L7\ncode: 3tE6n0sm\ninvitationToken: cUd9pqtv\ninvitees: 6JfPZwcC\nleaderId: VOXcVa80\nmembers: TmCwtD2l\npartyId: AH01o6Nd' >> $PIPE_FILE

#- 57 PartyKickNotif
echo 'type: partyKickNotif\nleaderId: cBIgzrDy\npartyId: WpFBYGmm\nuserId: BawMyoKy' >> $PIPE_FILE

#- 58 PartyKickRequest
echo 'type: partyKickRequest\nid: NpdAasm8\nmemberId: xwUfzOlQ' >> $PIPE_FILE

#- 59 PartyKickResponse
echo 'type: partyKickResponse\nid: XJ7uOTzN\ncode: iZY4NbOQ' >> $PIPE_FILE

#- 60 PartyLeaveNotif
echo 'type: partyLeaveNotif\nleaderId: Mvuq2tNl\nuserId: 4CX4IjiK' >> $PIPE_FILE

#- 61 PartyLeaveRequest
echo 'type: partyLeaveRequest\nid: 4DEUJRVK\nignoreUserRegistry: False' >> $PIPE_FILE

#- 62 PartyLeaveResponse
echo 'type: partyLeaveResponse\nid: b0RH8vS1\ncode: 9Eb0R1XR' >> $PIPE_FILE

#- 63 PartyPromoteLeaderRequest
echo 'type: partyPromoteLeaderRequest\nid: smeOlngr\nnewLeaderUserId: dTXCzaPB' >> $PIPE_FILE

#- 64 PartyPromoteLeaderResponse
echo 'type: partyPromoteLeaderResponse\nid: cyhloVS3\ncode: tkZMio4w\ninvitationToken: rYp8QtcE\ninvitees: mCEVc75U\nleaderId: feypWjDN\nmembers: hzCL5sWS\npartyId: 2qwO763i' >> $PIPE_FILE

#- 65 PartyRejectNotif
echo 'type: partyRejectNotif\nleaderId: EklkzLm8\npartyId: 8LpLuYRO\nuserId: 3C55yHpw' >> $PIPE_FILE

#- 66 PartyRejectRequest
echo 'type: partyRejectRequest\nid: K2JaqenD\ninvitationToken: Gn7a2NUp\npartyId: lWiLjq06' >> $PIPE_FILE

#- 67 PartyRejectResponse
echo 'type: partyRejectResponse\nid: fkpaXtwY\ncode: n6a0rW8E\npartyId: ZJaQ4Wbw' >> $PIPE_FILE

#- 68 PersonalChatHistoryRequest
echo 'type: personalChatHistoryRequest\nid: EurH8elo\nfriendId: NmsFYetj' >> $PIPE_FILE

#- 69 PersonalChatHistoryResponse
echo 'type: personalChatHistoryResponse\nid: iQl05g7c\nchat: JzNKtRUa\ncode: Tz1ETdsm\nfriendId: wzjkkn9o' >> $PIPE_FILE

#- 70 PersonalChatNotif
echo 'type: personalChatNotif\nid: lo6DMNpP\nfrom: O3ZMb6Oj\npayload: 2qMrTQ1U\nreceivedAt: 31\nto: jfU6wJhy' >> $PIPE_FILE

#- 71 PersonalChatRequest
echo 'type: personalChatRequest\nid: S79527EZ\nfrom: 1jOVkkUl\npayload: 25Ia8uCe\nreceivedAt: 62\nto: lLtEVpDA' >> $PIPE_FILE

#- 72 PersonalChatResponse
echo 'type: personalChatResponse\nid: 4lq0pDE5\ncode: EbA82jy7' >> $PIPE_FILE

#- 73 RejectFriendsNotif
echo 'type: rejectFriendsNotif\nuserId: xRwh5b45' >> $PIPE_FILE

#- 74 RejectFriendsRequest
echo 'type: rejectFriendsRequest\nid: Ss3UOpAw\nfriendId: ebpcM7Sc' >> $PIPE_FILE

#- 75 RejectFriendsResponse
echo 'type: rejectFriendsResponse\nid: PcCxdbum\ncode: Ip9rRtn1' >> $PIPE_FILE

#- 76 RematchmakingNotif
echo 'type: rematchmakingNotif\nbanDuration: 9' >> $PIPE_FILE

#- 77 RequestFriendsNotif
echo 'type: requestFriendsNotif\nfriendId: YgOdEBWR' >> $PIPE_FILE

#- 78 RequestFriendsRequest
echo 'type: requestFriendsRequest\nid: 8icH4081\nfriendId: QiW3KFfU' >> $PIPE_FILE

#- 79 RequestFriendsResponse
echo 'type: requestFriendsResponse\nid: Lg4RYuEb\ncode: gRB1GyLf' >> $PIPE_FILE

#- 80 SendChannelChatRequest
echo 'type: sendChannelChatRequest\nid: vsPwOr0B\nchannelSlug: gUDEcJyI\npayload: mV5iFvfw' >> $PIPE_FILE

#- 81 SendChannelChatResponse
echo 'type: sendChannelChatResponse\nid: oLyLeUGm\ncode: FjTSmIEq' >> $PIPE_FILE

#- 82 SetReadyConsentNotif
echo 'type: setReadyConsentNotif\nmatchId: omGX9sXT\nuserId: Z0v8pqLf' >> $PIPE_FILE

#- 83 SetReadyConsentRequest
echo 'type: setReadyConsentRequest\nid: c5SwGnRe\nmatchId: UULDX4QU' >> $PIPE_FILE

#- 84 SetReadyConsentResponse
echo 'type: setReadyConsentResponse\nid: ZnyUtRvW\ncode: Ibb5nh68' >> $PIPE_FILE

#- 85 SetSessionAttributeRequest
echo 'type: setSessionAttributeRequest\nid: 9hNBSFTt\nkey: FrOmjkFr\nnamespace: FVA8t0xF\nvalue: 34Xpt6Zl' >> $PIPE_FILE

#- 86 SetSessionAttributeResponse
echo 'type: setSessionAttributeResponse\nid: a0nI2oo7\ncode: TTic0kr2' >> $PIPE_FILE

#- 87 SetUserStatusRequest
echo 'type: setUserStatusRequest\nid: CvIq3aHV\nactivity: UHCJK5sp\navailability: 0' >> $PIPE_FILE

#- 88 SetUserStatusResponse
echo 'type: setUserStatusResponse\nid: HY83bGj0\ncode: YIlewLRu' >> $PIPE_FILE

#- 89 ShutdownNotif
echo 'type: shutdownNotif\nmessage: HTeeWXlI' >> $PIPE_FILE

#- 90 SignalingP2PNotif
echo 'type: signalingP2PNotif\ndestinationId: cRidqctD\nmessage: pygY0ax4' >> $PIPE_FILE

#- 91 StartMatchmakingRequest
echo 'type: startMatchmakingRequest\nid: hWIwHWTg\nextraAttributes: 76ED4MMO\ngameMode: 9Tw2JH0q\npartyAttributes: {"zJFRYw6t":{}}\npriority: 68\ntempParty: KZLO6V4O' >> $PIPE_FILE

#- 92 StartMatchmakingResponse
echo 'type: startMatchmakingResponse\nid: dgdpP7RT\ncode: de46QmCi' >> $PIPE_FILE

#- 93 SystemComponentsStatus
echo 'type: systemComponentsStatus\ncomponents: {"C587lmUm":true}' >> $PIPE_FILE

#- 94 UnblockPlayerNotif
echo 'type: unblockPlayerNotif\nunblockedUserId: ziPZBnpO\nuserId: fkllxfq0' >> $PIPE_FILE

#- 95 UnblockPlayerRequest
echo 'type: unblockPlayerRequest\nid: NsrSjw5H\nnamespace: og0blM1d\nunblockedUserId: 5MStYGcz' >> $PIPE_FILE

#- 96 UnblockPlayerResponse
echo 'type: unblockPlayerResponse\nid: EsE3yzIs\ncode: LINlEC0O\nnamespace: UP0NjluO\nunblockedUserId: rGZTzsLW' >> $PIPE_FILE

#- 97 UnfriendNotif
echo 'type: unfriendNotif\nfriendId: 7Fjfs9nI' >> $PIPE_FILE

#- 98 UnfriendRequest
echo 'type: unfriendRequest\nid: anjKHbXf\nfriendId: kcZ38fUE' >> $PIPE_FILE

#- 99 UnfriendResponse
echo 'type: unfriendResponse\nid: 0UXcRyHi\ncode: k1zxdzxg' >> $PIPE_FILE

#- 100 UserBannedNotification
echo 'type: userBannedNotification' >> $PIPE_FILE

#- 101 UserMetricRequest
echo 'type: userMetricRequest\nid: 3u8BzVWu' >> $PIPE_FILE

#- 102 UserMetricResponse
echo 'type: userMetricResponse\nid: gcpvGrEb\ncode: 1tOmhUtC\nplayerCount: 4' >> $PIPE_FILE

#- 103 UserStatusNotif
echo 'type: userStatusNotif\nactivity: ZUDExH1t\navailability: 0\nlastSeenAt: yOGXIHzM\nuserId: RjMCtOJs' >> $PIPE_FILE

echo ':q' >> $PIPE_FILE

sleep 1

delete_file $PIPE_FILE

exit $FAILED_COUNT