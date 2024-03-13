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
'type: acceptFriendsNotif\nfriendId: EAxcVpFrttufHIRd'
'type: acceptFriendsRequest\nid: W2ktQG0h5JAav5kR\nfriendId: H9UzVRiXbqlAw7r6'
'type: acceptFriendsResponse\nid: 4n8mzZ0m8SAMTwE6\ncode: 0'
'type: blockPlayerNotif\nblockedUserId: I56IaRDBXxyaNoMR\nuserId: 6hkspInrAip6lyzS'
'type: blockPlayerRequest\nid: 4CUkNmKJfh5pUkHO\nblockUserId: xwElFHHdgs21Jub7\nnamespace: DpoMF78NY4YkHs1c'
'type: blockPlayerResponse\nid: hRTcPiSuL0Sly6XM\nblockUserId: nz1JSDgY1TXp38zs\ncode: 58\nnamespace: 4OI18mAQLnzjMf8G'
'type: cancelFriendsNotif\nuserId: Z2WBZqxYG3aREAu2'
'type: cancelFriendsRequest\nid: pKxR8dl0zRVW4EZG\nfriendId: D6QVKNCWP75TB0i7'
'type: cancelFriendsResponse\nid: Z4U68su8XfqlqNiT\ncode: 25'
'type: cancelMatchmakingRequest\nid: MecdKi5r6QEa1ysL\ngameMode: vB6SdAdIhUDrwoZ5\nisTempParty: True'
'type: cancelMatchmakingResponse\nid: l3rGN9A3sNm84hdd\ncode: 53'
'type: channelChatNotif\nchannelSlug: SpHt0P7MIIR7CkyF\nfrom: 6C7duuyZ0GhDogqr\npayload: hBRd8lDR6qVNPRZY\nsentAt: 1972-11-20T00:00:00Z'
'type: clientResetRequest\nnamespace: FLIAjGGJddVCvu9v\nuserId: x5KQ7KYnIuMBvaO3'
'type: connectNotif\nlobbySessionId: 5llzQRaT5kPxUfof'
'type: disconnectNotif\nconnectionId: vnnSuB0y5WUlrMdI\nnamespace: 4sNveabntBSxTeIv'
'type: dsNotif\nalternateIps: [53HGCiljvjKoyD6S,CwGrncqmLtjQHAf8,TgoNm03VLisV6zwP]\ncustomAttribute: uo3td6TC6I3lMjGS\ndeployment: WN2laRlxfcjHfYak\ngameVersion: UCTqGkE7wcWfDslp\nimageVersion: JSqGAXQ0yYoNRKd3\nip: IL5TAQ6iiPlSC2uE\nisOK: False\nisOverrideGameVersion: False\nlastUpdate: TD1ZBm3MqHcUmLZZ\nmatchId: bSqb8RwNmn9HrNQy\nmessage: 4uZAAiE0mit9RGCC\nnamespace: HYzUOcEdscKHPEqg\npodName: A8yu7Vk6Jt4Ymos9\nport: 74\nports: {"5T7quIOvBMcaYmvC":22,"zYoMcHyCUEXlAvxJ":79,"ozr6wfNPX2bOItRM":43}\nprotocol: u0M3VHh2EI8JlDbP\nprovider: WbQ6Q9lNmqRBaAkL\nregion: nvxkT1X68cmDc3fx\nsessionId: U8MyKrQpM4hkkK6K\nstatus: KXNB3Gv0IqmF51Tk'
'type: errorNotif\nmessage: hjYnaq6foWvXa3bM'
'type: exitAllChannel\nnamespace: rXsDr6kILsSSyDdm\nuserId: ykmoPYgc2L4jk4Lo'
'type: friendsStatusRequest\nid: 0LSP0pf4IxjUkl53'
'type: friendsStatusResponse\nid: G6bFYReVHQipcCx9\nactivity: [5X3ateEKDpADz1x3,poD3Qgb3boLQQ1Mz,H7Qm8bwbmXgdAPh1]\navailability: [EThG96gAFKK2WDgC,cxvONZm3EeERmDny,eFoF7VSZ6pf3vneS]\ncode: 59\nfriendIds: [VPHbn4Xxtu7LQREN,jEEztx1WsYSiZqan,0nSBJroav91GXlvP]\nlastSeenAt: [1996-12-28T00:00:00Z,1982-08-31T00:00:00Z,1985-10-29T00:00:00Z]'
'type: getAllSessionAttributeRequest\nid: L7vIYhGGSyEW4ZJJ'
'type: getAllSessionAttributeResponse\nid: BNrDjqoxcwgGLXpU\nattributes: {"42d3PBddN8S48l9l":"yNApflxqMrj3oZk0","3QXcKMDYDDxHSZjt":"qXyJ58f7Gc26SaiG","VkydwYWQG26yUZNm":"TBcvrbYCwZtxFHyP"}\ncode: 77'
'type: getFriendshipStatusRequest\nid: IP6rOvDz9KOsb392\nfriendId: L4pp2ncYAHdNzDme'
'type: getFriendshipStatusResponse\nid: E8HoRS1X2PFAAMwz\ncode: 21\nfriendshipStatus: oRDFuuuySj29a9LJ'
'type: getSessionAttributeRequest\nid: HPxB1UskYs4Yw20D\nkey: OqOBSC2DKHRuPMMW'
'type: getSessionAttributeResponse\nid: UcmqRRbceJ5i0EeD\ncode: 69\nvalue: xOgBnhhqElIaDml4'
'type: heartbeat'
'type: joinDefaultChannelRequest\nid: 8wdNFLTm5T50x9WT'
'type: joinDefaultChannelResponse\nid: QAk4mqrxzTtuLl4X\nchannelSlug: 0GfH2rtOa4EXsXzO\ncode: 63'
'type: listIncomingFriendsRequest\nid: lbGL8QOxtjzm8y2w'
'type: listIncomingFriendsResponse\nid: 4aOMh5eC3IHeHSKL\ncode: 80\nuserIds: [Ca3xreNDUWehwH3q,31A806DJgas4b6z3,LNUj7fdgLA84Z8YY]'
'type: listOfFriendsRequest\nid: 0hEoRCAcf80zfFya\nfriendId: k6QEgJjBbEDoNf3n'
'type: listOfFriendsResponse\nid: bit0VWn3CO39PXDN\ncode: 2\nfriendIds: [JrYq6hRkloqxM3gp,wxcfMy9XzjjI5Ybs,KoADkzJEN2VHzih3]'
'type: listOnlineFriendsRequest\nid: xtXgeO3FgkXhjDza'
'type: listOutgoingFriendsRequest\nid: QY3snn2ZkP7cFdP4'
'type: listOutgoingFriendsResponse\nid: TtFWbotQyXJRcQWs\ncode: 1\nfriendIds: [e5dC9XIBudfZgrbH,DIDm4hMzF4Txoden,SrUTvfqU0bfoMm5c]'
'type: matchmakingNotif\ncounterPartyMember: [mqPNs92epxk0i8Vx,sZNereSvf9699mCE,HThUJkETAsSp7gh4]\nmatchId: TeUTkOkAYfJB8AT9\nmessage: t4Tv207Y2QD3oD5f\npartyMember: [LCr3OOlXVv8ZGF7u,YnGzpipNDigNJma1,MbqqZtfNWql4nmwA]\nreadyDuration: 11\nstatus: KB4EYOkQ1jMD3cym'
'type: messageNotif\nid: 0KOww3HICQLfl7MU\nfrom: 8xIfkOVW2grREOLx\npayload: BG7qtPu64yAtURKL\nsentAt: 1993-12-07T00:00:00Z\nto: kb738HGS6rDgMdII\ntopic: lhS1fSiM9331m7Ta'
'type: messageSessionNotif\nid: cAx2K2zkRenmPZnG\nfrom: 1PsKc50Kv6ecnEev\npayload: Bt4P7WnbdSJtjX7Z\nsentAt: 1980-02-23T00:00:00Z\nto: hZyZl5x4bRXBHUTr\ntopic: DzZSKscfOcYu3dpC'
'type: offlineNotificationRequest\nid: ROYqUiGKXVFCmpo6'
'type: offlineNotificationResponse\nid: aKt2ujQSa3Zdb65U\ncode: 38'
'type: onlineFriends\nid: my0Zp6iIaTIKUkmk\ncode: 24\nonlineFriendIds: [k9QM0NBMA9ORxpzw,LR2AK6eXUGPJsw1f,iP80G9Pclxcft2ul]'
'type: partyChatNotif\nid: uGKHhMRWLVd3DlhL\nfrom: IJzPyrVEiOG4Ucqs\npayload: uIpomM8sm1MiaI1m\nreceivedAt: 1996-06-06T00:00:00Z\nto: ugBp3HBvepnDCjgy'
'type: partyChatRequest\nid: ue9nzJ6fH24T805t\nfrom: JlXe36mgWjLfFmte\npayload: Vg8JqU0jZpjvsugA\nreceivedAt: 1991-05-04T00:00:00Z\nto: S7u8RiWyerCSa8SR'
'type: partyChatResponse\nid: ZjdrrIxsB0NRsB1f\ncode: 13'
'type: partyCreateRequest\nid: PqqRRulpqpymDkQh'
'type: partyCreateResponse\nid: djhdinpng5BLy8wb\ncode: 40\ninvitationToken: hMssAHjapIkY9Rf4\ninvitees: wP57dBZNR88YbCtm\nleaderId: Ky8M9zVrjfGXZnqA\nmembers: QUoY1GjlIIk0iKoT\npartyId: TS1j02o7JjTXAQN0'
'type: partyDataUpdateNotif\ncustomAttributes: {"qdskdQV0TqI8EFnm":{},"DbxIxi4YKlONk2Q5":{},"Y4JvaizwiilatuUj":{}}\ninvitees: [jt9lIMGql5ElEa9E,IIlGcHB3CfR3ncDl,wi3v3MFFJ1KesKoE]\nleader: LCpobBEG8X645xpd\nmembers: [Xpai0rYaT5hOPjaf,3H0tYighU0VUfcYH,JbBfAKSiPW3VgsZX]\nnamespace: iR1DJ7HVWqMkNSaw\npartyId: QUWDFJvJBWic7UkB\nupdatedAt: 1973-12-09T00:00:00Z'
'type: partyGetInvitedNotif\nfrom: IXuqDuAXI66bQ71w\ninvitationToken: 0deoV9Lx5RDA1l2X\npartyId: crciYNEzvSZIPkhS'
'type: partyInfoRequest\nid: gORcz5S5BvmgBLxh'
'type: partyInfoResponse\nid: FlAVmVLu4AOec0z8\ncode: 76\ncustomAttributes: {"ijFnE3Tam69qSZ7P":{},"C6f6QkmZXElW9YfR":{},"Sse6AAz3S4czz0QK":{}}\ninvitationToken: eBeeoip68J1nsv4W\ninvitees: 2OJhtafxMSJlHeb3\nleaderId: 4sZKHcl5LLLOexL4\nmembers: fZvWtND2tcBFpX8l\npartyId: NtFEJ7tnkY6Mca5a'
'type: partyInviteNotif\ninviteeId: fj12K2IzrBvvWm4u\ninviterId: dE0OXudXgNne8kJA'
'type: partyInviteRequest\nid: jeZQ7hfxnhLd3Kna\nfriendId: Twlc6esUp6Sw1I98'
'type: partyInviteResponse\nid: WP3glU6muswVJnNn\ncode: 21'
'type: partyJoinNotif\nuserId: N7kAa7j0riFc5HTH'
'type: partyJoinRequest\nid: QIoVsGo7dwV9DBqF\ninvitationToken: KHQkETJyTlUrwDTn\npartyId: oujQD4IEiH9Z5qXn'
'type: partyJoinResponse\nid: aoRtlqOECohViHA5\ncode: 8\ninvitationToken: CzgFSy8X1A3PrIfa\ninvitees: pq5AAeMe4L3mDWOR\nleaderId: BVXTIIJM9XsYIIZx\nmembers: iXNMR9BgaWcFX3SU\npartyId: BhyoTsMWPAxUMkaw'
'type: partyKickNotif\nleaderId: aGpAyrIwMif3BOdk\npartyId: ocVTd4BxqGWV6mTJ\nuserId: 0sQs6XNbjvqhnUVL'
'type: partyKickRequest\nid: Wu8olKdxL6ozRmDD\nmemberId: 0jJvlfV5OemPYdYT'
'type: partyKickResponse\nid: DROCjtuzFMbAG9YI\ncode: 94'
'type: partyLeaveNotif\nleaderId: 89hmguB8FOTjMLo4\nuserId: b9rIzqYkEpstyVTB'
'type: partyLeaveRequest\nid: crM8rG0rH0zcswwV\nignoreUserRegistry: False'
'type: partyLeaveResponse\nid: MK6MbGIVIu8vvwLc\ncode: 32'
'type: partyPromoteLeaderRequest\nid: 7KY3uVoJXTIMtpgk\nnewLeaderUserId: ieDyF97lGdMiHKxb'
'type: partyPromoteLeaderResponse\nid: 6FJtHJ1pyVwyKQLY\ncode: 100\ninvitationToken: 6FEO65Rb3z7CYLM8\ninvitees: IlsHqffnrfsGlfPa\nleaderId: ZKBwa3Ddb60ufPpz\nmembers: wj1QGIFmlVf4jvap\npartyId: seE9LN9bvhOrHflI'
'type: partyRejectNotif\nleaderId: Od6X3viLvtEk4mTI\npartyId: pUA9gxo8SV38nEho\nuserId: XmM2W7l6jHMA2rG3'
'type: partyRejectRequest\nid: nakopAywelu01nry\ninvitationToken: EJ0NqoTow0qiOiC4\npartyId: j0iktm0ZPLkLOsp0'
'type: partyRejectResponse\nid: ybRzWek2gZvRrvr0\ncode: 77\npartyId: n9d9lvccKMLhrTrc'
'type: personalChatHistoryRequest\nid: oFzAyBME74HUtipU\nfriendId: BE2ItBS3KtKZWe8a'
'type: personalChatHistoryResponse\nid: hjbngJOUn18G5Mlf\nchat: WYhWV1qx8CzPML52\ncode: 11\nfriendId: OnaEok4nOOCzfsfl'
'type: personalChatNotif\nid: SwgAIkgzh4pTU0Am\nfrom: DTk8aG40NlncceIZ\npayload: 4DZhl0bQxFJ3sWCq\nreceivedAt: 1992-02-26T00:00:00Z\nto: pQ2FbKPFMycMSQ4q'
'type: personalChatRequest\nid: u2s6w3VifnKqmTSo\nfrom: fAacR0LgB5BUXvjc\npayload: GH1XEfY6QAYn6WQ5\nreceivedAt: 1994-08-10T00:00:00Z\nto: 6vSkVFWdsbYuVEGV'
'type: personalChatResponse\nid: uDXSxSc3aZPV87pn\ncode: 49'
'type: refreshTokenRequest\nid: a08gxefTYKhuxaEc\ntoken: 7M4P7UckSC6ePeN8'
'type: refreshTokenResponse\nid: DsBZOuYQJ03BAHZ7\ncode: 17'
'type: rejectFriendsNotif\nuserId: c53q7akMpcmnnx6R'
'type: rejectFriendsRequest\nid: bN15zfQSfQrtfF3T\nfriendId: VBrop9v7aZK3h65h'
'type: rejectFriendsResponse\nid: Vu0LQ40kepEaC4df\ncode: 88'
'type: rematchmakingNotif\nbanDuration: 18'
'type: requestFriendsNotif\nfriendId: jMQAg5mPYhrLTyU8'
'type: requestFriendsRequest\nid: cENx9xZlAchob44l\nfriendId: OhgfY9JQYGF4bYXE'
'type: requestFriendsResponse\nid: cYp7FUjfIGaffofl\ncode: 84'
'type: sendChannelChatRequest\nid: F5wWaDhukU4khGG4\nchannelSlug: EIByYqeKN0meGelY\npayload: vZFTYnPkmSu4PWam'
'type: sendChannelChatResponse\nid: jxR7SETWjteoc8fg\ncode: 82'
'type: setReadyConsentNotif\nmatchId: vZDDhoO05oKqymxL\nuserId: D1Lcvw6T6mZEiwxx'
'type: setReadyConsentRequest\nid: ElpMYSWIeVzm7z9n\nmatchId: oowmlTIKVowi0RY2'
'type: setReadyConsentResponse\nid: eqZ18MH57l2Zsrh9\ncode: 97'
'type: setSessionAttributeRequest\nid: 0ETtYmGukz3Mnlrj\nkey: cHp6B8Vj7rXFgDnD\nnamespace: kdZ9bpjb1tdA3Qhj\nvalue: CMW64f4XhIjSoTB2'
'type: setSessionAttributeResponse\nid: AtYoFzLAATPY8P8P\ncode: 80'
'type: setUserStatusRequest\nid: oHw2hyd12uSE7BEv\nactivity: 3cfoivvQxevecWw7\navailability: 90'
'type: setUserStatusResponse\nid: 2MVUGKSZ4GcLkt4p\ncode: 1'
'type: shutdownNotif\nmessage: K32sJxlZcCTpTdRt'
'type: signalingP2PNotif\ndestinationId: CHvuk6B6XTmSLyn5\nmessage: 0sigBVZxiKdV57Gv'
'type: startMatchmakingRequest\nid: Nz81GRazPAANjfBo\nextraAttributes: Ryd9UuL02Le8HSCs\ngameMode: lsDd4M1F5qRIblS7\npartyAttributes: {"ldFOyqA2clJ5gEOa":{},"CgM6Yn6RugbNEIpG":{},"BFUjOn5mM7k8nbLz":{}}\npriority: 43\ntempParty: 6GqsBq8vdhWVnuYL'
'type: startMatchmakingResponse\nid: IVXtoWAXhMlW4tLq\ncode: 12'
'type: unblockPlayerNotif\nunblockedUserId: X7OICf5oD1e6oI9F\nuserId: mYel0kOw72o8Zkgk'
'type: unblockPlayerRequest\nid: 0jS6rDWUwfhKvrf2\nnamespace: AaH4yCWrHSppnIZk\nunblockedUserId: NnTn3rzH5NvAtcvN'
'type: unblockPlayerResponse\nid: IPSE1XXPzySa0sZo\ncode: 9\nnamespace: FS6xCOWMpyh9pMsQ\nunblockedUserId: gb64ELbzDMwyo4nI'
'type: unfriendNotif\nfriendId: RysQdbufXjYnSoIF'
'type: unfriendRequest\nid: VE9sJ4NpUtKp6M9I\nfriendId: eouC2m38kXrDZWlG'
'type: unfriendResponse\nid: AeLtzcPJ3jtDYBo4\ncode: 27'
'type: userBannedNotification'
'type: userMetricRequest\nid: FUTH7CGfKSyxgRR1'
'type: userMetricResponse\nid: e5rruJVfLGea0Ztl\ncode: 61\nplayerCount: 52'
'type: userStatusNotif\nactivity: ACC1RgBfoNrHlFi2\navailability: 34\nlastSeenAt: 1971-10-20T00:00:00Z\nuserId: XsAuGsZaSHevO0TQ'
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
echo "1..106"


