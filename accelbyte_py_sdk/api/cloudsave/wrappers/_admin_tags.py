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
from ..models import ModelsTagRequest

from ..operations.admin_tags import AdminDeleteTagHandlerV1
from ..operations.admin_tags import AdminListTagsHandlerV1
from ..operations.admin_tags import AdminPostTagHandlerV1


@same_doc_as(AdminDeleteTagHandlerV1)
def admin_delete_tag_handler_v1(
    tag: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a tag (adminDeleteTagHandlerV1)

    ## Description

    This endpoint will delete tag by name

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}

        method: DELETE

        tags: ["AdminTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag: (tag) REQUIRED str in path

    Responses:
        204: No Content - (Tag deleted)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18510: tag not found)

        500: Internal Server Error - ModelsResponseError (18509: unable to delete tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTagHandlerV1.create(
        tag=tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTagHandlerV1)
async def admin_delete_tag_handler_v1_async(
    tag: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a tag (adminDeleteTagHandlerV1)

    ## Description

    This endpoint will delete tag by name

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}

        method: DELETE

        tags: ["AdminTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag: (tag) REQUIRED str in path

    Responses:
        204: No Content - (Tag deleted)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18510: tag not found)

        500: Internal Server Error - ModelsResponseError (18509: unable to delete tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTagHandlerV1.create(
        tag=tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListTagsHandlerV1)
def admin_list_tags_handler_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List tags (adminListTagsHandlerV1)

    ## Description

    Retrieve list of available tags by namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["AdminTags"]

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
    request = AdminListTagsHandlerV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListTagsHandlerV1)
async def admin_list_tags_handler_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List tags (adminListTagsHandlerV1)

    ## Description

    Retrieve list of available tags by namespace

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["AdminTags"]

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
    request = AdminListTagsHandlerV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPostTagHandlerV1)
def admin_post_tag_handler_v1(
    body: ModelsTagRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a tag (adminPostTagHandlerV1)

    ## Description

    This endpoint will create new tags

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["AdminTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsTagRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Tag created)

        400: Bad Request - ModelsResponseError (18505: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18506: tag already exists)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18507: unable to create tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostTagHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPostTagHandlerV1)
async def admin_post_tag_handler_v1_async(
    body: ModelsTagRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a tag (adminPostTagHandlerV1)

    ## Description

    This endpoint will create new tags

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["AdminTags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsTagRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Tag created)

        400: Bad Request - ModelsResponseError (18505: invalid request body | 20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        409: Conflict - ModelsResponseError (18506: tag already exists)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18507: unable to create tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminPostTagHandlerV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
