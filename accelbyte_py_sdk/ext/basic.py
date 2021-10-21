# justice-basic-service (1.23.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

from .utils import randomize

from ..api.basic.models import AddCountryGroupRequest
from ..api.basic.models import AddCountryGroupResponse
from ..api.basic.models import CountryGroupObject
from ..api.basic.models import CountryObject
from ..api.basic.models import ErrorEntity
from ..api.basic.models import FieldValidationError
from ..api.basic.models import FileUploadUrlInfo
from ..api.basic.models import NamespaceCreate
from ..api.basic.models import NamespaceInfo
from ..api.basic.models import NamespacePublisherInfo
from ..api.basic.models import NamespaceStatusUpdate
from ..api.basic.models import NamespaceUpdate
from ..api.basic.models import RetrieveCountryGroupResponse
from ..api.basic.models import RetrieveTimeResponse
from ..api.basic.models import UpdateCountryGroupRequest
from ..api.basic.models import UserProfileAdmin
from ..api.basic.models import UserProfileCreate
from ..api.basic.models import UserProfileInfo
from ..api.basic.models import UserProfilePrivateCreate
from ..api.basic.models import UserProfilePrivateInfo
from ..api.basic.models import UserProfilePrivateUpdate
from ..api.basic.models import UserProfilePublicInfo
from ..api.basic.models import UserProfileStatusUpdate
from ..api.basic.models import UserProfileUpdate
from ..api.basic.models import UserZipCode
from ..api.basic.models import UserZipCodeUpdate
from ..api.basic.models import ValidationErrorEntity


def create_file_upload_url_info_example() -> FileUploadUrlInfo:
    instance = FileUploadUrlInfo()
    instance.url = randomize("url")
    instance.access_url = randomize("url")
    instance.method = randomize()
    instance.content_type = randomize()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_value = randomize()
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.dev_stack_trace = randomize()
    return instance


def create_country_group_object_example() -> CountryGroupObject:
    instance = CountryGroupObject()
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    instance.countries = [create_country_object_example()]
    return instance


def create_country_object_example() -> CountryObject:
    instance = CountryObject()
    instance.code = randomize()
    instance.name = randomize()
    return instance


def create_update_country_group_request_example() -> UpdateCountryGroupRequest:
    instance = UpdateCountryGroupRequest()
    instance.country_group_name = randomize()
    instance.countries = [create_country_object_example()]
    return instance


def create_add_country_group_response_example() -> AddCountryGroupResponse:
    instance = AddCountryGroupResponse()
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    instance.countries = [create_country_object_example()]
    return instance


def create_add_country_group_request_example() -> AddCountryGroupRequest:
    instance = AddCountryGroupRequest()
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    instance.countries = [create_country_object_example()]
    return instance


def create_retrieve_country_group_response_example() -> RetrieveCountryGroupResponse:
    instance = RetrieveCountryGroupResponse()
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    instance.countries = [create_country_object_example()]
    return instance


def create_retrieve_time_response_example() -> RetrieveTimeResponse:
    instance = RetrieveTimeResponse()
    instance.current_time = randomize()
    return instance


def create_namespace_info_example() -> NamespaceInfo:
    instance = NamespaceInfo()
    instance.namespace = randomize("slug")
    instance.display_name = randomize("slug")
    instance.status = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_namespace_status_update_example() -> NamespaceStatusUpdate:
    instance = NamespaceStatusUpdate()
    instance.status = randomize()
    return instance


def create_namespace_update_example() -> NamespaceUpdate:
    instance = NamespaceUpdate()
    instance.display_name = randomize("slug")
    return instance


def create_namespace_publisher_info_example() -> NamespacePublisherInfo:
    instance = NamespacePublisherInfo()
    instance.publisher = randomize("bool")
    instance.publisher_namespace = randomize("slug")
    return instance


def create_namespace_create_example() -> NamespaceCreate:
    instance = NamespaceCreate()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    return instance


def create_user_profile_private_info_example() -> UserProfilePrivateInfo:
    instance = UserProfilePrivateInfo()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.status = randomize()
    instance.language = randomize()
    instance.time_zone = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.custom_attributes = {randomize(): randomize()}
    instance.zip_code = randomize("zip_code")
    instance.private_custom_attributes = {randomize(): randomize()}
    return instance


def create_user_profile_status_update_example() -> UserProfileStatusUpdate:
    instance = UserProfileStatusUpdate()
    instance.status = randomize()
    return instance


def create_user_profile_admin_example() -> UserProfileAdmin:
    instance = UserProfileAdmin()
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.language = randomize()
    instance.time_zone = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.custom_attributes = {randomize(): randomize()}
    instance.zip_code = randomize("zip_code")
    instance.status = randomize()
    return instance


def create_user_profile_public_info_example() -> UserProfilePublicInfo:
    instance = UserProfilePublicInfo()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.time_zone = randomize()
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    return instance


def create_user_profile_private_create_example() -> UserProfilePrivateCreate:
    instance = UserProfilePrivateCreate()
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.language = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.time_zone = randomize()
    instance.private_custom_attributes = {randomize(): randomize()}
    return instance


def create_user_profile_private_update_example() -> UserProfilePrivateUpdate:
    instance = UserProfilePrivateUpdate()
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.language = randomize()
    instance.time_zone = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.custom_attributes = {randomize(): randomize()}
    instance.zip_code = randomize("zip_code")
    instance.private_custom_attributes = {randomize(): randomize()}
    return instance


def create_user_zip_code_example() -> UserZipCode:
    instance = UserZipCode()
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_zip_code_update_example() -> UserZipCodeUpdate:
    instance = UserZipCodeUpdate()
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_info_example() -> UserProfileInfo:
    instance = UserProfileInfo()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.status = randomize()
    instance.language = randomize()
    instance.time_zone = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.custom_attributes = {randomize(): randomize()}
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_update_example() -> UserProfileUpdate:
    instance = UserProfileUpdate()
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.language = randomize()
    instance.time_zone = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.custom_attributes = {randomize(): randomize()}
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_create_example() -> UserProfileCreate:
    instance = UserProfileCreate()
    instance.first_name = randomize("first_name")
    instance.last_name = randomize("last_name")
    instance.language = randomize()
    instance.date_of_birth = randomize("adult_birthdate")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.avatar_large_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.time_zone = randomize()
    return instance