#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AcceptFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsNotif\nfriendId: NEI3kfabxJWWSI1E' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsRequest\nid: B7n4C97uAPP8PATL\nfriendId: CUo1NPpeFhUztXDg' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: acceptFriendsResponse\nid: 6FYBZsWFbr3RSP0W\ncode: 31' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerNotif\nblockedUserId: 9nBhvhf8Q0DtJMcY\nuserId: QdN66bswAgt65X4N' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerRequest\nid: rYQue84dwmbwFEnA\nblockUserId: 1LQZmB61JMdtwCVU\nnamespace: ZaWsQJtRYoagRJK5' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: blockPlayerResponse\nid: SKseoe8VLie0LBa3\nblockUserId: PX9UcOvhPyE11TRT\ncode: 100\nnamespace: 6KNzjf005CXNGehQ' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsNotif\nuserId: 2aTjTDfKFDXC7eGL' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsRequest\nid: 6d9yOfIMLds2DbPc\nfriendId: 5YhJDWh9YWqc0qgV' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelFriendsResponse\nid: n3DhqciwIeShF9RK\ncode: 0' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingRequest\nid: wToC6knjVwVnzaqS\ngameMode: b9vvxuJlhXbWhbwP\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: cancelMatchmakingResponse\nid: E2AkCh3QIZsUf8lG\ncode: 73' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: channelChatNotif\nchannelSlug: FXcmwTERHclOdxIw\nfrom: qejxe18rNdb8Otq6\npayload: j1mqUav7k05HAQlt\nsentAt: 1978-11-17T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: clientResetRequest\nnamespace: SojV4jT65yclX2Ft\nuserId: Az0vJjFIYWOaNdsi' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: connectNotif\nlobbySessionId: mmkW2miH3xRHAKy4' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: disconnectNotif\nconnectionId: QxZkaXZ7vmiEd0JP\nnamespace: xVyQpshaDwNqTbbF' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: dsNotif\nalternateIps: [MXAMfVXe0GZeMgsR,smH1EQrYmkPKTPOl,hTtSiZNCxuogFteT]\ncustomAttribute: HJe4BhSSQkQD6WmO\ndeployment: t6D7ufFVTOhvQpfb\ngameVersion: Bke8aEdd36xj6wyS\nimageVersion: oltDxsbzxrlaKEfk\nip: oYjY2o6ouRW9UtNq\nisOK: True\nisOverrideGameVersion: True\nlastUpdate: uZS6hsQryiEtOAbp\nmatchId: eUNf26UqkCfgCUYB\nmessage: n2xaOBdPF0JmX8qw\nnamespace: U1cTuHHPB5S3DvPR\npodName: CzBrVUxmDOj3cvRF\nport: 0\nports: {"xahld1pO0Gyf5PO3":58,"k6pQxDQpKqxLGeMv":35,"fhcRC7IVYa6iZ5uF":89}\nprotocol: xIsZvD6rmzVr5XT1\nprovider: Nxw0v1dMQ9Rrbk6C\nregion: 2cVWf6ttvbU1PO6A\nsessionId: pCD2VXidT7w0Oc15\nstatus: N8WXBPp17PAewqSm' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: errorNotif\nmessage: 5x3B4t7WQnp8jXZe' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: exitAllChannel\nnamespace: dgt5cyNe27HLtwtV\nuserId: OaxgP6Jbct8puMyb' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusRequest\nid: YGxD9IPmmsLmu3ka' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: friendsStatusResponse\nid: iIAvxSvNDlmM5nQF\nactivity: [Pj0O4zd8Tb7cUNGP,TBxiFFCrn7djjs69,FTFVGUVhvKhJCmei]\navailability: [sql14mUHVbMPimNh,cZsU3VAdMDcb4qlk,iFAamqvZI2KwjqPB]\ncode: 18\nfriendIds: [nLocLVVYamQc4wcG,5nDBLJoJHbiQ5duE,5p4cfs2E41cK8QTw]\nlastSeenAt: [1990-06-13T00:00:00Z,1987-05-02T00:00:00Z,1984-08-09T00:00:00Z]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeRequest\nid: s7fzjgyc44mEh9tR' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getAllSessionAttributeResponse\nid: tU6TDm5GloFSKWM1\nattributes: {"k8knYSV30lnroQeh":"MDli6t9unQLYXxm0","9wpGAbpEmDY9vLh3":"u6EDsUmrV6kH4Oot","KwG3UC6XCnnZxF8C":"mQr17W65br34rBBN"}\ncode: 14' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusRequest\nid: UOYZENJ1QHZQxPRX\nfriendId: eym5ydC6p25xCWTq' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getFriendshipStatusResponse\nid: wwm5iGzXtcknrgid\ncode: 68\nfriendshipStatus: BujELAUK6mQ5iZgb' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeRequest\nid: KupvXO6aj4hCmTC3\nkey: 4jxW4pIDwdqXpmRm' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: getSessionAttributeResponse\nid: BCbyJsF5IjF1c0W3\ncode: 42\nvalue: 38HS6CBgVRyihYNZ' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelRequest\nid: 84CVhziXV8HwSmvc' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: joinDefaultChannelResponse\nid: qDejvqklTSvDwuOr\nchannelSlug: vcDKF19yVRafCjOu\ncode: 92' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsRequest\nid: P9lzpiX0VuFpZum7' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listIncomingFriendsResponse\nid: fHgKjI9mwJSrN8jk\ncode: 17\nuserIds: [IykR2zbaI6PD7fEs,cShnGUGUtV9GJ279,GDbLNwjm3FK0nnX2]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsRequest\nid: lFgvh2Dp2SoiIPp1\nfriendId: poMfZ1hDHtbh4HtM' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOfFriendsResponse\nid: VI6eTYAjdPlCiQQC\ncode: 50\nfriendIds: [xF9wwbvMZyeDeRnV,fPUa6xVVBcq3wZpF,IYeAg79HcLJXJ7mp]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOnlineFriendsRequest\nid: 35cj4KyOVgvnWbfR' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsRequest\nid: JtsB7cUQZ2QUAxJr' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: listOutgoingFriendsResponse\nid: YxM0UHZVNYzGMNIp\ncode: 72\nfriendIds: [fYL8Avt70ZUT2fSk,3LL0calqxEewuGS4,69k2hG0WKt4sUman]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: matchmakingNotif\ncounterPartyMember: [WoSLkUrfuf4U3WeY,eA9t2ENKKWrFtHIi,1CMgKAOG5iDcCR5P]\nmatchId: bCvDLil8wj9cKM3A\nmessage: r6MF35hCER4nGmWG\npartyMember: [gTJfHlJl4tHGa4Xf,Zcd9CVnGqMX9Fiee,EssWEUl07bhwntCV]\nreadyDuration: 33\nstatus: yVoSlKNchPHNL4X3' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageNotif\nid: uiTnJarYYkHBDdSz\nfrom: LLaGPGdqLE8Sohhh\npayload: BXdxapwhd5IQYBQu\nsentAt: 1982-06-17T00:00:00Z\nto: LvPuWYvE3fsNy9Z9\ntopic: OhxXvCp9y7fLD2qf' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 MessageSessionNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: messageSessionNotif\nid: cA92hzC7MNa8vVe4\nfrom: CXnlUnqxT1WsRNMZ\npayload: MHX6AgMep90AyyUJ\nsentAt: 1983-08-07T00:00:00Z\nto: n8D2eLMe3lt9qfx2\ntopic: UDcgVE7L9FK6e0Mr' \
    > test.out 2>&1
