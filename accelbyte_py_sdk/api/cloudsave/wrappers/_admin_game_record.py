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

from ..models import ModelsGameRecord
from ..models import ModelsGameRecordRequest
from ..models import ModelsListGameRecordKeys
from ..models import ResponseError

from ..operations.admin_game_record import DeleteAdminGameRecordHandlerV1
from ..operations.admin_game_record import GetGameRecordHandlerByKeyV1
from ..operations.admin_game_record import ListGameRecordsHandlerV1
from ..operations.admin_game_record import PostAdminGameRecordHandlerV1
from ..operations.admin_game_record import PutAdminGameRecordHandlerV1


@same_doc_as(DeleteAdminGameRecordHandlerV1)
def delete_admin_game_record_handler_v1(key: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteAdminGameRecordHandlerV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetGameRecordHandlerByKeyV1)
def get_game_record_handler_by_key_v1(key: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameRecordHandlerByKeyV1.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListGameRecordsHandlerV1)
def list_game_records_handler_v1(offset: int, limit: int, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListGameRecordsHandlerV1.create(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PostAdminGameRecordHandlerV1)
def post_admin_game_record_handler_v1(body: ModelsGameRecordRequest, key: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PostAdminGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PutAdminGameRecordHandlerV1)
def put_admin_game_record_handler_v1(body: ModelsGameRecordRequest, key: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PutAdminGameRecordHandlerV1.create(
        body=body,
        key=key,
        namespace=namespace,
    )
    return run_request(request)
