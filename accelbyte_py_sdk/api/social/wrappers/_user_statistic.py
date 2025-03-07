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

from ..models import ADTOObjectForResettingUserStatItems
from ..models import ADTOObjectForUserStatItemValue
from ..models import BulkStatItemCreate
from ..models import BulkStatItemInc
from ..models import BulkStatItemReset
from ..models import BulkStatItemUpdate
from ..models import BulkStatOperationResult
from ..models import BulkUserStatItemByStatCodes
from ..models import BulkUserStatItemInc
from ..models import BulkUserStatItemReset
from ..models import BulkUserStatItemUpdate
from ..models import ErrorEntity
from ..models import StatItemInc
from ..models import StatItemIncResult
from ..models import StatItemUpdate
from ..models import StatItemValuePagingSlicedResult
from ..models import StatResetInfo
from ..models import UserStatItemInfo
from ..models import UserStatItemPagingSlicedResult
from ..models import ValidationErrorEntity

from ..operations.user_statistic import AdminListUsersStatItems
from ..operations.user_statistic import BulkCreateUserStatItems
from ..operations.user_statistic import BulkFetchOrDefaultStatItems
from ..operations.user_statistic import BulkFetchOrDefaultStatItems1
from ..operations.user_statistic import BulkFetchStatItems
from ..operations.user_statistic import BulkFetchStatItems1
from ..operations.user_statistic import BulkGetOrDefaultByUserId
from ..operations.user_statistic import BulkIncUserStatItem
from ..operations.user_statistic import BulkIncUserStatItem1
from ..operations.user_statistic import BulkIncUserStatItemValue
from ..operations.user_statistic import BulkIncUserStatItemValue1
from ..operations.user_statistic import BulkIncUserStatItemValue2
from ..operations.user_statistic import BulkResetUserStatItem
from ..operations.user_statistic import BulkResetUserStatItem1
from ..operations.user_statistic import BulkResetUserStatItem2
from ..operations.user_statistic import BulkResetUserStatItem3
from ..operations.user_statistic import BulkResetUserStatItemValues
from ..operations.user_statistic import BulkUpdateUserStatItem
from ..operations.user_statistic import BulkUpdateUserStatItem1
from ..operations.user_statistic import BulkUpdateUserStatItem2
from ..operations.user_statistic import BulkUpdateUserStatItemV2
from ..operations.user_statistic import CreateUserStatItem
from ..operations.user_statistic import DeleteUserStatItems
from ..operations.user_statistic import DeleteUserStatItems1
from ..operations.user_statistic import DeleteUserStatItems2
from ..operations.user_statistic import GetStatItems
from ..operations.user_statistic import GetUserStatItems
from ..operations.user_statistic import IncUserStatItemValue
from ..operations.user_statistic import PublicBulkCreateUserStatItems
from ..operations.user_statistic import PublicBulkIncUserStatItem
from ..operations.user_statistic import PublicBulkIncUserStatItem1
from ..operations.user_statistic import PublicBulkIncUserStatItemValue
from ..operations.user_statistic import PublicCreateUserStatItem
from ..operations.user_statistic import PublicIncUserStatItem
from ..operations.user_statistic import PublicIncUserStatItemValue
from ..operations.user_statistic import PublicListAllMyStatItems
from ..operations.user_statistic import PublicListMyStatItems
from ..operations.user_statistic import PublicQueryUserStatItems
from ..operations.user_statistic import PublicQueryUserStatItems1
from ..operations.user_statistic import PublicQueryUserStatItems2
from ..operations.user_statistic import ResetUserStatItemValue
from ..operations.user_statistic import ResetUserStatItemValue1
from ..operations.user_statistic import UpdateUserStatItemValue
from ..operations.user_statistic import UpdateUserStatItemValue1
from ..models import BulkStatItemUpdateUpdateStrategyEnum
from ..models import BulkUserStatItemUpdateUpdateStrategyEnum
from ..models import StatItemUpdateUpdateStrategyEnum


@same_doc_as(AdminListUsersStatItems)
def admin_list_users_stat_items(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Admin list user's statItems (AdminListUsersStatItems)

    Admin list all statItems of user
    NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault

      * If stat code does not exist, will ignore this stat code.
      * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUsersStatItems.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUsersStatItems)
