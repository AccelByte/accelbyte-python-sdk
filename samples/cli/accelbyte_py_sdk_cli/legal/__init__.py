# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-legal-service

from ._change_preference_consent import change_preference_consent
from ._retrieve_accepted_agreements import retrieve_accepted_agreements
from ._retrieve_all_users_by_policy_version import retrieve_all_users_by_policy_version
from ._retrieve_all_legal_policies import retrieve_all_legal_policies
from ._create_policy import create_policy
from ._retrieve_single_policy import retrieve_single_policy
from ._partial_update_policy import partial_update_policy
from ._retrieve_policy_country import retrieve_policy_country
from ._retrieve_localized_policy_versions import retrieve_localized_policy_versions
from ._create_localized_policy_version import create_localized_policy_version
from ._retrieve_single_localized_policy_version import (
    retrieve_single_localized_policy_version,
)
from ._update_localized_policy_version import update_localized_policy_version
from ._request_presigned_url import request_presigned_url
from ._set_default_policy import set_default_policy
from ._retrieve_accepted_agreements_for_multi_users import (
    retrieve_accepted_agreements_for_multi_users,
)
from ._retrieve_accepted_agreements_1 import retrieve_accepted_agreements_1
from ._retrieve_all_users_by_policy_version_1 import (
    retrieve_all_users_by_policy_version_1,
)
from ._download_exported_agreements_in_csv import download_exported_agreements_in_csv
from ._initiate_export_agreements_to_csv import initiate_export_agreements_to_csv
from ._retrieve_all_legal_policies_by_namespace import (
    retrieve_all_legal_policies_by_namespace,
)
from ._create_policy_1 import create_policy_1
from ._retrieve_single_policy_1 import retrieve_single_policy_1
from ._delete_base_policy import delete_base_policy
from ._partial_update_policy_1 import partial_update_policy_1
from ._retrieve_policy_country_1 import retrieve_policy_country_1
from ._retrieve_all_policies_from_base_policy import (
    retrieve_all_policies_from_base_policy,
)
from ._create_policy_under_base_policy import create_policy_under_base_policy
from ._delete_localized_policy import delete_localized_policy
from ._retrieve_localized_policy_versions_1 import retrieve_localized_policy_versions_1
from ._create_localized_policy_version_1 import create_localized_policy_version_1
from ._retrieve_single_localized_policy_version_1 import (
    retrieve_single_localized_policy_version_1,
)
from ._update_localized_policy_version_1 import update_localized_policy_version_1
from ._request_presigned_url_1 import request_presigned_url_1
from ._set_default_policy_1 import set_default_policy_1
from ._delete_policy_version import delete_policy_version
from ._update_policy_version_1 import update_policy_version_1
from ._publish_policy_version_1 import publish_policy_version_1
from ._unpublish_policy_version import unpublish_policy_version
from ._delete_policy import delete_policy
from ._update_policy_1 import update_policy_1
from ._set_default_policy_3 import set_default_policy_3
from ._retrieve_single_policy_version_1 import retrieve_single_policy_version_1
from ._create_policy_version_1 import create_policy_version_1
from ._retrieve_all_policy_types_1 import retrieve_all_policy_types_1
from ._indirect_bulk_accept_versioned_policy import (
    indirect_bulk_accept_versioned_policy,
)
from ._admin_retrieve_eligibilities import admin_retrieve_eligibilities
from ._retrieve_policies import retrieve_policies
from ._update_policy_version import update_policy_version
from ._publish_policy_version import publish_policy_version
from ._update_policy import update_policy
from ._set_default_policy_2 import set_default_policy_2
from ._retrieve_single_policy_version import retrieve_single_policy_version
from ._create_policy_version import create_policy_version
from ._retrieve_all_policy_types import retrieve_all_policy_types
from ._get_user_info_status import get_user_info_status
from ._sync_user_info import sync_user_info
from ._invalidate_user_info_cache import invalidate_user_info_cache
from ._anonymize_user_agreement import anonymize_user_agreement
from ._change_preference_consent_1 import change_preference_consent_1
from ._accept_versioned_policy import accept_versioned_policy
from ._retrieve_agreements_public import retrieve_agreements_public
from ._bulk_accept_versioned_policy import bulk_accept_versioned_policy
from ._indirect_bulk_accept_versioned_policy_v2 import (
    indirect_bulk_accept_versioned_policy_v2,
)
from ._indirect_bulk_accept_versioned_policy_1 import (
    indirect_bulk_accept_versioned_policy_1,
)
from ._retrieve_eligibilities_public import retrieve_eligibilities_public
from ._retrieve_eligibilities_public_indirect import (
    retrieve_eligibilities_public_indirect,
)
from ._retrieve_single_localized_policy_version_2 import (
    retrieve_single_localized_policy_version_2,
)
from ._retrieve_single_localized_policy_version_3 import (
    retrieve_single_localized_policy_version_3,
)
from ._retrieve_country_list_with_policies import retrieve_country_list_with_policies
from ._retrieve_latest_policies import retrieve_latest_policies
from ._retrieve_latest_policies_public import retrieve_latest_policies_public
from ._retrieve_latest_policies_by_namespace_and_country_public import (
    retrieve_latest_policies_by_namespace_and_country_public,
)
from ._check_readiness import check_readiness


