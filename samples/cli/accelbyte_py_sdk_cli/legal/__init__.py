# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-legal-service

from ._change_preference_consent import change_preference_consent
from ._old_retrieve_accepted_agreements import old_retrieve_accepted_agreements
from ._old_retrieve_all_users_by_policy_version import (
    old_retrieve_all_users_by_policy_version,
)
from ._retrieve_all_legal_policies import retrieve_all_legal_policies
from ._old_create_policy import old_create_policy
from ._old_retrieve_single_policy import old_retrieve_single_policy
from ._old_partial_update_policy import old_partial_update_policy
from ._old_retrieve_policy_country import old_retrieve_policy_country
from ._old_retrieve_localized_policy_versions import (
    old_retrieve_localized_policy_versions,
)
from ._old_create_localized_policy_version import old_create_localized_policy_version
from ._old_retrieve_single_localized_policy_version import (
    old_retrieve_single_localized_policy_version,
)
from ._old_update_localized_policy_version import old_update_localized_policy_version
from ._old_request_presigned_url import old_request_presigned_url
from ._old_set_default_localized_policy import old_set_default_localized_policy
from ._retrieve_accepted_agreements_for_multi_users import (
    retrieve_accepted_agreements_for_multi_users,
)
from ._retrieve_accepted_agreements import retrieve_accepted_agreements
from ._retrieve_all_users_by_policy_version import retrieve_all_users_by_policy_version
from ._download_exported_agreements_in_csv import download_exported_agreements_in_csv
from ._initiate_export_agreements_to_csv import initiate_export_agreements_to_csv
from ._retrieve_all_legal_policies_by_namespace import (
    retrieve_all_legal_policies_by_namespace,
)
from ._create_policy import create_policy
from ._retrieve_single_policy import retrieve_single_policy
from ._delete_base_policy import delete_base_policy
from ._partial_update_policy import partial_update_policy
from ._retrieve_policy_country import retrieve_policy_country
from ._retrieve_all_policies_from_base_policy import (
    retrieve_all_policies_from_base_policy,
)
from ._create_policy_under_base_policy import create_policy_under_base_policy
from ._delete_localized_policy import delete_localized_policy
from ._retrieve_localized_policy_versions import retrieve_localized_policy_versions
from ._create_localized_policy_version import create_localized_policy_version
from ._retrieve_single_localized_policy_version import (
    retrieve_single_localized_policy_version,
)
from ._update_localized_policy_version import update_localized_policy_version
from ._request_presigned_url import request_presigned_url
from ._set_default_localized_policy import set_default_localized_policy
from ._delete_policy_version import delete_policy_version
from ._update_policy_version import update_policy_version
from ._publish_policy_version import publish_policy_version
from ._unpublish_policy_version import unpublish_policy_version
from ._delete_policy import delete_policy
from ._update_policy import update_policy
from ._set_default_policy import set_default_policy
from ._retrieve_single_policy_version import retrieve_single_policy_version
from ._create_policy_version import create_policy_version
from ._retrieve_all_policy_types import retrieve_all_policy_types
from ._indirect_bulk_accept_versioned_policy import (
    indirect_bulk_accept_versioned_policy,
)
from ._admin_retrieve_eligibilities import admin_retrieve_eligibilities
from ._retrieve_policies import retrieve_policies
from ._old_update_policy_version import old_update_policy_version
from ._old_publish_policy_version import old_publish_policy_version
from ._old_update_policy import old_update_policy
from ._old_set_default_policy import old_set_default_policy
from ._old_retrieve_single_policy_version import old_retrieve_single_policy_version
from ._old_create_policy_version import old_create_policy_version
from ._old_retrieve_all_policy_types import old_retrieve_all_policy_types
from ._get_user_info_status import get_user_info_status
from ._sync_user_info import sync_user_info
from ._invalidate_user_info_cache import invalidate_user_info_cache
from ._anonymize_user_agreement import anonymize_user_agreement
from ._public_change_preference_consent import public_change_preference_consent
from ._accept_versioned_policy import accept_versioned_policy
from ._retrieve_agreements_public import retrieve_agreements_public
from ._bulk_accept_versioned_policy import bulk_accept_versioned_policy
from ._indirect_bulk_accept_versioned_policy_v2 import (
    indirect_bulk_accept_versioned_policy_v2,
)
from ._public_indirect_bulk_accept_versioned_policy import (
    public_indirect_bulk_accept_versioned_policy,
)
from ._retrieve_eligibilities_public import retrieve_eligibilities_public
from ._retrieve_eligibilities_public_indirect import (
    retrieve_eligibilities_public_indirect,
)
from ._old_public_retrieve_single_localized_policy_version import (
    old_public_retrieve_single_localized_policy_version,
)
from ._public_retrieve_single_localized_policy_version import (
    public_retrieve_single_localized_policy_version,
)
from ._retrieve_country_list_with_policies import retrieve_country_list_with_policies
from ._retrieve_latest_policies import retrieve_latest_policies
from ._retrieve_latest_policies_public import retrieve_latest_policies_public
from ._old_retrieve_latest_policies_by_namespace_and_country_public import (
    old_retrieve_latest_policies_by_namespace_and_country_public,
)
from ._check_readiness import check_readiness
from ._retrieve_latest_policies_by_namespace_and_country_public import (
    retrieve_latest_policies_by_namespace_and_country_public,
)


