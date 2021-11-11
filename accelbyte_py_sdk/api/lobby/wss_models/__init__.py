"""Auto-generated package that contains websocket models used by the lobby."""

# pylint: disable=line-too-long

from .accept_friends_notif import AcceptFriendsNotif
from .accept_friends_request import AcceptFriendsRequest
from .accept_friends_response import AcceptFriendsResponse
from .block_player_notif import BlockPlayerNotif
from .block_player_request import BlockPlayerRequest
from .block_player_response import BlockPlayerResponse
from .cancel_friends_notif import CancelFriendsNotif
from .cancel_friends_request import CancelFriendsRequest
from .cancel_friends_response import CancelFriendsResponse
from .cancel_matchmaking_request import CancelMatchmakingRequest
from .cancel_matchmaking_response import CancelMatchmakingResponse
from .channel_chat_notif import ChannelChatNotif
from .client_reset_request import ClientResetRequest
from .connect_notif import ConnectNotif
from .disconnect_notif import DisconnectNotif
from .ds_notif import DsNotif
from .error_notif import ErrorNotif
from .exit_all_channel import ExitAllChannel
from .friends_status_request import FriendsStatusRequest
from .friends_status_response import FriendsStatusResponse
from .get_all_session_attribute_request import GetAllSessionAttributeRequest
from .get_all_session_attribute_response import GetAllSessionAttributeResponse
from .get_friendship_status_request import GetFriendshipStatusRequest
from .get_friendship_status_response import GetFriendshipStatusResponse
from .get_session_attribute_request import GetSessionAttributeRequest
from .get_session_attribute_response import GetSessionAttributeResponse
from .heartbeat import Heartbeat
from .join_default_channel_request import JoinDefaultChannelRequest
from .join_default_channel_response import JoinDefaultChannelResponse
from .list_incoming_friends_request import ListIncomingFriendsRequest
from .list_incoming_friends_response import ListIncomingFriendsResponse
from .list_of_friends_request import ListOfFriendsRequest
from .list_of_friends_response import ListOfFriendsResponse
from .list_online_friends_request import ListOnlineFriendsRequest
from .list_outgoing_friends_request import ListOutgoingFriendsRequest
from .list_outgoing_friends_response import ListOutgoingFriendsResponse
from .matchmaking_notif import MatchmakingNotif
from .message_notif import MessageNotif
from .offline_notification_request import OfflineNotificationRequest
from .offline_notification_response import OfflineNotificationResponse
from .online_friends import OnlineFriends
from .party_chat_notif import PartyChatNotif
from .party_chat_request import PartyChatRequest
from .party_chat_response import PartyChatResponse
from .party_create_request import PartyCreateRequest
from .party_create_response import PartyCreateResponse
from .party_data_update_notif import PartyDataUpdateNotif
from .party_get_invited_notif import PartyGetInvitedNotif
from .party_info_request import PartyInfoRequest
from .party_info_response import PartyInfoResponse
from .party_invite_notif import PartyInviteNotif
from .party_invite_request import PartyInviteRequest
from .party_invite_response import PartyInviteResponse
from .party_join_notif import PartyJoinNotif
from .party_join_request import PartyJoinRequest
from .party_join_response import PartyJoinResponse
from .party_kick_notif import PartyKickNotif
from .party_kick_request import PartyKickRequest
from .party_kick_response import PartyKickResponse
from .party_leave_notif import PartyLeaveNotif
from .party_leave_request import PartyLeaveRequest
from .party_leave_response import PartyLeaveResponse
from .party_promote_leader_request import PartyPromoteLeaderRequest
from .party_promote_leader_response import PartyPromoteLeaderResponse
from .party_reject_notif import PartyRejectNotif
from .party_reject_request import PartyRejectRequest
from .party_reject_response import PartyRejectResponse
from .personal_chat_history_request import PersonalChatHistoryRequest
from .personal_chat_history_response import PersonalChatHistoryResponse
from .personal_chat_notif import PersonalChatNotif
from .personal_chat_request import PersonalChatRequest
from .personal_chat_response import PersonalChatResponse
from .reject_friends_notif import RejectFriendsNotif
from .reject_friends_request import RejectFriendsRequest
from .reject_friends_response import RejectFriendsResponse
from .rematchmaking_notif import RematchmakingNotif
from .request_friends_notif import RequestFriendsNotif
from .request_friends_request import RequestFriendsRequest
from .request_friends_response import RequestFriendsResponse
from .send_channel_chat_request import SendChannelChatRequest
from .send_channel_chat_response import SendChannelChatResponse
from .set_ready_consent_notif import SetReadyConsentNotif
from .set_ready_consent_request import SetReadyConsentRequest
from .set_ready_consent_response import SetReadyConsentResponse
from .set_session_attribute_request import SetSessionAttributeRequest
from .set_session_attribute_response import SetSessionAttributeResponse
from .set_user_status_request import SetUserStatusRequest
from .set_user_status_response import SetUserStatusResponse
from .shutdown_notif import ShutdownNotif
from .signaling_p2p_notif import SignalingP2PNotif
from .start_matchmaking_request import StartMatchmakingRequest
from .start_matchmaking_response import StartMatchmakingResponse
from .system_components_status import SystemComponentsStatus
from .unblock_player_notif import UnblockPlayerNotif
from .unblock_player_request import UnblockPlayerRequest
from .unblock_player_response import UnblockPlayerResponse
from .unfriend_notif import UnfriendNotif
from .unfriend_request import UnfriendRequest
from .unfriend_response import UnfriendResponse
from .user_banned_notification import UserBannedNotification
from .user_metric_request import UserMetricRequest
from .user_metric_response import UserMetricResponse
from .user_status_notif import UserStatusNotif

