[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: accelbyte_cloud_py_codegen)

# AccelByte Cloud Legal Service Index (1.25.2)


## Operations

### Admin User Agreement
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies | POST | indirectBulkAcceptVersionedPolicy | `false` | [IndirectBulkAcceptVersionedPolicy](../../accelbyte_py_sdk/api/legal/operations/admin_user_agreement/indirect_bulk_accept_ve_9d5446.py) | [indirect_bulk_accept_versioned_policy](../../accelbyte_py_sdk/api/legal/wrappers/_admin_user_agreement.py) | [accelbyte_py_sdk_cli legal-indirect-bulk-accept-versioned-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_indirect_bulk_accept_versioned_policy.py) |

### Admin User Eligibilities
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/namespaces/{namespace}/users/{userId}/eligibilities | GET | adminRetrieveEligibilities | `false` | [AdminRetrieveEligibilities](../../accelbyte_py_sdk/api/legal/operations/admin_user_eligibilities/admin_retrieve_eligibilities.py) | [admin_retrieve_eligibilities](../../accelbyte_py_sdk/api/legal/wrappers/_admin_user_eligibilities.py) | [accelbyte_py_sdk_cli legal-admin-retrieve-eligibilities](../../samples/cli/accelbyte_py_sdk_cli/legal/_admin_retrieve_eligibilities.py) |

### Agreement
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId} | POST | acceptVersionedPolicy | `false` | [AcceptVersionedPolicy](../../accelbyte_py_sdk/api/legal/operations/agreement/accept_versioned_policy.py) | [accept_versioned_policy](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-accept-versioned-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_accept_versioned_policy.py) |
| /agreement/public/agreements/policies | POST | bulkAcceptVersionedPolicy | `false` | [BulkAcceptVersionedPolicy](../../accelbyte_py_sdk/api/legal/operations/agreement/bulk_accept_versioned_policy.py) | [bulk_accept_versioned_policy](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-bulk-accept-versioned-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_bulk_accept_versioned_policy.py) |
| /agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId} | PATCH | changePreferenceConsent | `false` | [ChangePreferenceConsent](../../accelbyte_py_sdk/api/legal/operations/agreement/change_preference_consent.py) | [change_preference_consent](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-change-preference-consent](../../samples/cli/accelbyte_py_sdk_cli/legal/_change_preference_consent.py) |
| /agreement/public/agreements/localized-policy-versions/preferences | PATCH | changePreferenceConsent_1 | `false` | [ChangePreferenceConsent1](../../accelbyte_py_sdk/api/legal/operations/agreement/change_preference_consent_1.py) | [change_preference_consent_1](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-change-preference-consent-1](../../samples/cli/accelbyte_py_sdk_cli/legal/_change_preference_consent_1.py) |
| /agreement/public/agreements/policies/users/{userId} | POST | indirectBulkAcceptVersionedPolicy_1 | `false` | [IndirectBulkAcceptVersionedPolicy1](../../accelbyte_py_sdk/api/legal/operations/agreement/indirect_bulk_accept_ve_f4345a.py) | [indirect_bulk_accept_versioned_policy_1](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-indirect-bulk-accept-versioned-policy-1](../../samples/cli/accelbyte_py_sdk_cli/legal/_indirect_bulk_accept_versioned_policy_1.py) |
| /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} | POST | indirectBulkAcceptVersionedPolicyV2 | `false` | [IndirectBulkAcceptVersionedPolicyV2](../../accelbyte_py_sdk/api/legal/operations/agreement/indirect_bulk_accept_ve_34e753.py) | [indirect_bulk_accept_versioned_policy_v2](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-indirect-bulk-accept-versioned-policy-v2](../../samples/cli/accelbyte_py_sdk_cli/legal/_indirect_bulk_accept_versioned_policy_v2.py) |
| /agreement/admin/agreements/policies/users/{userId} | GET | retrieveAcceptedAgreements | `false` | [RetrieveAcceptedAgreements](../../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_accepted_agreements.py) | [retrieve_accepted_agreements](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-retrieve-accepted-agreements](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_accepted_agreements.py) |
| /agreement/public/agreements/policies | GET | retrieveAgreementsPublic | `false` | [RetrieveAgreementsPublic](../../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_agreements_public.py) | [retrieve_agreements_public](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-retrieve-agreements-public](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_agreements_public.py) |
| /agreement/admin/agreements/policy-versions/users | GET | retrieveAllUsersByPolicyVersion | `false` | [RetrieveAllUsersByPolicyVersion](../../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_all_users_by_p_90a012.py) | [retrieve_all_users_by_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) | [accelbyte_py_sdk_cli legal-retrieve-all-users-by-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_all_users_by_policy_version.py) |