eval_tap $? 40 'MessageSessionNotif' test.out

#- 41 OfflineNotificationRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationRequest\nid: Pc4vtxk9hVKlG56H' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationRequest' test.out

#- 42 OfflineNotificationResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: offlineNotificationResponse\nid: epqtxjbrztee7QLT\ncode: 23' \
    > test.out 2>&1
eval_tap $? 42 'OfflineNotificationResponse' test.out

#- 43 OnlineFriends
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: onlineFriends\nid: 6ccIBnWyPw8mj7gy\ncode: 67\nonlineFriendIds: [Q7XdIszGRj46COPi,pH1MWVTHG0qHJCWE,fOJpZm9yEYWNGMy2]' \
    > test.out 2>&1
eval_tap $? 43 'OnlineFriends' test.out

#- 44 PartyChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatNotif\nid: f1Ybgg8rdwY9bmrv\nfrom: pgSGSUOK68eqGJtW\npayload: HmO07KNqX9LM2IwE\nreceivedAt: 1980-05-15T00:00:00Z\nto: dOGBXBwnzDX8v3xg' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatNotif' test.out

#- 45 PartyChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatRequest\nid: r0sVZ6LJAOddIL2l\nfrom: C1Ge9PdbTTAJ2Gp1\npayload: 3hPjNDKv2LWfXqjr\nreceivedAt: 1991-02-15T00:00:00Z\nto: mUSWw18T1IxVWCxd' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatRequest' test.out

