"""Auto-generated package that contains websocket models used by the lobby API."""

# pylint: disable=line-too-long

from .connect_notif import ConnectNotif
from .disconnect_notif import DisconnectNotif
from .error_notif import ErrorNotif
from .shutdown_notif import ShutdownNotif
from .heartbeat import Heartbeat
from .party_info_request import PartyInfoRequest
from .party_info_response import PartyInfoResponse
from .party_create_request import PartyCreateRequest
from .party_create_response import PartyCreateResponse
from .party_leave_request import PartyLeaveRequest
from .party_leave_response import PartyLeaveResponse
from .party_leave_notif import PartyLeaveNotif
from .party_invite_request import PartyInviteRequest
from .party_invite_response import PartyInviteResponse
from .party_invite_notif import PartyInviteNotif
from .party_get_invited_notif import PartyGetInvitedNotif
from .party_join_request import PartyJoinRequest
from .party_join_response import PartyJoinResponse
from .party_join_notif import PartyJoinNotif
from .party_reject_request import PartyRejectRequest
from .party_reject_response import PartyRejectResponse
from .party_reject_notif import PartyRejectNotif
from .party_kick_request import PartyKickRequest
from .party_kick_response import PartyKickResponse
from .party_kick_notif import PartyKickNotif
from .personal_chat_request import PersonalChatRequest
from .personal_chat_response import PersonalChatResponse
from .personal_chat_notif import PersonalChatNotif
from .party_chat_request import PartyChatRequest
from .party_chat_response import PartyChatResponse
from .party_chat_notif import PartyChatNotif
from .personal_chat_history_request import PersonalChatHistoryRequest
from .personal_chat_history_response import PersonalChatHistoryResponse
from .party_promote_leader_request import PartyPromoteLeaderRequest
from .party_promote_leader_response import PartyPromoteLeaderResponse
from .party_data_update_notif import PartyDataUpdateNotif
from .friends_status_request import FriendsStatusRequest
from .friends_status_response import FriendsStatusResponse
from .set_user_status_request import SetUserStatusRequest
from .set_user_status_response import SetUserStatusResponse
from .user_status_notif import UserStatusNotif
from .list_online_friends_request import ListOnlineFriendsRequest
from .online_friends import OnlineFriends
from .client_reset_request import ClientResetRequest
from .offline_notification_request import OfflineNotificationRequest
from .offline_notification_response import OfflineNotificationResponse
from .message_notif import MessageNotif
from .start_matchmaking_request import StartMatchmakingRequest
from .start_matchmaking_response import StartMatchmakingResponse
from .cancel_matchmaking_request import CancelMatchmakingRequest
from .cancel_matchmaking_response import CancelMatchmakingResponse
from .matchmaking_notif import MatchmakingNotif
from .set_ready_consent_request import SetReadyConsentRequest
from .set_ready_consent_response import SetReadyConsentResponse
from .set_ready_consent_notif import SetReadyConsentNotif
from .rematchmaking_notif import RematchmakingNotif
from .request_friends_request import RequestFriendsRequest
from .request_friends_response import RequestFriendsResponse
from .request_friends_notif import RequestFriendsNotif
from .list_incoming_friends_request import ListIncomingFriendsRequest
from .list_incoming_friends_response import ListIncomingFriendsResponse
from .list_outgoing_friends_request import ListOutgoingFriendsRequest
from .list_outgoing_friends_response import ListOutgoingFriendsResponse
from .accept_friends_request import AcceptFriendsRequest
from .accept_friends_response import AcceptFriendsResponse
from .accept_friends_notif import AcceptFriendsNotif
from .reject_friends_request import RejectFriendsRequest
from .reject_friends_response import RejectFriendsResponse
from .reject_friends_notif import RejectFriendsNotif
from .cancel_friends_request import CancelFriendsRequest
from .cancel_friends_response import CancelFriendsResponse
from .cancel_friends_notif import CancelFriendsNotif
from .unfriend_request import UnfriendRequest
from .unfriend_response import UnfriendResponse
from .unfriend_notif import UnfriendNotif
from .list_of_friends_request import ListOfFriendsRequest
from .list_of_friends_response import ListOfFriendsResponse
from .get_friendship_status_request import GetFriendshipStatusRequest
from .get_friendship_status_response import GetFriendshipStatusResponse
from .block_player_request import BlockPlayerRequest
from .block_player_response import BlockPlayerResponse
from .block_player_notif import BlockPlayerNotif
from .unblock_player_request import UnblockPlayerRequest
from .unblock_player_response import UnblockPlayerResponse
from .unblock_player_notif import UnblockPlayerNotif
from .ds_notif import DsNotif
from .system_components_status import SystemComponentsStatus
from .join_default_channel_request import JoinDefaultChannelRequest
from .join_default_channel_response import JoinDefaultChannelResponse
from .user_banned_notification import UserBannedNotification
from .exit_all_channel import ExitAllChannel
from .send_channel_chat_request import SendChannelChatRequest
from .send_channel_chat_response import SendChannelChatResponse
from .channel_chat_notif import ChannelChatNotif
from .get_session_attribute_request import GetSessionAttributeRequest
from .get_session_attribute_response import GetSessionAttributeResponse
from .get_all_session_attribute_request import GetAllSessionAttributeRequest
from .get_all_session_attribute_response import GetAllSessionAttributeResponse
from .set_session_attribute_request import SetSessionAttributeRequest
from .set_session_attribute_response import SetSessionAttributeResponse
from .signaling_p2p_notif import SignalingP2PNotif
from .user_metric_request import UserMetricRequest
from .user_metric_response import UserMetricResponse

