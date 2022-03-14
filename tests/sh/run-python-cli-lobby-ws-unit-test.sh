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
TEMP_FILE='file.tmp'

MODELS_COUNT=103

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$MODELS_COUNT"

#- 1 AcceptFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsNotif\nfriendId: FtBxyZcD' \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptFriendsNotif'
delete_file $TEMP_FILE

#- 2 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: Ju8vMf0I\nfriendId: XBpGlsQu' \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptFriendsRequest'
delete_file $TEMP_FILE

#- 3 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: JkTrd8ID\ncode: 36' \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptFriendsResponse'
delete_file $TEMP_FILE

#- 4 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: cV2zXnTK\nuserId: jXY1bPqa' \
    >$TEMP_FILE 2>&1
update_status $? 'BlockPlayerNotif'
delete_file $TEMP_FILE

#- 5 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: 18EY84ek\nblockUserId: miBxx9Cs\nnamespace: ItqRzHU1' \
    >$TEMP_FILE 2>&1
update_status $? 'BlockPlayerRequest'
delete_file $TEMP_FILE

#- 6 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: aewc72kr\nblockUserId: oh570KQB\ncode: 95\nnamespace: Sha68n3Y' \
    >$TEMP_FILE 2>&1
update_status $? 'BlockPlayerResponse'
delete_file $TEMP_FILE

#- 7 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: nozp1C2K' \
    >$TEMP_FILE 2>&1
update_status $? 'CancelFriendsNotif'
delete_file $TEMP_FILE

#- 8 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: EUsxFb8C\nfriendId: mIQTuBdN' \
    >$TEMP_FILE 2>&1
update_status $? 'CancelFriendsRequest'
delete_file $TEMP_FILE

#- 9 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: 17M7DJZa\ncode: 70' \
    >$TEMP_FILE 2>&1
update_status $? 'CancelFriendsResponse'
delete_file $TEMP_FILE

#- 10 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: ygyoarOR\ngameMode: MSxECbZb\nisTempParty: False' \
    >$TEMP_FILE 2>&1
update_status $? 'CancelMatchmakingRequest'
delete_file $TEMP_FILE

#- 11 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: NHSb8Rh3\ncode: 8' \
    >$TEMP_FILE 2>&1
update_status $? 'CancelMatchmakingResponse'
delete_file $TEMP_FILE

#- 12 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: kgs9qqJb\nfrom: nQsoBgiV\npayload: pP8Cm3yv\nsentAt: ASUoxdxx' \
    >$TEMP_FILE 2>&1
update_status $? 'ChannelChatNotif'
delete_file $TEMP_FILE

#- 13 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: FqmAGTJ8\nuserId: IEdagEtp' \
    >$TEMP_FILE 2>&1
update_status $? 'ClientResetRequest'
delete_file $TEMP_FILE

#- 14 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: 4w29KOu9' \
    >$TEMP_FILE 2>&1
update_status $? 'ConnectNotif'
delete_file $TEMP_FILE

#- 15 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: c19R6XDq\nnamespace: WHkkP8np' \
    >$TEMP_FILE 2>&1
update_status $? 'DisconnectNotif'
delete_file $TEMP_FILE

#- 16 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [LEKMfjiX]\ncustomAttribute: 7jpkVZk3\ndeployment: IaQYEmqG\ngameVersion: odOEGt9g\nimageVersion: POj0c6i0\nip: JkvIas73\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: YnFAJ3DK\nmatchId: 5T4Eogg0\nmessage: Y39UoYlp\nnamespace: v5bVAgts\npodName: DhUTDUsc\nport: 2\nports: {"QDjbTQuP":76}\nprotocol: z2PTRlky\nprovider: U89ZPOw6\nregion: zPFJ42cw\nsessionId: mzBBSMNc\nstatus: oAAOjKNj' \
    >$TEMP_FILE 2>&1
update_status $? 'DsNotif'
delete_file $TEMP_FILE

#- 17 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: fcYHm093' \
    >$TEMP_FILE 2>&1
update_status $? 'ErrorNotif'
delete_file $TEMP_FILE

#- 18 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: aYgBU1sq\nuserId: jyK0XH45' \
    >$TEMP_FILE 2>&1
update_status $? 'ExitAllChannel'
delete_file $TEMP_FILE

