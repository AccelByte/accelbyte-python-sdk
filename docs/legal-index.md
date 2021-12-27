[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-legal-service Index (1.15.0)


## Operations

### Agreement
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId} | POST | acceptVersionedPolicy | [AcceptVersionedPolicy](../accelbyte_py_sdk/api/legal/operations/agreement/accept_versioned_policy.py) | [accept_versioned_policy](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/public/agreements/policies | POST | bulkAcceptVersionedPolicy | [BulkAcceptVersionedPolicy](../accelbyte_py_sdk/api/legal/operations/agreement/bulk_accept_versioned_policy.py) | [bulk_accept_versioned_policy](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/public/agreements/localized-policy-versions/preferences | PATCH | changePreferenceConsent | [ChangePreferenceConsent](../accelbyte_py_sdk/api/legal/operations/agreement/change_preference_consent.py) | [change_preference_consent](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/public/agreements/policies/users/{userId} | POST | indirectBulkAcceptVersionedPolicy | [IndirectBulkAcceptVersionedPolicy](../accelbyte_py_sdk/api/legal/operations/agreement/indirect_bulk_accept_versioned_policy.py) | [indirect_bulk_accept_versioned_policy](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} | POST | indirectBulkAcceptVersionedPolicyV2 | [IndirectBulkAcceptVersionedPolicyV2](../accelbyte_py_sdk/api/legal/operations/agreement/indirect_bulk_accept_versioned_policy_v2.py) | [indirect_bulk_accept_versioned_policy_v2](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/admin/agreements/policies/users/{userId} | GET | retrieveAcceptedAgreements | [RetrieveAcceptedAgreements](../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_accepted_agreements.py) | [retrieve_accepted_agreements](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/public/agreements/policies | GET | retrieveAgreementsPublic | [RetrieveAgreementsPublic](../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_agreements_public.py) | [retrieve_agreements_public](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |
| /agreement/admin/agreements/policy-versions/users | GET | retrieveAllUsersByPolicyVersion | [RetrieveAllUsersByPolicyVersion](../accelbyte_py_sdk/api/legal/operations/agreement/retrieve_all_users_by_policy_version.py) | [retrieve_all_users_by_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_agreement.py) |

### Anonymization
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/admin/users/{userId}/anonymization/agreements | DELETE | anonymizeUserAgreement | [AnonymizeUserAgreement](../accelbyte_py_sdk/api/legal/operations/anonymization/anonymize_user_agreement.py) | [anonymize_user_agreement](../accelbyte_py_sdk/api/legal/wrappers/_anonymization.py) |

### Base Legal Policies
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/admin/base-policies | POST | createPolicy | [CreatePolicy](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/create_policy.py) | [create_policy](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |
| /agreement/admin/base-policies/{basePolicyId} | PATCH | partialUpdatePolicy | [PartialUpdatePolicy](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/partial_update_policy.py) | [partial_update_policy](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |
| /agreement/admin/base-policies | GET | retrieveAllLegalPolicies | [RetrieveAllLegalPolicies](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_all_legal_policies.py) | [retrieve_all_legal_policies](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |
| /agreement/admin/policy-types | GET | retrieveAllPolicyTypes | [RetrieveAllPolicyTypes](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_all_policy_types.py) | [retrieve_all_policy_types](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |
| /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode} | GET | retrievePolicyCountry | [RetrievePolicyCountry](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_policy_country.py) | [retrieve_policy_country](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |
| /agreement/admin/base-policies/{basePolicyId} | GET | retrieveSinglePolicy | [RetrieveSinglePolicy](../accelbyte_py_sdk/api/legal/operations/base_legal_policies/retrieve_single_policy.py) | [retrieve_single_policy](../accelbyte_py_sdk/api/legal/wrappers/_base_legal_policies.py) |

### Eligibilities
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/public/eligibilities/namespaces/{namespace} | GET | retrieveEligibilitiesPublic | [RetrieveEligibilitiesPublic](../accelbyte_py_sdk/api/legal/operations/eligibilities/retrieve_eligibilities_public.py) | [retrieve_eligibilities_public](../accelbyte_py_sdk/api/legal/wrappers/_eligibilities.py) |
| /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} | GET | retrieveEligibilitiesPublicIndirect | [RetrieveEligibilitiesPublicIndirect](../accelbyte_py_sdk/api/legal/operations/eligibilities/retrieve_eligibilities_public_indirect.py) | [retrieve_eligibilities_public_indirect](../accelbyte_py_sdk/api/legal/wrappers/_eligibilities.py) |

### Localized Policy Versions
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/admin/localized-policy-versions/versions/{policyVersionId} | POST | createLocalizedPolicyVersion | [CreateLocalizedPolicyVersion](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/create_localized_policy_version.py) | [create_localized_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments | POST | requestPresignedURL | [RequestPresignedURL](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/request_presigned_url.py) | [request_presigned_url](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/versions/{policyVersionId} | GET | retrieveLocalizedPolicyVersions | [RetrieveLocalizedPolicyVersions](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_localized_policy_versions.py) | [retrieve_localized_policy_versions](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} | GET | retrieveSingleLocalizedPolicyVersion | [RetrieveSingleLocalizedPolicyVersion](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_single_localized_policy_version.py) | [retrieve_single_localized_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/public/localized-policy-versions/{localizedPolicyVersionId} | GET | retrieveSingleLocalizedPolicyVersion_1 | [RetrieveSingleLocalizedPolicyVersion1](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/retrieve_single_localized_policy_version_1.py) | [retrieve_single_localized_policy_version_1](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default | PATCH | setDefaultPolicy | [SetDefaultPolicy](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/set_default_policy.py) | [set_default_policy](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |
| /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} | PUT | updateLocalizedPolicyVersion | [UpdateLocalizedPolicyVersion](../accelbyte_py_sdk/api/legal/operations/localized_policy_versions/update_localized_policy_version.py) | [update_localized_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_localized_policy_versions.py) |

### Policies
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/public/policies/countries/{countryCode} | GET | retrieveLatestPolicies | [RetrieveLatestPolicies](../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policies.py) | [retrieve_latest_policies](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |
| /agreement/public/policies/namespaces/{namespace}/countries/{countryCode} | GET | retrieveLatestPoliciesByNamespaceAndCountryPublic | [RetrieveLatestPoliciesByNamespaceAndCountryPublic](../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policies_by_namespace_and_country_public.py) | [retrieve_latest_policies_by_namespace_and_country_public](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |
| /agreement/public/policies/namespaces/{namespace} | GET | retrieveLatestPoliciesPublic | [RetrieveLatestPoliciesPublic](../accelbyte_py_sdk/api/legal/operations/policies/retrieve_latest_policies_public.py) | [retrieve_latest_policies_public](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |
| /agreement/admin/policies/countries/{countryCode} | GET | retrievePolicies | [RetrievePolicies](../accelbyte_py_sdk/api/legal/operations/policies/retrieve_policies.py) | [retrieve_policies](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |
| /agreement/admin/policies/{policyId}/default | PATCH | setDefaultPolicy_1 | [SetDefaultPolicy1](../accelbyte_py_sdk/api/legal/operations/policies/set_default_policy_1.py) | [set_default_policy_1](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |
| /agreement/admin/policies/{policyId} | PATCH | updatePolicy | [UpdatePolicy](../accelbyte_py_sdk/api/legal/operations/policies/update_policy.py) | [update_policy](../accelbyte_py_sdk/api/legal/wrappers/_policies.py) |

### Policy Versions
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/admin/policies/{policyId}/versions | POST | createPolicyVersion | [CreatePolicyVersion](../accelbyte_py_sdk/api/legal/operations/policy_versions/create_policy_version.py) | [create_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) |
| /agreement/admin/policies/versions/{policyVersionId}/latest | PATCH | publishPolicyVersion | [PublishPolicyVersion](../accelbyte_py_sdk/api/legal/operations/policy_versions/publish_policy_version.py) | [publish_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) |
| /agreement/public/policies | GET | retrievePolicyVersions | [RetrievePolicyVersions](../accelbyte_py_sdk/api/legal/operations/policy_versions/retrieve_policy_versions.py) | [retrieve_policy_versions](../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) |
| /agreement/admin/policies/{policyId}/versions | GET | retrieveSinglePolicyVersion | [RetrieveSinglePolicyVersion](../accelbyte_py_sdk/api/legal/operations/policy_versions/retrieve_single_policy_version.py) | [retrieve_single_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) |
| /agreement/admin/policies/versions/{policyVersionId} | PATCH | updatePolicyVersion | [UpdatePolicyVersion](../accelbyte_py_sdk/api/legal/operations/policy_versions/update_policy_version.py) | [update_policy_version](../accelbyte_py_sdk/api/legal/wrappers/_policy_versions.py) |

### UserInfo
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/admin/userInfo | GET | getUserInfoStatus | [GetUserInfoStatus](../accelbyte_py_sdk/api/legal/operations/user_info/get_user_info_status.py) | [get_user_info_status](../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) |
| /agreement/admin/userInfo | DELETE | invalidateUserInfoCache | [InvalidateUserInfoCache](../accelbyte_py_sdk/api/legal/operations/user_info/invalidate_user_info_cache.py) | [invalidate_user_info_cache](../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) |
| /agreement/admin/userInfo | PUT | syncUserInfo | [SyncUserInfo](../accelbyte_py_sdk/api/legal/operations/user_info/sync_user_info.py) | [sync_user_info](../accelbyte_py_sdk/api/legal/wrappers/_user_info.py) |

### Utility
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /agreement/public/readiness | GET | checkReadiness | [CheckReadiness](../accelbyte_py_sdk/api/legal/operations/utility/check_readiness.py) | [check_readiness](../accelbyte_py_sdk/api/legal/wrappers/_utility.py) |


## Models
| Model | Class |
|---|---|
| AcceptAgreementRequest | [AcceptAgreementRequest](../accelbyte_py_sdk/api/legal/models/accept_agreement_request.py) |
| AcceptAgreementResponse | [AcceptAgreementResponse](../accelbyte_py_sdk/api/legal/models/accept_agreement_response.py) |
| CreateBasePolicyRequest | [CreateBasePolicyRequest](../accelbyte_py_sdk/api/legal/models/create_base_policy_request.py) |
| CreateBasePolicyResponse | [CreateBasePolicyResponse](../accelbyte_py_sdk/api/legal/models/create_base_policy_response.py) |
| CreateLocalizedPolicyVersionRequest | [CreateLocalizedPolicyVersionRequest](../accelbyte_py_sdk/api/legal/models/create_localized_policy_version_request.py) |
| CreateLocalizedPolicyVersionResponse | [CreateLocalizedPolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/create_localized_policy_version_response.py) |
| CreatePolicyVersionRequest | [CreatePolicyVersionRequest](../accelbyte_py_sdk/api/legal/models/create_policy_version_request.py) |
| CreatePolicyVersionResponse | [CreatePolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/create_policy_version_response.py) |
| ErrorEntity | [ErrorEntity](../accelbyte_py_sdk/api/legal/models/error_entity.py) |
| FieldValidationError | [FieldValidationError](../accelbyte_py_sdk/api/legal/models/field_validation_error.py) |
| LegalReadinessStatusResponse | [LegalReadinessStatusResponse](../accelbyte_py_sdk/api/legal/models/legal_readiness_status_response.py) |
| LocalizedPolicyVersionObject | [LocalizedPolicyVersionObject](../accelbyte_py_sdk/api/legal/models/localized_policy_version_object.py) |
| PagedRetrieveUserAcceptedAgreementResponse | [PagedRetrieveUserAcceptedAgreementResponse](../accelbyte_py_sdk/api/legal/models/paged_retrieve_user_accepted_agreement_response.py) |
| Paging | [Paging](../accelbyte_py_sdk/api/legal/models/paging.py) |
| PolicyObject | [PolicyObject](../accelbyte_py_sdk/api/legal/models/policy_object.py) |
| PolicyVersionObject | [PolicyVersionObject](../accelbyte_py_sdk/api/legal/models/policy_version_object.py) |
| PolicyVersionWithLocalizedVersionObject | [PolicyVersionWithLocalizedVersionObject](../accelbyte_py_sdk/api/legal/models/policy_version_with_localized_version_object.py) |
| RetrieveAcceptedAgreementResponse | [RetrieveAcceptedAgreementResponse](../accelbyte_py_sdk/api/legal/models/retrieve_accepted_agreement_response.py) |
| RetrieveBasePolicyResponse | [RetrieveBasePolicyResponse](../accelbyte_py_sdk/api/legal/models/retrieve_base_policy_response.py) |
| RetrieveLocalizedPolicyVersionPublicResponse | [RetrieveLocalizedPolicyVersionPublicResponse](../accelbyte_py_sdk/api/legal/models/retrieve_localized_policy_version_public_response.py) |
| RetrieveLocalizedPolicyVersionResponse | [RetrieveLocalizedPolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/retrieve_localized_policy_version_response.py) |
| RetrievePolicyPublicResponse | [RetrievePolicyPublicResponse](../accelbyte_py_sdk/api/legal/models/retrieve_policy_public_response.py) |
| RetrievePolicyResponse | [RetrievePolicyResponse](../accelbyte_py_sdk/api/legal/models/retrieve_policy_response.py) |
| RetrievePolicyTypeResponse | [RetrievePolicyTypeResponse](../accelbyte_py_sdk/api/legal/models/retrieve_policy_type_response.py) |
| RetrievePolicyVersionResponse | [RetrievePolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/retrieve_policy_version_response.py) |
| RetrieveUserAcceptedAgreementResponse | [RetrieveUserAcceptedAgreementResponse](../accelbyte_py_sdk/api/legal/models/retrieve_user_accepted_agreement_response.py) |
| RetrieveUserEligibilitiesIndirectResponse | [RetrieveUserEligibilitiesIndirectResponse](../accelbyte_py_sdk/api/legal/models/retrieve_user_eligibilities_indirect_response.py) |
| RetrieveUserEligibilitiesResponse | [RetrieveUserEligibilitiesResponse](../accelbyte_py_sdk/api/legal/models/retrieve_user_eligibilities_response.py) |
| RetrieveUserInfoCacheStatusResponse | [RetrieveUserInfoCacheStatusResponse](../accelbyte_py_sdk/api/legal/models/retrieve_user_info_cache_status_response.py) |
| UpdateBasePolicyRequest | [UpdateBasePolicyRequest](../accelbyte_py_sdk/api/legal/models/update_base_policy_request.py) |
| UpdateBasePolicyResponse | [UpdateBasePolicyResponse](../accelbyte_py_sdk/api/legal/models/update_base_policy_response.py) |
| UpdateLocalizedPolicyVersionRequest | [UpdateLocalizedPolicyVersionRequest](../accelbyte_py_sdk/api/legal/models/update_localized_policy_version_request.py) |
| UpdateLocalizedPolicyVersionResponse | [UpdateLocalizedPolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/update_localized_policy_version_response.py) |
| UpdatePolicyRequest | [UpdatePolicyRequest](../accelbyte_py_sdk/api/legal/models/update_policy_request.py) |
| UpdatePolicyVersionRequest | [UpdatePolicyVersionRequest](../accelbyte_py_sdk/api/legal/models/update_policy_version_request.py) |
| UpdatePolicyVersionResponse | [UpdatePolicyVersionResponse](../accelbyte_py_sdk/api/legal/models/update_policy_version_response.py) |
| UploadLocalizedPolicyVersionAttachmentResponse | [UploadLocalizedPolicyVersionAttachmentResponse](../accelbyte_py_sdk/api/legal/models/upload_localized_policy_version_attachment_response.py) |
| UploadPolicyVersionAttachmentRequest | [UploadPolicyVersionAttachmentRequest](../accelbyte_py_sdk/api/legal/models/upload_policy_version_attachment_request.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../accelbyte_py_sdk/api/legal/models/validation_error_entity.py) |
