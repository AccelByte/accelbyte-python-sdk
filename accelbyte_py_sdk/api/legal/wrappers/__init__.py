# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Legal Service."""

__version__ = "4.3.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._admin_user_agreement import indirect_bulk_accept_versioned_policy
from ._admin_user_agreement import indirect_bulk_accept_versioned_policy_async

from ._admin_user_eligibilities import admin_retrieve_eligibilities
from ._admin_user_eligibilities import admin_retrieve_eligibilities_async

from ._agreement import accept_versioned_policy
from ._agreement import accept_versioned_policy_async
from ._agreement import bulk_accept_versioned_policy
from ._agreement import bulk_accept_versioned_policy_async
from ._agreement import change_preference_consent
from ._agreement import change_preference_consent_async
from ._agreement import change_preference_consent_1
from ._agreement import change_preference_consent_1_async
from ._agreement import indirect_bulk_accept_versioned_policy_1
from ._agreement import indirect_bulk_accept_versioned_policy_1_async
from ._agreement import indirect_bulk_accept_versioned_policy_v2
from ._agreement import indirect_bulk_accept_versioned_policy_v2_async
from ._agreement import retrieve_accepted_agreements
from ._agreement import retrieve_accepted_agreements_async
from ._agreement import retrieve_agreements_public
from ._agreement import retrieve_agreements_public_async
from ._agreement import retrieve_all_users_by_policy_version
from ._agreement import retrieve_all_users_by_policy_version_async

from ._agreement_with_namespace import download_exported_agreements_in_csv
from ._agreement_with_namespace import download_exported_agreements_in_csv_async
from ._agreement_with_namespace import initiate_export_agreements_to_csv
from ._agreement_with_namespace import initiate_export_agreements_to_csv_async
from ._agreement_with_namespace import retrieve_accepted_agreements_1
from ._agreement_with_namespace import retrieve_accepted_agreements_1_async
from ._agreement_with_namespace import retrieve_accepted_agreements_for_multi_users
from ._agreement_with_namespace import (
    retrieve_accepted_agreements_for_multi_users_async,
)
from ._agreement_with_namespace import retrieve_all_users_by_policy_version_1
from ._agreement_with_namespace import retrieve_all_users_by_policy_version_1_async

from ._anonymization import anonymize_user_agreement
from ._anonymization import anonymize_user_agreement_async

from ._base_legal_policies import create_policy
from ._base_legal_policies import create_policy_async
from ._base_legal_policies import partial_update_policy
from ._base_legal_policies import partial_update_policy_async
from ._base_legal_policies import retrieve_all_legal_policies
from ._base_legal_policies import retrieve_all_legal_policies_async
from ._base_legal_policies import retrieve_all_policy_types
from ._base_legal_policies import retrieve_all_policy_types_async
from ._base_legal_policies import retrieve_policy_country
from ._base_legal_policies import retrieve_policy_country_async
from ._base_legal_policies import retrieve_single_policy
from ._base_legal_policies import retrieve_single_policy_async

from ._base_legal_policies_with_namespace import create_policy_1
from ._base_legal_policies_with_namespace import create_policy_1_async
from ._base_legal_policies_with_namespace import create_policy_under_base_policy
from ._base_legal_policies_with_namespace import create_policy_under_base_policy_async
from ._base_legal_policies_with_namespace import delete_base_policy
from ._base_legal_policies_with_namespace import delete_base_policy_async
from ._base_legal_policies_with_namespace import partial_update_policy_1
from ._base_legal_policies_with_namespace import partial_update_policy_1_async
from ._base_legal_policies_with_namespace import (
    retrieve_all_legal_policies_by_namespace,
)
from ._base_legal_policies_with_namespace import (
    retrieve_all_legal_policies_by_namespace_async,
)
from ._base_legal_policies_with_namespace import retrieve_all_policies_from_base_policy
from ._base_legal_policies_with_namespace import (
    retrieve_all_policies_from_base_policy_async,
)
from ._base_legal_policies_with_namespace import retrieve_all_policy_types_1
from ._base_legal_policies_with_namespace import retrieve_all_policy_types_1_async
from ._base_legal_policies_with_namespace import retrieve_policy_country_1
from ._base_legal_policies_with_namespace import retrieve_policy_country_1_async
from ._base_legal_policies_with_namespace import retrieve_single_policy_1
from ._base_legal_policies_with_namespace import retrieve_single_policy_1_async

from ._eligibilities import retrieve_eligibilities_public
from ._eligibilities import retrieve_eligibilities_public_async
from ._eligibilities import retrieve_eligibilities_public_indirect
from ._eligibilities import retrieve_eligibilities_public_indirect_async