commands = [
    change_preference_consent,
    retrieve_accepted_agreements,
    retrieve_all_users_by_policy_version,
    retrieve_all_legal_policies,
    create_policy,
    retrieve_single_policy,
    partial_update_policy,
    retrieve_policy_country,
    retrieve_localized_policy_versions,
    create_localized_policy_version,
    retrieve_single_localized_policy_version,
    update_localized_policy_version,
    request_presigned_url,
    set_default_policy,
    retrieve_accepted_agreements_for_multi_users,
    retrieve_accepted_agreements_1,
    retrieve_all_users_by_policy_version_1,
    download_exported_agreements_in_csv,
    initiate_export_agreements_to_csv,
    retrieve_all_legal_policies_by_namespace,
    create_policy_1,
    retrieve_single_policy_1,
    delete_base_policy,
    partial_update_policy_1,
    retrieve_policy_country_1,
    retrieve_all_policies_from_base_policy,
    create_policy_under_base_policy,
    delete_localized_policy,
    retrieve_localized_policy_versions_1,
    create_localized_policy_version_1,
    retrieve_single_localized_policy_version_1,
    update_localized_policy_version_1,
    request_presigned_url_1,
    set_default_policy_1,
    delete_policy_version,
    update_policy_version_1,
    publish_policy_version_1,
    unpublish_policy_version,
    delete_policy,
    update_policy_1,
    set_default_policy_3,
    retrieve_single_policy_version_1,
    create_policy_version_1,
    retrieve_all_policy_types_1,
    indirect_bulk_accept_versioned_policy,
    admin_retrieve_eligibilities,
    retrieve_policies,
    update_policy_version,
    publish_policy_version,
    update_policy,
    set_default_policy_2,
    retrieve_single_policy_version,
    create_policy_version,
    retrieve_all_policy_types,
    get_user_info_status,
    sync_user_info,
    invalidate_user_info_cache,
    anonymize_user_agreement,
    change_preference_consent_1,
    accept_versioned_policy,
    retrieve_agreements_public,
    bulk_accept_versioned_policy,
    indirect_bulk_accept_versioned_policy_v2,
    indirect_bulk_accept_versioned_policy_1,
    retrieve_eligibilities_public,
    retrieve_eligibilities_public_indirect,
    retrieve_single_localized_policy_version_2,
    retrieve_single_localized_policy_version_3,
    retrieve_country_list_with_policies,
    retrieve_latest_policies,
    retrieve_latest_policies_public,
    retrieve_latest_policies_by_namespace_and_country_public,
    check_readiness,
]