#- 46 PartyChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyChatResponse\nid: y6i38XQjLDRqkpiF\ncode: 45' \
    > test.out 2>&1
eval_tap $? 46 'PartyChatResponse' test.out

#- 47 PartyCreateRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateRequest\nid: K5BtiQ272Uo9UBJW' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateRequest' test.out

#- 48 PartyCreateResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyCreateResponse\nid: 6sjAHyCK5tNanGBr\ncode: 28\ninvitationToken: kzUvck3xTtmOFMeb\ninvitees: S4AdlNzwog2IhErk\nleaderId: NhNcECWwchW6zL9S\nmembers: kbLlrNXnGanMazb8\npartyId: jvRWenURH48aJuAL' \
    > test.out 2>&1
eval_tap $? 48 'PartyCreateResponse' test.out

#- 49 PartyDataUpdateNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyDataUpdateNotif\ncustomAttributes: {"EcSqcE15u6D31DjO":{},"srs3CUYATdqnQGbq":{},"iqOkNeATj7eGjodd":{}}\ninvitees: [7CcJUrI6MAugK5ky,pNrp2nFe9FmN86sK,5LOq4ft5jGcMICPU]\nleader: YnfG6jl9U4jReteI\nmembers: [MgzISomCsodJrhQW,41q2OspCZbt3Uta5,I0uGcL1koyHjCH5o]\nnamespace: lYLETRpABAmO2EGv\npartyId: J4UMS93yOxNInDBy\nupdatedAt: 1974-12-14T00:00:00Z' \
    > test.out 2>&1
