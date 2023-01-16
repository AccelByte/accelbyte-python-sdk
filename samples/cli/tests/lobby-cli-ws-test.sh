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
'type: acceptFriendsNotif\nfriendId: Lk6gK4E4'
'type: acceptFriendsRequest\nid: PwYDdJ9K\nfriendId: C7XjqnoM'
'type: acceptFriendsResponse\nid: T4rNJGle\ncode: 73'
'type: blockPlayerNotif\nblockedUserId: iYZIZdGX\nuserId: kCCLQGHE'
'type: blockPlayerRequest\nid: O5ogJSE5\nblockUserId: 1OhIpscX\nnamespace: oHaam2vU'
'type: blockPlayerResponse\nid: vigcaZCZ\nblockUserId: Fonp6CK5\ncode: 71\nnamespace: nl1NPy2L'
'type: cancelFriendsNotif\nuserId: aPBhROp4'
'type: cancelFriendsRequest\nid: dthhJOqh\nfriendId: 5kYOFrrO'
'type: cancelFriendsResponse\nid: IHwH9o4L\ncode: 45'
'type: cancelMatchmakingRequest\nid: dO7LvNdO\ngameMode: RE70Oqpz\nisTempParty: False'
'type: cancelMatchmakingResponse\nid: 0v8blt95\ncode: 85'
'type: channelChatNotif\nchannelSlug: Ccg0xXk1\nfrom: STI75ltF\npayload: 968rl0qP\nsentAt: sLB9M156'
'type: clientResetRequest\nnamespace: pbHqTFeH\nuserId: wIcn8deg'
'type: connectNotif\nlobbySessionId: WukyhCXr'
'type: disconnectNotif\nconnectionId: 0DRgIC6K\nnamespace: pk5SMuUH'
'type: dsNotif\nalternateIps: [IQb6GNN8,YygvTkCy,w8piuLl0]\ncustomAttribute: c5HbhUOT\ndeployment: yBpPpjbT\ngameVersion: zavN5Ze4\nimageVersion: vX0BSbFo\nip: sBPaSjVV\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: qr0dwxR2\nmatchId: H8QkQ2Dw\nmessage: xf0Ll8gw\nnamespace: ytyNdjze\npodName: RPC9cuR2\nport: 64\nports: {"IdlgsPnE":27,"fKRnqE1n":21,"RUXPuggL":100}\nprotocol: Mc96KIj8\nprovider: 8aUacqX5\nregion: 9cK76dQj\nsessionId: ig62tfWy\nstatus: DSdufPwS'
'type: errorNotif\nmessage: gb9UVzfa'
'type: exitAllChannel\nnamespace: rRv5a4KX\nuserId: xgqUY2y3'
'type: friendsStatusRequest\nid: EDWq3zhj'
'type: friendsStatusResponse\nid: DIy4j4tJ\nactivity: [6INLZR7C,okFJufW9,6R2mcgb5]\navailability: [86,66,59]\ncode: 64\nfriendIds: [00sXxZDx,i6KgnWBg,Ywbyl3QZ]\nlastSeenAt: [xC98E65R,AT8GImJC,mSSyPGrJ]'
'type: getAllSessionAttributeRequest\nid: cBBOXWH1'
'type: getAllSessionAttributeResponse\nid: iVh3rKAH\nattributes: {"yPPLgD2g":"dUTySb9d","iKZ2OuaI":"CzbNzyIL","tqz1DP1Z":"7ZyfkuLH"}\ncode: 59'
'type: getFriendshipStatusRequest\nid: swQYkKLA\nfriendId: rj0rAjjQ'
'type: getFriendshipStatusResponse\nid: kjRDpVIz\ncode: 30\nfriendshipStatus: NwZpziib'
'type: getSessionAttributeRequest\nid: XczZAqUs\nkey: g4v7czJk'
'type: getSessionAttributeResponse\nid: nukWc5wM\ncode: 75\nvalue: HFROujPY'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: 95W4M1mp'
'type: joinDefaultChannelResponse\nid: D8luglMp\nchannelSlug: b1MRKJeV\ncode: 66'
'type: listIncomingFriendsRequest\nid: OmM9U60h'
'type: listIncomingFriendsResponse\nid: rmdDBkMG\ncode: 45\nuserIds: [6Emd00cl,i9DQuaTO,fKBHg02A]'
'type: listOfFriendsRequest\nid: X5Q1OfzI\nfriendId: QONuxorg'
'type: listOfFriendsResponse\nid: pcN146QT\ncode: 49\nfriendIds: [yo484EJw,N4SnSgPI,HUHvo7aA]'
'type: listOnlineFriendsRequest\nid: 3SqipPtl'
'type: listOutgoingFriendsRequest\nid: WJ62Wiu9'
'type: listOutgoingFriendsResponse\nid: kqnBkhg2\ncode: 3\nfriendIds: [wRkPDqM1,eJX2jr7p,db86b7x4]'
'type: matchmakingNotif\ncounterPartyMember: [72m9CiTC,NdpuZPra,ERjJONFU]\nmatchId: 5lppRJQE\nmessage: KIlndkU7\npartyMember: [5UKT7Yp1,7IWJn0lp,pAfNkRHG]\nreadyDuration: 13\nstatus: NUdTdlWV'
'type: messageNotif\nid: KutwD5b1\nfrom: cfaMzzBG\npayload: f8jfmZEv\nsentAt: 20\nto: PqBGZ9m3\ntopic: eyAYoRpE'
'type: offlineNotificationRequest\nid: NP5h0RPL'
'type: offlineNotificationResponse\nid: KAdDA1hr\ncode: 18'
'type: onlineFriends\nid: GCjSASyx\ncode: 13\nonlineFriendIds: [jnUljmHN,nqLUNA03,Y3QseMP2]'
'type: partyChatNotif\nid: GMBHW42g\nfrom: 9IIZEkRT\npayload: Pc7Wg7Zi\nreceivedAt: 48\nto: SAGQMhTQ'
'type: partyChatRequest\nid: 6ZKkkA1f\nfrom: CUyIgu9W\npayload: mEcljXCP\nreceivedAt: 19\nto: pcV0PwOw'
'type: partyChatResponse\nid: P7KmSbjN\ncode: 4'
'type: partyCreateRequest\nid: HfJ7lhZk'
'type: partyCreateResponse\nid: wAqYVFrk\ncode: 60\ninvitationToken: B5LQWN6r\ninvitees: xsYXsuG1\nleaderId: VjQj01tS\nmembers: UOehPGgN\npartyId: nyCxxMaT'
'type: partyDataUpdateNotif\ncustomAttributes: {"axnRQVJq":{},"7e6YOP5s":{},"v0ZINUGG":{}}\ninvitees: [Fd2q3rr8,9gAvN253,bV4DqBWw]\nleader: FkeRHqQR\nmembers: [i6YQsXRc,6OTdXy53,o8yP0kaX]\nnamespace: R1P5B3Er\npartyId: yY1859Wd\nupdatedAt: 55'
'type: partyGetInvitedNotif\nfrom: 1geEurrM\ninvitationToken: Nt3XdURQ\npartyId: aKflDlXg'
'type: partyInfoRequest\nid: 9B0TOXck'
'type: partyInfoResponse\nid: OkdkjORn\ncode: 13\ncustomAttributes: {"6K7YUK0e":{},"lg73wMl5":{},"ybMYqouH":{}}\ninvitationToken: 1NlJoIJN\ninvitees: BN6HHhAD\nleaderId: kwWNsglQ\nmembers: f3osyWYS\npartyId: VdRE9uGF'
'type: partyInviteNotif\ninviteeId: fY4TQ7vi\ninviterId: 73Yt5FXr'
'type: partyInviteRequest\nid: bWNmkHcw\nfriendId: vdWikPLi'
'type: partyInviteResponse\nid: 1vq28Suw\ncode: 23'
'type: partyJoinNotif\nuserId: lOJv9Snp'
'type: partyJoinRequest\nid: d6dOEPNb\ninvitationToken: TqLIY081\npartyId: csQYDvBY'
'type: partyJoinResponse\nid: AL3nptfR\ncode: 14\ninvitationToken: UWeVocRo\ninvitees: pQacCsAe\nleaderId: BFNG77sd\nmembers: AmvZ4Mv7\npartyId: qtovsonZ'
'type: partyKickNotif\nleaderId: ykaSISuh\npartyId: fdUeEhln\nuserId: IsAcFsDX'
'type: partyKickRequest\nid: usG1cRRY\nmemberId: mRkQdwwQ'
'type: partyKickResponse\nid: vmQpLIXa\ncode: 34'
'type: partyLeaveNotif\nleaderId: 4dsaQoX2\nuserId: moMm6GTc'
'type: partyLeaveRequest\nid: ysBpK4uL\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: nDHt3FEK\ncode: 48'
'type: partyPromoteLeaderRequest\nid: 4Z4eqVLt\nnewLeaderUserId: B01BmMKe'
'type: partyPromoteLeaderResponse\nid: zQSooXIk\ncode: 10\ninvitationToken: 9eoB3qGS\ninvitees: KNotPVRX\nleaderId: Pw4HH9Jt\nmembers: zHGyeq3X\npartyId: eCVV6tBf'
'type: partyRejectNotif\nleaderId: eDkzncfZ\npartyId: ZUy6QuHz\nuserId: V7MsGeVH'
'type: partyRejectRequest\nid: VRCULcLX\ninvitationToken: IdpMH9DF\npartyId: OVFglImX'
'type: partyRejectResponse\nid: gqnobI27\ncode: 92\npartyId: ExbpEqdX'
'type: personalChatHistoryRequest\nid: CQZjiVHl\nfriendId: q1pUdWQ9'
'type: personalChatHistoryResponse\nid: BkP0mYjm\nchat: t05L0CcB\ncode: 23\nfriendId: Eocxhvn6'
'type: personalChatNotif\nid: JaqaelkF\nfrom: 2dpQwYQ8\npayload: zWRNdbkn\nreceivedAt: 7\nto: mbdTPXbR'
'type: personalChatRequest\nid: 13yzk5fV\nfrom: Ey0PTlwP\npayload: wy7L9ENN\nreceivedAt: 58\nto: O1wanLa3'
'type: personalChatResponse\nid: ZDWNb79U\ncode: 41'
'type: rejectFriendsNotif\nuserId: vFqbgYJg'
'type: rejectFriendsRequest\nid: aeDNBUy7\nfriendId: 4lb2lldp'
'type: rejectFriendsResponse\nid: VQTLyNRg\ncode: 29'
'type: rematchmakingNotif\nbanDuration: 47'
'type: requestFriendsNotif\nfriendId: PMzj4hKl'
'type: requestFriendsRequest\nid: c3pCmv7l\nfriendId: T0T6hdOx'
'type: requestFriendsResponse\nid: KarYwTC8\ncode: 42'
'type: sendChannelChatRequest\nid: C2yTk75V\nchannelSlug: OaKJvOR9\npayload: gA98qC8s'
'type: sendChannelChatResponse\nid: gB28lhZR\ncode: 52'
'type: setReadyConsentNotif\nmatchId: d3IkBYG3\nuserId: dwDqZAfV'
'type: setReadyConsentRequest\nid: rh8lmbVU\nmatchId: oNTRnMZW'
'type: setReadyConsentResponse\nid: SL49kIzs\ncode: 18'
'type: setSessionAttributeRequest\nid: Wf6MMhkT\nkey: t4l7164U\nnamespace: gDFwnJNg\nvalue: b9cLWmR4'
'type: setSessionAttributeResponse\nid: JAxSMw7L\ncode: 5'
'type: setUserStatusRequest\nid: B679abOd\nactivity: fr4kpOk4\navailability: 92'
'type: setUserStatusResponse\nid: NJ0IBfNO\ncode: 14'
'type: shutdownNotif\nmessage: 58rWNaKL'
'type: signalingP2PNotif\ndestinationId: nq5zpiYE\nmessage: vUa55499'
'type: startMatchmakingRequest\nid: s0s5cgn1\nextraAttributes: idq5KGGa\ngameMode: pYTRQgGb\npartyAttributes: {"FPFXBQtV":{},"7sNiau0h":{},"iMspSEFS":{}}\npriority: 26\ntempParty: t6ZvnxB8'
'type: startMatchmakingResponse\nid: qfOLnh8B\ncode: 78'
'type: systemComponentsStatus\ncomponents: {"euucUmxz":true,"4ex17Z6d":false,"OEtHgIjG":false}'
'type: unblockPlayerNotif\nunblockedUserId: dzzljdhT\nuserId: f2t1GYkj'
'type: unblockPlayerRequest\nid: mWGSJ6pS\nnamespace: 2EesrT3X\nunblockedUserId: B7UNtSsO'
'type: unblockPlayerResponse\nid: PsXeCZdU\ncode: 74\nnamespace: Whwv6AvA\nunblockedUserId: aWkOeO0W'
'type: unfriendNotif\nfriendId: uEkURewc'
'type: unfriendRequest\nid: q9EQ8Ywk\nfriendId: Qw5FZPky'
'type: unfriendResponse\nid: kTNfWmyT\ncode: 23'
'type: userBannedNotification'
'type: userMetricRequest\nid: jBhfSvka'
'type: userMetricResponse\nid: Ak5EUyWZ\ncode: 83\nplayerCount: 48'
'type: userStatusNotif\nactivity: HMnawE7h\navailability: 30\nlastSeenAt: Z6p7toTC\nuserId: G9qVdacu'
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
    'type: acceptFriendsNotif\nfriendId: dg6kAigr' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: VLVCttE5\nfriendId: mOPvtqGM' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: iu2XtxNz\ncode: 27' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: KrrYm1s6\nuserId: my6PBp1O' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: staJ78RB\nblockUserId: px4t8gdV\nnamespace: G7sPvVcO' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: t0EDpFdc\nblockUserId: ueNCo3H7\ncode: 88\nnamespace: 2UI92eAv' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: eYEKRMLq' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: jGtE7FvF\nfriendId: B2sf7axA' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: zYlc1iYJ\ncode: 89' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: awkBauYe\ngameMode: 8SCK57mL\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: HPwW4c7r\ncode: 5' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: LrrvvZR3\nfrom: wh0QRZm2\npayload: ohQPLXhy\nsentAt: DmMEsxL7' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: GTQXZiCk\nuserId: 2ZBoMOXM' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: 9h4G0iAO' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: 4nJfi0Zj\nnamespace: GDqfIPip' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [8kB8Ly7R,dcgtmJoc,c3nQo6GJ]\ncustomAttribute: VSIFPqFc\ndeployment: nDRYdRpS\ngameVersion: f23J4AhC\nimageVersion: 3i1Mrp5C\nip: 5kVUwXH7\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: dH2iak9d\nmatchId: OSKXYFBA\nmessage: etWgH3UX\nnamespace: RWiUkvqY\npodName: sApwOyxF\nport: 38\nports: {"F1HBaWLw":54,"658mKegJ":20,"O3AapeUK":53}\nprotocol: cBVPTVEK\nprovider: Hth5Fg9O\nregion: CgN4r4wh\nsessionId: lwwh6GSC\nstatus: y7OAHB7a' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: oR2PHZpE' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: kVevpgaX\nuserId: gl4iNjQu' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: ZHK0uUmU' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: UbHimmlR\nactivity: [dhN6qE6i,zt41ppy4,nF3z6MSP]\navailability: [56,7,3]\ncode: 52\nfriendIds: [dr9JEwrj,haY07RIj,ME8S61OZ]\nlastSeenAt: [qa7vqLNr,QW3gX6o7,xAuMd3h0]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: Y6xlnKFa' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: OCBgxZUf\nattributes: {"mZd1Lmei":"ONWz8P7l","syWHkjqy":"sIl0JcCf","ZcVkyrnB":"LxV49SbO"}\ncode: 52' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: DMkKH0rt\nfriendId: CfkqwknK' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: SXgrA0VK\ncode: 24\nfriendshipStatus: h7VF6Ywy' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: a4PFWd4p\nkey: 3t1CnqBu' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: Pk3RSe6Y\ncode: 5\nvalue: aT4lERZj' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: DyeH3KUM' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: mUbZrVoU\nchannelSlug: WGTLVaoz\ncode: 34' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: dFUjO2cc' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: 4aWHWlyn\ncode: 65\nuserIds: [lQJgZo2q,xhJk09Is,s5BPnGNl]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: YjIZKtZU\nfriendId: 1VBRzDkm' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: 5ZsmxxRQ\ncode: 46\nfriendIds: [6f91WNfa,NStuXsXV,0A2zVTb0]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 0uZENpZK' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: MLXXvOdR' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: RHijRMsd\ncode: 72\nfriendIds: [BXSZ8Peu,6W3Z1KDj,BYOtqfz0]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [rsRl2qFm,WOFUobyT,CNeFYg3E]\nmatchId: wmGTvufS\nmessage: PkPdIkCi\npartyMember: [ghGZPbUm,NXn4JCgB,DjREMu6d]\nreadyDuration: 18\nstatus: 5oRLxFDF' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: UryfYQ5A\nfrom: jm4K6aQs\npayload: NYSt9MpZ\nsentAt: 82\nto: FBtGcovW\ntopic: pY9bBtKQ' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: PTGd1S5J' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: KL7ZJcTE\ncode: 64' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: IMPPPaaQ\ncode: 96\nonlineFriendIds: [IOZ4WH9w,suViJuxU,xDFqDGQO]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: 7ibxQbZI\nfrom: LUwNGnZe\npayload: 2IH4KdHK\nreceivedAt: 75\nto: teiKGcRJ' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: GA61bTmL\nfrom: WMB7lknP\npayload: TuYnIMy3\nreceivedAt: 55\nto: Gh6DBJUj' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: 6nvGAW40\ncode: 30' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: PHdKjriS' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: RQPK25zq\ncode: 13\ninvitationToken: gq2YRvEJ\ninvitees: 6L3OYOqp\nleaderId: BDLPYMNW\nmembers: pwxByj2z\npartyId: Giutx7Ah' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"C4mBf9Ld":{},"noSEaouD":{},"stAx2vad":{}}\ninvitees: [0zoO4v32,yPQhdyEb,aRH5xQA1]\nleader: klc29hiN\nmembers: [Sbjdkehf,eEyIFVyQ,ytd5mje9]\nnamespace: jOtSXC9H\npartyId: KDhlWTf9\nupdatedAt: 71' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: GWeETYoE\ninvitationToken: VCYL20dP\npartyId: G8G2iT4w' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: 1V1cr1Ge' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: Kshd2si1\ncode: 38\ncustomAttributes: {"PumVKk42":{},"v5OcGmrz":{},"i2KKE61J":{}}\ninvitationToken: 6jYwuGwV\ninvitees: cxZQltQm\nleaderId: H59pEL7V\nmembers: qXSldpMZ\npartyId: VR3c0WtU' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: Mc4slQxJ\ninviterId: mcQWkW3j' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: j7hNa6C4\nfriendId: gcA9dGbd' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: NcYmNZFz\ncode: 11' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: ZIqVlGh3' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: FcR9zCUw\ninvitationToken: b8zxVrQo\npartyId: dz9B6AVj' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: PFc0U9XO\ncode: 69\ninvitationToken: DUFYW37q\ninvitees: 7PTgbZAy\nleaderId: 8lDpOsGH\nmembers: jYgcDPM6\npartyId: hL3HZaxo' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: SOh6zVWq\npartyId: DIcQssMS\nuserId: ZGC5NbJW' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: 1D5zbRGG\nmemberId: noplNJeH' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: UtjvAeFH\ncode: 27' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: f4BPoXNg\nuserId: 3I1lidd9' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: 8ZgZ8Yfh\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: w2bpxYwP\ncode: 31' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: 1i1zob90\nnewLeaderUserId: Ok8vlIil' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: 5MhoRq8q\ncode: 58\ninvitationToken: FyxAsDYF\ninvitees: NYxsIWa8\nleaderId: aSkCCNP3\nmembers: UtC3yv5p\npartyId: cDHeNLYd' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: qaTuvp5n\npartyId: PyapTSTx\nuserId: jKt71o4a' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: LmyNmmyu\ninvitationToken: 1Sasb53H\npartyId: VYIxEPZi' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: NvpBRAwS\ncode: 16\npartyId: Iypa0a40' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: mqJxEHOC\nfriendId: vRiaON9g' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: NAszkfjU\nchat: EnrAVvFA\ncode: 94\nfriendId: Hpoqe19v' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: ybRzf1dw\nfrom: 8iZIVxXo\npayload: e1wyMtKY\nreceivedAt: 4\nto: tkIUCCBi' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: t0C1PmIG\nfrom: NlotFlbZ\npayload: uKxlK3EM\nreceivedAt: 36\nto: KW3WXRNc' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: uAtBz54N\ncode: 19' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: E7Lj8ujY' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: ho13uPq2\nfriendId: eDHBNUGP' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: AVri2mA1\ncode: 68' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 76' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: RKgkf4sl' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: TB3K7Y9X\nfriendId: bVrE3KcM' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: 3cChn60j\ncode: 52' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: OoNS07jp\nchannelSlug: hGdEEBox\npayload: rmWZORzw' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: jGKBcWpc\ncode: 67' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: L120pjtR\nuserId: bbWEAUq6' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: 3TVPrJh2\nmatchId: Fv1zByzr' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: Loi1Nbv7\ncode: 1' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: JrBi4fmo\nkey: 2Ib8D4Jz\nnamespace: kHUiyoAm\nvalue: zYZ6y3lx' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: MF92pS2R\ncode: 61' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: vldbGJ8m\nactivity: jMamoY63\navailability: 69' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: olnGoqKK\ncode: 51' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: ecW0BYb9' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: vzF6NnOh\nmessage: FWdZuVsk' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: 7D7rPMMg\nextraAttributes: IjBLwg8e\ngameMode: qJ5KmkOz\npartyAttributes: {"UyGsOahb":{},"XS2LpaxC":{},"dCLRJSbO":{}}\npriority: 58\ntempParty: SkjF6WiT' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: r7IcoIQI\ncode: 2' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"OkTONrLN":false,"k7iNlqPi":false,"GNYqJnqO":true}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: CAjKa6uh\nuserId: rEKeAfLt' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: SUipOtiM\nnamespace: mLvKWJhg\nunblockedUserId: VMPf15WN' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: xeEpVePF\ncode: 73\nnamespace: a42OmZJf\nunblockedUserId: inEqfWdv' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: dM84y84C' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: gnO700oB\nfriendId: glqHT5K1' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: cECWg8jr\ncode: 4' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: R7GW4Ik3' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: kTNCVbe8\ncode: 54\nplayerCount: 81' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: dwzCRKXR\navailability: 64\nlastSeenAt: IRAZzE1L\nuserId: dAFyxcQ0' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
