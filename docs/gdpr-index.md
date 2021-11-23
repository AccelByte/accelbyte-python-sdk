# justice-gdpr-service Index (1.11.1)


## Operations

### Data Deletion
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions | DELETE | AdminCancelUserAccountDeletionRequest | [AdminCancelUserAccountDeletionRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/admin_cancel_user_account_deletion_request.py) | [admin_cancel_user_account_deletion_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/admin/namespaces/{namespace}/deletions | GET | AdminGetListDeletionDataRequest | [AdminGetListDeletionDataRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/admin_get_list_deletion_data_request.py) | [admin_get_list_deletion_data_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions | GET | AdminGetUserAccountDeletionRequest | [AdminGetUserAccountDeletionRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/admin_get_user_account_deletion_request.py) | [admin_get_user_account_deletion_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/admin/namespaces/{namespace}/users/{userId}/deletions | POST | AdminSubmitUserAccountDeletionRequest | [AdminSubmitUserAccountDeletionRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/admin_submit_user_account_deletion_request.py) | [admin_submit_user_account_deletion_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/deletions | DELETE | PublicCancelUserAccountDeletionRequest | [PublicCancelUserAccountDeletionRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/public_cancel_user_account_deletion_request.py) | [public_cancel_user_account_deletion_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status | GET | PublicGetUserAccountDeletionStatus | [PublicGetUserAccountDeletionStatus](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/public_get_user_account_deletion_status.py) | [public_get_user_account_deletion_status](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/deletions | POST | PublicSubmitUserAccountDeletionRequest | [PublicSubmitUserAccountDeletionRequest](../accelbyte_py_sdk/api/gdpr/operations/data_deletion/public_submit_user_account_deletion_request.py) | [public_submit_user_account_deletion_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_deletion.py) |

### Data Retrieval
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate} | DELETE | AdminCancelUserPersonalDataRequest | [AdminCancelUserPersonalDataRequest](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/admin_cancel_user_personal_data_request.py) | [admin_cancel_user_personal_data_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate | POST | AdminGeneratePersonalDataURL | [AdminGeneratePersonalDataURL](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/admin_generate_personal_data_url.py) | [admin_generate_personal_data_url](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/requests | GET | AdminGetListPersonalDataRequest | [AdminGetListPersonalDataRequest](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/admin_get_list_personal_data_request.py) | [admin_get_list_personal_data_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/users/{userId}/requests | GET | AdminGetUserPersonalDataRequests | [AdminGetUserPersonalDataRequests](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/admin_get_user_personal_data_requests.py) | [admin_get_user_personal_data_requests](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/users/{userId}/requests | POST | AdminRequestDataRetrieval | [AdminRequestDataRetrieval](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/admin_request_data_retrieval.py) | [admin_request_data_retrieval](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/emails/configurations | DELETE | DeleteAdminEmailConfiguration | [DeleteAdminEmailConfiguration](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/delete_admin_email_configuration.py) | [delete_admin_email_configuration](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/emails/configurations | GET | GetAdminEmailConfiguration | [GetAdminEmailConfiguration](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/get_admin_email_configuration.py) | [get_admin_email_configuration](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate} | DELETE | PublicCancelUserPersonalDataRequest | [PublicCancelUserPersonalDataRequest](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/public_cancel_user_personal_data_request.py) | [public_cancel_user_personal_data_request](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate | POST | PublicGeneratePersonalDataURL | [PublicGeneratePersonalDataURL](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/public_generate_personal_data_url.py) | [public_generate_personal_data_url](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/requests | GET | PublicGetUserPersonalDataRequests | [PublicGetUserPersonalDataRequests](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/public_get_user_personal_data_requests.py) | [public_get_user_personal_data_requests](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/public/namespaces/{namespace}/users/{userId}/requests | POST | PublicRequestDataRetrieval | [PublicRequestDataRetrieval](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/public_request_data_retrieval.py) | [public_request_data_retrieval](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/emails/configurations | POST | SaveAdminEmailConfiguration | [SaveAdminEmailConfiguration](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/save_admin_email_configuration.py) | [save_admin_email_configuration](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |
| /gdpr/admin/namespaces/{namespace}/emails/configurations | PUT | UpdateAdminEmailConfiguration | [UpdateAdminEmailConfiguration](../accelbyte_py_sdk/api/gdpr/operations/data_retrieval/update_admin_email_configuration.py) | [update_admin_email_configuration](../accelbyte_py_sdk/api/gdpr/wrappers/_data_retrieval.py) |


## Models
| Model | Class |
|---|---|
| models.DataRetrievalResponse | [ModelsDataRetrievalResponse](../accelbyte_py_sdk/api/gdpr/models/models_data_retrieval_response.py) |
| models.DeletionData | [ModelsDeletionData](../accelbyte_py_sdk/api/gdpr/models/models_deletion_data.py) |
| models.DeletionStatus | [ModelsDeletionStatus](../accelbyte_py_sdk/api/gdpr/models/models_deletion_status.py) |
| models.ListDeletionDataResponse | [ModelsListDeletionDataResponse](../accelbyte_py_sdk/api/gdpr/models/models_list_deletion_data_response.py) |
| models.ListPersonalDataResponse | [ModelsListPersonalDataResponse](../accelbyte_py_sdk/api/gdpr/models/models_list_personal_data_response.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/gdpr/models/models_pagination.py) |
| models.PersonalData | [ModelsPersonalData](../accelbyte_py_sdk/api/gdpr/models/models_personal_data.py) |
| models.RequestDeleteResponse | [ModelsRequestDeleteResponse](../accelbyte_py_sdk/api/gdpr/models/models_request_delete_response.py) |
| models.UserDataURL | [ModelsUserDataURL](../accelbyte_py_sdk/api/gdpr/models/models_user_data_url.py) |
| models.UserPersonalData | [ModelsUserPersonalData](../accelbyte_py_sdk/api/gdpr/models/models_user_personal_data.py) |
| models.UserPersonalDataResponse | [ModelsUserPersonalDataResponse](../accelbyte_py_sdk/api/gdpr/models/models_user_personal_data_response.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/gdpr/models/response_error.py) |