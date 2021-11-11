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

from ..models import ModelsGetAllPlayerBlockedByUsersResponse
from ..models import ModelsGetAllPlayerBlockedUsersResponse
from ..models import ModelsGetAllPlayerSessionAttributeResponse
from ..models import ModelsGetPlayerSessionAttributeResponse
from ..models import ModelsListBlockedPlayerRequest
from ..models import ModelsSetPlayerSessionAttributeRequest
from ..models import RestapiErrorResponseBody

from ..operations.player import AdminBulkBlockPlayersV1
from ..operations.player import AdminGetAllPlayerSessionAttribute
from ..operations.player import AdminGetPlayerBlockedByPlayersV1
from ..operations.player import AdminGetPlayerBlockedPlayersV1
from ..operations.player import AdminGetPlayerSessionAttribute
from ..operations.player import AdminSetPlayerSessionAttribute
from ..operations.player import PublicGetPlayerBlockedByPlayersV1
from ..operations.player import PublicGetPlayerBlockedPlayersV1


@same_doc_as(AdminBulkBlockPlayersV1)
def admin_bulk_block_players_v1(body: ModelsListBlockedPlayerRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkBlockPlayersV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetAllPlayerSessionAttribute)
def admin_get_all_player_session_attribute(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAllPlayerSessionAttribute.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetPlayerBlockedByPlayersV1)
def admin_get_player_blocked_by_players_v1(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlayerBlockedByPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetPlayerBlockedPlayersV1)
def admin_get_player_blocked_players_v1(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlayerBlockedPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetPlayerSessionAttribute)
def admin_get_player_session_attribute(attribute: str, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlayerSessionAttribute.create(
        attribute=attribute,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminSetPlayerSessionAttribute)
def admin_set_player_session_attribute(body: ModelsSetPlayerSessionAttributeRequest, user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSetPlayerSessionAttribute.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetPlayerBlockedByPlayersV1)
def public_get_player_blocked_by_players_v1(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPlayerBlockedByPlayersV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetPlayerBlockedPlayersV1)
def public_get_player_blocked_players_v1(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPlayerBlockedPlayersV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