async def admin_list_users_stat_items_async(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Admin list user's statItems (AdminListUsersStatItems)

    Admin list all statItems of user
    NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault

      * If stat code does not exist, will ignore this stat code.
      * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListUsersStatItems.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkCreateUserStatItems)
def bulk_create_user_stat_items(
    body: List[BulkStatItemCreate],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create user's statItems (bulkCreateUserStatItems)

    Bulk create user's statItems.
    Other detail info:

      *  Returns : bulk created result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemCreate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreateUserStatItems.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkCreateUserStatItems)
async def bulk_create_user_stat_items_async(
    body: List[BulkStatItemCreate],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create user's statItems (bulkCreateUserStatItems)

    Bulk create user's statItems.
    Other detail info:

      *  Returns : bulk created result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemCreate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreateUserStatItems.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkFetchOrDefaultStatItems)
def bulk_fetch_or_default_stat_items(
    stat_code: str,
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch user stat item values (bulkFetchOrDefaultStatItems)

    Bulk fetch multiple user's stat item values for a given namespace and statCode.
    NOTE: If stat item does not exist, will return default value. Other detail info:
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchOrDefaultStatItems.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkFetchOrDefaultStatItems)
async def bulk_fetch_or_default_stat_items_async(
    stat_code: str,
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch user stat item values (bulkFetchOrDefaultStatItems)

    Bulk fetch multiple user's stat item values for a given namespace and statCode.
    NOTE: If stat item does not exist, will return default value. Other detail info:
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchOrDefaultStatItems.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkFetchOrDefaultStatItems1)
def bulk_fetch_or_default_stat_items_1(
    stat_code: str,
    user_ids: List[str],
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch user stat item values (bulkFetchOrDefaultStatItems_1)

    Bulk fetch multiple user's stat item values for a given namespace and statCode.
    NOTE: If stat item does not exist, will return default value. Other detail info:
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchOrDefaultStatItems1.create(
        stat_code=stat_code,
        user_ids=user_ids,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkFetchOrDefaultStatItems1)
async def bulk_fetch_or_default_stat_items_1_async(
    stat_code: str,
    user_ids: List[str],
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch user stat item values (bulkFetchOrDefaultStatItems_1)

    Bulk fetch multiple user's stat item values for a given namespace and statCode.
    NOTE: If stat item does not exist, will return default value. Other detail info:
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchOrDefaultStatItems1.create(
        stat_code=stat_code,
        user_ids=user_ids,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkFetchStatItems)
def bulk_fetch_stat_items(
    stat_code: str,
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch statitems value (bulkFetchStatItems)

    Bulk fetch multiple user's statitem value for a given namespace and statCode.
    Other detail info:
    + *Returns*: list of user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserStatItemInfo] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchStatItems.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkFetchStatItems)
async def bulk_fetch_stat_items_async(
    stat_code: str,
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk fetch statitems value (bulkFetchStatItems)

    Bulk fetch multiple user's statitem value for a given namespace and statCode.
    Other detail info:
    + *Returns*: list of user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserStatItemInfo] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchStatItems.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkFetchStatItems1)
def bulk_fetch_stat_items_1(
    stat_code: str,
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk fetch statitems value (bulkFetchStatItems_1)

    Public bulk fetch multiple user's statitem value for a given namespace and statCode.
    Other detail info:
    + *Returns*: list of user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserStatItemInfo] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchStatItems1.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkFetchStatItems1)
async def bulk_fetch_stat_items_1_async(
    stat_code: str,
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk fetch statitems value (bulkFetchStatItems_1)

    Public bulk fetch multiple user's statitem value for a given namespace and statCode.
    Other detail info:
    + *Returns*: list of user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserStatItemInfo] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkFetchStatItems1.create(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkGetOrDefaultByUserId)
def bulk_get_or_default_by_user_id(
    body: BulkUserStatItemByStatCodes,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user's statitems value by user id and multiple stat codes (bulkGetOrDefaultByUserId)

    Bulk get user's statitems value for given namespace and user by multiple stat codes.
    Will return default value if player doesn't have the stat.
    Other detail info:
    + *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
    + *Max stat codes*: 20
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED BulkUserStatItemByStatCodes in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetOrDefaultByUserId.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetOrDefaultByUserId)
async def bulk_get_or_default_by_user_id_async(
    body: BulkUserStatItemByStatCodes,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user's statitems value by user id and multiple stat codes (bulkGetOrDefaultByUserId)

    Bulk get user's statitems value for given namespace and user by multiple stat codes.
    Will return default value if player doesn't have the stat.
    Other detail info:
    + *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
    + *Max stat codes*: 20
    + *Returns*: list of user's stat item values

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED BulkUserStatItemByStatCodes in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetOrDefaultByUserId.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkIncUserStatItem)
def bulk_inc_user_stat_item(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkIncUserStatItem)

    Bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkIncUserStatItem)
async def bulk_inc_user_stat_item_async(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkIncUserStatItem)

    Bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkIncUserStatItem1)
def bulk_inc_user_stat_item_1(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkIncUserStatItem_1)

    Bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkIncUserStatItem1)
async def bulk_inc_user_stat_item_1_async(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkIncUserStatItem_1)

    Bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkIncUserStatItemValue)
def bulk_inc_user_stat_item_value(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkIncUserStatItemValue)

    Bulk update multiple user's statitems value.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkIncUserStatItemValue)
async def bulk_inc_user_stat_item_value_async(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkIncUserStatItemValue)

    Bulk update multiple user's statitems value.

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkIncUserStatItemValue1)
def bulk_inc_user_stat_item_value_1(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkIncUserStatItemValue_1)

    Bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkIncUserStatItemValue1)
async def bulk_inc_user_stat_item_value_1_async(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkIncUserStatItemValue_1)

    Bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkIncUserStatItemValue2)
def bulk_inc_user_stat_item_value_2(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (bulkIncUserStatItemValue_2)

    Public bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkIncUserStatItemValue2)
async def bulk_inc_user_stat_item_value_2_async(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (bulkIncUserStatItemValue_2)

    Public bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkIncUserStatItemValue2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkResetUserStatItem)