from ....core import parse_wsm as parse_wsm_internal

models = {
    ConnectNotif.get_type(): ConnectNotif,
    DisconnectNotif.get_type(): DisconnectNotif,
    ErrorNotif.get_type(): ErrorNotif,
    ShutdownNotif.get_type(): ShutdownNotif,
    Heartbeat.get_type(): Heartbeat,
    PartyInfoRequest.get_type(): PartyInfoRequest,
    PartyInfoResponse.get_type(): PartyInfoResponse,
    PartyCreateRequest.get_type(): PartyCreateRequest,
    PartyCreateResponse.get_type(): PartyCreateResponse,
    PartyLeaveRequest.get_type(): PartyLeaveRequest,
    PartyLeaveResponse.get_type(): PartyLeaveResponse,
    PartyLeaveNotif.get_type(): PartyLeaveNotif,
    PartyInviteRequest.get_type(): PartyInviteRequest,
    PartyInviteResponse.get_type(): PartyInviteResponse,
    PartyInviteNotif.get_type(): PartyInviteNotif,
    PartyGetInvitedNotif.get_type(): PartyGetInvitedNotif,
    PartyJoinRequest.get_type(): PartyJoinRequest,
    PartyJoinResponse.get_type(): PartyJoinResponse,
    PartyJoinNotif.get_type(): PartyJoinNotif,
    PartyRejectRequest.get_type(): PartyRejectRequest,
    PartyRejectResponse.get_type(): PartyRejectResponse,
    PartyRejectNotif.get_type(): PartyRejectNotif,
    PartyKickRequest.get_type(): PartyKickRequest,
    PartyKickResponse.get_type(): PartyKickResponse,
    PartyKickNotif.get_type(): PartyKickNotif,
    PersonalChatRequest.get_type(): PersonalChatRequest,
    PersonalChatResponse.get_type(): PersonalChatResponse,
    PersonalChatNotif.get_type(): PersonalChatNotif,
    PartyChatRequest.get_type(): PartyChatRequest,
    PartyChatResponse.get_type(): PartyChatResponse,
    PartyChatNotif.get_type(): PartyChatNotif,
    PersonalChatHistoryRequest.get_type(): PersonalChatHistoryRequest,
    PersonalChatHistoryResponse.get_type(): PersonalChatHistoryResponse,
    PartyPromoteLeaderRequest.get_type(): PartyPromoteLeaderRequest,
    PartyPromoteLeaderResponse.get_type(): PartyPromoteLeaderResponse,
    PartyDataUpdateNotif.get_type(): PartyDataUpdateNotif,
    FriendsStatusRequest.get_type(): FriendsStatusRequest,
    FriendsStatusResponse.get_type(): FriendsStatusResponse,
    SetUserStatusRequest.get_type(): SetUserStatusRequest,
    SetUserStatusResponse.get_type(): SetUserStatusResponse,
    UserStatusNotif.get_type(): UserStatusNotif,
    ListOnlineFriendsRequest.get_type(): ListOnlineFriendsRequest,
    OnlineFriends.get_type(): OnlineFriends,
    ClientResetRequest.get_type(): ClientResetRequest,
    OfflineNotificationRequest.get_type(): OfflineNotificationRequest,
    OfflineNotificationResponse.get_type(): OfflineNotificationResponse,
    MessageNotif.get_type(): MessageNotif,
    StartMatchmakingRequest.get_type(): StartMatchmakingRequest,
    StartMatchmakingResponse.get_type(): StartMatchmakingResponse,
    CancelMatchmakingRequest.get_type(): CancelMatchmakingRequest,
    CancelMatchmakingResponse.get_type(): CancelMatchmakingResponse,
    MatchmakingNotif.get_type(): MatchmakingNotif,
    SetReadyConsentRequest.get_type(): SetReadyConsentRequest,
    SetReadyConsentResponse.get_type(): SetReadyConsentResponse,
    SetReadyConsentNotif.get_type(): SetReadyConsentNotif,
    RematchmakingNotif.get_type(): RematchmakingNotif,
    RequestFriendsRequest.get_type(): RequestFriendsRequest,
    RequestFriendsResponse.get_type(): RequestFriendsResponse,
    RequestFriendsNotif.get_type(): RequestFriendsNotif,
    ListIncomingFriendsRequest.get_type(): ListIncomingFriendsRequest,
    ListIncomingFriendsResponse.get_type(): ListIncomingFriendsResponse,
    ListOutgoingFriendsRequest.get_type(): ListOutgoingFriendsRequest,
    ListOutgoingFriendsResponse.get_type(): ListOutgoingFriendsResponse,
    AcceptFriendsRequest.get_type(): AcceptFriendsRequest,
    AcceptFriendsResponse.get_type(): AcceptFriendsResponse,
    AcceptFriendsNotif.get_type(): AcceptFriendsNotif,
    RejectFriendsRequest.get_type(): RejectFriendsRequest,
    RejectFriendsResponse.get_type(): RejectFriendsResponse,
    RejectFriendsNotif.get_type(): RejectFriendsNotif,
    CancelFriendsRequest.get_type(): CancelFriendsRequest,
    CancelFriendsResponse.get_type(): CancelFriendsResponse,
    CancelFriendsNotif.get_type(): CancelFriendsNotif,
    UnfriendRequest.get_type(): UnfriendRequest,
    UnfriendResponse.get_type(): UnfriendResponse,
    UnfriendNotif.get_type(): UnfriendNotif,
    ListOfFriendsRequest.get_type(): ListOfFriendsRequest,
    ListOfFriendsResponse.get_type(): ListOfFriendsResponse,
    GetFriendshipStatusRequest.get_type(): GetFriendshipStatusRequest,
    GetFriendshipStatusResponse.get_type(): GetFriendshipStatusResponse,
    BlockPlayerRequest.get_type(): BlockPlayerRequest,
    BlockPlayerResponse.get_type(): BlockPlayerResponse,
    BlockPlayerNotif.get_type(): BlockPlayerNotif,
    UnblockPlayerRequest.get_type(): UnblockPlayerRequest,
    UnblockPlayerResponse.get_type(): UnblockPlayerResponse,
    UnblockPlayerNotif.get_type(): UnblockPlayerNotif,
    DsNotif.get_type(): DsNotif,
    SystemComponentsStatus.get_type(): SystemComponentsStatus,
    JoinDefaultChannelRequest.get_type(): JoinDefaultChannelRequest,
    JoinDefaultChannelResponse.get_type(): JoinDefaultChannelResponse,
    UserBannedNotification.get_type(): UserBannedNotification,
    ExitAllChannel.get_type(): ExitAllChannel,
    SendChannelChatRequest.get_type(): SendChannelChatRequest,
    SendChannelChatResponse.get_type(): SendChannelChatResponse,
    ChannelChatNotif.get_type(): ChannelChatNotif,
    GetSessionAttributeRequest.get_type(): GetSessionAttributeRequest,
    GetSessionAttributeResponse.get_type(): GetSessionAttributeResponse,
    GetAllSessionAttributeRequest.get_type(): GetAllSessionAttributeRequest,
    GetAllSessionAttributeResponse.get_type(): GetAllSessionAttributeResponse,
    SetSessionAttributeRequest.get_type(): SetSessionAttributeRequest,
    SetSessionAttributeResponse.get_type(): SetSessionAttributeResponse,
    SignalingP2PNotif.get_type(): SignalingP2PNotif,
    UserMetricRequest.get_type(): UserMetricRequest,
    UserMetricResponse.get_type(): UserMetricResponse,
}


def parse_wsm(wsm: str, is_strict: bool = False):
    return parse_wsm_internal(wsm, models, is_strict=is_strict)
