# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Legal Service."""

__version__ = "1.24.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# admin_user_agreement
from .wrappers import indirect_bulk_accept_versioned_policy
from .wrappers import indirect_bulk_accept_versioned_policy_async

# admin_user_eligibilities
from .wrappers import admin_retrieve_eligibilities
from .wrappers import admin_retrieve_eligibilities_async

# agreement
from .wrappers import accept_versioned_policy
from .wrappers import accept_versioned_policy_async
from .wrappers import bulk_accept_versioned_policy
from .wrappers import bulk_accept_versioned_policy_async
from .wrappers import change_preference_consent
from .wrappers import change_preference_consent_async
from .wrappers import change_preference_consent_1
from .wrappers import change_preference_consent_1_async
from .wrappers import indirect_bulk_accept_versioned_policy_1
from .wrappers import indirect_bulk_accept_versioned_policy_1_async
from .wrappers import indirect_bulk_accept_versioned_policy_v2
from .wrappers import indirect_bulk_accept_versioned_policy_v2_async
from .wrappers import retrieve_accepted_agreements
from .wrappers import retrieve_accepted_agreements_async
from .wrappers import retrieve_agreements_public
from .wrappers import retrieve_agreements_public_async
from .wrappers import retrieve_all_users_by_policy_version
from .wrappers import retrieve_all_users_by_policy_version_async

# anonymization
from .wrappers import anonymize_user_agreement
from .wrappers import anonymize_user_agreement_async

# base_legal_policies
from .wrappers import create_policy
from .wrappers import create_policy_async
from .wrappers import partial_update_policy
from .wrappers import partial_update_policy_async
from .wrappers import retrieve_all_legal_policies
from .wrappers import retrieve_all_legal_policies_async
from .wrappers import retrieve_all_policy_types
from .wrappers import retrieve_all_policy_types_async
from .wrappers import retrieve_policy_country
from .wrappers import retrieve_policy_country_async
from .wrappers import retrieve_single_policy
from .wrappers import retrieve_single_policy_async

# eligibilities
from .wrappers import retrieve_eligibilities_public
from .wrappers import retrieve_eligibilities_public_async
from .wrappers import retrieve_eligibilities_public_indirect
from .wrappers import retrieve_eligibilities_public_indirect_async

# localized_policy_versions
from .wrappers import create_localized_policy_version
from .wrappers import create_localized_policy_version_async
from .wrappers import request_presigned_url
from .wrappers import request_presigned_url_async
from .wrappers import retrieve_localized_policy_versions
from .wrappers import retrieve_localized_policy_versions_async
from .wrappers import retrieve_single_localized_policy_version
from .wrappers import retrieve_single_localized_policy_version_async
from .wrappers import retrieve_single_localized_policy_version_1
from .wrappers import retrieve_single_localized_policy_version_1_async
from .wrappers import set_default_policy
from .wrappers import set_default_policy_async
from .wrappers import update_localized_policy_version
from .wrappers import update_localized_policy_version_async

# policies
from .wrappers import retrieve_latest_policies
from .wrappers import retrieve_latest_policies_async
from .wrappers import retrieve_latest_policies_by_namespace_and_country_public
from .wrappers import retrieve_latest_policies_by_namespace_and_country_public_async
from .wrappers import retrieve_latest_policies_public
from .wrappers import retrieve_latest_policies_public_async
from .wrappers import retrieve_policies
from .wrappers import retrieve_policies_async
from .wrappers import set_default_policy_1
from .wrappers import set_default_policy_1_async
from .wrappers import update_policy
from .wrappers import update_policy_async

# policy_versions
from .wrappers import create_policy_version
from .wrappers import create_policy_version_async
from .wrappers import publish_policy_version
from .wrappers import publish_policy_version_async
from .wrappers import retrieve_single_policy_version
from .wrappers import retrieve_single_policy_version_async
from .wrappers import update_policy_version
from .wrappers import update_policy_version_async

# user_info
from .wrappers import get_user_info_status
from .wrappers import get_user_info_status_async
from .wrappers import invalidate_user_info_cache
from .wrappers import invalidate_user_info_cache_async
from .wrappers import sync_user_info
from .wrappers import sync_user_info_async

# utility
from .wrappers import check_readiness
from .wrappers import check_readiness_async
