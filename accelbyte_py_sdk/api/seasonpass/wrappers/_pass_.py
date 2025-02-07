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

from ..models import ErrorEntity
from ..models import PassCreate
from ..models import PassInfo
from ..models import PassUpdate
from ..models import UserPassGrant
from ..models import UserSeasonSummary
from ..models import ValidationErrorEntity

from ..operations.pass_ import CreatePass
from ..operations.pass_ import DeletePass
from ..operations.pass_ import GetPass
from ..operations.pass_ import GrantUserPass
from ..operations.pass_ import QueryPasses
from ..operations.pass_ import UpdatePass


@same_doc_as(CreatePass)
def create_pass(
    season_id: str,
    body: Optional[PassCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a pass (createPass)

    This API is used to create a pass for a draft season.

    Other detail info:

      * Returns : created pass

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes

        method: POST

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PassCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49174: Pass [{code}] already exists in the season)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePass.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreatePass)
async def create_pass_async(
    season_id: str,
    body: Optional[PassCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a pass (createPass)

    This API is used to create a pass for a draft season.

    Other detail info:

      * Returns : created pass

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes

        method: POST

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PassCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49174: Pass [{code}] already exists in the season)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreatePass.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePass)
def delete_pass(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a pass (deletePass)

    This API is used to delete a pass permanently, only draft season pass can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: DELETE

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete pass successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49145: Pass [{code}] does not exist | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Season is not updatable in status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePass.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePass)
async def delete_pass_async(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a pass (deletePass)

    This API is used to delete a pass permanently, only draft season pass can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: DELETE

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete pass successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49145: Pass [{code}] does not exist | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Season is not updatable in status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePass.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPass)
def get_pass(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a pass (getPass)

    This API is used to get a pass for a season.

    Other detail info:

      * Returns : pass data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: GET

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49145: Pass [{code}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPass.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPass)
async def get_pass_async(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a pass (getPass)

    This API is used to get a pass for a season.

    Other detail info:

      * Returns : pass data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: GET

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49145: Pass [{code}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPass.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GrantUserPass)
def grant_user_pass(
    user_id: str,
    body: Optional[UserPassGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant pass to user (grantUserPass)

    This API is used to grant pass to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes

        method: POST

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserPassGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserPass.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantUserPass)
async def grant_user_pass_async(
    user_id: str,
    body: Optional[UserPassGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant pass to user (grantUserPass)

    This API is used to grant pass to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes

        method: POST

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserPassGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserPass.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryPasses)
def query_passes(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all passes for a season (queryPasses)

    This API is used to query all passes for a season.

    Other detail info:

      * Returns : the list of passes

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes

        method: GET

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - List[PassInfo] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryPasses.create(
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryPasses)
async def query_passes_async(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all passes for a season (queryPasses)

    This API is used to query all passes for a season.

    Other detail info:

      * Returns : the list of passes

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes

        method: GET

        tags: ["Pass"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - List[PassInfo] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryPasses.create(
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePass)
def update_pass(
    code: str,
    season_id: str,
    body: Optional[PassUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a pass (updatePass)

    This API is used to update a pass. Only draft season pass can be updated.

    Other detail info:

      * Returns : updated pass

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: PATCH

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PassUpdate in body

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (49145: Pass [{code}] does not exist | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePass.create(
        code=code,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePass)
async def update_pass_async(
    code: str,
    season_id: str,
    body: Optional[PassUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a pass (updatePass)

    This API is used to update a pass. Only draft season pass can be updated.

    Other detail info:

      * Returns : updated pass

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}

        method: PATCH

        tags: ["Pass"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PassUpdate in body

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - PassInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (49145: Pass [{code}] does not exist | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePass.create(
        code=code,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