from ._localized_policy_versions import create_localized_policy_version
from ._localized_policy_versions import create_localized_policy_version_async
from ._localized_policy_versions import request_presigned_url
from ._localized_policy_versions import request_presigned_url_async
from ._localized_policy_versions import retrieve_localized_policy_versions
from ._localized_policy_versions import retrieve_localized_policy_versions_async
from ._localized_policy_versions import retrieve_single_localized_policy_version
from ._localized_policy_versions import retrieve_single_localized_policy_version_async
from ._localized_policy_versions import retrieve_single_localized_policy_version_2
from ._localized_policy_versions import retrieve_single_localized_policy_version_2_async
from ._localized_policy_versions import set_default_policy
from ._localized_policy_versions import set_default_policy_async
from ._localized_policy_versions import update_localized_policy_version
from ._localized_policy_versions import update_localized_policy_version_async

from ._localized_policy_versions_with_namespace import create_localized_policy_version_1
from ._localized_policy_versions_with_namespace import (
    create_localized_policy_version_1_async,
)
from ._localized_policy_versions_with_namespace import delete_localized_policy
from ._localized_policy_versions_with_namespace import delete_localized_policy_async
from ._localized_policy_versions_with_namespace import request_presigned_url_1
from ._localized_policy_versions_with_namespace import request_presigned_url_1_async
from ._localized_policy_versions_with_namespace import (
    retrieve_localized_policy_versions_1,
)
from ._localized_policy_versions_with_namespace import (
    retrieve_localized_policy_versions_1_async,
)
from ._localized_policy_versions_with_namespace import (
    retrieve_single_localized_policy_version_1,
)
from ._localized_policy_versions_with_namespace import (
    retrieve_single_localized_policy_version_1_async,
)
from ._localized_policy_versions_with_namespace import (
    retrieve_single_localized_policy_version_3,
)
from ._localized_policy_versions_with_namespace import (
    retrieve_single_localized_policy_version_3_async,
)
from ._localized_policy_versions_with_namespace import set_default_policy_1
from ._localized_policy_versions_with_namespace import set_default_policy_1_async
from ._localized_policy_versions_with_namespace import update_localized_policy_version_1
from ._localized_policy_versions_with_namespace import (
    update_localized_policy_version_1_async,
)

from ._policies import retrieve_country_list_with_policies
from ._policies import retrieve_country_list_with_policies_async
from ._policies import retrieve_latest_policies
from ._policies import retrieve_latest_policies_async
from ._policies import retrieve_latest_policies_by_namespace_and_country_public
from ._policies import retrieve_latest_policies_by_namespace_and_country_public_async
from ._policies import retrieve_latest_policies_public
from ._policies import retrieve_latest_policies_public_async
from ._policies import retrieve_policies
from ._policies import retrieve_policies_async
from ._policies import set_default_policy_2
from ._policies import set_default_policy_2_async
from ._policies import update_policy
from ._policies import update_policy_async

from ._policies_with_namespace import delete_policy
from ._policies_with_namespace import delete_policy_async
from ._policies_with_namespace import set_default_policy_3
from ._policies_with_namespace import set_default_policy_3_async
from ._policies_with_namespace import update_policy_1
from ._policies_with_namespace import update_policy_1_async

from ._policies_with_namespace_v2 import (
    retrieve_latest_policies_by_namespace_and_country_public_1,
)
from ._policies_with_namespace_v2 import (
    retrieve_latest_policies_by_namespace_and_country_public_1_async,
)

from ._policy_versions import create_policy_version
from ._policy_versions import create_policy_version_async
from ._policy_versions import publish_policy_version
from ._policy_versions import publish_policy_version_async
from ._policy_versions import retrieve_single_policy_version
from ._policy_versions import retrieve_single_policy_version_async
from ._policy_versions import update_policy_version
from ._policy_versions import update_policy_version_async

from ._policy_versions_with_namespace import create_policy_version_1
from ._policy_versions_with_namespace import create_policy_version_1_async
from ._policy_versions_with_namespace import delete_policy_version
from ._policy_versions_with_namespace import delete_policy_version_async
from ._policy_versions_with_namespace import publish_policy_version_1
from ._policy_versions_with_namespace import publish_policy_version_1_async
from ._policy_versions_with_namespace import retrieve_single_policy_version_1
from ._policy_versions_with_namespace import retrieve_single_policy_version_1_async
from ._policy_versions_with_namespace import unpublish_policy_version
from ._policy_versions_with_namespace import unpublish_policy_version_async
from ._policy_versions_with_namespace import update_policy_version_1
from ._policy_versions_with_namespace import update_policy_version_1_async

from ._user_info import get_user_info_status
from ._user_info import get_user_info_status_async
from ._user_info import invalidate_user_info_cache
from ._user_info import invalidate_user_info_cache_async
from ._user_info import sync_user_info
from ._user_info import sync_user_info_async

from ._utility import check_readiness
from ._utility import check_readiness_async