eval_tap $? 49 'PartyDataUpdateNotif' test.out

#- 50 PartyGetInvitedNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyGetInvitedNotif\nfrom: noluO6ti0QP2ssiJ\ninvitationToken: 66OzOj84O6tgohjt\npartyId: C7bzjPpucddXJ5zi' \
    > test.out 2>&1
eval_tap $? 50 'PartyGetInvitedNotif' test.out

#- 51 PartyInfoRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoRequest\nid: fF8y959anrNSleyw' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoRequest' test.out

#- 52 PartyInfoResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInfoResponse\nid: GCCvNowNmdpcJgF8\ncode: 68\ncustomAttributes: {"xyQrUpIFvORxTi79":{},"DpSjb39ukcR6c2E2":{},"r3vk3IfAKEbqcNXS":{}}\ninvitationToken: 8ySNq4Mj7mulP4tQ\ninvitees: 6R1OqKVOTniBgLsN\nleaderId: hdgQ0JWZjNRSzOTq\nmembers: cVNX3ahvxw9gwwhT\npartyId: njN6wKZGW4y3f0R9' \
    > test.out 2>&1
eval_tap $? 52 'PartyInfoResponse' test.out

#- 53 PartyInviteNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteNotif\ninviteeId: s2kndhhZhwAiLsZs\ninviterId: 4pmLDIQch4IjDq9a' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteNotif' test.out