#- 19 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: PaRSOFQB' \
    >$TEMP_FILE 2>&1
update_status $? 'FriendsStatusRequest'
delete_file $TEMP_FILE

#- 20 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: dYiQS9i7\nactivity: [tu23REZ8]\navailability: [15]\ncode: 87\nfriendIds: [VX7LGOvD]\nlastSeenAt: [mV1C91pj]' \
    >$TEMP_FILE 2>&1
update_status $? 'FriendsStatusResponse'
delete_file $TEMP_FILE

#- 21 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: G9gpxL6y' \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllSessionAttributeRequest'
delete_file $TEMP_FILE

#- 22 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: 6LFE1YHo\nattributes: {"cTQdvln2":"LAuSQWEX"}\ncode: 74' \
    >$TEMP_FILE 2>&1
update_status $? 'GetAllSessionAttributeResponse'
delete_file $TEMP_FILE

#- 23 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: 8hHtWvbN\nfriendId: 9m126ZWc' \
    >$TEMP_FILE 2>&1
update_status $? 'GetFriendshipStatusRequest'
delete_file $TEMP_FILE

#- 24 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: PiHUIvaC\ncode: 33\nfriendshipStatus: gUqslArF' \
    >$TEMP_FILE 2>&1
update_status $? 'GetFriendshipStatusResponse'
delete_file $TEMP_FILE

#- 25 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: v8kU9dBB\nkey: pdsJLhsV' \
    >$TEMP_FILE 2>&1
update_status $? 'GetSessionAttributeRequest'
delete_file $TEMP_FILE

#- 26 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: Exrkxoot\ncode: 49\nvalue: 0B7WOfer' \
    >$TEMP_FILE 2>&1
update_status $? 'GetSessionAttributeResponse'
delete_file $TEMP_FILE

#- 27 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    >$TEMP_FILE 2>&1
update_status $? 'Heartbeat'
delete_file $TEMP_FILE

#- 28 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: cZdpMci3' \
    >$TEMP_FILE 2>&1
update_status $? 'JoinDefaultChannelRequest'
delete_file $TEMP_FILE

#- 29 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: aI3uzLte\nchannelSlug: 7Ds7YSfE\ncode: 46' \
    >$TEMP_FILE 2>&1
update_status $? 'JoinDefaultChannelResponse'
delete_file $TEMP_FILE

#- 30 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: MbFAlt4h' \
    >$TEMP_FILE 2>&1
update_status $? 'ListIncomingFriendsRequest'
delete_file $TEMP_FILE

#- 31 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: 7HmOYiBA\ncode: 35\nuserIds: [5ltAOXml]' \
    >$TEMP_FILE 2>&1
update_status $? 'ListIncomingFriendsResponse'
delete_file $TEMP_FILE

#- 32 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: oTFpBIcu\nfriendId: G6eh1dTd' \
    >$TEMP_FILE 2>&1
update_status $? 'ListOfFriendsRequest'
delete_file $TEMP_FILE

#- 33 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: nJ6Te9vD\ncode: 57\nfriendIds: [1dQY93OJ]' \
    >$TEMP_FILE 2>&1
update_status $? 'ListOfFriendsResponse'
delete_file $TEMP_FILE

#- 34 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 8ldz7Hu8' \
    >$TEMP_FILE 2>&1
update_status $? 'ListOnlineFriendsRequest'
delete_file $TEMP_FILE

#- 35 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: AD79kdWu' \
    >$TEMP_FILE 2>&1
update_status $? 'ListOutgoingFriendsRequest'
delete_file $TEMP_FILE

#- 36 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: HyhhERoG\ncode: 26\nfriendIds: [vizU0q1p]' \
    >$TEMP_FILE 2>&1
update_status $? 'ListOutgoingFriendsResponse'
delete_file $TEMP_FILE

#- 37 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [gdrysMiz]\nmatchId: BGSRdP2l\nmessage: 7DNSZ8Aq\npartyMember: [0XiPLQXS]\nreadyDuration: 9\nstatus: 07ZddOGT' \
    >$TEMP_FILE 2>&1
update_status $? 'MatchmakingNotif'
delete_file $TEMP_FILE

#- 38 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: HJHQKseE\nfrom: MlJjBwj9\npayload: dSXRDSvg\nsentAt: 41\nto: auw1xT7e\ntopic: MwSl9MLH' \
    >$TEMP_FILE 2>&1