commands = [
    change_preference_consent,
    old_retrieve_accepted_agreements,
    old_retrieve_all_users_by_policy_version,
    retrieve_all_legal_policies,
    old_create_policy,
    old_retrieve_single_policy,
    old_partial_update_policy,
    old_retrieve_policy_country,
    old_retrieve_localized_policy_versions,
    old_create_localized_policy_version,
    old_retrieve_single_localized_policy_version,
    old_update_localized_policy_version,
    old_request_presigned_url,
    old_set_default_localized_policy,
    retrieve_accepted_agreements_for_multi_users,
    retrieve_accepted_agreements,
    retrieve_all_users_by_policy_version,
    download_exported_agreements_in_csv,
    initiate_export_agreements_to_csv,
    retrieve_all_legal_policies_by_namespace,
    create_policy,
    retrieve_single_policy,
    delete_base_policy,
    partial_update_policy,
    retrieve_policy_country,
    retrieve_all_policies_from_base_policy,
    create_policy_under_base_policy,
    delete_localized_policy,
    retrieve_localized_policy_versions,
    create_localized_policy_version,
    retrieve_single_localized_policy_version,
    update_localized_policy_version,
    request_presigned_url,
    set_default_localized_policy,
    delete_policy_version,
    update_policy_version,
    publish_policy_version,
    unpublish_policy_version,
    delete_policy,
    update_policy,
    set_default_policy,
    retrieve_single_policy_version,
    create_policy_version,
    retrieve_all_policy_types,
    indirect_bulk_accept_versioned_policy,
    admin_retrieve_eligibilities,
    retrieve_policies,
    old_update_policy_version,
    old_publish_policy_version,
    old_update_policy,
    old_set_default_policy,
    old_retrieve_single_policy_version,
    old_create_policy_version,
    old_retrieve_all_policy_types,
    get_user_info_status,
    sync_user_info,
    invalidate_user_info_cache,
    anonymize_user_agreement,
    public_change_preference_consent,
    accept_versioned_policy,
    retrieve_agreements_public,
    bulk_accept_versioned_policy,
    indirect_bulk_accept_versioned_policy_v2,
    public_indirect_bulk_accept_versioned_policy,
    retrieve_eligibilities_public,
    retrieve_eligibilities_public_indirect,
    old_public_retrieve_single_localized_policy_version,
    public_retrieve_single_localized_policy_version,
    retrieve_country_list_with_policies,
    retrieve_latest_policies,
    retrieve_latest_policies_public,
    old_retrieve_latest_policies_by_namespace_and_country_public,
    check_readiness,
    retrieve_latest_policies_by_namespace_and_country_public,
]
