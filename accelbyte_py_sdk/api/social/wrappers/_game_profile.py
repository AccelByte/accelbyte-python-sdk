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


@same_doc_as(GetProfile)
def get_profile(user_id: str, profile_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetProfile.create(
        user_id=user_id,
        profile_id=profile_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserProfiles)
def get_user_profiles(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateProfile)
def public_create_profile(user_id: str, body: Optional[GameProfileRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateProfile.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDeleteProfile)
def public_delete_profile(user_id: str, profile_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeleteProfile.create(
        user_id=user_id,
        profile_id=profile_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetProfile)
def public_get_profile(user_id: str, profile_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetProfile.create(
        user_id=user_id,
        profile_id=profile_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetProfileAttribute)
def public_get_profile_attribute(user_id: str, profile_id: str, attribute_name: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetProfileAttribute.create(
        user_id=user_id,
        profile_id=profile_id,
        attribute_name=attribute_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserGameProfiles)
def public_get_user_game_profiles(user_ids: List[str], namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserGameProfiles.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserProfiles)
def public_get_user_profiles(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserProfiles.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdateAttribute)
def public_update_attribute(user_id: str, profile_id: str, attribute_name: str, body: Optional[Attribute] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateAttribute.create(
        user_id=user_id,
        profile_id=profile_id,
        attribute_name=attribute_name,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdateProfile)
def public_update_profile(user_id: str, profile_id: str, body: Optional[GameProfileRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateProfile.create(
        user_id=user_id,
        profile_id=profile_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
