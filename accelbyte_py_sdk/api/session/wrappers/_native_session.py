# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import ApimodelsNativeSessionPagingResponse
from ..models import ResponseError

from ..operations.native_session import AdminGetListNativeSession


@same_doc_as(AdminGetListNativeSession)
def admin_get_list_native_session(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List of native sessions. (adminGetListNativeSession)

    List of native sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/native-sessions

        method: GET

        tags: ["Native Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsNativeSessionPagingResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListNativeSession.create(
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetListNativeSession)
async def admin_get_list_native_session_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List of native sessions. (adminGetListNativeSession)

    List of native sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/native-sessions

        method: GET

        tags: ["Native Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsNativeSessionPagingResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetListNativeSession.create(
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
