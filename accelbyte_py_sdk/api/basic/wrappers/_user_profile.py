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
from ..models import UserProfileAdmin
from ..models import UserProfileBulkRequest
from ..models import UserProfileCreate
from ..models import UserProfileInfo
from ..models import UserProfilePrivateCreate
from ..models import UserProfilePrivateInfo
from ..models import UserProfilePublicInfo
from ..models import UserProfileStatusUpdate
from ..models import UserProfileUpdate
from ..models import UserZipCode
from ..models import UserZipCodeUpdate
from ..models import ValidationErrorEntity

from ..operations.user_profile import AdminGetUserProfilePublicInfoByIds
from ..operations.user_profile import CreateMyProfile
from ..operations.user_profile import DeleteUserProfile
from ..operations.user_profile import GetCustomAttributesInfo
from ..operations.user_profile import GetMyPrivateCustomAttributesInfo
from ..operations.user_profile import GetMyProfileInfo
from ..operations.user_profile import GetMyZipCode
from ..operations.user_profile import GetPrivateCustomAttributesInfo
from ..operations.user_profile import GetUserProfileInfo
from ..operations.user_profile import GetUserProfileInfoByPublicId
from ..operations.user_profile import PublicBulkGetUserProfilePublicInfo
from ..operations.user_profile import PublicCreateUserProfile
from ..operations.user_profile import PublicGetCustomAttributesInfo
from ..operations.user_profile import PublicGetUserProfileInfo
from ..operations.user_profile import PublicGetUserProfileInfoByPublicId
from ..operations.user_profile import PublicGetUserProfilePublicInfo
from ..operations.user_profile import PublicGetUserProfilePublicInfoByIds
from ..operations.user_profile import PublicUpdateCustomAttributesPartially
from ..operations.user_profile import PublicUpdateUserProfile
from ..operations.user_profile import PublicUpdateUserProfileStatus
from ..operations.user_profile import UpdateCustomAttributesPartially
from ..operations.user_profile import UpdateMyPrivateCustomAttributesPartially
from ..operations.user_profile import UpdateMyProfile
from ..operations.user_profile import UpdateMyZipCode
from ..operations.user_profile import UpdatePrivateCustomAttributesPartially
from ..operations.user_profile import UpdateUserProfile
from ..operations.user_profile import UpdateUserProfileStatus
from ..models import UserProfileAdminStatusEnum
from ..models import UserProfileInfoStatusEnum
from ..models import UserProfilePrivateInfoStatusEnum
from ..models import UserProfileStatusUpdateStatusEnum


@same_doc_as(AdminGetUserProfilePublicInfoByIds)
def admin_get_user_profile_public_info_by_ids(
    body: Optional[UserProfileBulkRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user profile public info by ids (adminGetUserProfilePublicInfoByIds)

    Admin get user public profile by ids.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (GET)
      *  Action code : 11405
      *  Returns : user public profiles

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/profiles/public

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserProfilePublicInfoByIds.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserProfilePublicInfoByIds)
async def admin_get_user_profile_public_info_by_ids_async(
    body: Optional[UserProfileBulkRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get user profile public info by ids (adminGetUserProfilePublicInfoByIds)

    Admin get user public profile by ids.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (GET)
      *  Action code : 11405
      *  Returns : user public profiles

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/profiles/public

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserProfilePublicInfoByIds.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateMyProfile)
def create_my_profile(
    body: Optional[UserProfilePrivateCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create my profile (createMyProfile)

    Create my profile.
     Client with user token can create user profile in target namespace
    Other detail info:

      * Action code : 11401
      *  Returns : Created user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to create publisher user profile
        * can be filled with game namespace in order to create game user profile
      *  Language : allowed format: en, en-US
      *  Country : ISO3166-1 alpha-2 two letter, e.g. US
      * Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfilePrivateCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateMyProfile)
async def create_my_profile_async(
    body: Optional[UserProfilePrivateCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create my profile (createMyProfile)

    Create my profile.
     Client with user token can create user profile in target namespace
    Other detail info:

      * Action code : 11401
      *  Returns : Created user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to create publisher user profile
        * can be filled with game namespace in order to create game user profile
      *  Language : allowed format: en, en-US
      *  Country : ISO3166-1 alpha-2 two letter, e.g. US
      * Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfilePrivateCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserProfile)
def delete_user_profile(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user profile (deleteUserProfile)

    Delete user profile.
    Other detail info:

      * Action code : 11407
      *  Returns : Delete user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: DELETE

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserProfile.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserProfile)
async def delete_user_profile_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user profile (deleteUserProfile)

    Delete user profile.
    Other detail info:

      * Action code : 11407
      *  Returns : Delete user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: DELETE

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserProfile.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCustomAttributesInfo)
def get_custom_attributes_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user custom attributes (getCustomAttributesInfo)

    Get user custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCustomAttributesInfo)
async def get_custom_attributes_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user custom attributes (getCustomAttributesInfo)

    Get user custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMyPrivateCustomAttributesInfo)
def get_my_private_custom_attributes_info(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my private custom attributes (getMyPrivateCustomAttributesInfo)

    Get my private custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyPrivateCustomAttributesInfo.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMyPrivateCustomAttributesInfo)
async def get_my_private_custom_attributes_info_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my private custom attributes (getMyPrivateCustomAttributesInfo)

    Get my private custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyPrivateCustomAttributesInfo.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMyProfileInfo)
