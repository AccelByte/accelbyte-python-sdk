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
echo 'type: acceptFriendsResponse\nid: JkTrd8ID\ncode: 36' >> $PIPE_FILE

#- 4 BlockPlayerNotif
echo 'type: blockPlayerNotif\nblockedUserId: cV2zXnTK\nuserId: jXY1bPqa' >> $PIPE_FILE

#- 5 BlockPlayerRequest
echo 'type: blockPlayerRequest\nid: 18EY84ek\nblockUserId: miBxx9Cs\nnamespace: ItqRzHU1' >> $PIPE_FILE

#- 6 BlockPlayerResponse
echo 'type: blockPlayerResponse\nid: aewc72kr\nblockUserId: oh570KQB\ncode: 95\nnamespace: Sha68n3Y' >> $PIPE_FILE

#- 7 CancelFriendsNotif
echo 'type: cancelFriendsNotif\nuserId: nozp1C2K' >> $PIPE_FILE

#- 8 CancelFriendsRequest
echo 'type: cancelFriendsRequest\nid: EUsxFb8C\nfriendId: mIQTuBdN' >> $PIPE_FILE

#- 9 CancelFriendsResponse
echo 'type: cancelFriendsResponse\nid: 17M7DJZa\ncode: 70' >> $PIPE_FILE

#- 10 CancelMatchmakingRequest
echo 'type: cancelMatchmakingRequest\nid: ygyoarOR\ngameMode: MSxECbZb\nisTempParty: False' >> $PIPE_FILE

#- 11 CancelMatchmakingResponse
echo 'type: cancelMatchmakingResponse\nid: NHSb8Rh3\ncode: 8' >> $PIPE_FILE

#- 12 ChannelChatNotif
echo 'type: channelChatNotif\nchannelSlug: kgs9qqJb\nfrom: nQsoBgiV\npayload: pP8Cm3yv\nsentAt: ASUoxdxx' >> $PIPE_FILE

#- 13 ClientResetRequest
echo 'type: clientResetRequest\nnamespace: FqmAGTJ8\nuserId: IEdagEtp' >> $PIPE_FILE

#- 14 ConnectNotif
echo 'type: connectNotif\nlobbySessionId: 4w29KOu9' >> $PIPE_FILE

#- 15 DisconnectNotif
echo 'type: disconnectNotif\nconnectionId: c19R6XDq\nnamespace: WHkkP8np' >> $PIPE_FILE

#- 16 DsNotif
echo 'type: dsNotif\nalternateIps: [LEKMfjiX]\ncustomAttribute: 7jpkVZk3\ndeployment: IaQYEmqG\ngameVersion: odOEGt9g\nimageVersion: POj0c6i0\nip: JkvIas73\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: YnFAJ3DK\nmatchId: 5T4Eogg0\nmessage: Y39UoYlp\nnamespace: v5bVAgts\npodName: DhUTDUsc\nport: 2\nports: {"QDjbTQuP":76}\nprotocol: z2PTRlky\nprovider: U89ZPOw6\nregion: zPFJ42cw\nsessionId: mzBBSMNc\nstatus: oAAOjKNj' >> $PIPE_FILE

#- 17 ErrorNotif
echo 'type: errorNotif\nmessage: fcYHm093' >> $PIPE_FILE

#- 18 ExitAllChannel
echo 'type: exitAllChannel\nnamespace: aYgBU1sq\nuserId: jyK0XH45' >> $PIPE_FILE

#- 19 FriendsStatusRequest
echo 'type: friendsStatusRequest\nid: PaRSOFQB' >> $PIPE_FILE

#- 20 FriendsStatusResponse
echo 'type: friendsStatusResponse\nid: dYiQS9i7\nactivity: [tu23REZ8]\navailability: [15]\ncode: 87\nfriendIds: [VX7LGOvD]\nlastSeenAt: [mV1C91pj]' >> $PIPE_FILE

#- 21 GetAllSessionAttributeRequest
echo 'type: getAllSessionAttributeRequest\nid: G9gpxL6y' >> $PIPE_FILE