#- 54 PartyInviteRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteRequest\nid: sVJbXi7eRZa7WwIc\nfriendId: T3qZyI0rYsWucAkX' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteRequest' test.out

#- 55 PartyInviteResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyInviteResponse\nid: 95ImqK6tVsaUq3st\ncode: 91' \
    > test.out 2>&1
eval_tap $? 55 'PartyInviteResponse' test.out

#- 56 PartyJoinNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinNotif\nuserId: Uh5J5Z9GiBiSAylX' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinNotif' test.out

#- 57 PartyJoinRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinRequest\nid: 5cS0IeHpWCugmfOL\ninvitationToken: 0QQpxsuD8PGqku59\npartyId: eFJrOXyDYz9vMUOP' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinRequest' test.out

#- 58 PartyJoinResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyJoinResponse\nid: RMbkcTglbU86FyOj\ncode: 66\ninvitationToken: ApNHBVfNOURcjY3Y\ninvitees: YT9oTynmfIuBWgJT\nleaderId: NFfM8M0IW4oe8KDg\nmembers: y0xZfAcNg14Ws8TI\npartyId: P1LKiFQoLDvumfqr' \
    > test.out 2>&1
eval_tap $? 58 'PartyJoinResponse' test.out

#- 59 PartyKickNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickNotif\nleaderId: gSfnx2h61X9dN1MG\npartyId: RXBJ6mVV7JS9qjNL\nuserId: wvI8JdiY3RRiLilm' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickNotif' test.out

