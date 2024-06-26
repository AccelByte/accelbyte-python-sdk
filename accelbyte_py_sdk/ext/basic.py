# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Basic Service

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
from ..api.basic.models import ConfigCreate
from ..api.basic.models import ConfigInfo
from ..api.basic.models import ConfigUpdate
from ..api.basic.models import CountryGroupObject
from ..api.basic.models import CountryObject
from ..api.basic.models import ErrorEntity
from ..api.basic.models import FieldValidationError
from ..api.basic.models import FileUploadUrlInfo
from ..api.basic.models import NamespaceContext
from ..api.basic.models import NamespaceCreate
from ..api.basic.models import NamespaceInfo
from ..api.basic.models import NamespacePublisherInfo
from ..api.basic.models import NamespaceSimpleInfo
from ..api.basic.models import NamespaceStatusUpdate
from ..api.basic.models import NamespaceUpdate
from ..api.basic.models import Permission
from ..api.basic.models import RetrieveCountryGroupResponse
from ..api.basic.models import RetrieveTimeResponse
from ..api.basic.models import UpdateCountryGroupRequest
from ..api.basic.models import UserProfileAdmin
from ..api.basic.models import UserProfileBulkRequest
from ..api.basic.models import UserProfileCreate
from ..api.basic.models import UserProfileInfo
from ..api.basic.models import UserProfilePrivateCreate
from ..api.basic.models import UserProfilePrivateInfo
from ..api.basic.models import UserProfilePublicInfo
from ..api.basic.models import UserProfileStatusUpdate
from ..api.basic.models import UserProfileUpdate
from ..api.basic.models import UserZipCode
from ..api.basic.models import UserZipCodeUpdate
from ..api.basic.models import ValidationErrorEntity


def create_add_country_group_request_example() -> AddCountryGroupRequest:
    instance = AddCountryGroupRequest()
    instance.countries = [create_country_object_example()]
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    return instance


def create_add_country_group_response_example() -> AddCountryGroupResponse:
    instance = AddCountryGroupResponse()
    instance.countries = [create_country_object_example()]
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    return instance


def create_config_create_example() -> ConfigCreate:
    instance = ConfigCreate()
    instance.key = randomize()
    instance.value = randomize()
    return instance


def create_config_info_example() -> ConfigInfo:
    instance = ConfigInfo()
    instance.created_at = randomize("date")
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.value = randomize()
    return instance


def create_config_update_example() -> ConfigUpdate:
    instance = ConfigUpdate()
    instance.value = randomize()
    return instance


def create_country_group_object_example() -> CountryGroupObject:
    instance = CountryGroupObject()
    instance.countries = [create_country_object_example()]
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    return instance


def create_country_object_example() -> CountryObject:
    instance = CountryObject()
    instance.code = randomize()
    instance.name = randomize()
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.dev_stack_trace = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.required_permission = create_permission_example()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_message = randomize()
    instance.error_value = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_file_upload_url_info_example() -> FileUploadUrlInfo:
    instance = FileUploadUrlInfo()
    instance.access_url = randomize("url")
    instance.content_type = randomize()
    instance.method = randomize()
    instance.url = randomize("url")
    return instance


def create_namespace_context_example() -> NamespaceContext:
    instance = NamespaceContext()
    instance.namespace = randomize("slug")
    instance.publisher_namespace = randomize("slug")
    instance.studio_namespace = randomize("slug")
    instance.type_ = randomize()
    return instance


def create_namespace_create_example() -> NamespaceCreate:
    instance = NamespaceCreate()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    return instance


def create_namespace_info_example() -> NamespaceInfo:
    instance = NamespaceInfo()
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.client_id = randomize("uid")
    instance.created_at = randomize("date")
    instance.parent_namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_namespace_publisher_info_example() -> NamespacePublisherInfo:
    instance = NamespacePublisherInfo()
    instance.publisher = randomize("bool")
    instance.publisher_namespace = randomize("slug")
    return instance


def create_namespace_simple_info_example() -> NamespaceSimpleInfo:
    instance = NamespaceSimpleInfo()
    instance.display_name = randomize("slug")
    return instance


def create_namespace_status_update_example() -> NamespaceStatusUpdate:
    instance = NamespaceStatusUpdate()
    instance.status = randomize()
    return instance


def create_namespace_update_example() -> NamespaceUpdate:
    instance = NamespaceUpdate()
    instance.display_name = randomize("slug")
    return instance


def create_permission_example() -> Permission:
    instance = Permission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_retrieve_country_group_response_example() -> RetrieveCountryGroupResponse:
    instance = RetrieveCountryGroupResponse()
    instance.countries = [create_country_object_example()]
    instance.country_group_code = randomize()
    instance.country_group_name = randomize()
    return instance


def create_retrieve_time_response_example() -> RetrieveTimeResponse:
    instance = RetrieveTimeResponse()
    instance.current_time = randomize()
    return instance


def create_update_country_group_request_example() -> UpdateCountryGroupRequest:
    instance = UpdateCountryGroupRequest()
    instance.countries = [create_country_object_example()]
    instance.country_group_name = randomize()
    return instance


def create_user_profile_admin_example() -> UserProfileAdmin:
    instance = UserProfileAdmin()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.private_custom_attributes = {randomize(): randomize()}
    instance.status = randomize()
    instance.time_zone = randomize()
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_bulk_request_example() -> UserProfileBulkRequest:
    instance = UserProfileBulkRequest()
    instance.user_ids = [randomize()]
    return instance


def create_user_profile_create_example() -> UserProfileCreate:
    instance = UserProfileCreate()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.time_zone = randomize()
    return instance


def create_user_profile_info_example() -> UserProfileInfo:
    instance = UserProfileInfo()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.namespace = randomize("slug")
    instance.public_id = randomize()
    instance.status = randomize()
    instance.time_zone = randomize()
    instance.user_id = randomize("uid")
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_private_create_example() -> UserProfilePrivateCreate:
    instance = UserProfilePrivateCreate()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.private_custom_attributes = {randomize(): randomize()}
    instance.time_zone = randomize()
    return instance


def create_user_profile_private_info_example() -> UserProfilePrivateInfo:
    instance = UserProfilePrivateInfo()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.namespace = randomize("slug")
    instance.private_custom_attributes = {randomize(): randomize()}
    instance.public_id = randomize()
    instance.status = randomize()
    instance.time_zone = randomize()
    instance.user_id = randomize("uid")
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_profile_public_info_example() -> UserProfilePublicInfo:
    instance = UserProfilePublicInfo()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.public_id = randomize()
    instance.time_zone = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_user_profile_status_update_example() -> UserProfileStatusUpdate:
    instance = UserProfileStatusUpdate()
    instance.status = randomize()
    return instance


def create_user_profile_update_example() -> UserProfileUpdate:
    instance = UserProfileUpdate()
    instance.avatar_large_url = randomize("url")
    instance.avatar_small_url = randomize("url")
    instance.avatar_url = randomize("url")
    instance.custom_attributes = {randomize(): randomize()}
    instance.date_of_birth = randomize("adult_birthdate")
    instance.first_name = randomize("first_name")
    instance.language = randomize()
    instance.last_name = randomize("last_name")
    instance.private_custom_attributes = {randomize(): randomize()}
    instance.time_zone = randomize()
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_zip_code_example() -> UserZipCode:
    instance = UserZipCode()
    instance.zip_code = randomize("zip_code")
    return instance


def create_user_zip_code_update_example() -> UserZipCodeUpdate:
    instance = UserZipCodeUpdate()
    instance.zip_code = randomize("zip_code")
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance
