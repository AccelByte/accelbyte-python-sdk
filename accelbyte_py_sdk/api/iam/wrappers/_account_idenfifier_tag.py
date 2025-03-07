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

from ..models import AccountcommonTagResponse
from ..models import AccountcommonTagsGetResponseV3
from ..models import ModelTagCreateRequestV3
from ..models import ModelTagUpdateRequestV3
from ..models import RestErrorResponse

from ..operations.account_idenfifier_tag import AdminCreateTagV3
from ..operations.account_idenfifier_tag import AdminDeleteTagV3
from ..operations.account_idenfifier_tag import AdminQueryTagV3
from ..operations.account_idenfifier_tag import AdminUpdateTagV3


@same_doc_as(AdminCreateTagV3)
def admin_create_tag_v3(
    body: ModelTagCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Account Identifier Tag (AdminCreateTagV3)

    Create a new Account Identifier Tag for users. This endpoint allows administrators to create tags that can be used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Account Idenfifier Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelTagCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountcommonTagResponse (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        409: Conflict - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTagV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateTagV3)
async def admin_create_tag_v3_async(
    body: ModelTagCreateRequestV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Account Identifier Tag (AdminCreateTagV3)

    Create a new Account Identifier Tag for users. This endpoint allows administrators to create tags that can be used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Account Idenfifier Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelTagCreateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - AccountcommonTagResponse (Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        409: Conflict - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTagV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteTagV3)
def admin_delete_tag_v3(
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Account Identifier Tag (AdminDeleteTagV3)

    Delete an Account Identifier Tag. This endpoint allows administrators to delete a tag that is used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags/{tagId}

        method: DELETE

        tags: ["Account Idenfifier Tag"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTagV3.create(
        tag_id=tag_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTagV3)
async def admin_delete_tag_v3_async(
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Account Identifier Tag (AdminDeleteTagV3)

    Delete an Account Identifier Tag. This endpoint allows administrators to delete a tag that is used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags/{tagId}

        method: DELETE

        tags: ["Account Idenfifier Tag"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTagV3.create(
        tag_id=tag_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryTagV3)
def admin_query_tag_v3(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tag_name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query Account Identifier Tag (AdminQueryTagV3)

    Retrieve Account Identifier Tags. This endpoint allows administrators to retrieve tags that are used to identify and categorize user accounts.
    Tag Name can be used for partial content search.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Account Idenfifier Tag"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tag_name: (tagName) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonTagsGetResponseV3 (OK)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTagV3.create(
        limit=limit,
        offset=offset,
        tag_name=tag_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryTagV3)
async def admin_query_tag_v3_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    tag_name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query Account Identifier Tag (AdminQueryTagV3)

    Retrieve Account Identifier Tags. This endpoint allows administrators to retrieve tags that are used to identify and categorize user accounts.
    Tag Name can be used for partial content search.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Account Idenfifier Tag"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        tag_name: (tagName) OPTIONAL str in query

    Responses:
        200: OK - AccountcommonTagsGetResponseV3 (OK)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTagV3.create(
        limit=limit,
        offset=offset,
        tag_name=tag_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateTagV3)
def admin_update_tag_v3(
    body: ModelTagUpdateRequestV3,
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Account Identifier Tag (AdminUpdateTagV3)

    Update an existing Account Identifier Tag. This endpoint allows administrators to update the details of a tag that is used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags/{tagId}

        method: PUT

        tags: ["Account Idenfifier Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelTagUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonTagResponse (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        404: Not Found - RestErrorResponse

        409: Conflict - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTagV3.create(
        body=body,
        tag_id=tag_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateTagV3)
async def admin_update_tag_v3_async(
    body: ModelTagUpdateRequestV3,
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Account Identifier Tag (AdminUpdateTagV3)

    Update an existing Account Identifier Tag. This endpoint allows administrators to update the details of a tag that is used to identify and categorize user accounts.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/tags/{tagId}

        method: PUT

        tags: ["Account Idenfifier Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelTagUpdateRequestV3 in body

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        200: OK - AccountcommonTagResponse (OK)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 20002: validation error)

        404: Not Found - RestErrorResponse

        409: Conflict - RestErrorResponse

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTagV3.create(
        body=body,
        tag_id=tag_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
