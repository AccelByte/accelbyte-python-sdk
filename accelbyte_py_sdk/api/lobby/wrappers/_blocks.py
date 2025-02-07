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

from ..models import ModelNativeUserBlockRequest
from ..models import ModelNativeUserBlockResponse
from ..models import RestapiErrorResponseV1

from ..operations.blocks import SyncNativeBlockedUser


@same_doc_as(SyncNativeBlockedUser)
def sync_native_blocked_user(
    body: List[ModelNativeUserBlockRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync blocked user using server to server call to native first party server. (syncNativeBlockedUser)

    Sync blocked user using server to server call to native first party server.
    Supported platforms:
    ps5, ps4 and pspc : the default environment would be sp-int, can be override using psnEnv.
    psnEnv consist of sp-int (default), prod-qa, np

    Properties:
        url: /lobby/sync/namespaces/{namespace}/me/block

        method: PATCH

        tags: ["blocks"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNativeUserBlockRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNativeUserBlockResponse]

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncNativeBlockedUser.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncNativeBlockedUser)
async def sync_native_blocked_user_async(
    body: List[ModelNativeUserBlockRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync blocked user using server to server call to native first party server. (syncNativeBlockedUser)

    Sync blocked user using server to server call to native first party server.
    Supported platforms:
    ps5, ps4 and pspc : the default environment would be sp-int, can be override using psnEnv.
    psnEnv consist of sp-int (default), prod-qa, np

    Properties:
        url: /lobby/sync/namespaces/{namespace}/me/block

        method: PATCH

        tags: ["blocks"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNativeUserBlockRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNativeUserBlockResponse]

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncNativeBlockedUser.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