### Anonymization
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/users/{userId}/anonymization/agreements | DELETE | anonymizeUserAgreement | `false` | [AnonymizeUserAgreement](../../accelbyte_py_sdk/api/legal/operations/anonymization/anonymize_user_agreement.py) | [anonymize_user_agreement](../../accelbyte_py_sdk/api/legal/wrappers/_anonymization.py) | [accelbyte_py_sdk_cli legal-anonymize-user-agreement](../../samples/cli/accelbyte_py_sdk_cli/legal/_anonymize_user_agreement.py) |

### Base Legal Policies
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/base-policies | POST | createPolicy | `false` | [CreatePolicy](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/create_policy.py) | [create_policy](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-create-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_create_policy.py) |
| /agreement/admin/base-policies/{basePolicyId} | PATCH | partialUpdatePolicy | `false` | [PartialUpdatePolicy](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/partial_update_policy.py) | [partial_update_policy](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-partial-update-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_partial_update_policy.py) |
| /agreement/admin/base-policies | GET | retrieveAllLegalPolicies | `false` | [RetrieveAllLegalPolicies](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_all_legal_policies.py) | [retrieve_all_legal_policies](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-all-legal-policies](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_all_legal_policies.py) |
| /agreement/admin/policy-types | GET | retrieveAllPolicyTypes | `false` | [RetrieveAllPolicyTypes](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_all_policy_types.py) | [retrieve_all_policy_types](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-all-policy-types](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_all_policy_types.py) |
| /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode} | GET | retrievePolicyCountry | `false` | [RetrievePolicyCountry](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_policy_country.py) | [retrieve_policy_country](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-policy-country](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_policy_country.py) |
| /agreement/admin/base-policies/{basePolicyId} | GET | retrieveSinglePolicy | `false` | [RetrieveSinglePolicy](../../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_single_policy.py) | [retrieve_single_policy](../../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-single-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_single_policy.py) |

### Eligibilities
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/public/eligibilities/namespaces/{namespace} | GET | retrieveEligibilitiesPublic | `false` | [RetrieveEligibilitiesPublic](../../accelbyte_py_sdk/api/legal/operations/eligibilities/retrieve_eligibilities_public.py) | [retrieve_eligibilities_public](../../accelbyte_py_sdk/api/legal/wrappers/_eligibilities.py) | [accelbyte_py_sdk_cli legal-retrieve-eligibilities-public](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_eligibilities_public.py) |
| /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} | GET | retrieveEligibilitiesPublicIndirect | `false` | [RetrieveEligibilitiesPublicIndirect](../../accelbyte_py_sdk/api/legal/operations/eligibilities/retrieve_eligibilities__345271.py) | [retrieve_eligibilities_public_indirect](../../accelbyte_py_sdk/api/legal/wrappers/_eligibilities.py) | [accelbyte_py_sdk_cli legal-retrieve-eligibilities-public-indirect](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_eligibilities_public_indirect.py) |