#- 22 GetAllSessionAttributeResponse
echo 'type: getAllSessionAttributeResponse\nid: 6LFE1YHo\nattributes: {"cTQdvln2":"LAuSQWEX"}\ncode: 74' >> $PIPE_FILE

#- 23 GetFriendshipStatusRequest
echo 'type: getFriendshipStatusRequest\nid: 8hHtWvbN\nfriendId: 9m126ZWc' >> $PIPE_FILE

#- 24 GetFriendshipStatusResponse
echo 'type: getFriendshipStatusResponse\nid: PiHUIvaC\ncode: 33\nfriendshipStatus: gUqslArF' >> $PIPE_FILE

#- 25 GetSessionAttributeRequest
echo 'type: getSessionAttributeRequest\nid: v8kU9dBB\nkey: pdsJLhsV' >> $PIPE_FILE

#- 26 GetSessionAttributeResponse
echo 'type: getSessionAttributeResponse\nid: Exrkxoot\ncode: 49\nvalue: 0B7WOfer' >> $PIPE_FILE

#- 27 Heartbeat
echo 'type: heartbeat' >> $PIPE_FILE

#- 28 JoinDefaultChannelRequest
echo 'type: joinDefaultChannelRequest\nid: cZdpMci3' >> $PIPE_FILE

#- 29 JoinDefaultChannelResponse
echo 'type: joinDefaultChannelResponse\nid: aI3uzLte\nchannelSlug: 7Ds7YSfE\ncode: 46' >> $PIPE_FILE

#- 30 ListIncomingFriendsRequest
echo 'type: listIncomingFriendsRequest\nid: MbFAlt4h' >> $PIPE_FILE

#- 31 ListIncomingFriendsResponse
echo 'type: listIncomingFriendsResponse\nid: 7HmOYiBA\ncode: 35\nuserIds: [5ltAOXml]' >> $PIPE_FILE

#- 32 ListOfFriendsRequest
echo 'type: listOfFriendsRequest\nid: oTFpBIcu\nfriendId: G6eh1dTd' >> $PIPE_FILE

#- 33 ListOfFriendsResponse
echo 'type: listOfFriendsResponse\nid: nJ6Te9vD\ncode: 57\nfriendIds: [1dQY93OJ]' >> $PIPE_FILE

#- 34 ListOnlineFriendsRequest
echo 'type: listOnlineFriendsRequest\nid: 8ldz7Hu8' >> $PIPE_FILE

#- 35 ListOutgoingFriendsRequest
echo 'type: listOutgoingFriendsRequest\nid: AD79kdWu' >> $PIPE_FILE

#- 36 ListOutgoingFriendsResponse
echo 'type: listOutgoingFriendsResponse\nid: HyhhERoG\ncode: 26\nfriendIds: [vizU0q1p]' >> $PIPE_FILE

#- 37 MatchmakingNotif
echo 'type: matchmakingNotif\ncounterPartyMember: [gdrysMiz]\nmatchId: BGSRdP2l\nmessage: 7DNSZ8Aq\npartyMember: [0XiPLQXS]\nreadyDuration: 9\nstatus: 07ZddOGT' >> $PIPE_FILE

#- 38 MessageNotif
echo 'type: messageNotif\nid: HJHQKseE\nfrom: MlJjBwj9\npayload: dSXRDSvg\nsentAt: 41\nto: auw1xT7e\ntopic: MwSl9MLH' >> $PIPE_FILE

#- 39 OfflineNotificationRequest
echo 'type: offlineNotificationRequest\nid: 0NnTJ2ul' >> $PIPE_FILE

#- 40 OfflineNotificationResponse
echo 'type: offlineNotificationResponse\nid: zBvwJaQa\ncode: 79' >> $PIPE_FILE

#- 41 OnlineFriends
echo 'type: onlineFriends\nid: llvA8RWS\ncode: 71\nonlineFriendIds: [pabUt7xk]' >> $PIPE_FILE

#- 42 PartyChatNotif
echo 'type: partyChatNotif\nid: oWfJw2o8\nfrom: 6QxyWhfq\npayload: oWUqvPCZ\nreceivedAt: 66\nto: zT7NXmWD' >> $PIPE_FILE

