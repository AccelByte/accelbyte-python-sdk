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
'type: acceptFriendsNotif\nfriendId: EAxcVpFr'
'type: acceptFriendsRequest\nid: H9UzVRiX\nfriendId: ttufHIRd'
'type: acceptFriendsResponse\nid: Oaiw9B0D\ncode: 3'
'type: blockPlayerNotif\nblockedUserId: 7eHpzSn3\nuserId: ZPUdc0qh'
'type: blockPlayerRequest\nid: 8SAMTwE6\nblockUserId: 4n8mzZ0m\nnamespace: I56IaRDB'
'type: blockPlayerResponse\nid: hkspInrA\nblockUserId: XxyaNoMR\ncode: 87\nnamespace: ip6lyzSx'
'type: cancelFriendsNotif\nuserId: wElFHHdg'
'type: cancelFriendsRequest\nid: CUkNmKJf\nfriendId: s21Jub74'
'type: cancelFriendsResponse\nid: WjkY1aXl\ncode: 16'
'type: cancelMatchmakingRequest\nid: hIua5tWE\ngameMode: FcDtgOjc\nisTempParty: True'
'type: cancelMatchmakingResponse\nid: 32ogW7ol\ncode: 72'
'type: channelChatNotif\nchannelSlug: vbTgrhRT\nfrom: cPiSuL0S\npayload: ly6XM4OI\nsentAt: 18mAQLnz'
'type: clientResetRequest\nnamespace: jMf8GZ2W\nuserId: BZqxYG3a'
'type: connectNotif\nlobbySessionId: REAu2D6Q'
'type: disconnectNotif\nconnectionId: VKNCWP75\nnamespace: TB0i7pKx'
'type: dsNotif\nalternateIps: [R8dl0zRV,W4EZG9m0,XcgGVbMq]\ncustomAttribute: SszE8GHa\ndeployment: vj7AorKs\ngameVersion: xwkosAVe\nimageVersion: rXpc1C8X\nip: fwHuKeb9\nisOK: False\nisOverrideGameVersion: True\nlastUpdate: 3rGN9A3s\nmatchId: Nm84hddS\nmessage: pHt0P7MI\nnamespace: IR7CkyF6\npodName: C7duuyZ0\nport: 66\nports: {"yhPFdxLz":65,"Rd8lDR6q":98,"iKWe5dNR":23}\nprotocol: IAjGGJdd\nprovider: VCvu9vx5\nregion: KQ7KYnIu\nsessionId: MBvaO35l\nstatus: lzQRaT5k'
'type: errorNotif\nmessage: PxUfofvn'
'type: exitAllChannel\nnamespace: nSuB0y5W\nuserId: UlrMdI4s'
'type: friendsStatusRequest\nid: NveabntB'
'type: friendsStatusResponse\nid: 6zwPuo3t\nactivity: [SxTeIv53,HGCiljvj,KoyD6SCw]\navailability: [67,1,36]\ncode: 16\nfriendIds: [ncqmLtjQ,HAf8TgoN,m03VLisV]\nlastSeenAt: [d6TC6I3l,MjGSWN2l,aRlxfcjH]'
'type: getAllSessionAttributeRequest\nid: fYakUCTq'
'type: getAllSessionAttributeResponse\nid: ZBm3MqHc\nattributes: {"GkE7wcWf":"DslpJSqG","AXQ0yYoN":"RKd3IL5T","AQ6iiPlS":"C2uE4o5V"}\ncode: 46'
'type: getFriendshipStatusRequest\nid: b8RwNmn9\nfriendId: UmLZZbSq'
'type: getFriendshipStatusResponse\nid: YNtIuS5S\ncode: 69\nfriendshipStatus: VAla2l5B'
'type: getSessionAttributeRequest\nid: 5XUdjsoq\nkey: wGyzzWi9'
'type: getSessionAttributeResponse\nid: PEqgA8yu\ncode: 13\nvalue: 7Vk6Jt4Y'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: mos9Jcdo'
'type: joinDefaultChannelResponse\nid: mvCkGZ5d\nchannelSlug: s4fYcTVU\ncode: 90'
'type: listIncomingFriendsRequest\nid: AgqxpBFm'
'type: listIncomingFriendsResponse\nid: vxJMdalw\ncode: 1\nuserIds: [SyliWMNW,5NyLu0M3,VHh2EI8J]'
'type: listOfFriendsRequest\nid: Q9lNmqRB\nfriendId: lDbPWbQ6'
'type: listOfFriendsResponse\nid: 3V0v52Dl\ncode: 1\nfriendIds: [OtXi3cho,QrpOsDBU,5SepjChB]'
'type: listOnlineFriendsRequest\nid: ym6puQ23'
'type: listOutgoingFriendsRequest\nid: xoJ8aeCn'
'type: listOutgoingFriendsResponse\nid: 6kILsSSy\ncode: 1\nfriendIds: [1TkhjYna,q6foWvXa,3bMrXsDr]'
'type: matchmakingNotif\ncounterPartyMember: [DdmykmoP,Ygc2L4jk,4Lo0LSP0]\nmatchId: pf4IxjUk\nmessage: l535X3at\npartyMember: [eEKDpADz,1x3poD3Q,gb3boLQQ]\nreadyDuration: 92\nstatus: MzH7Qm8b'
'type: messageNotif\nid: h1EThG96\nfrom: wbmXgdAP\npayload: gAFKK2WD\nsentAt: 12\nto: TDIHrvqA\ntopic: ThuwjRHp'
'type: offlineNotificationRequest\nid: KKTlmVr9'
'type: offlineNotificationResponse\nid: 6pf3vneS\ncode: 42'
'type: onlineFriends\nid: VPHbn4Xx\ncode: 59\nonlineFriendIds: [tu7LQREN,jEEztx1W,sYSiZqan]'
'type: partyChatNotif\nid: v91GXlvP\nfrom: 0nSBJroa\npayload: G6bFYReV\nreceivedAt: 69\nto: c9d9sogW'
'type: partyChatRequest\nid: GqVvUfHQ\nfrom: a24CKNS0\npayload: vsHXNUNe\nreceivedAt: 85\nto: mhgo5QB6'
'type: partyChatResponse\nid: lSAiYnNj\ncode: 23'
'type: partyCreateRequest\nid: kfZrQvGg'
'type: partyCreateResponse\nid: k03QXcKM\ncode: 3\ninvitationToken: DYDDxHSZ\ninvitees: jtqXyJ58\nleaderId: f7Gc26Sa\nmembers: iGVkydwY\npartyId: WQG26yUZ'
'type: partyDataUpdateNotif\ncustomAttributes: {"NmTBcvrb":{},"YCwZtxFH":{},"yPLtI8il":{}}\ninvitees: [byDPUIj8,8cekdqCt,81P1ktfI]\nleader: ovmv9gsR\nmembers: [5cJcHm3S,ZLxoRDFu,uuySj29a]\nnamespace: 9LJE8HoR\npartyId: S1X2PFAA\nupdatedAt: 80'
'type: partyGetInvitedNotif\nfrom: kCmBUqg2\ninvitationToken: SCnqntX9\npartyId: y1aZSWMi'
'type: partyInfoRequest\nid: Vi10sG6v'
'type: partyInfoResponse\nid: Sz9WEi8K\ncode: 48\ncustomAttributes: {"MWH8Yb33":{},"T5UBJCjf":{},"cnLRfxeC":{}}\ninvitationToken: lloeH0JT\ninvitees: 1yduat2v\nleaderId: QR3biBfs\nmembers: u4jmsRE2\npartyId: w1yEkLgh'
'type: partyInviteNotif\ninviteeId: 3tIYt4Sq\ninviterId: YUTLDx9g'
'type: partyInviteRequest\nid: T2t24aOM\nfriendId: IiDandpG'
'type: partyInviteResponse\nid: YZyI4EFZ\ncode: 16'
'type: partyJoinNotif\nuserId: KBcYrCEA'
'type: partyJoinRequest\nid: E7WIsfmx\ninvitationToken: 40NLRc6m\npartyId: 8heKnWhz'
'type: partyJoinResponse\nid: 6z3LNUj7\ncode: 11\ninvitationToken: fdgLA84Z\ninvitees: 8YYk6QEg\nleaderId: JjBbEDoN\nmembers: f3n0hEoR\npartyId: CAcf80zf'
'type: partyKickNotif\nleaderId: FyabWAgI\npartyId: UXiI07A6\nuserId: 8eaqC2J9'
'type: partyKickRequest\nid: jyEW6GLb\nmemberId: c0NaKDUL'
'type: partyKickResponse\nid: sa13lk1d\ncode: 52'
'type: partyLeaveNotif\nleaderId: QBHO86Il\nuserId: BhnetU4R'
'type: partyLeaveRequest\nid: wTqUXlTD\nignoreUserRegistry: True'
'type: partyLeaveResponse\nid: FgkXhjDz\ncode: 52'
'type: partyPromoteLeaderRequest\nid: aQY3snn2\nnewLeaderUserId: ZkP7cFdP'
'type: partyPromoteLeaderResponse\nid: 3e5dC9XI\ncode: 65\ninvitationToken: BudfZgrb\ninvitees: HDIDm4hM\nleaderId: zF4Txode\nmembers: nSrUTvfq\npartyId: U0bfoMm5'
'type: partyRejectNotif\nleaderId: cTtFWbot\npartyId: QyXJRcQW\nuserId: smqPNs92'
'type: partyRejectRequest\nid: epxk0i8V\ninvitationToken: xsZNereS\npartyId: vf9699mC'
'type: partyRejectResponse\nid: AZvkRCMN\ncode: 63\npartyId: FIurjh2i'
'type: personalChatHistoryRequest\nid: j0ZwsVC0\nfriendId: mdb4rbkX'
'type: personalChatHistoryResponse\nid: LCr3OOlX\nchat: gL97ZVJS\ncode: 85\nfriendId: 2QD3oD5f'
'type: personalChatNotif\nid: YnGzpipN\nfrom: Vv8ZGF7u\npayload: DigNJma1\nreceivedAt: 80\nto: gPqaOkvo'
'type: personalChatRequest\nid: KB4EYOkQ\nfrom: 1aolB4lk\npayload: 1jMD3cym\nreceivedAt: 49\nto: RFOn0jJL'
'type: personalChatResponse\nid: rREOLx0K\ncode: 68'
'type: rejectFriendsNotif\nuserId: Oww3HICQ'
'type: rejectFriendsRequest\nid: 7qtPu64y\nfriendId: Lfl7MUBG'
'type: rejectFriendsResponse\nid: QXCs5SPB\ncode: 54'
'type: rematchmakingNotif\nbanDuration: 2'
'type: requestFriendsNotif\nfriendId: 738HGS6r'
'type: requestFriendsRequest\nid: S1fSiM93\nfriendId: DgMdIIlh'
'type: requestFriendsResponse\nid: 1m7Ta1Ps\ncode: 49'
'type: sendChannelChatRequest\nid: cnEevcAx\nchannelSlug: Kc50Kv6e\npayload: 2K2zkRen'
'type: sendChannelChatResponse\nid: NsjUgxBk\ncode: 26'
'type: setReadyConsentNotif\nmatchId: F6wFPoJe\nuserId: QediogEh'
'type: setReadyConsentRequest\nid: hM2rIizG\nmatchId: dKvOPdq5'
'type: setReadyConsentResponse\nid: SKscfOcY\ncode: 48'
'type: setSessionAttributeRequest\nid: u3dpCROY\nkey: qUiGKXVF\nnamespace: Cmpo6sPw\nvalue: VOEDSJsE'
'type: setSessionAttributeResponse\nid: db65UXmy\ncode: 74'
'type: setUserStatusRequest\nid: vXYck0up\nactivity: 0Zp6iIaT\navailability: 71'
'type: setUserStatusResponse\nid: M0NBMA9O\ncode: 80'
'type: shutdownNotif\nmessage: RxpzwLR2'
'type: signalingP2PNotif\ndestinationId: AK6eXUGP\nmessage: Jsw1fiP8'
'type: startMatchmakingRequest\nid: PyrVEiOG\nextraAttributes: 0G9Pclxc\ngameMode: ft2ulIJz\npartyAttributes: {"4UcqsuGK":{},"HhMRWLVd":{},"3DlhLuIp":{}}\npriority: 29\ntempParty: 3SGEdlwu'
'type: startMatchmakingResponse\nid: aI1mX2tJ\ncode: 96'
'type: systemComponentsStatus\ncomponents: {"oARtdbBe":false,"udsMrok0":false,"vGYYnx4V":false}'
'type: unblockPlayerNotif\nunblockedUserId: 9xbnGezK\nuserId: sDwG2omO'
'type: unblockPlayerRequest\nid: R2nvYI9T\nnamespace: VqJdvzcW\nunblockedUserId: bfUpaXp5'
'type: unblockPlayerResponse\nid: iWyerCSa\ncode: 73\nnamespace: 8SRgwsAj\nunblockedUserId: 1ik1jgla'
'type: unfriendNotif\nfriendId: DXTvKCWw'
'type: unfriendRequest\nid: S0uPdjhd\nfriendId: NTAhd2wr'
'type: unfriendResponse\nid: RVnwVBOq\ncode: 17'
'type: userBannedNotification'
'type: userMetricRequest\nid: OHi8pWGd'
'type: userMetricResponse\nid: juYhiqjR\ncode: 69\nplayerCount: 73'
'type: userStatusNotif\nactivity: f4wP57dB\navailability: 65\nlastSeenAt: NR88YbCt\nuserId: mKy8M9zV'
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
    'type: acceptFriendsNotif\nfriendId: rjfGXZnq' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: lIIk0iKo\nfriendId: AQUoY1Gj' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: nPb71ORY\ncode: 93' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: cmQbTU5J\nuserId: X8ccLjMX' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: DOJvrTef\nblockUserId: JRk0eaKQ\nnamespace: glSs6g4i' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: IWekp18l\nblockUserId: Y9u02aCN\ncode: 16\nnamespace: OC3mNqF7' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: Bl0LcghV' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: hRON0bc1\nfriendId: HfPEspxw' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: i3v3MFFJ\ncode: 9' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: CpobBEG8\ngameMode: 1KesKoEL\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: Dymtj3gi\ncode: 47' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: Pg4x4yiP\nfrom: X6ues1Hh\npayload: hkg1yLVb\nsentAt: LFzHEP8c' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: M4NTwr0K\nuserId: HaAsmTej' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: 52WKi6tA' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: rAURt9pl\nnamespace: CSVq8PdH' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [6hJPUAc0,RVwXgAgn,tLMCuaXB]\ncustomAttribute: WQi6BqPg\ndeployment: 4xr0lCan\ngameVersion: cUZGCHsZ\nimageVersion: YoLfR1Kt\nip: Ov7Zy0b6\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: vuKNuy0y\nmatchId: tZQ7M6Nz\nmessage: y1adnSKO\nnamespace: LFKx1dX4\npodName: LuWJu3pD\nport: 79\nports: {"z3S4czz0":87,"BROPYuG6":42,"qP6oo7G7":8}\nprotocol: zdxTgOfn\nprovider: wIdlNa29\nregion: fDLh741I\nsessionId: slKHzGlL\nstatus: KWUtDQs6' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: 1OQAoxyy' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: QpRWCiiP\nuserId: DGQhNPEw' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: iJCf2XJV' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: w1I98jeZ\nactivity: [rlzqQls1,ozhLVA3k,E8jKvgat]\navailability: [84,62,62]\ncode: 57\nfriendIds: [OXudXgNn,e8kJATwl,c6esUp6S]\nlastSeenAt: [Q7hfxnhL,d3Knakno,ed9DHhLO]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: qQGhCUr6' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: QD4IEiH9\nattributes: {"iTrjyEga":"rAdNJOIG","36I6tRbR":"crEveMdA","diPKDUVS":"C00PYeDc"}\ncode: 0' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: RtlqOECo\nfriendId: Z5qXn3ao' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: RUvpZaHC\ncode: 15\nfriendshipStatus: IUJNvYuG' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: uESOiIZs\nkey: MfB4ZH3m' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: mDWORBVX\ncode: 39\nvalue: TIIJM9Xs' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: YIIZxiXN' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: QkqsGnmy\nchannelSlug: MR9BgaWc\ncode: 65' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: o5JJTUVm' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: MkawaGpA\ncode: 4\nuserIds: [yrIwMif3,BOdkocVT,d4BxqGWV]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: 6XNbjvqh\nfriendId: 6mTJ0sQs' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: 7kPBom8F\ncode: 26\nfriendIds: [iTdSGv2L,FjAKY7Cb,gsWqFWZX]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 9GLLTG8p' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: hc3n4iLo' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: zqYkEpst\ncode: 71\nfriendIds: [G9YI89hm,guB8FOTj,MLo4b9rI]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [yVTBcrM8,rG0rH0zc,swwVeMK6]\nmatchId: MbGIVIu8\nmessage: vvwLc7KY\npartyMember: [3uVoJXTI,MtpgkieD,yF97lGdM]\nreadyDuration: 16\nstatus: bZUpd6FJ' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: yKQLY6FE\nfrom: tHJ1pyVw\npayload: O65Rb3z7\nsentAt: 58\nto: 1y4Zi7s7\ntopic: QBlk44Z4' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: 4B1GZgKg' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: uKxaCgcG\ncode: 1' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: Ppzwj1QG\ncode: 77\nonlineFriendIds: [IFmlVf4j,vapseE9L,N9bvhOrH]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: viLvtEk4\nfrom: flIOd6X3\npayload: mTIpUA9g\nreceivedAt: 48\nto: 2ecozL0T' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: 8L5oLF6M\nfrom: Og54vCE4\npayload: 4lNa4JUM\nreceivedAt: 92\nto: ywelu01n' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: 7usamANk\ncode: 35' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: ZlOX9Sfo' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: HgXqKhTP\ncode: 19\ninvitationToken: kwfLM9uS\ninvitees: ybRzWek2\nleaderId: gZvRrvr0\nmembers: n9d9lvcc\npartyId: KMLhrTrc' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"BE2ItBS3":{},"KtKZWe8a":{},"oFzAyBME":{}}\ninvitees: [74HUtipU,WYhWV1qx,8CzPML52]\nleader: faXUr9Sk\nmembers: [4lq2faBc,AXXKlhvy,H8paOJtx]\nnamespace: qMPpcVfR\npartyId: wNj547fH\nupdatedAt: 91' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: XrKEDpEY\ninvitationToken: 8VnocGAj\npartyId: ci0V3tBf' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: 2jnHGKXp' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: B5BUXvjc\ncode: 15\ncustomAttributes: {"pQ2FbKPF":{},"MycMSQ4q":{},"fAacR0Lg":{}}\ninvitationToken: u2s6w3Vi\ninvitees: fnKqmTSo\nleaderId: GH1XEfY6\nmembers: QAYn6WQ5\npartyId: UBEU1QAO' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: HfZiGhxO\ninviterId: dcuDXSxS' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: pna08gxe\nfriendId: c3aZPV87' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: j1Rx59he\ncode: 11' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: sNWy2NvZ' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: 85DDKDAF\ninvitationToken: 8KDsBZOu\npartyId: YQJ03BAH' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: 7c53q7ak\ncode: 54\ninvitationToken: Mpcmnnx6\ninvitees: RVBrop9v\nleaderId: 7aZK3h65\nmembers: hbN15zfQ\npartyId: SfQrtfF3' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: TQN0OcND\npartyId: Lr36vzoh\nuserId: ZyjMQAg5' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: mPYhrLTy\nmemberId: U8OhgfY9' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: G99Lyvfv\ncode: 73' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: HEsJKQQe\nuserId: wVLMUoAn' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: aRcYp7FU\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: fIGaffof\ncode: 13' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: lEIByYqe\nnewLeaderUserId: KN0meGel' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: F5wWaDhu\ncode: 3\ninvitationToken: kU4khGG4\ninvitees: vZFTYnPk\nleaderId: mSu4PWam\nmembers: 1jxR7SET\npartyId: Wjteoc8f' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: gvZDDhoO\npartyId: 05oKqymx\nuserId: LD1Lcvw6' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: T6mZEiwx\ninvitationToken: xElpMYSW\npartyId: IeVzm7z9' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: h94TSenE\ncode: 27\npartyId: 5hCFkIf5' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: 57l2Zsrh\nfriendId: weqZ18MH' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: wu9TmXfJ\nchat: 90ETtYmG\ncode: 43\nfriendId: e4akncw7' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: 8eLzYEvw\nfrom: WBPrx9Ns\npayload: SWTaLQjc\nreceivedAt: 40\nto: CMW64f4X' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: NMKtezap\nfrom: hIjSoTB2\npayload: Pr2QEPx3\nreceivedAt: 51\nto: 3cfoivvQ' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: YppuUSsK\ncode: 49' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: oHw2hyd1' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: 3aevq6io\nfriendId: 2uSE7BEv' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: Z4GcLkt4\ncode: 16' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 31' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: S3Uv1BpW' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: FHcunsS1\nfriendId: oJBaqdg2' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: XTmSLyn5\ncode: 24' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: iKdV57Gv\nchannelSlug: 0sigBVZx\npayload: Ryd9UuL0' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: Le8HSCsl\ncode: 59' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: sDd4M1F5\nuserId: qRIblS7N' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: z81GRazP\nmatchId: AANjfBol' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: 1aMjgGim\ncode: 8' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: 51T107XI\nkey: ZRZ7tZdI\nnamespace: s0xf4czd\nvalue: t7zqmSKx' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: k8nbLzvt\ncode: 83' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: WVnuYLgp\nactivity: CIW5ynMK\navailability: 33' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: toWAXhMl\ncode: 9' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: W4tLqX7O' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: ICf5oD1e\nmessage: 6oI9FmYe' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: 6rDWUwfh\nextraAttributes: l0kOw72o\ngameMode: 8Zkgk0jS\npartyAttributes: {"Kvrf2AaH":{},"4yCWrHSp":{},"pnIZkNnT":{}}\npriority: 27\ntempParty: gIGj2jZt' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: tcvNedgS\ncode: 63' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: systemComponentsStatus\ncomponents: {"1fUfKmih":true,"0sZoFS6x":true,"QMVDXEHe":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: MsQgb64E\nuserId: LbzDMwyo' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: 4nIRysQd\nnamespace: bufXjYnS\nunblockedUserId: oIFeouC2' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: nuHCXWfw\ncode: 25\nnamespace: nwGioVwV\nunblockedUserId: zmmBVVFf' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: pqx1AeLt' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: YBo4FUTH\nfriendId: zcPJ3jtD' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: OYKiqaZD\ncode: 58' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: 63xe5rru' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: zpqIFGLk\ncode: 73\nplayerCount: 61' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: tlzUcuHA\navailability: 57\nlastSeenAt: z0UV31Mf\nuserId: uGaXsAuG' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