def get_my_profile_info(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my profile (getMyProfileInfo)

    Get my profile
     Client with user token can get user profile in target namespace
    Other detail info:

      * Action code : 11403
      *  Returns : user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher user profile
        * can be filled with game namespace in order to get game user profile
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked | 11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyProfileInfo.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMyProfileInfo)
async def get_my_profile_info_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my profile (getMyProfileInfo)

    Get my profile
     Client with user token can get user profile in target namespace
    Other detail info:

      * Action code : 11403
      *  Returns : user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher user profile
        * can be filled with game namespace in order to get game user profile
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked | 11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyProfileInfo.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMyZipCode)
def get_my_zip_code(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my zip code (getMyZipCode)

    Get my zip code.
    Other detail info:

      * Action code : 11407
      *  Returns : user zip code

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode

        method: GET

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserZipCode (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyZipCode.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMyZipCode)
async def get_my_zip_code_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my zip code (getMyZipCode)

    Get my zip code.
    Other detail info:

      * Action code : 11407
      *  Returns : user zip code

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode

        method: GET

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserZipCode (Successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyZipCode.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPrivateCustomAttributesInfo)
def get_private_custom_attributes_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user private custom attributes (getPrivateCustomAttributesInfo)

    Get user private custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPrivateCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPrivateCustomAttributesInfo)
async def get_private_custom_attributes_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user private custom attributes (getPrivateCustomAttributesInfo)

    Get user private custom attributes.
    Other detail info:

      * Returns : custom attributes
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPrivateCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserProfileInfo)
def get_user_profile_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile (getUserProfileInfo)

    Get user profile.
    Other detail info:

      * Returns : user profile
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserProfileInfo)
async def get_user_profile_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile (getUserProfileInfo)

    Get user profile.
    Other detail info:

      * Returns : user profile
      *  Action code : 11403

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserProfileInfoByPublicId)
def get_user_profile_info_by_public_id(
    public_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile info by public id (getUserProfileInfoByPublicId)

    Get user profile by public id.
    Other detail info:

      * Returns : user profile info

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        public_id: (publicId) REQUIRED str in query

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11469: User profile with publicId [{publicId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfileInfoByPublicId.create(
        public_id=public_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserProfileInfoByPublicId)
async def get_user_profile_info_by_public_id_async(
    public_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile info by public id (getUserProfileInfoByPublicId)

    Get user profile by public id.
    Other detail info:

      * Returns : user profile info

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/profiles/byPublicId

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        public_id: (publicId) REQUIRED str in query

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11469: User profile with publicId [{publicId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserProfileInfoByPublicId.create(
        public_id=public_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkGetUserProfilePublicInfo)
def public_bulk_get_user_profile_public_info(
    body: Optional[UserProfileBulkRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user profile public info by ids (publicBulkGetUserProfilePublicInfo)

    Bulk get user public profile by ids.
    Other detail info:

      * Returns : user public profiles

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetUserProfilePublicInfo.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkGetUserProfilePublicInfo)
async def public_bulk_get_user_profile_public_info_async(
    body: Optional[UserProfileBulkRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user profile public info by ids (publicBulkGetUserProfilePublicInfo)

    Bulk get user public profile by ids.
    Other detail info:

      * Returns : user public profiles

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetUserProfilePublicInfo.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserProfile)
def public_create_user_profile(
    user_id: str,
    body: Optional[UserProfileCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user profile (publicCreateUserProfile)

    Create user profile.
    Other detail info:

      * Action code : 11401
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai
      *  Returns : Created user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserProfile)
async def public_create_user_profile_async(
    user_id: str,
    body: Optional[UserProfileCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create user profile (publicCreateUserProfile)

    Create user profile.
    Other detail info:

      * Action code : 11401
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai
      *  Returns : Created user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: POST

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileCreate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        409: Conflict - ErrorEntity (11441: Unable to {action}: User profile already exists)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetCustomAttributesInfo)
def public_get_custom_attributes_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get custom attributes info (publicGetCustomAttributesInfo)

    Get custom attributes info.
    Other detail info:

      * Action code : 11404
      *  Returns : user custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (Successful operation)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCustomAttributesInfo)
async def public_get_custom_attributes_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get custom attributes info (publicGetCustomAttributesInfo)

    Get custom attributes info.
    Other detail info:

      * Action code : 11404
      *  Returns : user custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (Successful operation)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserProfileInfo)
def public_get_user_profile_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile (publicGetUserProfileInfo)

    Get user profile.
    Other detail info:

      * Action code : 11403
      *  Returns : user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserProfileInfo)
async def public_get_user_profile_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile (publicGetUserProfileInfo)

    Get user profile.
    Other detail info:

      * Action code : 11403
      *  Returns : user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserProfileInfoByPublicId)
def public_get_user_profile_info_by_public_id(
    public_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info by public id (publicGetUserProfileInfoByPublicId)

    Get user public profile by public id.
    Other detail info:

      * Returns : user public profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        public_id: (publicId) REQUIRED str in query

    Responses:
        200: OK - UserProfilePublicInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (11469: User profile with publicId [{publicId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfileInfoByPublicId.create(
        public_id=public_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserProfileInfoByPublicId)
async def public_get_user_profile_info_by_public_id_async(
    public_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info by public id (publicGetUserProfileInfoByPublicId)

    Get user public profile by public id.
    Other detail info:

      * Returns : user public profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        public_id: (publicId) REQUIRED str in query

    Responses:
        200: OK - UserProfilePublicInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (11469: User profile with publicId [{publicId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfileInfoByPublicId.create(
        public_id=public_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserProfilePublicInfo)
def public_get_user_profile_public_info(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info (publicGetUserProfilePublicInfo)

    Get user profile public info.
    Other detail info:

      * Action code : 11404
      *  Returns : user public profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePublicInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserProfilePublicInfo)
async def public_get_user_profile_public_info_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info (publicGetUserProfilePublicInfo)

    Get user profile public info.
    Other detail info:

      * Action code : 11404
      *  Returns : user public profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePublicInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserProfilePublicInfoByIds)
def public_get_user_profile_public_info_by_ids(
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info by ids (publicGetUserProfilePublicInfoByIds)

    Get user public profile by ids.
    Other detail info:

      * Action code : 11405
      *  Returns : user public profiles

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfoByIds.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserProfilePublicInfoByIds)
async def public_get_user_profile_public_info_by_ids_async(
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user profile public info by ids (publicGetUserProfilePublicInfoByIds)

    Get user public profile by ids.
    Other detail info:

      * Action code : 11405
      *  Returns : user public profiles

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/profiles/public

        method: GET

        tags: ["UserProfile"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - List[UserProfilePublicInfo] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfoByIds.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateCustomAttributesPartially)
def public_update_custom_attributes_partially(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially custom attributes tied to user id (publicUpdateCustomAttributesPartially)

    Update partially custom attributes tied to user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateCustomAttributesPartially)
async def public_update_custom_attributes_partially_async(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially custom attributes tied to user id (publicUpdateCustomAttributesPartially)

    Update partially custom attributes tied to user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserProfile)
def public_update_user_profile(
    user_id: str,
    body: Optional[UserProfileUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile (publicUpdateUserProfile)

    Update user profile.
    Other detail info:

      * Action code : 11402
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai
      *  Returns : Updated user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserProfile)
async def public_update_user_profile_async(
    user_id: str,
    body: Optional[UserProfileUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile (publicUpdateUserProfile)

    Update user profile.
    Other detail info:

      * Action code : 11402
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai
      *  Returns : Updated user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserProfileStatus)
def public_update_user_profile_status(
    user_id: str,
    body: Optional[UserProfileStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile status (publicUpdateUserProfileStatus)

    Update user profile status.
    Other detail info:

      * Action code : 11406
      *  Returns : user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserProfileStatus)
async def public_update_user_profile_status_async(
    user_id: str,
    body: Optional[UserProfileStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile status (publicUpdateUserProfileStatus)

    Update user profile status.
    Other detail info:

      * Action code : 11406
      *  Returns : user profile

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfileInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCustomAttributesPartially)
def update_custom_attributes_partially(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially custom attributes tied to the user id (updateCustomAttributesPartially)

    Update partially custom attributes tied to the user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCustomAttributesPartially)
async def update_custom_attributes_partially_async(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially custom attributes tied to the user id (updateCustomAttributesPartially)

    Update partially custom attributes tied to the user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMyPrivateCustomAttributesPartially)
def update_my_private_custom_attributes_partially(
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially private custom attributes tied to me (updateMyPrivateCustomAttributesPartially)

    Update partially private custom attributes tied to me.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyPrivateCustomAttributesPartially.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMyPrivateCustomAttributesPartially)
async def update_my_private_custom_attributes_partially_async(
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially private custom attributes tied to me (updateMyPrivateCustomAttributesPartially)

    Update partially private custom attributes tied to me.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyPrivateCustomAttributesPartially.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMyProfile)
def update_my_profile(
    body: Optional[UserProfileUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update my profile (updateMyProfile)

    Update my profile.
    Updates user profile in the target namespace (namespace in the path). If token's namespace doesn't match the target namespace, the service automatically maps the token's user ID into the user ID in the target namespace. The endpoint returns the updated user profile on a successful call.
    Other detail info:

      * Action code : 11402
      *  Returns : user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to update publisher user profile
        * can be filled with game namespace in order to update game user profile
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked | 11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMyProfile)
async def update_my_profile_async(
    body: Optional[UserProfileUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update my profile (updateMyProfile)

    Update my profile.
    Updates user profile in the target namespace (namespace in the path). If token's namespace doesn't match the target namespace, the service automatically maps the token's user ID into the user ID in the target namespace. The endpoint returns the updated user profile on a successful call.
    Other detail info:

      * Action code : 11402
      *  Returns : user profile
      *  Path's namespace :
        * can be filled with publisher namespace in order to update publisher user profile
        * can be filled with game namespace in order to update game user profile
      *  Language : allowed format: en, en-US
      *  Timezone : IANA time zone, e.g. Asia/Shanghai

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (20008: user not found | 20017: user not linked | 11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMyZipCode)
def update_my_zip_code(
    user_zip_code_update: UserZipCodeUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update my zip code (updateMyZipCode)

    Update my zip code.
    Other detail info:

      * Action code : 11408
      *  Returns : user zip code

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_zip_code_update: (userZipCodeUpdate) REQUIRED UserZipCodeUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserZipCode (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyZipCode.create(
        user_zip_code_update=user_zip_code_update,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMyZipCode)
async def update_my_zip_code_async(
    user_zip_code_update: UserZipCodeUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update my zip code (updateMyZipCode)

    Update my zip code.
    Other detail info:

      * Action code : 11408
      *  Returns : user zip code

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_zip_code_update: (userZipCodeUpdate) REQUIRED UserZipCodeUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserZipCode (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMyZipCode.create(
        user_zip_code_update=user_zip_code_update,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePrivateCustomAttributesPartially)
def update_private_custom_attributes_partially(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially private custom attributes tied to the user id (updatePrivateCustomAttributesPartially)

    Update partially private custom attributes tied to the user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePrivateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePrivateCustomAttributesPartially)
async def update_private_custom_attributes_partially_async(
    user_id: str,
    body: Optional[Dict[str, Any]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update partially private custom attributes tied to the user id (updatePrivateCustomAttributesPartially)

    Update partially private custom attributes tied to the user id.
    Other detail info:

      * Action code : 11402
      *  Request body : allowed format: JSON object
      *  Returns : Updated custom attributes

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePrivateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserProfile)
def update_user_profile(
    user_id: str,
    body: Optional[UserProfileAdmin] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile (updateUserProfile)

    Update user profile.
    Other detail info:

      * Action code : 11402
      *  Returns : Updated user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileAdmin in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserProfile)
async def update_user_profile_async(
    user_id: str,
    body: Optional[UserProfileAdmin] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile (updateUserProfile)

    Update user profile.
    Other detail info:

      * Action code : 11402
      *  Returns : Updated user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles

        method: PUT

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileAdmin in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserProfileStatus)
def update_user_profile_status(
    user_id: str,
    body: Optional[UserProfileStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile status (updateUserProfileStatus)

    Update user profile status.
    Other detail info:

      * Action code : 11406
      *  Returns : user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserProfileStatus)
async def update_user_profile_status_async(
    user_id: str,
    body: Optional[UserProfileStatusUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user profile status (updateUserProfileStatus)

    Update user profile status.
    Other detail info:

      * Action code : 11406
      *  Returns : user profile

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserProfileStatusUpdate in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserProfilePrivateInfo (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11440: Unable to {action}: User profile not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
