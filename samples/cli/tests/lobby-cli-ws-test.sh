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
'type: acceptFriendsNotif\nfriendId: aVt2zA9M'
'type: acceptFriendsRequest\nid: REEqGBbY\nfriendId: cnrMvxvB'
'type: acceptFriendsResponse\nid: BLFCxAAG\ncode: 85'
'type: blockPlayerNotif\nblockedUserId: 1HVF20tk\nuserId: NFobk5r4'
'type: blockPlayerRequest\nid: XY6JRJMJ\nblockUserId: T9VydglI\nnamespace: CJmV3AdL'
'type: blockPlayerResponse\nid: 434HL0nP\nblockUserId: 3eUbzKVa\ncode: 12\nnamespace: 7VsEBRa9'
'type: cancelFriendsNotif\nuserId: 8WAxn34s'
'type: cancelFriendsRequest\nid: JWoLguGN\nfriendId: ZV7YwZKY'
'type: cancelFriendsResponse\nid: vnSlTXly\ncode: 74'
'type: cancelMatchmakingRequest\nid: oEk5W6KQ\ngameMode: 6zWWP1Nd\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: dKRtMzaF\ncode: 39'
'type: channelChatNotif\nchannelSlug: T6531XDq\nfrom: VamcCp0F\npayload: 0j5lBL9P\nsentAt: w14bYPnm'
'type: clientResetRequest\nnamespace: vvA9VGt4\nuserId: S2DHzgsT'
'type: connectNotif\nlobbySessionId: QqmsG7xP'
'type: disconnectNotif\nconnectionId: AsbzOpOd\nnamespace: 6lRYelBz'
'type: dsNotif\nalternateIps: [Vy2LT6r2,VlBxNleB,SUh9EtOa]\ncustomAttribute: lvH1Exbz\ndeployment: IMgDrEK1\ngameVersion: ACYhUq1q\nimageVersion: P0b7mJy2\nip: IheaGD2H\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: ckKCcrJT\nmatchId: gUsuqAo3\nmessage: N8rNL5XS\nnamespace: MZNs3nsx\npodName: bxjh8WMZ\nport: 47\nports: {"8ux2XIsC":53,"jWa2yO3A":50,"4kauON8F":41}\nprotocol: bI1iX5WP\nprovider: z5l2aHu5\nregion: xdwxDzi5\nsessionId: xHJUyaPL\nstatus: 0YzU0YPU'
'type: errorNotif\nmessage: w59jmPRY'
'type: exitAllChannel\nnamespace: DO1uzq4K\nuserId: fjMWPTRs'
'type: friendsStatusRequest\nid: MBrTciec'
'type: friendsStatusResponse\nid: ZLveCqDS\nactivity: [YflZ9dRH,0SFZCTXi,9qXJytE9]\navailability: [72,80,35]\ncode: 14\nfriendIds: [erCJoqvA,TypPT9mN,SccnHbpD]\nlastSeenAt: [IsHU0LIu,sSFEzflY,dyrSKDj5]'
'type: getAllSessionAttributeRequest\nid: JlAbpsez'
'type: getAllSessionAttributeResponse\nid: 5gAmpuTr\nattributes: {"gWSraqYh":"mdzks3ai","YtW3i0Ig":"xxzFgCCR","saKSiC2B":"6o7gibDi"}\ncode: 46'
'type: getFriendshipStatusRequest\nid: WnhwUABZ\nfriendId: 14tunYON'
'type: getFriendshipStatusResponse\nid: OmNcEaHY\ncode: 5\nfriendshipStatus: YOXJJCwD'
'type: getSessionAttributeRequest\nid: AyPWb0JD\nkey: PpLweBji'
'type: getSessionAttributeResponse\nid: dgXaWZUD\ncode: 88\nvalue: cND1SfTM'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: Vi9fD9QT'
'type: joinDefaultChannelResponse\nid: WRpw2OqX\nchannelSlug: 5VGMorVf\ncode: 49'
'type: listIncomingFriendsRequest\nid: Vfm6roLM'
'type: listIncomingFriendsResponse\nid: WOEhBWlZ\ncode: 97\nuserIds: [4aji2oty,odGkh7Dl,BlTBLlyw]'
'type: listOfFriendsRequest\nid: tKmctvng\nfriendId: K7MMSqpv'
'type: listOfFriendsResponse\nid: vX7KZ5TJ\ncode: 99\nfriendIds: [c8pICL6O,hme5WmRN,6W0sDGsB]'
'type: listOnlineFriendsRequest\nid: fZ42zT5Q'
'type: listOutgoingFriendsRequest\nid: nQVArSIG'
'type: listOutgoingFriendsResponse\nid: VzTocZiM\ncode: 4\nfriendIds: [y8meGPHD,QREBmV2c,lTA8jp3M]'
'type: matchmakingNotif\ncounterPartyMember: [wVtrfZYy,zirUqymc,9LsPRUDF]\nmatchId: PlVUPLrd\nmessage: jb7OARMy\npartyMember: [ceHxdTbP,3jmPi3CZ,ms6k1Orm]\nreadyDuration: 4\nstatus: 2JL2Gb1E'
'type: messageNotif\nid: m1lfHoIp\nfrom: 7R8dS8Cq\npayload: 1rZlDJxn\nsentAt: 46\nto: CSFmL9pC\ntopic: nBpTLFiQ'
'type: offlineNotificationRequest\nid: NIqokihE'
'type: offlineNotificationResponse\nid: o2VQ0GIL\ncode: 11'
'type: onlineFriends\nid: oNUzR2co\ncode: 97\nonlineFriendIds: [ncbQICYp,kFJpEHbB,sllUvOF3]'
'type: partyChatNotif\nid: 9wQ2PGLW\nfrom: 8Arq4wGo\npayload: C9T6RGE9\nreceivedAt: 91\nto: tHcip4DK'
'type: partyChatRequest\nid: 8aQQByVG\nfrom: ImFSxgkd\npayload: wQmoHL51\nreceivedAt: 22\nto: qe2enBJq'
'type: partyChatResponse\nid: NZf2fnl5\ncode: 52'
'type: partyCreateRequest\nid: a9KhkIul'
'type: partyCreateResponse\nid: tzsaPOqs\ncode: 68\ninvitationToken: et3PuQQB\ninvitees: e62ztZr3\nleaderId: 0ieqOuGl\nmembers: lz1t4z2g\npartyId: 3jiqWUpu'
'type: partyDataUpdateNotif\ncustomAttributes: {"gnNnWiw8":{},"hNrDYfgk":{},"eWpyK9FM":{}}\ninvitees: [qJyisClq,AULEUFyF,OYUBvAwF]\nleader: 065lqJKp\nmembers: [Tbz7iuGz,XrGiXeuV,TqXU3jUo]\nnamespace: QnWRH2Ei\npartyId: Qr28odCv\nupdatedAt: 11'
'type: partyGetInvitedNotif\nfrom: LySwYKRe\ninvitationToken: 4zJEYkb2\npartyId: zHasnOLh'
'type: partyInfoRequest\nid: bN1zpbtL'
'type: partyInfoResponse\nid: GR9Fwe8V\ncode: 99\ncustomAttributes: {"ajcqRwu9":{},"vm850DBw":{},"kNpczFAx":{}}\ninvitationToken: wlxJPSJv\ninvitees: TYhNnFJL\nleaderId: 1yGVBRdZ\nmembers: f2mb2BmY\npartyId: DtvXsn08'
'type: partyInviteNotif\ninviteeId: emQ09ryt\ninviterId: UtJGp552'
'type: partyInviteRequest\nid: NkNttgZf\nfriendId: ckcmihX8'
'type: partyInviteResponse\nid: ZbHtv73t\ncode: 45'
'type: partyJoinNotif\nuserId: dX30CDmm'
'type: partyJoinRequest\nid: t9CtRO1O\ninvitationToken: 6JIiMmQh\npartyId: 3s5P8EkO'
'type: partyJoinResponse\nid: Lvp87eoV\ncode: 62\ninvitationToken: KTyeIeNL\ninvitees: eSSzuThY\nleaderId: cgO2Nv6B\nmembers: ExNuYDDV\npartyId: iEuPfo9p'
'type: partyKickNotif\nleaderId: 3F8yxAD8\npartyId: BoJINn1v\nuserId: PvLW8HJ1'
'type: partyKickRequest\nid: YJsG50AV\nmemberId: wiU5meqL'
'type: partyKickResponse\nid: oFUBojiM\ncode: 48'
'type: partyLeaveNotif\nleaderId: OoU1eDrG\nuserId: M12waZ0f'
'type: partyLeaveRequest\nid: yNCfVzQh\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: PnZSkS52\ncode: 38'
'type: partyPromoteLeaderRequest\nid: wTjbf4Fw\nnewLeaderUserId: Vk70E6m4'
'type: partyPromoteLeaderResponse\nid: 0thiOJfq\ncode: 0\ninvitationToken: 3jGngtOz\ninvitees: jWabjKyl\nleaderId: 7xUZJs6a\nmembers: 2N1EhRDz\npartyId: HiM90qRf'
'type: partyRejectNotif\nleaderId: P2pfW6Sn\npartyId: BIyhVjmT\nuserId: SQZas9ke'
'type: partyRejectRequest\nid: gv85y5Y5\ninvitationToken: NKaou2ni\npartyId: Kh4VGeew'
'type: partyRejectResponse\nid: Db5TRDJy\ncode: 34\npartyId: WIrioHXn'
'type: personalChatHistoryRequest\nid: M0LTCM5G\nfriendId: 0vR6iqaT'
'type: personalChatHistoryResponse\nid: MCk4TGku\nchat: Xn34GXLR\ncode: 79\nfriendId: 2jxLIqkZ'
'type: personalChatNotif\nid: QhwRT1Z2\nfrom: bkJbzBkK\npayload: T65RlQQM\nreceivedAt: 79\nto: Up5LVIl8'
'type: personalChatRequest\nid: cQwIPUrT\nfrom: psq03kWB\npayload: EukhQB9M\nreceivedAt: 91\nto: gxc654si'
'type: personalChatResponse\nid: xql7eED8\ncode: 28'
'type: rejectFriendsNotif\nuserId: BWkkVLQH'
'type: rejectFriendsRequest\nid: 0plMxgnl\nfriendId: gLZ3yfxQ'
'type: rejectFriendsResponse\nid: jsz8R1BT\ncode: 19'
'type: rematchmakingNotif\nbanDuration: 83'
'type: requestFriendsNotif\nfriendId: rokX2R1J'
'type: requestFriendsRequest\nid: wDqeSgC2\nfriendId: osVEBk6C'
'type: requestFriendsResponse\nid: YXHhhz4x\ncode: 26'
'type: sendChannelChatRequest\nid: DB8MAjDg\nchannelSlug: 9Fm2Fpd4\npayload: lrHG6VX1'
'type: sendChannelChatResponse\nid: siWf6m7V\ncode: 95'
'type: setReadyConsentNotif\nmatchId: Mfibu75Y\nuserId: aWEb3bTP'
'type: setReadyConsentRequest\nid: TSATzUmf\nmatchId: w7SDYaRt'
'type: setReadyConsentResponse\nid: VffrvbDl\ncode: 36'
'type: setSessionAttributeRequest\nid: MBWavCKa\nkey: UvGDiZWN\nnamespace: wNakqNyF\nvalue: 3oBmQsPz'
'type: setSessionAttributeResponse\nid: 2spUbbiK\ncode: 47'
'type: setUserStatusRequest\nid: dtkNf2h9\nactivity: jqoEDu30\navailability: 61'
'type: setUserStatusResponse\nid: Wu7dMS2y\ncode: 56'
'type: shutdownNotif\nmessage: 5EMMnHjo'
'type: signalingP2PNotif\ndestinationId: 9GO3nsXc\nmessage: hT6ICWnA'
'type: startMatchmakingRequest\nid: OZEfpAMj\nextraAttributes: eddQH97Z\ngameMode: IhsqKCUT\npartyAttributes: {"3Uvui8NK":{},"MtE56YI4":{},"95qlvKDY":{}}\npriority: 93\ntempParty: 0qxudzZa'
'type: startMatchmakingResponse\nid: dOIt8wrf\ncode: 97'
'type: systemComponentsStatus\ncomponents: {"9Acl12Ms":true,"m1O8ao4b":false,"W39CJeiG":true}'
'type: unblockPlayerNotif\nunblockedUserId: IDzLqaKD\nuserId: hSvX484x'
'type: unblockPlayerRequest\nid: iabjbC8D\nnamespace: bMRVPrmi\nunblockedUserId: VHlpiaDk'
'type: unblockPlayerResponse\nid: 0j2yhZnQ\ncode: 15\nnamespace: RQoJhwNA\nunblockedUserId: ddbZSnSP'
'type: unfriendNotif\nfriendId: srfp7hmf'
'type: unfriendRequest\nid: F0gsuSqy\nfriendId: KB5SHY0h'
'type: unfriendResponse\nid: aQbeAHPy\ncode: 69'
'type: userBannedNotification'
'type: userMetricRequest\nid: XFHjlq2w'
'type: userMetricResponse\nid: ZPuqYdj4\ncode: 30\nplayerCount: 62'
'type: userStatusNotif\nactivity: EGWvlGJ5\navailability: 48\nlastSeenAt: s31FAJhH\nuserId: EPf6KNfN'
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
    'type: acceptFriendsNotif\nfriendId: vGMXwMbF' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: oeZnufs8\nfriendId: MAt2xzbV' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: hlO7mp9L\ncode: 55' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: 7ZVm6dcO\nuserId: iDUlgBSt' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: IVnzur7u\nblockUserId: ptlpxNgq\nnamespace: QjuYKNMH' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: 44SXDHD9\nblockUserId: yo5wNp8p\ncode: 17\nnamespace: D7ZRL0Vz' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: ptKcBXDp' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: vq7qJPzo\nfriendId: qjGjtaWN' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: I1cJHVp6\ncode: 13' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: yxRLvKGQ\ngameMode: g79DoxGA\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: yEi5alRc\ncode: 87' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: MQTTfkZG\nfrom: TCcqbOYb\npayload: lSKDbO5v\nsentAt: gbCcZ4pR' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: oRIBA8aQ\nuserId: cZBOsNY2' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: b66myvOU' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: cAMIergA\nnamespace: SZhR01co' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [xAyNdEuS,yR4q3ghi,Ky3DIagZ]\ncustomAttribute: GO6umlo0\ndeployment: nhzeNZfh\ngameVersion: 3hriQxi2\nimageVersion: IeZdNJ0Z\nip: 7RLLkYQq\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: ZuR9Y56f\nmatchId: 197Sgbu1\nmessage: ZSLkoOUN\nnamespace: 17ozJgPO\npodName: JtfKJQao\nport: 82\nports: {"RCAUVtPR":16,"IWppcwqw":97,"3mq45eiW":30}\nprotocol: kRn3emxZ\nprovider: HVLXmYnY\nregion: gFBN9kko\nsessionId: IHDutE9l\nstatus: ExCb4OJT' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: cOUsdThV' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: wotkJhM7\nuserId: CzZDIn5D' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: at1A5ZW8' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: ha7Ese4s\nactivity: [t9RrWK5x,raNg0IS8,gyXChT3v]\navailability: [92,63,32]\ncode: 42\nfriendIds: [t6lCoNTD,8H1FcC8z,h29kjK6n]\nlastSeenAt: [xDRePWkY,RcM6zWlt,MV3EeCxQ]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: cHJdYeEV' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: TkKhS9J9\nattributes: {"hNcM2669":"5UNNmOgt","0tnetUPF":"hqkzNi08","tFpTcO1q":"mXf2YDnj"}\ncode: 40' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: JcM9G8we\nfriendId: Al62Zm8O' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: 7o4Ey6Qq\ncode: 63\nfriendshipStatus: fYcIEBCi' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: ODFAiOZP\nkey: Ru6Zc6H3' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: MzYXcdNy\ncode: 36\nvalue: 4XLXqT3w' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: Yk77VFDn' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: XLjJGYuK\nchannelSlug: SVe188Dq\ncode: 67' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: ejvOq60Z' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: KscBplPD\ncode: 81\nuserIds: [bv6h9jqk,iWKrgd1I,F33ULLzb]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: VqrhRgIL\nfriendId: Sx7gO6Ph' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: I5ktG6Ua\ncode: 54\nfriendIds: [SqZmujDK,N3gu71Fp,HX1jOTYE]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: j5H8N1FU' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: 8BrLBdS4' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: D534ICi2\ncode: 52\nfriendIds: [hTGcnyYv,Rx49t4Mo,oTC6xwog]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [YaDEaz9e,zL16P6Nz,7GSJnJ9z]\nmatchId: 9wP8XxQi\nmessage: 91sCzQKb\npartyMember: [6HFU71Ip,uyUD0NYF,FVQe0aA5]\nreadyDuration: 88\nstatus: WsCId2hy' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: 3f6JudoG\nfrom: yYHCVOuM\npayload: 1jTsCsV2\nsentAt: 7\nto: AHdxHKpB\ntopic: 262bUsK5' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: KSx4buid' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: Ijf8KkE9\ncode: 52' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: MtDbn2jv\ncode: 62\nonlineFriendIds: [OiheOUIv,OuhLTty1,aKCP0ZrM]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: jY8lp0nr\nfrom: cst31e4O\npayload: 1fU5tfIp\nreceivedAt: 65\nto: vz3zaAUd' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: 0SWgplsU\nfrom: IybA3j7M\npayload: v3DMsuzt\nreceivedAt: 43\nto: l9lIlacy' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: HKWJzJKH\ncode: 53' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: C4GAm4bl' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: oInWeB57\ncode: 40\ninvitationToken: vJCAioMB\ninvitees: 8vv5BOhm\nleaderId: u6R2hjfL\nmembers: BrU0jPLm\npartyId: nfmux6zA' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"cOF5Hv8S":{},"S7AuO0gF":{},"o04MdoPa":{}}\ninvitees: [DgBDvWys,CuUzOR3Z,1b40i0Vn]\nleader: m6au0bum\nmembers: [LO7HmGog,D8YRcN7d,ipsi9G9T]\nnamespace: KkpTYNJX\npartyId: UCuhnzLD\nupdatedAt: 98' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: Hyqy8Sqc\ninvitationToken: 5XFuv7ec\npartyId: rzqtTGzw' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: Zxufke36' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: 9nTqkxHk\ncode: 52\ncustomAttributes: {"Lj32IS4k":{},"DHbygl9r":{},"luIQS9O5":{}}\ninvitationToken: YzileoQb\ninvitees: 9fx6vjIc\nleaderId: EEGX65bG\nmembers: NPaBbkqQ\npartyId: CXvH4WMN' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: AqOQcr1R\ninviterId: ITyaO2md' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: 40AxPkam\nfriendId: 8W1hz7Fo' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: ze9jcTOV\ncode: 2' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: zgCSOMuW' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: xKJrzkU3\ninvitationToken: OhDdzVsU\npartyId: jgvgJeQe' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: vFn4hDCt\ncode: 13\ninvitationToken: LqdRMZ0S\ninvitees: A4yzxtiC\nleaderId: 1Gv1GEOT\nmembers: RmxKVh6k\npartyId: Z84fEctl' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: JuNIh8cy\npartyId: 8dbgMKOy\nuserId: UdG075Hl' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: WJ1tXufm\nmemberId: NQtp4Wzf' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: 0S37Aq1g\ncode: 41' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: 3hVN9bAG\nuserId: gMGVQ31o' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: Omf54Bdi\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: go2m82s6\ncode: 51' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: lDjMczlw\nnewLeaderUserId: BJfvR7dv' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: 4nHr1y2y\ncode: 80\ninvitationToken: tID95s52\ninvitees: ifEJfGIQ\nleaderId: KFPzma5a\nmembers: PkIfUPqH\npartyId: IByYJhzG' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: 3lNkN72T\npartyId: NS1buS8h\nuserId: N1XVjgCR' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: GZ1u2QWH\ninvitationToken: EafnUCYX\npartyId: iBAUdiWY' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: HvpWIstb\ncode: 14\npartyId: OcEJJH76' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: AC2C62RZ\nfriendId: Wo1q99ia' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: 9dmbH0Ax\nchat: 9lFw8LD0\ncode: 5\nfriendId: JSwpdllr' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: xACN5VoJ\nfrom: GtVuOjPS\npayload: TTPJjqcf\nreceivedAt: 100\nto: rDhHGkOY' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: AGjzAtVn\nfrom: 0grrdy7W\npayload: 2Dso4MdR\nreceivedAt: 5\nto: oet5uE4h' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: uC7xIsOT\ncode: 51' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: Mdq9egcX' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: 5KnExngG\nfriendId: lJLFGloo' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: dIH7faMW\ncode: 34' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 14' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: rwXu3Qxd' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: KysMRSYz\nfriendId: cyOyrPU2' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: WiQ2UqTv\ncode: 17' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: cNCseuNI\nchannelSlug: buCfiGzT\npayload: ajrYel4j' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: xvSwx5LR\ncode: 40' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: qaIO2gLy\nuserId: 3NsbD7L9' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: R0m7wV6r\nmatchId: nJzlJOPI' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: DYlaL0Xk\ncode: 50' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: fSOhHD4g\nkey: ywGDk06T\nnamespace: PsSu92V3\nvalue: HEdQK2Sk' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: BKGUYm8f\ncode: 90' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: W4n1G7qD\nactivity: OBmXzRTE\navailability: 51' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: CByw6tEv\ncode: 81' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: 4giCXCiJ' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: BHryWwNy\nmessage: K2jjYY9d' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: rPiamE8S\nextraAttributes: 3xSfArP7\ngameMode: tiKyZyZX\npartyAttributes: {"KB28aKUf":{},"ZXAa4vUS":{},"lJ6bNMcA":{}}\npriority: 79\ntempParty: lWnQRdr4' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: LSzMhbSU\ncode: 37' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"NH3dlqim":false,"TOFO1Guj":true,"eSoJ1GgY":true}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: WeVPBnNV\nuserId: GqgLOv5y' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: 5VqfD51T\nnamespace: X4eE3by7\nunblockedUserId: vLcs0qOp' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: ZLNGD05p\ncode: 26\nnamespace: 02E16JLV\nunblockedUserId: qB4hIS5c' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: 2SS06L3E' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: KvlxDHbR\nfriendId: oyoM5Vh7' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: vrpMRHoE\ncode: 4' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: MjRVv6jk' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: 6MKHKnWy\ncode: 15\nplayerCount: 72' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: 1D2wn5A1\navailability: 96\nlastSeenAt: AClVRDSa\nuserId: 6Ayh3G8i' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
