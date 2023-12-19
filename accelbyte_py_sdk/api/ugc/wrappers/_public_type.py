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

from ..models import ModelsPaginatedGetTypeResponse
from ..models import ResponseError

from ..operations.public_type import GetType


@same_doc_as(GetType)
def get_type(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get types (GetType)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/types

        method: GET

        tags: ["Public Type"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTypeResponse (Get types)

        400: Bad Request - ResponseError (771801: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771802: Unable get types)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetType.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetType)
async def get_type_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get types (GetType)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/types

        method: GET

        tags: ["Public Type"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTypeResponse (Get types)

        400: Bad Request - ResponseError (771801: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771802: Unable get types)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetType.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