### Localized Policy Versions
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/localized-policy-versions/versions/{policyVersionId} | POST | createLocalizedPolicyVersion | `false` | [CreateLocalizedPolicyVersion](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/create_localized_policy_19e4a3.py) | [create_localized_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-create-localized-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_create_localized_policy_version.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments | POST | requestPresignedURL | `false` | [RequestPresignedURL](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/request_presigned_url.py) | [request_presigned_url](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-request-presigned-url](../../samples/cli/accelbyte_py_sdk_cli/legal/_request_presigned_url.py) |
| /agreement/admin/localized-policy-versions/versions/{policyVersionId} | GET | retrieveLocalizedPolicyVersions | `false` | [RetrieveLocalizedPolicyVersions](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_localized_poli_24a671.py) | [retrieve_localized_policy_versions](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-retrieve-localized-policy-versions](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} | GET | retrieveSingleLocalizedPolicyVersion | `false` | [RetrieveSingleLocalizedPolicyVersion](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_single_localiz_2f6231.py) | [retrieve_single_localized_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-retrieve-single-localized-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_single_localized_policy_version.py) |
| /agreement/public/localized-policy-versions/{localizedPolicyVersionId} | GET | retrieveSingleLocalizedPolicyVersion_1 | `false` | [RetrieveSingleLocalizedPolicyVersion1](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_single_localiz_f21ac4.py) | [retrieve_single_localized_policy_version_1](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-retrieve-single-localized-policy-version-1](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_single_localized_policy_version_1.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default | PATCH | setDefaultPolicy | `false` | [SetDefaultPolicy](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/set_default_policy.py) | [set_default_policy](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-set-default-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_set_default_policy.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} | PUT | updateLocalizedPolicyVersion | `false` | [UpdateLocalizedPolicyVersion](../../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/update_localized_policy_a8a90f.py) | [update_localized_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) | [accelbyte_py_sdk_cli legal-update-localized-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_update_localized_policy_version.py) |

### Policies
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/public/policies/countries/{countryCode} | GET | retrieveLatestPolicies | `false` | [RetrieveLatestPolicies](../../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policies.py) | [retrieve_latest_policies](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-latest-policies](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_latest_policies.py) |
| /agreement/public/policies/namespaces/{namespace}/countries/{countryCode} | GET | retrieveLatestPoliciesByNamespaceAndCountryPublic | `false` | [RetrieveLatestPoliciesByNamespaceAndCountryPublic](../../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policie_95ffb6.py) | [retrieve_latest_policies_by_namespace_and_country_public](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-latest-policies-by-namespace-and-country-public](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_latest_policies_by_namespace_and_country_public.py) |
| /agreement/public/policies/namespaces/{namespace} | GET | retrieveLatestPoliciesPublic | `false` | [RetrieveLatestPoliciesPublic](../../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policie_29f65f.py) | [retrieve_latest_policies_public](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-latest-policies-public](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_latest_policies_public.py) |
| /agreement/admin/policies/countries/{countryCode} | GET | retrievePolicies | `false` | [RetrievePolicies](../../accelbyte_py_sdk/api/legal/operations/policies/retrieve_policies.py) | [retrieve_policies](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-retrieve-policies](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_policies.py) |
| /agreement/admin/policies/{policyId}/default | PATCH | setDefaultPolicy_1 | `false` | [SetDefaultPolicy1](../../accelbyte_py_sdk/api/legal/operations/policies/set_default_policy_1.py) | [set_default_policy_1](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-set-default-policy-1](../../samples/cli/accelbyte_py_sdk_cli/legal/_set_default_policy_1.py) |
| /agreement/admin/policies/{policyId} | PATCH | updatePolicy | `false` | [UpdatePolicy](../../accelbyte_py_sdk/api/legal/operations/policies/update_policy.py) | [update_policy](../../accelbyte_py_sdk/api/legal/wrappers/_policies.py) | [accelbyte_py_sdk_cli legal-update-policy](../../samples/cli/accelbyte_py_sdk_cli/legal/_update_policy.py) |

### Policy Versions
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/policies/{policyId}/versions | POST | createPolicyVersion | `false` | [CreatePolicyVersion](../../accelbyte_py_sdk/api/legal/operations/policy_versions/create_policy_version.py) | [create_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) | [accelbyte_py_sdk_cli legal-create-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_create_policy_version.py) |
| /agreement/admin/policies/versions/{policyVersionId}/latest | PATCH | publishPolicyVersion | `false` | [PublishPolicyVersion](../../accelbyte_py_sdk/api/legal/operations/policy_versions/publish_policy_version.py) | [publish_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) | [accelbyte_py_sdk_cli legal-publish-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_publish_policy_version.py) |
| /agreement/admin/policies/{policyId}/versions | GET | retrieveSinglePolicyVersion | `false` | [RetrieveSinglePolicyVersion](../../accelbyte_py_sdk/api/legal/operations/policy_versions/retrieve_single_policy_version.py) | [retrieve_single_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) | [accelbyte_py_sdk_cli legal-retrieve-single-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_retrieve_single_policy_version.py) |
| /agreement/admin/policies/versions/{policyVersionId} | PATCH | updatePolicyVersion | `false` | [UpdatePolicyVersion](../../accelbyte_py_sdk/api/legal/operations/policy_versions/update_policy_version.py) | [update_policy_version](../../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) | [accelbyte_py_sdk_cli legal-update-policy-version](../../samples/cli/accelbyte_py_sdk_cli/legal/_update_policy_version.py) |

### UserInfo
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/admin/userInfo | GET | getUserInfoStatus | `false` | [GetUserInfoStatus](../../accelbyte_py_sdk/api/legal/operations/user_info/get_user_info_status.py) | [get_user_info_status](../../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) | [accelbyte_py_sdk_cli legal-get-user-info-status](../../samples/cli/accelbyte_py_sdk_cli/legal/_get_user_info_status.py) |
| /agreement/admin/userInfo | DELETE | invalidateUserInfoCache | `false` | [InvalidateUserInfoCache](../../accelbyte_py_sdk/api/legal/operations/user_info/invalidate_user_info_cache.py) | [invalidate_user_info_cache](../../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) | [accelbyte_py_sdk_cli legal-invalidate-user-info-cache](../../samples/cli/accelbyte_py_sdk_cli/legal/_invalidate_user_info_cache.py) |
| /agreement/admin/userInfo | PUT | syncUserInfo | `false` | [SyncUserInfo](../../accelbyte_py_sdk/api/legal/operations/user_info/sync_user_info.py) | [sync_user_info](../../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) | [accelbyte_py_sdk_cli legal-sync-user-info](../../samples/cli/accelbyte_py_sdk_cli/legal/_sync_user_info.py) |

### Utility
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /agreement/public/readiness | GET | checkReadiness | `false` | [CheckReadiness](../../accelbyte_py_sdk/api/legal/operations/utility/check_readiness.py) | [check_readiness](../../accelbyte_py_sdk/api/legal/wrappers/_utility.py) | [accelbyte_py_sdk_cli legal-check-readiness](../../samples/cli/accelbyte_py_sdk_cli/legal/_check_readiness.py) |


## Models
| Model | Class |
|---|---|
| AcceptAgreementRequest | [AcceptAgreementRequest](../../accelbyte_py_sdk/api/legal/models/accept_agreement_request.py) |
| AcceptAgreementResponse | [AcceptAgreementResponse](../../accelbyte_py_sdk/api/legal/models/accept_agreement_response.py) |
| CreateBasePolicyRequest | [CreateBasePolicyRequest](../../accelbyte_py_sdk/api/legal/models/create_base_policy_request.py) |
| CreateBasePolicyResponse | [CreateBasePolicyResponse](../../accelbyte_py_sdk/api/legal/models/create_base_policy_response.py) |
| CreateLocalizedPolicyVersionRequest | [CreateLocalizedPolicyVersionRequest](../../accelbyte_py_sdk/api/legal/models/create_localized_policy_version_request.py) |
| CreateLocalizedPolicyVersionResponse | [CreateLocalizedPolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/create_localized_policy_version_response.py) |
| CreatePolicyVersionRequest | [CreatePolicyVersionRequest](../../accelbyte_py_sdk/api/legal/models/create_policy_version_request.py) |
| CreatePolicyVersionResponse | [CreatePolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/create_policy_version_response.py) |
| ErrorEntity | [ErrorEntity](../../accelbyte_py_sdk/api/legal/models/error_entity.py) |
| FieldValidationError | [FieldValidationError](../../accelbyte_py_sdk/api/legal/models/field_validation_error.py) |
| LegalReadinessStatusResponse | [LegalReadinessStatusResponse](../../accelbyte_py_sdk/api/legal/models/legal_readiness_status_response.py) |
| LocalizedPolicyVersionObject | [LocalizedPolicyVersionObject](../../accelbyte_py_sdk/api/legal/models/localized_policy_version_object.py) |
| PagedRetrieveUserAcceptedAgreementResponse | [PagedRetrieveUserAcceptedAgreementResponse](../../accelbyte_py_sdk/api/legal/models/paged_retrieve_user_accepted_agreement_response.py) |
| Paging | [Paging](../../accelbyte_py_sdk/api/legal/models/paging.py) |
| PolicyObject | [PolicyObject](../../accelbyte_py_sdk/api/legal/models/policy_object.py) |
| PolicyVersionObject | [PolicyVersionObject](../../accelbyte_py_sdk/api/legal/models/policy_version_object.py) |
| PolicyVersionWithLocalizedVersionObject | [PolicyVersionWithLocalizedVersionObject](../../accelbyte_py_sdk/api/legal/models/policy_version_with_localized_version_object.py) |
| RetrieveAcceptedAgreementResponse | [RetrieveAcceptedAgreementResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_accepted_agreement_response.py) |
| RetrieveBasePolicyResponse | [RetrieveBasePolicyResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_base_policy_response.py) |
| RetrieveLocalizedPolicyVersionPublicResponse | [RetrieveLocalizedPolicyVersionPublicResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_localized_policy_version_public_response.py) |
| RetrieveLocalizedPolicyVersionResponse | [RetrieveLocalizedPolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_localized_policy_version_response.py) |
| RetrievePolicyPublicResponse | [RetrievePolicyPublicResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_policy_public_response.py) |
| RetrievePolicyResponse | [RetrievePolicyResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_policy_response.py) |
| RetrievePolicyTypeResponse | [RetrievePolicyTypeResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_policy_type_response.py) |
| RetrievePolicyVersionResponse | [RetrievePolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_policy_version_response.py) |
| RetrieveUserAcceptedAgreementResponse | [RetrieveUserAcceptedAgreementResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_user_accepted_agreement_response.py) |
| RetrieveUserEligibilitiesIndirectResponse | [RetrieveUserEligibilitiesIndirectResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_user_eligibilities_indirect_response.py) |
| RetrieveUserEligibilitiesResponse | [RetrieveUserEligibilitiesResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_user_eligibilities_response.py) |
| RetrieveUserInfoCacheStatusResponse | [RetrieveUserInfoCacheStatusResponse](../../accelbyte_py_sdk/api/legal/models/retrieve_user_info_cache_status_response.py) |
| UpdateBasePolicyRequest | [UpdateBasePolicyRequest](../../accelbyte_py_sdk/api/legal/models/update_base_policy_request.py) |
| UpdateBasePolicyResponse | [UpdateBasePolicyResponse](../../accelbyte_py_sdk/api/legal/models/update_base_policy_response.py) |
| UpdateLocalizedPolicyVersionRequest | [UpdateLocalizedPolicyVersionRequest](../../accelbyte_py_sdk/api/legal/models/update_localized_policy_version_request.py) |
| UpdateLocalizedPolicyVersionResponse | [UpdateLocalizedPolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/update_localized_policy_version_response.py) |
| UpdatePolicyRequest | [UpdatePolicyRequest](../../accelbyte_py_sdk/api/legal/models/update_policy_request.py) |
| UpdatePolicyVersionRequest | [UpdatePolicyVersionRequest](../../accelbyte_py_sdk/api/legal/models/update_policy_version_request.py) |
| UpdatePolicyVersionResponse | [UpdatePolicyVersionResponse](../../accelbyte_py_sdk/api/legal/models/update_policy_version_response.py) |
| UploadLocalizedPolicyVersionAttachmentResponse | [UploadLocalizedPolicyVersionAttachmentResponse](../../accelbyte_py_sdk/api/legal/models/upload_localized_policy_version_attachment_response.py) |
| UploadPolicyVersionAttachmentRequest | [UploadPolicyVersionAttachmentRequest](../../accelbyte_py_sdk/api/legal/models/upload_policy_version_attachment_request.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../../accelbyte_py_sdk/api/legal/models/validation_error_entity.py) |
