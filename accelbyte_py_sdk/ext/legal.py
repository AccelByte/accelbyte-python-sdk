# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.26.0)

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

from ..api.legal.models import AcceptAgreementRequest
from ..api.legal.models import AcceptAgreementResponse
from ..api.legal.models import CreateBasePolicyRequest
from ..api.legal.models import CreateBasePolicyRequestV2
from ..api.legal.models import CreateBasePolicyResponse
from ..api.legal.models import CreateLocalizedPolicyVersionRequest
from ..api.legal.models import CreateLocalizedPolicyVersionResponse
from ..api.legal.models import CreatePolicyVersionRequest
from ..api.legal.models import CreatePolicyVersionResponse
from ..api.legal.models import ErrorEntity
from ..api.legal.models import FieldValidationError
from ..api.legal.models import LegalReadinessStatusResponse
from ..api.legal.models import LocalizedPolicyVersionObject
from ..api.legal.models import PagedRetrieveUserAcceptedAgreementResponse
from ..api.legal.models import Paging
from ..api.legal.models import PolicyObject
from ..api.legal.models import PolicyVersionObject
from ..api.legal.models import PolicyVersionWithLocalizedVersionObject
from ..api.legal.models import RetrieveAcceptedAgreementResponse
from ..api.legal.models import RetrieveBasePolicyResponse
from ..api.legal.models import RetrieveLocalizedPolicyVersionPublicResponse
from ..api.legal.models import RetrieveLocalizedPolicyVersionResponse
from ..api.legal.models import RetrievePolicyPublicResponse
from ..api.legal.models import RetrievePolicyResponse
from ..api.legal.models import RetrievePolicyTypeResponse
from ..api.legal.models import RetrievePolicyVersionResponse
from ..api.legal.models import RetrieveUserAcceptedAgreementResponse
from ..api.legal.models import RetrieveUserEligibilitiesIndirectResponse
from ..api.legal.models import RetrieveUserEligibilitiesResponse
from ..api.legal.models import RetrieveUserInfoCacheStatusResponse
from ..api.legal.models import UpdateBasePolicyRequest
from ..api.legal.models import UpdateBasePolicyRequestV2
from ..api.legal.models import UpdateBasePolicyResponse
from ..api.legal.models import UpdateLocalizedPolicyVersionRequest
from ..api.legal.models import UpdateLocalizedPolicyVersionResponse
from ..api.legal.models import UpdatePolicyRequest
from ..api.legal.models import UpdatePolicyVersionRequest
from ..api.legal.models import UpdatePolicyVersionResponse
from ..api.legal.models import UploadLocalizedPolicyVersionAttachmentResponse
from ..api.legal.models import UploadPolicyVersionAttachmentRequest
from ..api.legal.models import ValidationErrorEntity


def create_accept_agreement_request_example() -> AcceptAgreementRequest:
    instance = AcceptAgreementRequest()
    instance.is_accepted = randomize("bool")
    instance.localized_policy_version_id = randomize()
    instance.policy_id = randomize()
    instance.policy_version_id = randomize()
    instance.is_need_to_send_event_marketing = randomize("bool")
    return instance


def create_accept_agreement_response_example() -> AcceptAgreementResponse:
    instance = AcceptAgreementResponse()
    instance.comply = randomize("bool")
    instance.proceed = randomize("bool")
    instance.ext = {randomize(): randomize()}
    return instance


def create_create_base_policy_request_example() -> CreateBasePolicyRequest:
    instance = CreateBasePolicyRequest()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.base_policy_name = randomize()
    instance.description = randomize()
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    instance.type_id = randomize()
    return instance


def create_create_base_policy_request_v2_example() -> CreateBasePolicyRequestV2:
    instance = CreateBasePolicyRequestV2()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.base_policy_name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.type_id = randomize()
    return instance


def create_create_base_policy_response_example() -> CreateBasePolicyResponse:
    instance = CreateBasePolicyResponse()
    instance.id_ = randomize()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.global_policy_name = randomize()
    instance.namespace = randomize("slug")
    instance.policy_id = randomize()
    instance.tags = [randomize()]
    instance.type_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_create_localized_policy_version_request_example() -> (
    CreateLocalizedPolicyVersionRequest
):
    instance = CreateLocalizedPolicyVersionRequest()
    instance.content_type = randomize()
    instance.description = randomize()
    instance.locale_code = randomize()
    return instance


def create_create_localized_policy_version_response_example() -> (
    CreateLocalizedPolicyVersionResponse
):
    instance = CreateLocalizedPolicyVersionResponse()
    instance.id_ = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.locale_code = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_create_policy_version_request_example() -> CreatePolicyVersionRequest:
    instance = CreatePolicyVersionRequest()
    instance.description = randomize()
    instance.display_version = randomize()
    instance.is_committed = randomize("bool")
    return instance


def create_create_policy_version_response_example() -> CreatePolicyVersionResponse:
    instance = CreatePolicyVersionResponse()
    instance.id_ = randomize()
    instance.base_policy_id = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.display_version = randomize()
    instance.is_committed = randomize("bool")
    instance.updated_at = randomize("date")
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.dev_stack_trace = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_message = randomize()
    instance.error_value = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_legal_readiness_status_response_example() -> LegalReadinessStatusResponse:
    instance = LegalReadinessStatusResponse()
    instance.is_ready = randomize("bool")
    return instance


def create_localized_policy_version_object_example() -> LocalizedPolicyVersionObject:
    instance = LocalizedPolicyVersionObject()
    instance.id_ = randomize()
    instance.is_default_selection = randomize("bool")
    instance.locale_code = randomize()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_version_identifier = randomize()
    instance.content_type = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.published_date = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_paged_retrieve_user_accepted_agreement_response_example() -> (
    PagedRetrieveUserAcceptedAgreementResponse
):
    instance = PagedRetrieveUserAcceptedAgreementResponse()
    instance.data = [create_retrieve_user_accepted_agreement_response_example()]
    instance.paging = create_paging_example()
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_policy_object_example() -> PolicyObject:
    instance = PolicyObject()
    instance.country_code = randomize()
    instance.id_ = randomize()
    instance.is_default_opted = randomize("bool")
    instance.is_default_selection = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.policy_name = randomize()
    instance.should_notify_on_update = randomize("bool")
    instance.country_group_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.readable_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_policy_version_object_example() -> PolicyVersionObject:
    instance = PolicyVersionObject()
    instance.display_version = randomize()
    instance.id_ = randomize()
    instance.is_committed = randomize("bool")
    instance.is_in_effect = randomize("bool")
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.published_date = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_policy_version_with_localized_version_object_example() -> (
    PolicyVersionWithLocalizedVersionObject
):
    instance = PolicyVersionWithLocalizedVersionObject()
    instance.display_version = randomize()
    instance.id_ = randomize()
    instance.is_committed = randomize("bool")
    instance.is_in_effect = randomize("bool")
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.localized_policy_versions = [
        create_localized_policy_version_object_example()
    ]
    instance.published_date = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_accepted_agreement_response_example() -> (
    RetrieveAcceptedAgreementResponse
):
    instance = RetrieveAcceptedAgreementResponse()
    instance.id_ = randomize()
    instance.country_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.display_version = randomize()
    instance.is_accepted = randomize("bool")
    instance.localized_policy_version = create_localized_policy_version_object_example()
    instance.namespace = randomize("slug")
    instance.policy_id = randomize()
    instance.policy_name = randomize()
    instance.policy_type = randomize()
    instance.signing_date = randomize("date")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_retrieve_base_policy_response_example() -> RetrieveBasePolicyResponse:
    instance = RetrieveBasePolicyResponse()
    instance.base_policy_name = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.affected_client_ids = [randomize()]
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.policies = [create_policy_object_example()]
    instance.policy_type_id = randomize()
    instance.policy_type_name = randomize()
    instance.tags = [randomize()]
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_localized_policy_version_public_response_example() -> (
    RetrieveLocalizedPolicyVersionPublicResponse
):
    instance = RetrieveLocalizedPolicyVersionPublicResponse()
    instance.id_ = randomize()
    instance.locale_code = randomize()
    instance.namespace = randomize("slug")
    instance.policy = create_policy_object_example()
    instance.policy_version = create_policy_version_object_example()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_version_identifier = randomize()
    instance.base_policy_id = randomize()
    instance.base_urls = [randomize()]
    instance.content_type = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_localized_policy_version_response_example() -> (
    RetrieveLocalizedPolicyVersionResponse
):
    instance = RetrieveLocalizedPolicyVersionResponse()
    instance.id_ = randomize()
    instance.locale_code = randomize()
    instance.policy = create_policy_object_example()
    instance.policy_version = create_policy_version_object_example()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_version_identifier = randomize()
    instance.base_urls = [randomize()]
    instance.content_type = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_policy_public_response_example() -> RetrievePolicyPublicResponse:
    instance = RetrievePolicyPublicResponse()
    instance.base_policy_id = randomize()
    instance.country_code = randomize()
    instance.id_ = randomize()
    instance.is_default_opted = randomize("bool")
    instance.is_default_selection = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.namespace = randomize("slug")
    instance.policy_name = randomize()
    instance.policy_type = randomize()
    instance.should_notify_on_update = randomize("bool")
    instance.base_urls = [randomize()]
    instance.country_group_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.policy_versions = [
        create_policy_version_with_localized_version_object_example()
    ]
    instance.readable_id = randomize()
    instance.tags = [randomize()]
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_policy_response_example() -> RetrievePolicyResponse:
    instance = RetrievePolicyResponse()
    instance.country_code = randomize()
    instance.id_ = randomize()
    instance.is_default_opted = randomize("bool")
    instance.is_default_selection = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.policy_name = randomize()
    instance.should_notify_on_update = randomize("bool")
    instance.country_group_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.policy_versions = [create_policy_version_object_example()]
    instance.readable_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_policy_type_response_example() -> RetrievePolicyTypeResponse:
    instance = RetrievePolicyTypeResponse()
    instance.id_ = randomize()
    instance.is_need_document = randomize("bool")
    instance.policy_type_name = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_policy_version_response_example() -> RetrievePolicyVersionResponse:
    instance = RetrievePolicyVersionResponse()
    instance.display_version = randomize()
    instance.id_ = randomize()
    instance.is_committed = randomize("bool")
    instance.is_in_effect = randomize("bool")
    instance.policy_id = randomize()
    instance.base_policy_id = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.localized_policy_versions = [
        create_localized_policy_version_object_example()
    ]
    instance.published_date = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_retrieve_user_accepted_agreement_response_example() -> (
    RetrieveUserAcceptedAgreementResponse
):
    instance = RetrieveUserAcceptedAgreementResponse()
    instance.id_ = randomize()
    instance.created_at = randomize("date")
    instance.display_name = randomize("slug")
    instance.email = randomize("email")
    instance.is_accepted = randomize("bool")
    instance.localized_policy_version = create_localized_policy_version_object_example()
    instance.namespace = randomize("slug")
    instance.policy_name = randomize()
    instance.policy_type = randomize()
    instance.publisher_user_id = randomize()
    instance.signing_date = randomize("date")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.username = randomize("slug")
    return instance