def bulk_reset_user_stat_item(
    body: List[BulkUserStatItemReset],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset multiple user's statitems value (bulkResetUserStatItem)

    Bulk reset multiple user's statitems value.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkResetUserStatItem)
async def bulk_reset_user_stat_item_async(
    body: List[BulkUserStatItemReset],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset multiple user's statitems value (bulkResetUserStatItem)

    Bulk reset multiple user's statitems value.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkResetUserStatItem1)
def bulk_reset_user_stat_item_1(
    body: List[BulkStatItemReset],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset user's statitems value (bulkResetUserStatItem_1)

    Bulk reset user's statitems value for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkResetUserStatItem1)
async def bulk_reset_user_stat_item_1_async(
    body: List[BulkStatItemReset],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset user's statitems value (bulkResetUserStatItem_1)

    Bulk reset user's statitems value for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkResetUserStatItem2)
def bulk_reset_user_stat_item_2(
    body: List[BulkUserStatItemReset],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk reset multiple user's statitems value (bulkResetUserStatItem_2)

    Bulk reset multiple user's statitems value.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkResetUserStatItem2)
async def bulk_reset_user_stat_item_2_async(
    body: List[BulkUserStatItemReset],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk reset multiple user's statitems value (bulkResetUserStatItem_2)

    Bulk reset multiple user's statitems value.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkResetUserStatItem3)
def bulk_reset_user_stat_item_3(
    body: List[BulkStatItemReset],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk reset user's statitems value (bulkResetUserStatItem_3)

    Public bulk reset user's statitems value for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkResetUserStatItem3)
async def bulk_reset_user_stat_item_3_async(
    body: List[BulkStatItemReset],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk reset user's statitems value (bulkResetUserStatItem_3)

    Public bulk reset user's statitems value for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemReset] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItem3.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkResetUserStatItemValues)
def bulk_reset_user_stat_item_values(
    body: List[ADTOObjectForResettingUserStatItems],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset user's statitem values (bulkResetUserStatItemValues)

    Bulk reset user's statitem values for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ADTOObjectForResettingUserStatItems] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItemValues.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkResetUserStatItemValues)
async def bulk_reset_user_stat_item_values_async(
    body: List[ADTOObjectForResettingUserStatItems],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk reset user's statitem values (bulkResetUserStatItemValues)

    Bulk reset user's statitem values for given namespace and user.
    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ADTOObjectForResettingUserStatItems] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkResetUserStatItemValues.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkUpdateUserStatItem)
def bulk_update_user_stat_item(
    body: List[BulkStatItemUpdate],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkUpdateUserStatItem)

    Bulk update user's statitems value for given namespace and user with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkUpdateUserStatItem)
async def bulk_update_user_stat_item_async(
    body: List[BulkStatItemUpdate],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update user's statitems value (bulkUpdateUserStatItem)

    Bulk update user's statitems value for given namespace and user with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkUpdateUserStatItem1)
def bulk_update_user_stat_item_1(
    body: List[BulkUserStatItemUpdate],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (bulkUpdateUserStatItem_1)

    Public bulk update multiple user's statitems value with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/public/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkUpdateUserStatItem1)
async def bulk_update_user_stat_item_1_async(
    body: List[BulkUserStatItemUpdate],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (bulkUpdateUserStatItem_1)

    Public bulk update multiple user's statitems value with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/public/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkUpdateUserStatItem2)
def bulk_update_user_stat_item_2(
    body: List[BulkStatItemUpdate],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (bulkUpdateUserStatItem_2)

    Public bulk update user's statitems value for given namespace and user with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem2.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkUpdateUserStatItem2)
async def bulk_update_user_stat_item_2_async(
    body: List[BulkStatItemUpdate],
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (bulkUpdateUserStatItem_2)

    Public bulk update user's statitems value for given namespace and user with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItem2.create(
        body=body,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkUpdateUserStatItemV2)
def bulk_update_user_stat_item_v2(
    body: List[BulkUserStatItemUpdate],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkUpdateUserStatItemV2)

    Bulk update multiple user's statitems value with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItemV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkUpdateUserStatItemV2)
async def bulk_update_user_stat_item_v2_async(
    body: List[BulkUserStatItemUpdate],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk update multiple user's statitems value (bulkUpdateUserStatItemV2)

    Bulk update multiple user's statitems value with specific update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    Other detail info:
    + *Returns*: bulk updated result

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemUpdate] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkUpdateUserStatItemV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateUserStatItem)
def create_user_stat_item(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user's statItem (createUserStatItem)

    Create statItem for a user.
    Other detail info:

      *  Returns : created user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Create user statItem successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12274: Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateUserStatItem.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateUserStatItem)
async def create_user_stat_item_async(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user's statItem (createUserStatItem)

    Create statItem for a user.
    Other detail info:

      *  Returns : created user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Create user statItem successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12274: Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateUserStatItem.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserStatItems)
def delete_user_stat_items(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems)

    This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserStatItems)
async def delete_user_stat_items_async(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems)

    This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserStatItems1)
def delete_user_stat_items_1(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems_1)

    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems1.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserStatItems1)
async def delete_user_stat_items_1_async(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems_1)

    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems1.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserStatItems2)
def delete_user_stat_items_2(
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems_2)

    Delete user's stat items for given namespace, statCode, and user Id.
    If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
    Otherwise, it will delete all stat items related to the user Id.

    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems2.create(
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserStatItems2)
async def delete_user_stat_items_2_async(
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete User's statItems (deleteUserStatItems_2)

    Delete user's stat items for given namespace, statCode, and user Id.
    If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
    Otherwise, it will delete all stat items related to the user Id.

    Delete user's statItems given stat code.
    Other detail info:

      *  Returns : no content

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: DELETE

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        204: No Content - (delete successfully)

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStatItems2.create(
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetStatItems)
def get_stat_items(
    stat_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get users' stat item values by stat code (getStatItems)

    Get users' stat item values for a given namespace and statCode.
    Other info:
    + *Returns*: list of users' stat item values

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - StatItemValuePagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatItems.create(
        stat_code=stat_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetStatItems)
async def get_stat_items_async(
    stat_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get users' stat item values by stat code (getStatItems)

    Get users' stat item values for a given namespace and statCode.
    Other info:
    + *Returns*: list of users' stat item values

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/stats/{statCode}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - StatItemValuePagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatItems.create(
        stat_code=stat_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserStatItems)
def get_user_stat_items(
    user_id: str,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statItems (getUserStatItems)

    List user's statItems.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatItems.create(
        user_id=user_id,
        is_public=is_public,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserStatItems)
async def get_user_stat_items_async(
    user_id: str,
    is_public: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user's statItems (getUserStatItems)

    List user's statItems.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        is_public: (isPublic) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStatItems.create(
        user_id=user_id,
        is_public=is_public,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(IncUserStatItemValue)
def inc_user_stat_item_value(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user's statitem value (incUserStatItemValue)

    Update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IncUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IncUserStatItemValue)
async def inc_user_stat_item_value_async(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user's statitem value (incUserStatItemValue)

    Update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = IncUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkCreateUserStatItems)
def public_bulk_create_user_stat_items(
    body: List[BulkStatItemCreate],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create user's statItems (publicBulkCreateUserStatItems)

    Bulk create statItems.
    Other detail info:

      *  Returns : bulk created result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemCreate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkCreateUserStatItems.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkCreateUserStatItems)
async def public_bulk_create_user_stat_items_async(
    body: List[BulkStatItemCreate],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk create user's statItems (publicBulkCreateUserStatItems)

    Bulk create statItems.
    Other detail info:

      *  Returns : bulk created result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemCreate] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkCreateUserStatItems.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkIncUserStatItem)
def public_bulk_inc_user_stat_item(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (publicBulkIncUserStatItem)

    Public bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkIncUserStatItem)
async def public_bulk_inc_user_stat_item_async(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (publicBulkIncUserStatItem)

    Public bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItem.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkIncUserStatItem1)
def public_bulk_inc_user_stat_item_1(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (publicBulkIncUserStatItem_1)

    Public bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkIncUserStatItem1)
async def public_bulk_inc_user_stat_item_1_async(
    body: List[BulkStatItemInc],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update user's statitems value (publicBulkIncUserStatItem_1)

    Public bulk update user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItem1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkIncUserStatItemValue)
def public_bulk_inc_user_stat_item_value(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (publicBulkIncUserStatItemValue)

    Public bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItemValue.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkIncUserStatItemValue)
async def public_bulk_inc_user_stat_item_value_async(
    body: List[BulkUserStatItemInc],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public bulk update multiple user's statitems value (publicBulkIncUserStatItemValue)

    Public bulk update multiple user's statitems value.
    Other detail info:

      *  Returns : bulk updated result

    Properties:
        url: /social/v1/public/namespaces/{namespace}/statitems/value/bulk

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkUserStatItemInc] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[BulkStatOperationResult] (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkIncUserStatItemValue.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserStatItem)
def public_create_user_stat_item(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user's statItem (publicCreateUserStatItem)

    Create user's statItem.
    Other detail info:

      *  Returns : created user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Create user statItem successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12274: Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserStatItem.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserStatItem)
async def public_create_user_stat_item_async(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user's statItem (publicCreateUserStatItem)

    Create user's statItem.
    Other detail info:

      *  Returns : created user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems

        method: POST

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Create user statItem successfully)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12274: Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserStatItem.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicIncUserStatItem)
def public_inc_user_stat_item(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (publicIncUserStatItem)

    Public update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicIncUserStatItem.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicIncUserStatItem)
async def public_inc_user_stat_item_async(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (publicIncUserStatItem)

    Public update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicIncUserStatItem.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicIncUserStatItemValue)
def public_inc_user_stat_item_value(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (publicIncUserStatItemValue)

    Public update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicIncUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicIncUserStatItemValue)
async def public_inc_user_stat_item_value_async(
    body: StatItemInc,
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (publicIncUserStatItemValue)

    Public update user's statitem value.
    Other detail info:

      *  Returns : updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PATCH

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemInc in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}] | 12242: Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}]  is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicIncUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListAllMyStatItems)
def public_list_all_my_stat_items(
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicListAllMyStatItems)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListAllMyStatItems.create(
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListAllMyStatItems)
async def public_list_all_my_stat_items_async(
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicListAllMyStatItems)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListAllMyStatItems.create(
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListMyStatItems)
def public_list_my_stat_items(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicListMyStatItems)

    Public list all statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListMyStatItems.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListMyStatItems)
async def public_list_my_stat_items_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicListMyStatItems)

    Public list all statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/me/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListMyStatItems.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserStatItems)
def public_query_user_stat_items(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserStatItems)
async def public_query_user_stat_items_async(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserStatItems1)
def public_query_user_stat_items_1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems_1)

    Public list all statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserStatItems1)