from ....core import parse_wsm as parse_wsm_internal

models = {
    AcceptFriendsNotif.get_type(): AcceptFriendsNotif,
    AcceptFriendsRequest.get_type(): AcceptFriendsRequest,
    AcceptFriendsResponse.get_type(): AcceptFriendsResponse,
    BlockPlayerNotif.get_type(): BlockPlayerNotif,
    BlockPlayerRequest.get_type(): BlockPlayerRequest,
    BlockPlayerResponse.get_type(): BlockPlayerResponse,
    CancelFriendsNotif.get_type(): CancelFriendsNotif,
    CancelFriendsRequest.get_type(): CancelFriendsRequest,
    CancelFriendsResponse.get_type(): CancelFriendsResponse,
    CancelMatchmakingRequest.get_type(): CancelMatchmakingRequest,
    CancelMatchmakingResponse.get_type(): CancelMatchmakingResponse,
    ChannelChatNotif.get_type(): ChannelChatNotif,
    ClientResetRequest.get_type(): ClientResetRequest,
    ConnectNotif.get_type(): ConnectNotif,
    DisconnectNotif.get_type(): DisconnectNotif,
    DsNotif.get_type(): DsNotif,
    ErrorNotif.get_type(): ErrorNotif,
    ExitAllChannel.get_type(): ExitAllChannel,
    FriendsStatusRequest.get_type(): FriendsStatusRequest,
    FriendsStatusResponse.get_type(): FriendsStatusResponse,
    GetAllSessionAttributeRequest.get_type(): GetAllSessionAttributeRequest,
    GetAllSessionAttributeResponse.get_type(): GetAllSessionAttributeResponse,
    GetFriendshipStatusRequest.get_type(): GetFriendshipStatusRequest,
    GetFriendshipStatusResponse.get_type(): GetFriendshipStatusResponse,
    GetSessionAttributeRequest.get_type(): GetSessionAttributeRequest,
    GetSessionAttributeResponse.get_type(): GetSessionAttributeResponse,
    Heartbeat.get_type(): Heartbeat,
    JoinDefaultChannelRequest.get_type(): JoinDefaultChannelRequest,
    JoinDefaultChannelResponse.get_type(): JoinDefaultChannelResponse,
    ListIncomingFriendsRequest.get_type(): ListIncomingFriendsRequest,
    ListIncomingFriendsResponse.get_type(): ListIncomingFriendsResponse,
    ListOfFriendsRequest.get_type(): ListOfFriendsRequest,
    ListOfFriendsResponse.get_type(): ListOfFriendsResponse,
    ListOnlineFriendsRequest.get_type(): ListOnlineFriendsRequest,
    ListOutgoingFriendsRequest.get_type(): ListOutgoingFriendsRequest,
    ListOutgoingFriendsResponse.get_type(): ListOutgoingFriendsResponse,
    MatchmakingNotif.get_type(): MatchmakingNotif,
    MessageNotif.get_type(): MessageNotif,
    OfflineNotificationRequest.get_type(): OfflineNotificationRequest,
    OfflineNotificationResponse.get_type(): OfflineNotificationResponse,
    OnlineFriends.get_type(): OnlineFriends,
    PartyChatNotif.get_type(): PartyChatNotif,
    PartyChatRequest.get_type(): PartyChatRequest,
    PartyChatResponse.get_type(): PartyChatResponse,
    PartyCreateRequest.get_type(): PartyCreateRequest,
    PartyCreateResponse.get_type(): PartyCreateResponse,
    PartyDataUpdateNotif.get_type(): PartyDataUpdateNotif,
    PartyGetInvitedNotif.get_type(): PartyGetInvitedNotif,
    PartyInfoRequest.get_type(): PartyInfoRequest,
    PartyInfoResponse.get_type(): PartyInfoResponse,
    PartyInviteNotif.get_type(): PartyInviteNotif,
    PartyInviteRequest.get_type(): PartyInviteRequest,
    PartyInviteResponse.get_type(): PartyInviteResponse,
    PartyJoinNotif.get_type(): PartyJoinNotif,
    PartyJoinRequest.get_type(): PartyJoinRequest,
    PartyJoinResponse.get_type(): PartyJoinResponse,
    PartyKickNotif.get_type(): PartyKickNotif,
    PartyKickRequest.get_type(): PartyKickRequest,
    PartyKickResponse.get_type(): PartyKickResponse,
    PartyLeaveNotif.get_type(): PartyLeaveNotif,
    PartyLeaveRequest.get_type(): PartyLeaveRequest,
    PartyLeaveResponse.get_type(): PartyLeaveResponse,
    PartyPromoteLeaderRequest.get_type(): PartyPromoteLeaderRequest,
    PartyPromoteLeaderResponse.get_type(): PartyPromoteLeaderResponse,
    PartyRejectNotif.get_type(): PartyRejectNotif,
    PartyRejectRequest.get_type(): PartyRejectRequest,
    PartyRejectResponse.get_type(): PartyRejectResponse,
    PersonalChatHistoryRequest.get_type(): PersonalChatHistoryRequest,
    PersonalChatHistoryResponse.get_type(): PersonalChatHistoryResponse,
    PersonalChatNotif.get_type(): PersonalChatNotif,
    PersonalChatRequest.get_type(): PersonalChatRequest,
    PersonalChatResponse.get_type(): PersonalChatResponse,
    RejectFriendsNotif.get_type(): RejectFriendsNotif,
    RejectFriendsRequest.get_type(): RejectFriendsRequest,
    RejectFriendsResponse.get_type(): RejectFriendsResponse,
    RematchmakingNotif.get_type(): RematchmakingNotif,
    RequestFriendsNotif.get_type(): RequestFriendsNotif,
    RequestFriendsRequest.get_type(): RequestFriendsRequest,
    RequestFriendsResponse.get_type(): RequestFriendsResponse,
    SendChannelChatRequest.get_type(): SendChannelChatRequest,
    SendChannelChatResponse.get_type(): SendChannelChatResponse,
    SetReadyConsentNotif.get_type(): SetReadyConsentNotif,
    SetReadyConsentRequest.get_type(): SetReadyConsentRequest,
    SetReadyConsentResponse.get_type(): SetReadyConsentResponse,
    SetSessionAttributeRequest.get_type(): SetSessionAttributeRequest,
    SetSessionAttributeResponse.get_type(): SetSessionAttributeResponse,
    SetUserStatusRequest.get_type(): SetUserStatusRequest,
    SetUserStatusResponse.get_type(): SetUserStatusResponse,
    ShutdownNotif.get_type(): ShutdownNotif,
    SignalingP2PNotif.get_type(): SignalingP2PNotif,
    StartMatchmakingRequest.get_type(): StartMatchmakingRequest,
    StartMatchmakingResponse.get_type(): StartMatchmakingResponse,
    SystemComponentsStatus.get_type(): SystemComponentsStatus,
    UnblockPlayerNotif.get_type(): UnblockPlayerNotif,
    UnblockPlayerRequest.get_type(): UnblockPlayerRequest,
    UnblockPlayerResponse.get_type(): UnblockPlayerResponse,
    UnfriendNotif.get_type(): UnfriendNotif,
    UnfriendRequest.get_type(): UnfriendRequest,
    UnfriendResponse.get_type(): UnfriendResponse,
    UserBannedNotification.get_type(): UserBannedNotification,
    UserMetricRequest.get_type(): UserMetricRequest,
    UserMetricResponse.get_type(): UserMetricResponse,
    UserStatusNotif.get_type(): UserStatusNotif,
}


def parse_wsm(wsm: str, is_strict: bool = False):
    return parse_wsm_internal(wsm, models, is_strict=is_strict)
