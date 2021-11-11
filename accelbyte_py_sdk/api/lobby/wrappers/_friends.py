# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..models import ModelBulkAddFriendsRequest
from ..models import ModelGetFriendsResponse
from ..models import ModelGetUserFriendsResponse
from ..models import ModelGetUserIncomingFriendsResponse
from ..models import ModelGetUserOutgoingFriendsResponse
from ..models import ModelRequestFriendsRequest
from ..models import ModelUserAcceptFriendRequest
from ..models import ModelUserCancelFriendRequest
from ..models import ModelUserGetFriendshipStatusResponse
from ..models import ModelUserRejectFriendRequest
from ..models import ModelUserUnfriendRequest
from ..models import RestapiErrorResponseBody
from ..models import RestapiErrorResponseV1

from ..operations.friends import AddFriendsWithoutConfirmation
from ..operations.friends import GetListOfFriends
from ..operations.friends import GetUserFriendsUpdated
from ..operations.friends import GetUserIncomingFriends
from ..operations.friends import GetUserOutgoingFriends
from ..operations.friends import UserAcceptFriendRequest
from ..operations.friends import UserCancelFriendRequest
from ..operations.friends import UserGetFriendshipStatus
from ..operations.friends import UserRejectFriendRequest
from ..operations.friends import UserRequestFriend
from ..operations.friends import UserUnfriendRequest


@same_doc_as(AddFriendsWithoutConfirmation)
def add_friends_without_confirmation(body: ModelBulkAddFriendsRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddFriendsWithoutConfirmation.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetListOfFriends)
def get_list_of_friends(user_id: str, limit: Optional[str] = None, offset: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetListOfFriends.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserFriendsUpdated)
def get_user_friends_updated(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserFriendsUpdated.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserIncomingFriends)
def get_user_incoming_friends(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserIncomingFriends.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserOutgoingFriends)
def get_user_outgoing_friends(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserOutgoingFriends.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserAcceptFriendRequest)
def user_accept_friend_request(body: ModelUserAcceptFriendRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserAcceptFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserCancelFriendRequest)
def user_cancel_friend_request(body: ModelUserCancelFriendRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserCancelFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserGetFriendshipStatus)
def user_get_friendship_status(friend_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserGetFriendshipStatus.create(
        friend_id=friend_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserRejectFriendRequest)
def user_reject_friend_request(body: ModelUserRejectFriendRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserRejectFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserRequestFriend)
def user_request_friend(body: ModelRequestFriendsRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserRequestFriend.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UserUnfriendRequest)
def user_unfriend_request(body: ModelUserUnfriendRequest, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UserUnfriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