#- 60 PartyKickRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickRequest\nid: OGF6dLLIeIVIjMcd\nmemberId: lbdRXTGIrdNL5gJP' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickRequest' test.out

#- 61 PartyKickResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyKickResponse\nid: jrElvvDgw0ag7kSW\ncode: 34' \
    > test.out 2>&1
eval_tap $? 61 'PartyKickResponse' test.out

#- 62 PartyLeaveNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveNotif\nleaderId: E0Hiqm5IuLryiEXq\nuserId: vUWDjU1G0EVjVZw1' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveNotif' test.out

#- 63 PartyLeaveRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveRequest\nid: ToLuPakQN1MpOs1R\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveRequest' test.out

#- 64 PartyLeaveResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyLeaveResponse\nid: cg2CXxepx78fvsyh\ncode: 3' \
    > test.out 2>&1
eval_tap $? 64 'PartyLeaveResponse' test.out

#- 65 PartyPromoteLeaderRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderRequest\nid: E2BKtyTDSIM7mkmv\nnewLeaderUserId: Z7Cmsh4US8o4jfMA' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderRequest' test.out

#- 66 PartyPromoteLeaderResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyPromoteLeaderResponse\nid: uc8VOsnmnlVljdWY\ncode: 81\ninvitationToken: mELe74p38vumnxAn\ninvitees: YBTxaTIz0jcgDI8P\nleaderId: kz96vd80msqIm5bu\nmembers: fnBqrpLeqhwVhjnn\npartyId: jKMEmtbiWsAQHbMr' \
    > test.out 2>&1
eval_tap $? 66 'PartyPromoteLeaderResponse' test.out

#- 67 PartyRejectNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectNotif\nleaderId: KYi0Zxs5SWCqZXHL\npartyId: La31oQf7BULnZDhu\nuserId: tDM6BqguqD5xxGxB' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectNotif' test.out

#- 68 PartyRejectRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectRequest\nid: WtnTKUe2znsqPzPk\ninvitationToken: wCBo2SwCUsTag4ML\npartyId: Ao3m61P2xaNfmn8O' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectRequest' test.out

#- 69 PartyRejectResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: partyRejectResponse\nid: Md1onFjGRbxtABPX\ncode: 27\npartyId: DmgNEJBhgGq5GIDh' \
    > test.out 2>&1
eval_tap $? 69 'PartyRejectResponse' test.out

#- 70 PersonalChatHistoryRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryRequest\nid: kPSSITz4TjCrJHXG\nfriendId: NC66szbCCf73IFbR' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryRequest' test.out

#- 71 PersonalChatHistoryResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatHistoryResponse\nid: PhPUTKbonoucNmzw\nchat: Xku2YVuOzhxHmnrr\ncode: 98\nfriendId: uLUk5WdpxjZx5noX' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatHistoryResponse' test.out

#- 72 PersonalChatNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatNotif\nid: MlOuksQJCiRFiZWw\nfrom: OZOK56sDkci5rZ8i\npayload: J7NrTb1XTB9YQzUJ\nreceivedAt: 1985-04-02T00:00:00Z\nto: CQ9dLWYyS8zdhMeB' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatNotif' test.out

#- 73 PersonalChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatRequest\nid: iJOF7JKZFNk2NKy5\nfrom: XH8x6HdVfZVDAiU6\npayload: 9X8iOg2sVBiCoeC5\nreceivedAt: 1982-06-23T00:00:00Z\nto: eXJl7PeiMH8z8dVe' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatRequest' test.out

#- 74 PersonalChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: personalChatResponse\nid: HKsEp6KlqwW4djre\ncode: 18' \
    > test.out 2>&1
eval_tap $? 74 'PersonalChatResponse' test.out

#- 75 RefreshTokenRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenRequest\nid: xcbHdEtoQvpV344R\ntoken: ctmTozCi8HeV6jba' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenRequest' test.out

#- 76 RefreshTokenResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: refreshTokenResponse\nid: 82JVBRLPZ6Iz8tne\ncode: 24' \
    > test.out 2>&1
eval_tap $? 76 'RefreshTokenResponse' test.out

#- 77 RejectFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsNotif\nuserId: 5dbguBF6Gsvvdl8j' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsNotif' test.out

#- 78 RejectFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsRequest\nid: LaZaMphKCqTq3EVh\nfriendId: Hz9x7XZIjU4IK9lO' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsRequest' test.out

#- 79 RejectFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rejectFriendsResponse\nid: KgYazujsmSmylT1Y\ncode: 10' \
    > test.out 2>&1
eval_tap $? 79 'RejectFriendsResponse' test.out

#- 80 RematchmakingNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: rematchmakingNotif\nbanDuration: 39' \
    > test.out 2>&1
eval_tap $? 80 'RematchmakingNotif' test.out

#- 81 RequestFriendsNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsNotif\nfriendId: JM3WWPvvCiCf33Vi' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsNotif' test.out

#- 82 RequestFriendsRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsRequest\nid: cPAGv6c1ESC6hZYT\nfriendId: EdqQpoGkUWNizk5U' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsRequest' test.out

#- 83 RequestFriendsResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: requestFriendsResponse\nid: bzf5aANNNs5kgSZZ\ncode: 37' \
    > test.out 2>&1