update_status $? 'MessageNotif'
delete_file $TEMP_FILE

#- 39 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: 0NnTJ2ul' \
    >$TEMP_FILE 2>&1
update_status $? 'OfflineNotificationRequest'
delete_file $TEMP_FILE

#- 40 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: zBvwJaQa\ncode: 79' \
    >$TEMP_FILE 2>&1
update_status $? 'OfflineNotificationResponse'
delete_file $TEMP_FILE

#- 41 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: llvA8RWS\ncode: 71\nonlineFriendIds: [pabUt7xk]' \
    >$TEMP_FILE 2>&1
update_status $? 'OnlineFriends'
delete_file $TEMP_FILE

#- 42 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: oWfJw2o8\nfrom: 6QxyWhfq\npayload: oWUqvPCZ\nreceivedAt: 66\nto: zT7NXmWD' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyChatNotif'
delete_file $TEMP_FILE

#- 43 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: JR5lsNOl\nfrom: lXsuNIdQ\npayload: vkfwaSbn\nreceivedAt: 37\nto: uLCgToxu' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyChatRequest'
delete_file $TEMP_FILE

#- 44 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: TekJgvg6\ncode: 94' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyChatResponse'
delete_file $TEMP_FILE

#- 45 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: h5HIpH0D' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyCreateRequest'
delete_file $TEMP_FILE

#- 46 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: iplEk4vj\ncode: 42\ninvitationToken: 3LDp4yqD\ninvitees: t8QUZDpx\nleaderId: lHasinGc\nmembers: jrkmRMtt\npartyId: gjDSaIVB' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyCreateResponse'
delete_file $TEMP_FILE

#- 47 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"mft3Udg7":{}}\ninvitees: [p9PGmY2H]\nleader: 5kX4Msis\nmembers: [SX28nARx]\nnamespace: WRpv5ou5\npartyId: xtvd28OU\nupdatedAt: 10' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyDataUpdateNotif'
delete_file $TEMP_FILE

#- 48 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: Ct8UJC5f\ninvitationToken: lNyj6HsT\npartyId: tX8P3lln' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyGetInvitedNotif'
delete_file $TEMP_FILE

#- 49 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: aaS9lqyy' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyInfoRequest'
delete_file $TEMP_FILE

#- 50 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: QZza8kNV\ncode: 12\ncustomAttributes: {"PcfkJIxf":{}}\ninvitationToken: bDxVMq7H\ninvitees: Jk0F89xA\nleaderId: c3YVfaEN\nmembers: trl0pTKZ\npartyId: TXqzHuBM' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyInfoResponse'
delete_file $TEMP_FILE

#- 51 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: YQSA2jz1\ninviterId: ZOpdOjSy' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyInviteNotif'
delete_file $TEMP_FILE

#- 52 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: Mf7RUyBH\nfriendId: MddB41Ju' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyInviteRequest'
delete_file $TEMP_FILE

#- 53 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: j8IiRimR\ncode: 87' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyInviteResponse'
delete_file $TEMP_FILE

#- 54 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: llHT6Dc4' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyJoinNotif'
delete_file $TEMP_FILE

#- 55 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: 0vFFA6gp\ninvitationToken: U7EW3x1d\npartyId: Cpm55gOe' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyJoinRequest'
delete_file $TEMP_FILE

#- 56 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: QIqcJVKm\ncode: 33\ninvitationToken: BM1J1Ibu\ninvitees: TrrkbmuT\nleaderId: 1whOqmEn\nmembers: DXIWrBPl\npartyId: Say46mv7' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyJoinResponse'
delete_file $TEMP_FILE

#- 57 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: 1BAZAOjt\npartyId: FJ2vmTj7\nuserId: tT7TZHWD' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyKickNotif'
delete_file $TEMP_FILE

#- 58 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: dCkIsZoA\nmemberId: rWwPHcyF' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyKickRequest'
delete_file $TEMP_FILE

#- 59 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: dAtYciLI\ncode: 52' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyKickResponse'
delete_file $TEMP_FILE

#- 60 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: gRwFRr0g\nuserId: wB9tz3vp' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyLeaveNotif'
delete_file $TEMP_FILE

