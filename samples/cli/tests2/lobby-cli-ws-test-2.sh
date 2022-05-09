#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-ws-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-batched-ws-session' --continue_on_error '--writer=tap' << END
'type: acceptFriendsNotif\nfriendId: FtBxyZcD'
'type: acceptFriendsRequest\nid: Ju8vMf0I\nfriendId: XBpGlsQu'
'type: acceptFriendsResponse\nid: JkTrd8ID\ncode: 36'
'type: blockPlayerNotif\nblockedUserId: cV2zXnTK\nuserId: jXY1bPqa'
'type: blockPlayerRequest\nid: 18EY84ek\nblockUserId: miBxx9Cs\nnamespace: ItqRzHU1'
'type: blockPlayerResponse\nid: aewc72kr\nblockUserId: oh570KQB\ncode: 95\nnamespace: Sha68n3Y'
'type: cancelFriendsNotif\nuserId: nozp1C2K'
'type: cancelFriendsRequest\nid: EUsxFb8C\nfriendId: mIQTuBdN'
'type: cancelFriendsResponse\nid: 17M7DJZa\ncode: 70'
'type: cancelMatchmakingRequest\nid: ygyoarOR\ngameMode: MSxECbZb\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: NHSb8Rh3\ncode: 8'
'type: channelChatNotif\nchannelSlug: kgs9qqJb\nfrom: nQsoBgiV\npayload: pP8Cm3yv\nsentAt: ASUoxdxx'
'type: clientResetRequest\nnamespace: FqmAGTJ8\nuserId: IEdagEtp'
'type: connectNotif\nlobbySessionId: 4w29KOu9'
'type: disconnectNotif\nconnectionId: c19R6XDq\nnamespace: WHkkP8np'
'type: dsNotif\nalternateIps: [LEKMfjiX]\ncustomAttribute: 7jpkVZk3\ndeployment: IaQYEmqG\ngameVersion: odOEGt9g\nimageVersion: POj0c6i0\nip: JkvIas73\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: YnFAJ3DK\nmatchId: 5T4Eogg0\nmessage: Y39UoYlp\nnamespace: v5bVAgts\npodName: DhUTDUsc\nport: 2\nports: {"QDjbTQuP":76}\nprotocol: z2PTRlky\nprovider: U89ZPOw6\nregion: zPFJ42cw\nsessionId: mzBBSMNc\nstatus: oAAOjKNj'
'type: errorNotif\nmessage: fcYHm093'
'type: exitAllChannel\nnamespace: aYgBU1sq\nuserId: jyK0XH45'
'type: friendsStatusRequest\nid: PaRSOFQB'
'type: friendsStatusResponse\nid: dYiQS9i7\nactivity: [tu23REZ8]\navailability: [15]\ncode: 87\nfriendIds: [VX7LGOvD]\nlastSeenAt: [mV1C91pj]'
'type: getAllSessionAttributeRequest\nid: G9gpxL6y'
'type: getAllSessionAttributeResponse\nid: 6LFE1YHo\nattributes: {"cTQdvln2":"LAuSQWEX"}\ncode: 74'
'type: getFriendshipStatusRequest\nid: 8hHtWvbN\nfriendId: 9m126ZWc'
'type: getFriendshipStatusResponse\nid: PiHUIvaC\ncode: 33\nfriendshipStatus: gUqslArF'
'type: getSessionAttributeRequest\nid: v8kU9dBB\nkey: pdsJLhsV'
'type: getSessionAttributeResponse\nid: Exrkxoot\ncode: 49\nvalue: 0B7WOfer'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: cZdpMci3'
'type: joinDefaultChannelResponse\nid: aI3uzLte\nchannelSlug: 7Ds7YSfE\ncode: 46'
'type: listIncomingFriendsRequest\nid: MbFAlt4h'
'type: listIncomingFriendsResponse\nid: 7HmOYiBA\ncode: 35\nuserIds: [5ltAOXml]'
'type: listOfFriendsRequest\nid: oTFpBIcu\nfriendId: G6eh1dTd'
'type: listOfFriendsResponse\nid: nJ6Te9vD\ncode: 57\nfriendIds: [1dQY93OJ]'
'type: listOnlineFriendsRequest\nid: 8ldz7Hu8'
'type: listOutgoingFriendsRequest\nid: AD79kdWu'
'type: listOutgoingFriendsResponse\nid: HyhhERoG\ncode: 26\nfriendIds: [vizU0q1p]'
'type: matchmakingNotif\ncounterPartyMember: [gdrysMiz]\nmatchId: BGSRdP2l\nmessage: 7DNSZ8Aq\npartyMember: [0XiPLQXS]\nreadyDuration: 9\nstatus: 07ZddOGT'
'type: messageNotif\nid: HJHQKseE\nfrom: MlJjBwj9\npayload: dSXRDSvg\nsentAt: 41\nto: auw1xT7e\ntopic: MwSl9MLH'
'type: offlineNotificationRequest\nid: 0NnTJ2ul'
'type: offlineNotificationResponse\nid: zBvwJaQa\ncode: 79'
'type: onlineFriends\nid: llvA8RWS\ncode: 71\nonlineFriendIds: [pabUt7xk]'
'type: partyChatNotif\nid: oWfJw2o8\nfrom: 6QxyWhfq\npayload: oWUqvPCZ\nreceivedAt: 66\nto: zT7NXmWD'
'type: partyChatRequest\nid: JR5lsNOl\nfrom: lXsuNIdQ\npayload: vkfwaSbn\nreceivedAt: 37\nto: uLCgToxu'
'type: partyChatResponse\nid: TekJgvg6\ncode: 94'
'type: partyCreateRequest\nid: h5HIpH0D'
'type: partyCreateResponse\nid: iplEk4vj\ncode: 42\ninvitationToken: 3LDp4yqD\ninvitees: t8QUZDpx\nleaderId: lHasinGc\nmembers: jrkmRMtt\npartyId: gjDSaIVB'
'type: partyDataUpdateNotif\ncustomAttributes: {"mft3Udg7":{}}\ninvitees: [p9PGmY2H]\nleader: 5kX4Msis\nmembers: [SX28nARx]\nnamespace: WRpv5ou5\npartyId: xtvd28OU\nupdatedAt: 10'
'type: partyGetInvitedNotif\nfrom: Ct8UJC5f\ninvitationToken: lNyj6HsT\npartyId: tX8P3lln'
'type: partyInfoRequest\nid: aaS9lqyy'
'type: partyInfoResponse\nid: QZza8kNV\ncode: 12\ncustomAttributes: {"PcfkJIxf":{}}\ninvitationToken: bDxVMq7H\ninvitees: Jk0F89xA\nleaderId: c3YVfaEN\nmembers: trl0pTKZ\npartyId: TXqzHuBM'
'type: partyInviteNotif\ninviteeId: YQSA2jz1\ninviterId: ZOpdOjSy'
'type: partyInviteRequest\nid: Mf7RUyBH\nfriendId: MddB41Ju'
'type: partyInviteResponse\nid: j8IiRimR\ncode: 87'
'type: partyJoinNotif\nuserId: llHT6Dc4'
'type: partyJoinRequest\nid: 0vFFA6gp\ninvitationToken: U7EW3x1d\npartyId: Cpm55gOe'
'type: partyJoinResponse\nid: QIqcJVKm\ncode: 33\ninvitationToken: BM1J1Ibu\ninvitees: TrrkbmuT\nleaderId: 1whOqmEn\nmembers: DXIWrBPl\npartyId: Say46mv7'
'type: partyKickNotif\nleaderId: 1BAZAOjt\npartyId: FJ2vmTj7\nuserId: tT7TZHWD'
'type: partyKickRequest\nid: dCkIsZoA\nmemberId: rWwPHcyF'
'type: partyKickResponse\nid: dAtYciLI\ncode: 52'
'type: partyLeaveNotif\nleaderId: gRwFRr0g\nuserId: wB9tz3vp'
'type: partyLeaveRequest\nid: 99XVlV8r\nignoreUserRegistry: True'
'type: partyLeaveResponse\nid: 6n0smip1\ncode: 61'
'type: partyPromoteLeaderRequest\nid: tw3L7cUd\nnewLeaderUserId: 9pqtv6Jf'
'type: partyPromoteLeaderResponse\nid: ZwcCVOXc\ncode: 83\ninvitationToken: Va80TmCw\ninvitees: tD2lAH01\nleaderId: o6NdcBIg\nmembers: zrDyWpFB\npartyId: YGmmBawM'
'type: partyRejectNotif\nleaderId: yoKyNpdA\npartyId: asm8xwUf\nuserId: zOlQiZY4'
'type: partyRejectRequest\nid: NbOQXJ7u\ninvitationToken: OTzNMvuq\npartyId: 2tNl4CX4'
'type: partyRejectResponse\nid: jiK4DEUJ\ncode: 68\npartyId: RVK3l9Eb'
'type: personalChatHistoryRequest\nid: H8vS1sme\nfriendId: 0R1XRb0R'
'type: personalChatHistoryResponse\nid: io4wcyhl\nchat: OlngrdTX\ncode: 56\nfriendId: zaPBtkZM'
'type: personalChatNotif\nid: QtcEmCEV\nfrom: oVS3rYp8\npayload: c75Ufeyp\nreceivedAt: 96\nto: jDNhzCL5'
'type: personalChatRequest\nid: 63iEklkz\nfrom: sWS2qwO7\npayload: Lm88LpLu\nreceivedAt: 86\nto: O3C55yHp'
'type: personalChatResponse\nid: K2JaqenD\ncode: 45'
'type: rejectFriendsNotif\nuserId: Gn7a2NUp'
'type: rejectFriendsRequest\nid: n6a0rW8E\nfriendId: lWiLjq06'
'type: rejectFriendsResponse\nid: kpaXtwYZ\ncode: 11'
'type: rematchmakingNotif\nbanDuration: 70'
'type: requestFriendsNotif\nfriendId: aQ4WbwNm'
'type: requestFriendsRequest\nid: rH8eloJz\nfriendId: sFYetjEu'
'type: requestFriendsResponse\nid: KtRUaTz1\ncode: 78'
'type: sendChannelChatRequest\nid: kkn9oiQl\nchannelSlug: ETdsmwzj\npayload: 05g7cO3Z'
'type: sendChannelChatResponse\nid: b6Ojlo6D\ncode: 76'
'type: setReadyConsentNotif\nmatchId: MNpP2qMr\nuserId: TQ1UpjfU'
'type: setReadyConsentRequest\nid: 6wJhy1jO\nmatchId: VkkUlS79'
'type: setReadyConsentResponse\nid: Z25Ia8uC\ncode: 60'
'type: setSessionAttributeRequest\nid: eZFlLtEV\nkey: pDAEbA82\nnamespace: jy74lq0p\nvalue: DE5xRwh5'
'type: setSessionAttributeResponse\nid: 45ebpcM7\ncode: 2'
'type: setUserStatusRequest\nid: wIp9rRtn\nactivity: ScSs3UOp\navailability: 53'
'type: setUserStatusResponse\nid: cCxdbume\ncode: 82'
'type: shutdownNotif\nmessage: YgOdEBWR'
'type: signalingP2PNotif\ndestinationId: QiW3KFfU\nmessage: 8icH4081'
'type: startMatchmakingRequest\nid: gUDEcJyI\nextraAttributes: gRB1GyLf\ngameMode: Lg4RYuEb\npartyAttributes: {"vsPwOr0B":{}}\npriority: 25\ntempParty: V5iFvfwF'
'type: startMatchmakingResponse\nid: TSmIEqoL\ncode: 19'
'type: systemComponentsStatus\ncomponents: {"yLeUGmom":true}'
'type: unblockPlayerNotif\nunblockedUserId: XTZ0v8pq\nuserId: Lfc5SwGn'
'type: unblockPlayerRequest\nid: ReUULDX4\nnamespace: QUIbb5nh\nunblockedUserId: 68ZnyUtR'
'type: unblockPlayerResponse\nid: W9hNBSFT\ncode: 42\nnamespace: tFrOmjkF\nunblockedUserId: rFVA8t0x'
'type: unfriendNotif\nfriendId: F34Xpt6Z'
'type: unfriendRequest\nid: 2a0nI2oo\nfriendId: lTTic0kr'
'type: unfriendResponse\nid: HCJK5sp0\ncode: 92'
'type: userBannedNotification'
'type: userMetricRequest\nid: aCvIq3aH'
'type: userMetricResponse\nid: YIlewLRu\ncode: 94\nplayerCount: 67'
'type: userStatusNotif\nactivity: Y83bGj0H\navailability: 90\nlastSeenAt: eeWXlIcR\nuserId: idqctDpy'
send()
END

EXIT_CODE=$?

exit $EXIT_CODE