def create_retrieve_user_eligibilities_indirect_response_example() -> (
    RetrieveUserEligibilitiesIndirectResponse
):
    instance = RetrieveUserEligibilitiesIndirectResponse()
    instance.is_comply = randomize("bool")
    return instance


def create_retrieve_user_eligibilities_response_example() -> (
    RetrieveUserEligibilitiesResponse
):
    instance = RetrieveUserEligibilitiesResponse()
    instance.country_code = randomize()
    instance.is_accepted = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.namespace = randomize("slug")
    instance.policy_id = randomize()
    instance.policy_name = randomize()
    instance.policy_type = randomize()
    instance.base_urls = [randomize()]
    instance.country_group_code = randomize()
    instance.description = randomize()
    instance.policy_versions = [
        create_policy_version_with_localized_version_object_example()
    ]
    instance.readable_id = randomize()
    return instance


def create_retrieve_user_info_cache_status_response_example() -> (
    RetrieveUserInfoCacheStatusResponse
):
    instance = RetrieveUserInfoCacheStatusResponse()
    instance.last_updated_at = randomize("date")
    instance.namespace = randomize("slug")
    return instance


def create_update_base_policy_request_example() -> UpdateBasePolicyRequest:
    instance = UpdateBasePolicyRequest()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.base_policy_name = randomize()
    instance.description = randomize()
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    return instance


def create_update_base_policy_request_v2_example() -> UpdateBasePolicyRequestV2:
    instance = UpdateBasePolicyRequestV2()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.base_policy_name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    return instance


def create_update_base_policy_response_example() -> UpdateBasePolicyResponse:
    instance = UpdateBasePolicyResponse()
    instance.id_ = randomize()
    instance.affected_client_ids = [randomize()]
    instance.affected_countries = [randomize()]
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.global_policy_name = randomize()
    instance.namespace = randomize("slug")
    instance.policy_id = randomize()
    instance.tags = [randomize()]
    instance.type_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_update_localized_policy_version_request_example() -> (
    UpdateLocalizedPolicyVersionRequest
):
    instance = UpdateLocalizedPolicyVersionRequest()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_version_identifier = randomize()
    instance.content_type = randomize()
    instance.description = randomize()
    return instance


def create_update_localized_policy_version_response_example() -> (
    UpdateLocalizedPolicyVersionResponse
):
    instance = UpdateLocalizedPolicyVersionResponse()
    instance.id_ = randomize()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_version_identifier = randomize()
    instance.content_type = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.locale_code = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_update_policy_request_example() -> UpdatePolicyRequest:
    instance = UpdatePolicyRequest()
    instance.is_default_opted = randomize("bool")
    instance.is_mandatory = randomize("bool")
    instance.policy_name = randomize()
    instance.should_notify_on_update = randomize("bool")
    instance.description = randomize()
    instance.readable_id = randomize()
    return instance


def create_update_policy_version_request_example() -> UpdatePolicyVersionRequest:
    instance = UpdatePolicyVersionRequest()
    instance.description = randomize()
    instance.display_version = randomize()
    instance.is_committed = randomize("bool")
    return instance


def create_update_policy_version_response_example() -> UpdatePolicyVersionResponse:
    instance = UpdatePolicyVersionResponse()
    instance.id_ = randomize()
    instance.base_policy_id = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.display_version = randomize()
    instance.is_committed = randomize("bool")
    instance.published_date = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_upload_localized_policy_version_attachment_response_example() -> (
    UploadLocalizedPolicyVersionAttachmentResponse
):
    instance = UploadLocalizedPolicyVersionAttachmentResponse()
    instance.attachment_checksum = randomize()
    instance.attachment_location = randomize()
    instance.attachment_upload_url = randomize("url")
    return instance


def create_upload_policy_version_attachment_request_example() -> (
    UploadPolicyVersionAttachmentRequest
):
    instance = UploadPolicyVersionAttachmentRequest()
    instance.content_md5 = randomize()
    instance.content_type = randomize()
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance
