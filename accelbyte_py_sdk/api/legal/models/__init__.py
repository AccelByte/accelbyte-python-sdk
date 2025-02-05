# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Legal Service."""

__version__ = "4.1.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .accept_agreement_request import AcceptAgreementRequest
from .accept_agreement_response import AcceptAgreementResponse
from .create_base_policy_request import CreateBasePolicyRequest
from .create_base_policy_request import (
    CountryTypeEnum as CreateBasePolicyRequestCountryTypeEnum,
)
from .create_base_policy_request_v2 import CreateBasePolicyRequestV2
from .create_base_policy_request_v2 import (
    CountryTypeEnum as CreateBasePolicyRequestV2CountryTypeEnum,
)
from .create_base_policy_response import CreateBasePolicyResponse
from .create_base_policy_response import (
    CountryTypeEnum as CreateBasePolicyResponseCountryTypeEnum,
)
from .create_localized_policy_version_request import CreateLocalizedPolicyVersionRequest
from .create_localized_policy_version_response import (
    CreateLocalizedPolicyVersionResponse,
)
from .create_policy_request import CreatePolicyRequest
from .create_policy_request import CountryTypeEnum as CreatePolicyRequestCountryTypeEnum
from .create_policy_response import CreatePolicyResponse
from .create_policy_version_request import CreatePolicyVersionRequest
from .create_policy_version_response import CreatePolicyVersionResponse
from .download_exported_agreements_in_csv_response import (
    DownloadExportedAgreementsInCSVResponse,
)
from .error_entity import ErrorEntity
from .field_validation_error import FieldValidationError
from .initiate_export_agreements_to_csv_response import (
    InitiateExportAgreementsToCSVResponse,
)
from .legal_readiness_status_response import LegalReadinessStatusResponse
from .localized_policy_version_object import LocalizedPolicyVersionObject
from .paged_retrieve_user_accepted_agreement_response import (
    PagedRetrieveUserAcceptedAgreementResponse,
)
from .paging import Paging
from .permission import Permission
from .policy_object import PolicyObject
from .policy_version_object import PolicyVersionObject
from .policy_version_with_localized_version_object import (
    PolicyVersionWithLocalizedVersionObject,
)
from .retrieve_accepted_agreement_response import RetrieveAcceptedAgreementResponse
from .retrieve_base_policy_response import RetrieveBasePolicyResponse
from .retrieve_localized_policy_version_public_response import (
    RetrieveLocalizedPolicyVersionPublicResponse,
)
from .retrieve_localized_policy_version_response import (
    RetrieveLocalizedPolicyVersionResponse,
)
from .retrieve_policies_from_base_policy_response import (
    RetrievePoliciesFromBasePolicyResponse,
)
from .retrieve_policy_public_response import RetrievePolicyPublicResponse
from .retrieve_policy_response import RetrievePolicyResponse
from .retrieve_policy_type_response import RetrievePolicyTypeResponse
from .retrieve_policy_version_response import RetrievePolicyVersionResponse
from .retrieve_simple_policy_public_response_v2 import (
    RetrieveSimplePolicyPublicResponseV2,
)
from .retrieve_user_accepted_agreement_response import (
    RetrieveUserAcceptedAgreementResponse,
)
from .retrieve_user_eligibilities_indirect_response import (
    RetrieveUserEligibilitiesIndirectResponse,
)
from .retrieve_user_eligibilities_response import RetrieveUserEligibilitiesResponse
from .retrieve_user_info_cache_status_response import (
    RetrieveUserInfoCacheStatusResponse,
)
from .simple_localized_policy_version_object import SimpleLocalizedPolicyVersionObject
from .simple_policy_version_with_localized_version_object import (
    SimplePolicyVersionWithLocalizedVersionObject,
)
from .update_base_policy_request import UpdateBasePolicyRequest
from .update_base_policy_request import (
    CountryTypeEnum as UpdateBasePolicyRequestCountryTypeEnum,
)
from .update_base_policy_request_v2 import UpdateBasePolicyRequestV2
from .update_base_policy_request_v2 import (
    CountryTypeEnum as UpdateBasePolicyRequestV2CountryTypeEnum,
)
from .update_base_policy_response import UpdateBasePolicyResponse
from .update_localized_policy_version_request import UpdateLocalizedPolicyVersionRequest
from .update_localized_policy_version_response import (
    UpdateLocalizedPolicyVersionResponse,
)
from .update_policy_request import UpdatePolicyRequest
from .update_policy_version_request import UpdatePolicyVersionRequest
from .update_policy_version_response import UpdatePolicyVersionResponse
from .upload_localized_policy_version_attachment_response import (
    UploadLocalizedPolicyVersionAttachmentResponse,
)
from .upload_policy_version_attachment_request import (
    UploadPolicyVersionAttachmentRequest,
)
from .user_agreements_response import UserAgreementsResponse
from .users_agreements_request import UsersAgreementsRequest
from .validation_error_entity import ValidationErrorEntity
