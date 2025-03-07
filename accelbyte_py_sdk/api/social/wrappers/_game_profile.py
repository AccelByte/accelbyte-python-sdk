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
from ....core import deprecated
from ....core import same_doc_as

from ..models import Attribute
from ..models import ErrorEntity
from ..models import GameProfileHeader
from ..models import GameProfileInfo
from ..models import GameProfileRequest
from ..models import UserGameProfiles
from ..models import ValidationErrorEntity

from ..operations.game_profile import GetProfile
from ..operations.game_profile import GetUserProfiles
from ..operations.game_profile import PublicCreateProfile
from ..operations.game_profile import PublicDeleteProfile
from ..operations.game_profile import PublicGetProfile
from ..operations.game_profile import PublicGetProfileAttribute
from ..operations.game_profile import PublicGetUserGameProfiles
from ..operations.game_profile import PublicGetUserProfiles
from ..operations.game_profile import PublicUpdateAttribute
from ..operations.game_profile import PublicUpdateProfile


@deprecated
@same_doc_as(GetProfile)
def get_profile(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns profile for a user (getProfile)

    ## The endpoint is going to be deprecated


    Returns profile for a user.
    Other detail info:

      *  Returns : game profile info

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetProfile)
async def get_profile_async(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns profile for a user (getProfile)

    ## The endpoint is going to be deprecated


    Returns profile for a user.
    Other detail info:

      *  Returns : game profile info

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserProfiles)
def get_user_profiles(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles' header for a user (getUserProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles' header for a user.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[GameProfileHeader] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserProfiles)
async def get_user_profiles_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles' header for a user (getUserProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles' header for a user.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[GameProfileHeader] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicCreateProfile)
def public_create_profile(
    user_id: str,
    body: Optional[GameProfileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a new profile for user (publicCreateProfile)

    ## The endpoint is going to be deprecated


    Create new profile for user.
    Other detail info:

      *  Returns
    : created game profile

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles

        method: POST

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL GameProfileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Profile has been created)

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
    request = PublicCreateProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicCreateProfile)
async def public_create_profile_async(
    user_id: str,
    body: Optional[GameProfileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a new profile for user (publicCreateProfile)

    ## The endpoint is going to be deprecated


    Create new profile for user.
    Other detail info:

      *  Returns
    : created game profile

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles

        method: POST

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL GameProfileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - (Profile has been created)

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
    request = PublicCreateProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicDeleteProfile)
def public_delete_profile(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes game profile (publicDeleteProfile)

    ## The endpoint is going to be deprecated


    Deletes game profile.

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: DELETE

        tags: ["GameProfile"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Game profile has been deleted)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicDeleteProfile)
async def public_delete_profile_async(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes game profile (publicDeleteProfile)

    ## The endpoint is going to be deprecated


    Deletes game profile.

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: DELETE

        tags: ["GameProfile"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Game profile has been deleted)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetProfile)
def public_get_profile(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns profile for a user (publicGetProfile)

    ## The endpoint is going to be deprecated


    Returns profile for a user.
    Other detail info:

      *  Returns : game profile info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetProfile)
async def public_get_profile_async(
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns profile for a user (publicGetProfile)

    ## The endpoint is going to be deprecated


    Returns profile for a user.
    Other detail info:

      *  Returns : game profile info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetProfileAttribute)
def public_get_profile_attribute(
    attribute_name: str,
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns game profile attribute (publicGetProfileAttribute)

    ## The endpoint is going to be deprecated


    Returns game profile attribute.
    Other detail info:

      *  Returns : attribute info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        attribute_name: (attributeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Attribute (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfileAttribute.create(
        attribute_name=attribute_name,
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetProfileAttribute)
async def public_get_profile_attribute_async(
    attribute_name: str,
    profile_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns game profile attribute (publicGetProfileAttribute)

    ## The endpoint is going to be deprecated


    Returns game profile attribute.
    Other detail info:

      *  Returns : attribute info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        attribute_name: (attributeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Attribute (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfileAttribute.create(
        attribute_name=attribute_name,
        profile_id=profile_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserGameProfiles)
def public_get_user_game_profiles(
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles for specified users (publicGetUserGameProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles for specified users.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/public/namespaces/{namespace}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[UserGameProfiles] (successful operation)

        400: Bad Request - ErrorEntity (12021: {totalUser} users is requested. Cannot retrieve more than {limitUser} users at once)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserGameProfiles.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserGameProfiles)
async def public_get_user_game_profiles_async(
    user_ids: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles for specified users (publicGetUserGameProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles for specified users.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/public/namespaces/{namespace}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED List[str] in query

    Responses:
        200: OK - List[UserGameProfiles] (successful operation)

        400: Bad Request - ErrorEntity (12021: {totalUser} users is requested. Cannot retrieve more than {limitUser} users at once)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserGameProfiles.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetUserProfiles)
def public_get_user_profiles(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles' header for a user (publicGetUserProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles' header for a user.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[GameProfileHeader] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserProfiles)
async def public_get_user_profiles_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns all profiles' header for a user (publicGetUserProfiles)

    ## The endpoint is going to be deprecated


    Returns all profiles' header for a user.
    Other detail info:

      *  Returns : list of profiles

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["GameProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[GameProfileHeader] (successful operation)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicUpdateAttribute)
def public_update_attribute(
    attribute_name: str,
    profile_id: str,
    user_id: str,
    body: Optional[Attribute] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates game profile attribute (publicUpdateAttribute)

    ## The endpoint is going to be deprecated


    Updates game profile attribute, returns updated profile.
    Other detail info:

      *  Returns : updated attribute

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}

        method: PUT

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Attribute in body

        attribute_name: (attributeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (12022: Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateAttribute.create(
        attribute_name=attribute_name,
        profile_id=profile_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdateAttribute)
async def public_update_attribute_async(
    attribute_name: str,
    profile_id: str,
    user_id: str,
    body: Optional[Attribute] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates game profile attribute (publicUpdateAttribute)

    ## The endpoint is going to be deprecated


    Updates game profile attribute, returns updated profile.
    Other detail info:

      *  Returns : updated attribute

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}

        method: PUT

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Attribute in body

        attribute_name: (attributeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (12022: Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateAttribute.create(
        attribute_name=attribute_name,
        profile_id=profile_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicUpdateProfile)
def public_update_profile(
    profile_id: str,
    user_id: str,
    body: Optional[GameProfileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates user game profile (publicUpdateProfile)

    ## The endpoint is going to be deprecated


    Updates user game profile, returns updated profile.
    Other detail info:

      *  Returns : updated game profile

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: PUT

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL GameProfileRequest in body

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdateProfile)
async def public_update_profile_async(
    profile_id: str,
    user_id: str,
    body: Optional[GameProfileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates user game profile (publicUpdateProfile)

    ## The endpoint is going to be deprecated


    Updates user game profile, returns updated profile.
    Other detail info:

      *  Returns : updated game profile

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}

        method: PUT

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL GameProfileRequest in body

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (Bad request)

        401: Unauthorized - ErrorEntity (20001: Unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        500: Internal Server Error - ErrorEntity (20000: Internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateProfile.create(
        profile_id=profile_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
