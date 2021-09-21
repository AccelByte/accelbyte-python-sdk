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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..models import ErrorEntity
from ..models import UserProfileAdmin
from ..models import UserProfileCreate
from ..models import UserProfileInfo
from ..models import UserProfilePrivateCreate
from ..models import UserProfilePrivateInfo
from ..models import UserProfilePrivateUpdate
from ..models import UserProfilePublicInfo
from ..models import UserProfileStatusUpdate
from ..models import UserProfileUpdate
from ..models import UserZipCode
from ..models import UserZipCodeUpdate
from ..models import ValidationErrorEntity

from ..operations.user_profile import CreateMyProfile
from ..operations.user_profile import DeleteUserProfile
from ..operations.user_profile import EnableUserProfileStatus
from ..operations.user_profile import GetCustomAttributesInfo
from ..operations.user_profile import GetCustomAttributesInfo1
from ..operations.user_profile import GetMyProfileInfo
from ..operations.user_profile import GetPrivateCustomAttributesInfo
from ..operations.user_profile import GetUserProfileInfo
from ..operations.user_profile import GetUserZipCode
from ..operations.user_profile import PublicCreateUserProfile
from ..operations.user_profile import PublicEnableUserProfileStatus
from ..operations.user_profile import PublicGetUserProfileInfo
from ..operations.user_profile import PublicGetUserProfilePublicInfo
from ..operations.user_profile import PublicGetUserProfilePublicInfoByIds
from ..operations.user_profile import PublicUpdateUserProfile
from ..operations.user_profile import UpdateCustomAttributesPartially
from ..operations.user_profile import UpdateCustomAttributesPartially1
from ..operations.user_profile import UpdateMyProfile
from ..operations.user_profile import UpdatePrivateCustomAttributesPartially
from ..operations.user_profile import UpdateUserProfile
from ..operations.user_profile import UpdateUserZipCode


@same_doc_as(CreateMyProfile)
def create_my_profile(body: Optional[UserProfilePrivateCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeleteUserProfile)
def delete_user_profile(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserProfile.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(EnableUserProfileStatus)
def enable_user_profile_status(user_id: str, body: Optional[UserProfileStatusUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetCustomAttributesInfo)
def get_custom_attributes_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetCustomAttributesInfo1)
def get_custom_attributes_info_1(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCustomAttributesInfo1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetMyProfileInfo)
def get_my_profile_info(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetMyProfileInfo.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPrivateCustomAttributesInfo)
def get_private_custom_attributes_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPrivateCustomAttributesInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetUserProfileInfo)
def get_user_profile_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetUserZipCode)
def get_user_zip_code(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserZipCode.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicCreateUserProfile)
def public_create_user_profile(user_id: str, body: Optional[UserProfileCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicEnableUserProfileStatus)
def public_enable_user_profile_status(user_id: str, body: Optional[UserProfileStatusUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicEnableUserProfileStatus.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetUserProfileInfo)
def public_get_user_profile_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserProfileInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetUserProfilePublicInfo)
def public_get_user_profile_public_info(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfo.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetUserProfilePublicInfoByIds)
def public_get_user_profile_public_info_by_ids(user_ids: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserProfilePublicInfoByIds.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicUpdateUserProfile)
def public_update_user_profile(user_id: str, body: Optional[UserProfileUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateCustomAttributesPartially)
def update_custom_attributes_partially(user_id: str, body: Optional[Dict[str, Any]] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateCustomAttributesPartially1)
def update_custom_attributes_partially_1(user_id: str, body: Optional[Dict[str, Any]] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCustomAttributesPartially1.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateMyProfile)
def update_my_profile(body: Optional[UserProfilePrivateUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateMyProfile.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdatePrivateCustomAttributesPartially)
def update_private_custom_attributes_partially(user_id: str, body: Optional[Dict[str, Any]] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePrivateCustomAttributesPartially.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateUserProfile)
def update_user_profile(user_id: str, body: Optional[UserProfileAdmin] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateUserZipCode)
def update_user_zip_code(user_zip_code_update: UserZipCodeUpdate, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserZipCode.create(
        user_zip_code_update=user_zip_code_update,
        namespace=namespace,
    )
    return run_request(request)
