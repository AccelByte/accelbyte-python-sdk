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

from ..models import ModelsListPlayerRecordKeys
from ..models import ModelsPlayerRecord
from ..models import ModelsPlayerRecordRequest
from ..models import ModelsResponseError

from ..operations.admin_player_record import AdminDeletePlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminDeletePlayerRecordHandlerV1
from ..operations.admin_player_record import AdminGetPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminGetPlayerRecordHandlerV1
from ..operations.admin_player_record import AdminPostPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminPostPlayerRecordHandlerV1
from ..operations.admin_player_record import AdminPutPlayerPublicRecordHandlerV1
from ..operations.admin_player_record import AdminPutPlayerRecordHandlerV1
from ..operations.admin_player_record import ListPlayerRecordHandlerV1


@same_doc_as(AdminDeletePlayerPublicRecordHandlerV1)
def admin_delete_player_public_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeletePlayerPublicRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminDeletePlayerRecordHandlerV1)
def admin_delete_player_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeletePlayerRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetPlayerPublicRecordHandlerV1)
def admin_get_player_public_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlayerPublicRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetPlayerRecordHandlerV1)
def admin_get_player_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetPlayerRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPostPlayerPublicRecordHandlerV1)
def admin_post_player_public_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPostPlayerRecordHandlerV1)
def admin_post_player_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPostPlayerRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPutPlayerPublicRecordHandlerV1)
def admin_put_player_public_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminPutPlayerRecordHandlerV1)
def admin_put_player_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminPutPlayerRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ListPlayerRecordHandlerV1)
def list_player_record_handler_v1(query: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListPlayerRecordHandlerV1.create(
        query=query,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