#- 61 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: 99XVlV8r\nignoreUserRegistry: True' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyLeaveRequest'
delete_file $TEMP_FILE

#- 62 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: 6n0smip1\ncode: 61' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyLeaveResponse'
delete_file $TEMP_FILE

#- 63 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: tw3L7cUd\nnewLeaderUserId: 9pqtv6Jf' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyPromoteLeaderRequest'
delete_file $TEMP_FILE

#- 64 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: ZwcCVOXc\ncode: 83\ninvitationToken: Va80TmCw\ninvitees: tD2lAH01\nleaderId: o6NdcBIg\nmembers: zrDyWpFB\npartyId: YGmmBawM' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyPromoteLeaderResponse'
delete_file $TEMP_FILE

#- 65 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: yoKyNpdA\npartyId: asm8xwUf\nuserId: zOlQiZY4' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyRejectNotif'
delete_file $TEMP_FILE

#- 66 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: NbOQXJ7u\ninvitationToken: OTzNMvuq\npartyId: 2tNl4CX4' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyRejectRequest'
delete_file $TEMP_FILE

#- 67 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: jiK4DEUJ\ncode: 68\npartyId: RVK3l9Eb' \
    >$TEMP_FILE 2>&1
update_status $? 'PartyRejectResponse'
delete_file $TEMP_FILE

#- 68 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: H8vS1sme\nfriendId: 0R1XRb0R' \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatHistoryRequest'
delete_file $TEMP_FILE

#- 69 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: io4wcyhl\nchat: OlngrdTX\ncode: 56\nfriendId: zaPBtkZM' \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatHistoryResponse'
delete_file $TEMP_FILE

#- 70 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: QtcEmCEV\nfrom: oVS3rYp8\npayload: c75Ufeyp\nreceivedAt: 96\nto: jDNhzCL5' \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatNotif'
delete_file $TEMP_FILE

#- 71 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: 63iEklkz\nfrom: sWS2qwO7\npayload: Lm88LpLu\nreceivedAt: 86\nto: O3C55yHp' \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatRequest'
delete_file $TEMP_FILE

#- 72 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: K2JaqenD\ncode: 45' \
    >$TEMP_FILE 2>&1
update_status $? 'PersonalChatResponse'
delete_file $TEMP_FILE

#- 73 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: Gn7a2NUp' \
    >$TEMP_FILE 2>&1
update_status $? 'RejectFriendsNotif'
delete_file $TEMP_FILE

#- 74 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: n6a0rW8E\nfriendId: lWiLjq06' \
    >$TEMP_FILE 2>&1
update_status $? 'RejectFriendsRequest'
delete_file $TEMP_FILE

#- 75 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: kpaXtwYZ\ncode: 11' \
    >$TEMP_FILE 2>&1
update_status $? 'RejectFriendsResponse'
delete_file $TEMP_FILE

#- 76 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 70' \
    >$TEMP_FILE 2>&1
update_status $? 'RematchmakingNotif'
delete_file $TEMP_FILE

#- 77 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: aQ4WbwNm' \
    >$TEMP_FILE 2>&1
update_status $? 'RequestFriendsNotif'
delete_file $TEMP_FILE

#- 78 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: rH8eloJz\nfriendId: sFYetjEu' \
    >$TEMP_FILE 2>&1
update_status $? 'RequestFriendsRequest'
delete_file $TEMP_FILE

#- 79 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: KtRUaTz1\ncode: 78' \
    >$TEMP_FILE 2>&1
update_status $? 'RequestFriendsResponse'
delete_file $TEMP_FILE

#- 80 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: kkn9oiQl\nchannelSlug: ETdsmwzj\npayload: 05g7cO3Z' \
    >$TEMP_FILE 2>&1
update_status $? 'SendChannelChatRequest'
delete_file $TEMP_FILE

#- 81 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: b6Ojlo6D\ncode: 76' \
    >$TEMP_FILE 2>&1
update_status $? 'SendChannelChatResponse'
delete_file $TEMP_FILE

#- 82 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: MNpP2qMr\nuserId: TQ1UpjfU' \
    >$TEMP_FILE 2>&1
update_status $? 'SetReadyConsentNotif'
delete_file $TEMP_FILE

#- 83 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: 6wJhy1jO\nmatchId: VkkUlS79' \
    >$TEMP_FILE 2>&1
