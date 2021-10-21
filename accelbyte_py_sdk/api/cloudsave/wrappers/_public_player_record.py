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

from ..models import ModelsPlayerRecord
from ..models import ModelsPlayerRecordRequest
from ..models import ModelsResponseError

from ..operations.public_player_record import DeletePlayerRecordHandlerV1
from ..operations.public_player_record import GetPlayerPublicRecordHandlerV1
from ..operations.public_player_record import GetPlayerRecordHandlerV1
from ..operations.public_player_record import PostPlayerPublicRecordHandlerV1
from ..operations.public_player_record import PostPlayerRecordHandlerV1
from ..operations.public_player_record import PublicDeletePlayerPublicRecordHandlerV1
from ..operations.public_player_record import PutPlayerPublicRecordHandlerV1
from ..operations.public_player_record import PutPlayerRecordHandlerV1


@same_doc_as(DeletePlayerRecordHandlerV1)
def delete_player_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePlayerRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPlayerPublicRecordHandlerV1)
def get_player_public_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPlayerPublicRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPlayerRecordHandlerV1)
def get_player_record_handler_v1(user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPlayerRecordHandlerV1.create(
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PostPlayerPublicRecordHandlerV1)
def post_player_public_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PostPlayerRecordHandlerV1)
def post_player_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostPlayerRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDeletePlayerPublicRecordHandlerV1)
def public_delete_player_public_record_handler_v1(key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeletePlayerPublicRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PutPlayerPublicRecordHandlerV1)
def put_player_public_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerPublicRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PutPlayerRecordHandlerV1)
def put_player_record_handler_v1(body: ModelsPlayerRecordRequest, user_id: str, key: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutPlayerRecordHandlerV1.create(
        body=body,
        user_id=user_id,
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