#- 43 PartyChatRequest
echo 'type: partyChatRequest\nid: JR5lsNOl\nfrom: lXsuNIdQ\npayload: vkfwaSbn\nreceivedAt: 37\nto: uLCgToxu' >> $PIPE_FILE

#- 44 PartyChatResponse
echo 'type: partyChatResponse\nid: TekJgvg6\ncode: 94' >> $PIPE_FILE

#- 45 PartyCreateRequest
echo 'type: partyCreateRequest\nid: h5HIpH0D' >> $PIPE_FILE

#- 46 PartyCreateResponse
echo 'type: partyCreateResponse\nid: iplEk4vj\ncode: 42\ninvitationToken: 3LDp4yqD\ninvitees: t8QUZDpx\nleaderId: lHasinGc\nmembers: jrkmRMtt\npartyId: gjDSaIVB' >> $PIPE_FILE

#- 47 PartyDataUpdateNotif
echo 'type: partyDataUpdateNotif\ncustomAttributes: {"mft3Udg7":{}}\ninvitees: [p9PGmY2H]\nleader: 5kX4Msis\nmembers: [SX28nARx]\nnamespace: WRpv5ou5\npartyId: xtvd28OU\nupdatedAt: 10' >> $PIPE_FILE

#- 48 PartyGetInvitedNotif
echo 'type: partyGetInvitedNotif\nfrom: Ct8UJC5f\ninvitationToken: lNyj6HsT\npartyId: tX8P3lln' >> $PIPE_FILE

#- 49 PartyInfoRequest
echo 'type: partyInfoRequest\nid: aaS9lqyy' >> $PIPE_FILE

#- 50 PartyInfoResponse
echo 'type: partyInfoResponse\nid: QZza8kNV\ncode: 12\ncustomAttributes: {"PcfkJIxf":{}}\ninvitationToken: bDxVMq7H\ninvitees: Jk0F89xA\nleaderId: c3YVfaEN\nmembers: trl0pTKZ\npartyId: TXqzHuBM' >> $PIPE_FILE

#- 51 PartyInviteNotif
echo 'type: partyInviteNotif\ninviteeId: YQSA2jz1\ninviterId: ZOpdOjSy' >> $PIPE_FILE

#- 52 PartyInviteRequest
echo 'type: partyInviteRequest\nid: Mf7RUyBH\nfriendId: MddB41Ju' >> $PIPE_FILE

#- 53 PartyInviteResponse
echo 'type: partyInviteResponse\nid: j8IiRimR\ncode: 87' >> $PIPE_FILE

#- 54 PartyJoinNotif
echo 'type: partyJoinNotif\nuserId: llHT6Dc4' >> $PIPE_FILE

#- 55 PartyJoinRequest
echo 'type: partyJoinRequest\nid: 0vFFA6gp\ninvitationToken: U7EW3x1d\npartyId: Cpm55gOe' >> $PIPE_FILE

#- 56 PartyJoinResponse
echo 'type: partyJoinResponse\nid: QIqcJVKm\ncode: 33\ninvitationToken: BM1J1Ibu\ninvitees: TrrkbmuT\nleaderId: 1whOqmEn\nmembers: DXIWrBPl\npartyId: Say46mv7' >> $PIPE_FILE

#- 57 PartyKickNotif
echo 'type: partyKickNotif\nleaderId: 1BAZAOjt\npartyId: FJ2vmTj7\nuserId: tT7TZHWD' >> $PIPE_FILE

#- 58 PartyKickRequest
echo 'type: partyKickRequest\nid: dCkIsZoA\nmemberId: rWwPHcyF' >> $PIPE_FILE

#- 59 PartyKickResponse
echo 'type: partyKickResponse\nid: dAtYciLI\ncode: 52' >> $PIPE_FILE

#- 60 PartyLeaveNotif
echo 'type: partyLeaveNotif\nleaderId: gRwFRr0g\nuserId: wB9tz3vp' >> $PIPE_FILE

#- 61 PartyLeaveRequest
echo 'type: partyLeaveRequest\nid: 99XVlV8r\nignoreUserRegistry: True' >> $PIPE_FILE

#- 62 PartyLeaveResponse
echo 'type: partyLeaveResponse\nid: 6n0smip1\ncode: 61' >> $PIPE_FILE

#- 63 PartyPromoteLeaderRequest
echo 'type: partyPromoteLeaderRequest\nid: tw3L7cUd\nnewLeaderUserId: 9pqtv6Jf' >> $PIPE_FILE

#- 64 PartyPromoteLeaderResponse
echo 'type: partyPromoteLeaderResponse\nid: ZwcCVOXc\ncode: 83\ninvitationToken: Va80TmCw\ninvitees: tD2lAH01\nleaderId: o6NdcBIg\nmembers: zrDyWpFB\npartyId: YGmmBawM' >> $PIPE_FILE

#- 65 PartyRejectNotif
echo 'type: partyRejectNotif\nleaderId: yoKyNpdA\npartyId: asm8xwUf\nuserId: zOlQiZY4' >> $PIPE_FILE

#- 66 PartyRejectRequest
echo 'type: partyRejectRequest\nid: NbOQXJ7u\ninvitationToken: OTzNMvuq\npartyId: 2tNl4CX4' >> $PIPE_FILE

#- 67 PartyRejectResponse
echo 'type: partyRejectResponse\nid: jiK4DEUJ\ncode: 68\npartyId: RVK3l9Eb' >> $PIPE_FILE

#- 68 PersonalChatHistoryRequest
echo 'type: personalChatHistoryRequest\nid: H8vS1sme\nfriendId: 0R1XRb0R' >> $PIPE_FILE

#- 69 PersonalChatHistoryResponse
echo 'type: personalChatHistoryResponse\nid: io4wcyhl\nchat: OlngrdTX\ncode: 56\nfriendId: zaPBtkZM' >> $PIPE_FILE

#- 70 PersonalChatNotif
echo 'type: personalChatNotif\nid: QtcEmCEV\nfrom: oVS3rYp8\npayload: c75Ufeyp\nreceivedAt: 96\nto: jDNhzCL5' >> $PIPE_FILE

#- 71 PersonalChatRequest
echo 'type: personalChatRequest\nid: 63iEklkz\nfrom: sWS2qwO7\npayload: Lm88LpLu\nreceivedAt: 86\nto: O3C55yHp' >> $PIPE_FILE

#- 72 PersonalChatResponse
echo 'type: personalChatResponse\nid: K2JaqenD\ncode: 45' >> $PIPE_FILE

#- 73 RejectFriendsNotif
echo 'type: rejectFriendsNotif\nuserId: Gn7a2NUp' >> $PIPE_FILE

#- 74 RejectFriendsRequest
echo 'type: rejectFriendsRequest\nid: n6a0rW8E\nfriendId: lWiLjq06' >> $PIPE_FILE

#- 75 RejectFriendsResponse
echo 'type: rejectFriendsResponse\nid: kpaXtwYZ\ncode: 11' >> $PIPE_FILE

#- 76 RematchmakingNotif
echo 'type: rematchmakingNotif\nbanDuration: 70' >> $PIPE_FILE

#- 77 RequestFriendsNotif
echo 'type: requestFriendsNotif\nfriendId: aQ4WbwNm' >> $PIPE_FILE

#- 78 RequestFriendsRequest
echo 'type: requestFriendsRequest\nid: rH8eloJz\nfriendId: sFYetjEu' >> $PIPE_FILE

#- 79 RequestFriendsResponse
echo 'type: requestFriendsResponse\nid: KtRUaTz1\ncode: 78' >> $PIPE_FILE

#- 80 SendChannelChatRequest
echo 'type: sendChannelChatRequest\nid: kkn9oiQl\nchannelSlug: ETdsmwzj\npayload: 05g7cO3Z' >> $PIPE_FILE

#- 81 SendChannelChatResponse
echo 'type: sendChannelChatResponse\nid: b6Ojlo6D\ncode: 76' >> $PIPE_FILE

#- 82 SetReadyConsentNotif
echo 'type: setReadyConsentNotif\nmatchId: MNpP2qMr\nuserId: TQ1UpjfU' >> $PIPE_FILE

#- 83 SetReadyConsentRequest
echo 'type: setReadyConsentRequest\nid: 6wJhy1jO\nmatchId: VkkUlS79' >> $PIPE_FILE

#- 84 SetReadyConsentResponse
echo 'type: setReadyConsentResponse\nid: Z25Ia8uC\ncode: 60' >> $PIPE_FILE

#- 85 SetSessionAttributeRequest
echo 'type: setSessionAttributeRequest\nid: eZFlLtEV\nkey: pDAEbA82\nnamespace: jy74lq0p\nvalue: DE5xRwh5' >> $PIPE_FILE

#- 86 SetSessionAttributeResponse
echo 'type: setSessionAttributeResponse\nid: 45ebpcM7\ncode: 2' >> $PIPE_FILE

#- 87 SetUserStatusRequest
echo 'type: setUserStatusRequest\nid: wIp9rRtn\nactivity: ScSs3UOp\navailability: 53' >> $PIPE_FILE

#- 88 SetUserStatusResponse
echo 'type: setUserStatusResponse\nid: cCxdbume\ncode: 82' >> $PIPE_FILE

#- 89 ShutdownNotif
echo 'type: shutdownNotif\nmessage: YgOdEBWR' >> $PIPE_FILE

#- 90 SignalingP2PNotif
echo 'type: signalingP2PNotif\ndestinationId: QiW3KFfU\nmessage: 8icH4081' >> $PIPE_FILE

#- 91 StartMatchmakingRequest
echo 'type: startMatchmakingRequest\nid: gUDEcJyI\nextraAttributes: gRB1GyLf\ngameMode: Lg4RYuEb\npartyAttributes: {"vsPwOr0B":{}}\npriority: 25\ntempParty: V5iFvfwF' >> $PIPE_FILE

#- 92 StartMatchmakingResponse
echo 'type: startMatchmakingResponse\nid: TSmIEqoL\ncode: 19' >> $PIPE_FILE

#- 93 SystemComponentsStatus
echo 'type: systemComponentsStatus\ncomponents: {"yLeUGmom":true}' >> $PIPE_FILE

#- 94 UnblockPlayerNotif
echo 'type: unblockPlayerNotif\nunblockedUserId: XTZ0v8pq\nuserId: Lfc5SwGn' >> $PIPE_FILE

#- 95 UnblockPlayerRequest
echo 'type: unblockPlayerRequest\nid: ReUULDX4\nnamespace: QUIbb5nh\nunblockedUserId: 68ZnyUtR' >> $PIPE_FILE

#- 96 UnblockPlayerResponse
echo 'type: unblockPlayerResponse\nid: W9hNBSFT\ncode: 42\nnamespace: tFrOmjkF\nunblockedUserId: rFVA8t0x' >> $PIPE_FILE

#- 97 UnfriendNotif
echo 'type: unfriendNotif\nfriendId: F34Xpt6Z' >> $PIPE_FILE

#- 98 UnfriendRequest
echo 'type: unfriendRequest\nid: 2a0nI2oo\nfriendId: lTTic0kr' >> $PIPE_FILE

#- 99 UnfriendResponse
echo 'type: unfriendResponse\nid: HCJK5sp0\ncode: 92' >> $PIPE_FILE

#- 100 UserBannedNotification
echo 'type: userBannedNotification' >> $PIPE_FILE

#- 101 UserMetricRequest
echo 'type: userMetricRequest\nid: aCvIq3aH' >> $PIPE_FILE

#- 102 UserMetricResponse
echo 'type: userMetricResponse\nid: YIlewLRu\ncode: 94\nplayerCount: 67' >> $PIPE_FILE

#- 103 UserStatusNotif
echo 'type: userStatusNotif\nactivity: Y83bGj0H\navailability: 90\nlastSeenAt: eeWXlIcR\nuserId: idqctDpy' >> $PIPE_FILE

echo ':q' >> $PIPE_FILE

sleep 1

delete_file $PIPE_FILE

exit $FAILED_COUNT