eval_tap $? 83 'RequestFriendsResponse' test.out

#- 84 SendChannelChatRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatRequest\nid: vzzXZj08a6K1XRVf\nchannelSlug: NUHbIT9szApmWJO5\npayload: riSpPFnZBJZkDnEi' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatRequest' test.out

#- 85 SendChannelChatResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: sendChannelChatResponse\nid: Vzi9ui3lvozTt9Ts\ncode: 51' \
    > test.out 2>&1
eval_tap $? 85 'SendChannelChatResponse' test.out

#- 86 SetReadyConsentNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentNotif\nmatchId: H7A0TuU2aL4bPkk1\nuserId: 1sys6GdkDcos5uVJ' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentNotif' test.out

#- 87 SetReadyConsentRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentRequest\nid: 0BJfZ0jvA54CSqZF\nmatchId: DsO1skRjOU1SMfQV' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentRequest' test.out

#- 88 SetReadyConsentResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setReadyConsentResponse\nid: xcTjqjdcEfU61OJY\ncode: 88' \
    > test.out 2>&1
eval_tap $? 88 'SetReadyConsentResponse' test.out

#- 89 SetSessionAttributeRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeRequest\nid: MnW49rWynp1ck1vT\nkey: 90C6o86cSRL9cgbU\nnamespace: mulhe98oaFKlQicd\nvalue: rxVhrtwSd9QWVMYz' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeRequest' test.out

#- 90 SetSessionAttributeResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setSessionAttributeResponse\nid: TU1TsxsChSclSkb5\ncode: 10' \
    > test.out 2>&1
eval_tap $? 90 'SetSessionAttributeResponse' test.out

#- 91 SetUserStatusRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusRequest\nid: x1JgjC56pda3YhtQ\nactivity: aBi9K9zyv6gFZXI5\navailability: 28' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusRequest' test.out

#- 92 SetUserStatusResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: setUserStatusResponse\nid: 91dIn7QqXBDXJcrq\ncode: 48' \
    > test.out 2>&1
eval_tap $? 92 'SetUserStatusResponse' test.out

#- 93 ShutdownNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: shutdownNotif\nmessage: KmXDwoEV6tCdrxw1' \
    > test.out 2>&1
eval_tap $? 93 'ShutdownNotif' test.out

#- 94 SignalingP2PNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: signalingP2PNotif\ndestinationId: KOPhuvHuYrGWDK41\nmessage: uMOC0mRvSoaGk4kt' \
    > test.out 2>&1
eval_tap $? 94 'SignalingP2PNotif' test.out

#- 95 StartMatchmakingRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingRequest\nid: vLwtYEJTSiXjcY5Z\nextraAttributes: F5wnJDg9Q3WXiydC\ngameMode: OInVolsr6CHmj763\npartyAttributes: {"Pkv90lyKSTWLxSFZ":{},"0LpupEi5DbkVs3qF":{},"Ti1t530Wj1WfzIvc":{}}\npriority: 0\ntempParty: VlSXrA3XUGud4tVj' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingRequest' test.out

#- 96 StartMatchmakingResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: startMatchmakingResponse\nid: rSUAW2ak7ISDrBVg\ncode: 25' \
    > test.out 2>&1
eval_tap $? 96 'StartMatchmakingResponse' test.out

#- 97 UnblockPlayerNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerNotif\nunblockedUserId: 6NuDZvPb1kuUfNfU\nuserId: De4g7q6PHEaqbzHv' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerNotif' test.out

#- 98 UnblockPlayerRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerRequest\nid: DDl1jiLw3XMGBA6J\nnamespace: XDpA1tIC45C0oaGo\nunblockedUserId: uFu4hXONgUwJnUpr' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerRequest' test.out

#- 99 UnblockPlayerResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unblockPlayerResponse\nid: xBhrciryLm67rkad\ncode: 50\nnamespace: H5Y41SLjCPrFa05X\nunblockedUserId: l5TPC5GODS44bmm7' \
    > test.out 2>&1
eval_tap $? 99 'UnblockPlayerResponse' test.out

#- 100 UnfriendNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendNotif\nfriendId: jPdKLddfdsUqjXVz' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendNotif' test.out

#- 101 UnfriendRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendRequest\nid: F4ctv5guycGiq9j2\nfriendId: W1QqxnWR5sheLgsA' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendRequest' test.out

#- 102 UnfriendResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: unfriendResponse\nid: xR7dvBVC5zgOKLTD\ncode: 62' \
    > test.out 2>&1
eval_tap $? 102 'UnfriendResponse' test.out

#- 103 UserBannedNotification
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 103 'UserBannedNotification' test.out

#- 104 UserMetricRequest
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricRequest\nid: mHe8c1eJ9sde7Ryt' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricRequest' test.out

#- 105 UserMetricResponse
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userMetricResponse\nid: udIv22M18uux9xBo\ncode: 42\nplayerCount: 25' \
    > test.out 2>&1
eval_tap $? 105 'UserMetricResponse' test.out

#- 106 UserStatusNotif
$PYTHON -m $MODULE 'one-shot-websocket' \
    'type: userStatusNotif\nactivity: iR3UbJc1ZYapx7C4\navailability: 78\nlastSeenAt: 1973-06-12T00:00:00Z\nuserId: wDZCIXFNEL3uWVRz' \
    > test.out 2>&1
eval_tap $? 106 'UserStatusNotif' test.out


fi

exit $EXIT_CODE
