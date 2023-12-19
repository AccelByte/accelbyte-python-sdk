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

from ..models import RestapiActionApiRequest
from ..models import RestapiActionApiResponse
from ..models import RestapiActionListApiResponse
from ..models import RestapiErrorResponse
from ..models import RestapiExtensionCategoryApiRequest
from ..models import RestapiExtensionCategoryApiResponse
from ..models import RestapiExtensionCategoryListApiResponse

from ..operations.admin_extension_categories_and_auto_moderation_actions import (
    AdminCreateExtensionCategory,
)
from ..operations.admin_extension_categories_and_auto_moderation_actions import (
    AdminCreateModAction,
)
from ..operations.admin_extension_categories_and_auto_moderation_actions import (
    AdminFindActionList,
)
from ..operations.admin_extension_categories_and_auto_moderation_actions import (
    AdminFindExtensionCategoryList,
)
from ..operations.admin_extension_categories_and_auto_moderation_actions import (
    AdminFindExtensionCategoryListOrderEnum,
    AdminFindExtensionCategoryListSortByEnum,
)


@same_doc_as(AdminCreateExtensionCategory)
def admin_create_extension_category(
    body: RestapiExtensionCategoryApiRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Extension Category (adminCreateExtensionCategory)

    Create extension category data

    Properties:
        url: /reporting/v1/admin/extensionCategories

        method: POST

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiExtensionCategoryApiRequest in body

    Responses:
        201: Created - RestapiExtensionCategoryApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminCreateExtensionCategory.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateExtensionCategory)
async def admin_create_extension_category_async(
    body: RestapiExtensionCategoryApiRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Extension Category (adminCreateExtensionCategory)

    Create extension category data

    Properties:
        url: /reporting/v1/admin/extensionCategories

        method: POST

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiExtensionCategoryApiRequest in body

    Responses:
        201: Created - RestapiExtensionCategoryApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminCreateExtensionCategory.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateModAction)
def admin_create_mod_action(
    body: RestapiActionApiRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Auto Moderation Action data (adminCreateModAction)

    Create auto moderation action

    Properties:
        url: /reporting/v1/admin/extensionActions

        method: POST

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiActionApiRequest in body

    Responses:
        201: Created - RestapiActionApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminCreateModAction.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateModAction)
async def admin_create_mod_action_async(
    body: RestapiActionApiRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Auto Moderation Action data (adminCreateModAction)

    Create auto moderation action

    Properties:
        url: /reporting/v1/admin/extensionActions

        method: POST

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiActionApiRequest in body

    Responses:
        201: Created - RestapiActionApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminCreateModAction.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminFindActionList)
def admin_find_action_list(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Find Auto Moderation Action List (adminFindActionList)

    Get a list of auto moderation actions

    Properties:
        url: /reporting/v1/admin/extensionActions

        method: GET

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - RestapiActionListApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminFindActionList.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminFindActionList)
async def admin_find_action_list_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Find Auto Moderation Action List (adminFindActionList)

    Get a list of auto moderation actions

    Properties:
        url: /reporting/v1/admin/extensionActions

        method: GET

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - RestapiActionListApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminFindActionList.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminFindExtensionCategoryList)
def admin_find_extension_category_list(
    order: Optional[Union[str, AdminFindExtensionCategoryListOrderEnum]] = None,
    sort_by: Optional[Union[str, AdminFindExtensionCategoryListSortByEnum]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Find Extension Category List (adminFindExtensionCategoryList)

    Get a list of extension category data with the specified name

    Properties:
        url: /reporting/v1/admin/extensionCategories

        method: GET

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        order: (order) OPTIONAL Union[str, OrderEnum] in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - RestapiExtensionCategoryListApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminFindExtensionCategoryList.create(
        order=order,
        sort_by=sort_by,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminFindExtensionCategoryList)
async def admin_find_extension_category_list_async(
    order: Optional[Union[str, AdminFindExtensionCategoryListOrderEnum]] = None,
    sort_by: Optional[Union[str, AdminFindExtensionCategoryListSortByEnum]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Find Extension Category List (adminFindExtensionCategoryList)

    Get a list of extension category data with the specified name

    Properties:
        url: /reporting/v1/admin/extensionCategories

        method: GET

        tags: ["Admin Extension Categories and Auto Moderation Actions"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        order: (order) OPTIONAL Union[str, OrderEnum] in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - RestapiExtensionCategoryListApiResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    request = AdminFindExtensionCategoryList.create(
        order=order,
        sort_by=sort_by,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