async def public_query_user_stat_items_1_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    stat_codes: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems_1)

    Public list all statItems by pagination.
    Other detail info:

      *  Returns : stat items

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/statitems

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - UserStatItemPagingSlicedResult (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems1.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryUserStatItems2)
def public_query_user_stat_items_2(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems_2)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems2.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryUserStatItems2)
async def public_query_user_stat_items_2_async(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[List[str]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public list user's statItems (publicQueryUserStatItems_2)

    Public list all statItems of user.
    NOTE:
    * If stat code does not exist, will ignore this stat code.
    * If stat item does not exist, will return default value

    Other detail info:
      *  Returns : stat items

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk

        method: GET

        tags: ["UserStatistic"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

        stat_codes: (statCodes) OPTIONAL List[str] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - List[ADTOObjectForUserStatItemValue] (successful operation)

        400: Bad Request - ErrorEntity (12223: Invalid stat codes in namespace [{namespace}]: [{statCodes}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12243: Stats cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryUserStatItems2.create(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetUserStatItemValue)
def reset_user_stat_item_value(
    body: StatResetInfo,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset user's statitem value (resetUserStatItemValue)

    Reset user's statitem value for a given namespace and user.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatResetInfo in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetUserStatItemValue)
async def reset_user_stat_item_value_async(
    body: StatResetInfo,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset user's statitem value (resetUserStatItemValue)

    Reset user's statitem value for a given namespace and user.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatResetInfo in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetUserStatItemValue1)
def reset_user_stat_item_value_1(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public reset user's statitem value (resetUserStatItemValue_1)

    Reset user's statitem value for a given namespace and user.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserStatItemValue1.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetUserStatItemValue1)
async def reset_user_stat_item_value_1_async(
    stat_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public reset user's statitem value (resetUserStatItemValue_1)

    Reset user's statitem value for a given namespace and user.
    User's statitem value will be reset to the default value defined in the statistic configuration.

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserStatItemValue1.create(
        stat_code=stat_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserStatItemValue)
def update_user_stat_item_value(
    body: StatItemUpdate,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user's statitem value (updateUserStatItemValue)

    Update user's statitem value for a given namespace and user with a certain update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserStatItemValue)
async def update_user_stat_item_value_async(
    body: StatItemUpdate,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user's statitem value (updateUserStatItemValue)

    Update user's statitem value for a given namespace and user with a certain update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserStatItemValue.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserStatItemValue1)
def update_user_stat_item_value_1(
    body: StatItemUpdate,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (updateUserStatItemValue_1)

    Public update user's statitem value for a given namespace and user with a certain update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserStatItemValue1.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserStatItemValue1)
async def update_user_stat_item_value_1_async(
    body: StatItemUpdate,
    stat_code: str,
    user_id: str,
    additional_key: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public update user's statitem value (updateUserStatItemValue_1)

    Public update user's statitem value for a given namespace and user with a certain update strategy.
    There are four supported update strategies:
    + *OVERRIDE*: update user statitem with the new value
    + *INCREMENT*: increment user statitem with the specified value
    + *MAX*: update user statitem with the specified value if it's larger than the existing value
    + *MIN*: update user statitem with the specified value if it's lower than the existing value

    The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
    If provided, user's statitems will be saved with key: *userId_additionalKey*

    Other detail info:
    + *Returns*: updated user's statItem

    Properties:
        url: /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value

        method: PUT

        tags: ["UserStatistic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED StatItemUpdate in body

        namespace: (namespace) REQUIRED str in path

        stat_code: (statCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        additional_key: (additionalKey) OPTIONAL str in query

    Responses:
        200: OK - StatItemIncResult (successful operation)

        400: Bad Request - ErrorEntity (12221: Invalid stat operator, expect [{expected}] but actual [{actual}])

        401: Unauthorized - ErrorEntity (20001: unauthorized access)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12241: Stat [{statCode}] cannot be found in namespace [{namespace}])

        409: Conflict - ErrorEntity (12273: Stat [{statCode}] is not decreasable | 12275: [{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserStatItemValue1.create(
        body=body,
        stat_code=stat_code,
        user_id=user_id,
        additional_key=additional_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
