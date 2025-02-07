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

from ..models import ModelsListTagsResponse
from ..models import ModelsResponseError

from ..operations.public_tags import PublicListTagsHandlerV1


@same_doc_as(PublicListTagsHandlerV1)
def public_list_tags_handler_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List tags (publicListTagsHandlerV1)

    ## Description

    Retrieve list of available tags by namespace

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/tags

        method: GET

        tags: ["PublicTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListTagsResponse (Available tags retrieved)

        400: Bad Request - ModelsResponseError (18503: unable to list tags)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18502: unable to list tags)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListTagsHandlerV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListTagsHandlerV1)
async def public_list_tags_handler_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List tags (publicListTagsHandlerV1)

    ## Description

    Retrieve list of available tags by namespace

    Properties:
        url: /cloudsave/v1/namespaces/{namespace}/tags

        method: GET

        tags: ["PublicTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListTagsResponse (Available tags retrieved)

        400: Bad Request - ModelsResponseError (18503: unable to list tags)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        500: Internal Server Error - ModelsResponseError (18502: unable to list tags)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListTagsHandlerV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