update_status $? 'SetReadyConsentRequest'
delete_file $TEMP_FILE

#- 84 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: Z25Ia8uC\ncode: 60' \
    >$TEMP_FILE 2>&1
update_status $? 'SetReadyConsentResponse'
delete_file $TEMP_FILE

#- 85 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: eZFlLtEV\nkey: pDAEbA82\nnamespace: jy74lq0p\nvalue: DE5xRwh5' \
    >$TEMP_FILE 2>&1
update_status $? 'SetSessionAttributeRequest'
delete_file $TEMP_FILE

#- 86 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: 45ebpcM7\ncode: 2' \
    >$TEMP_FILE 2>&1
update_status $? 'SetSessionAttributeResponse'
delete_file $TEMP_FILE

#- 87 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: wIp9rRtn\nactivity: ScSs3UOp\navailability: 53' \
    >$TEMP_FILE 2>&1
update_status $? 'SetUserStatusRequest'
delete_file $TEMP_FILE

#- 88 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: cCxdbume\ncode: 82' \
    >$TEMP_FILE 2>&1
update_status $? 'SetUserStatusResponse'
delete_file $TEMP_FILE

#- 89 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: YgOdEBWR' \
    >$TEMP_FILE 2>&1
update_status $? 'ShutdownNotif'
delete_file $TEMP_FILE

#- 90 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: QiW3KFfU\nmessage: 8icH4081' \
    >$TEMP_FILE 2>&1
update_status $? 'SignalingP2PNotif'
delete_file $TEMP_FILE

#- 91 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: gUDEcJyI\nextraAttributes: gRB1GyLf\ngameMode: Lg4RYuEb\npartyAttributes: {"vsPwOr0B":{}}\npriority: 25\ntempParty: V5iFvfwF' \
    >$TEMP_FILE 2>&1
update_status $? 'StartMatchmakingRequest'
delete_file $TEMP_FILE

#- 92 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: TSmIEqoL\ncode: 19' \
    >$TEMP_FILE 2>&1
update_status $? 'StartMatchmakingResponse'
delete_file $TEMP_FILE

#- 93 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"yLeUGmom":true}' \
    >$TEMP_FILE 2>&1
update_status $? 'SystemComponentsStatus'
delete_file $TEMP_FILE

#- 94 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: XTZ0v8pq\nuserId: Lfc5SwGn' \
    >$TEMP_FILE 2>&1
update_status $? 'UnblockPlayerNotif'
delete_file $TEMP_FILE

#- 95 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: ReUULDX4\nnamespace: QUIbb5nh\nunblockedUserId: 68ZnyUtR' \
    >$TEMP_FILE 2>&1
update_status $? 'UnblockPlayerRequest'
delete_file $TEMP_FILE

#- 96 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: W9hNBSFT\ncode: 42\nnamespace: tFrOmjkF\nunblockedUserId: rFVA8t0x' \
    >$TEMP_FILE 2>&1
update_status $? 'UnblockPlayerResponse'
delete_file $TEMP_FILE

#- 97 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: F34Xpt6Z' \
    >$TEMP_FILE 2>&1
update_status $? 'UnfriendNotif'
delete_file $TEMP_FILE

#- 98 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: 2a0nI2oo\nfriendId: lTTic0kr' \
    >$TEMP_FILE 2>&1
update_status $? 'UnfriendRequest'
delete_file $TEMP_FILE

#- 99 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: HCJK5sp0\ncode: 92' \
    >$TEMP_FILE 2>&1
update_status $? 'UnfriendResponse'
delete_file $TEMP_FILE

#- 100 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    >$TEMP_FILE 2>&1
update_status $? 'UserBannedNotification'
delete_file $TEMP_FILE

#- 101 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: aCvIq3aH' \
    >$TEMP_FILE 2>&1
update_status $? 'UserMetricRequest'
delete_file $TEMP_FILE

#- 102 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: YIlewLRu\ncode: 94\nplayerCount: 67' \
    >$TEMP_FILE 2>&1
update_status $? 'UserMetricResponse'
delete_file $TEMP_FILE

#- 103 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: Y83bGj0H\navailability: 90\nlastSeenAt: eeWXlIcR\nuserId: idqctDpy' \
    >$TEMP_FILE 2>&1
update_status $? 'UserStatusNotif'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT