[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-basic-service Index (1.29.0)


## Operations

### Anonymization
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles | DELETE | anonymizeUserProfile | [AnonymizeUserProfile](../accelbyte_py_sdk/api/basic/operations/anonymization/anonymize_user_profile.py) | [anonymize_user_profile](../accelbyte_py_sdk/api/basic/wrappers/_anonymization.py) |

### EQU8Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/equ8/config | DELETE | deleteConfig | [DeleteConfig](../accelbyte_py_sdk/api/basic/operations/equ8_config/delete_config.py) | [delete_config](../accelbyte_py_sdk/api/basic/wrappers/_equ8_config.py) |
| /basic/v1/admin/namespaces/{namespace}/equ8/config | GET | getConfig | [GetConfig](../accelbyte_py_sdk/api/basic/operations/equ8_config/get_config.py) | [get_config](../accelbyte_py_sdk/api/basic/wrappers/_equ8_config.py) |
| /basic/v1/admin/namespaces/{namespace}/equ8/config | PATCH | updateConfig | [UpdateConfig](../accelbyte_py_sdk/api/basic/operations/equ8_config/update_config.py) | [update_config](../accelbyte_py_sdk/api/basic/wrappers/_equ8_config.py) |

### FileUpload
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/folders/{folder}/files | POST | generatedUploadUrl | [GeneratedUploadUrl](../accelbyte_py_sdk/api/basic/operations/file_upload/generated_upload_url.py) | [generated_upload_url](../accelbyte_py_sdk/api/basic/wrappers/_file_upload.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/files | POST | generatedUserUploadContentUrl | [GeneratedUserUploadContentUrl](../accelbyte_py_sdk/api/basic/operations/file_upload/generated_user_upload_content_url.py) | [generated_user_upload_content_url](../accelbyte_py_sdk/api/basic/wrappers/_file_upload.py) |
| /basic/v1/public/namespaces/{namespace}/folders/{folder}/files | POST | publicGeneratedUploadUrl | [PublicGeneratedUploadUrl](../accelbyte_py_sdk/api/basic/operations/file_upload/public_generated_upload_url.py) | [public_generated_upload_url](../accelbyte_py_sdk/api/basic/wrappers/_file_upload.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/files | POST | publicGeneratedUserUploadContentUrl | [PublicGeneratedUserUploadContentUrl](../accelbyte_py_sdk/api/basic/operations/file_upload/public_generated_user_upload_content_url.py) | [public_generated_user_upload_content_url](../accelbyte_py_sdk/api/basic/wrappers/_file_upload.py) |

### Misc
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/misc/countrygroups | POST | addCountryGroup | [AddCountryGroup](../accelbyte_py_sdk/api/basic/operations/misc/add_country_group.py) | [add_country_group](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode} | DELETE | deleteCountryGroup | [DeleteCountryGroup](../accelbyte_py_sdk/api/basic/operations/misc/delete_country_group.py) | [delete_country_group](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/countries | GET | getCountries | [GetCountries](../accelbyte_py_sdk/api/basic/operations/misc/get_countries.py) | [get_countries](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/countrygroups | GET | getCountryGroups | [GetCountryGroups](../accelbyte_py_sdk/api/basic/operations/misc/get_country_groups.py) | [get_country_groups](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/languages | GET | getLanguages | [GetLanguages](../accelbyte_py_sdk/api/basic/operations/misc/get_languages.py) | [get_languages](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/timezones | GET | getTimeZones | [GetTimeZones](../accelbyte_py_sdk/api/basic/operations/misc/get_time_zones.py) | [get_time_zones](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/public/namespaces/{namespace}/misc/countries | GET | publicGetCountries | [PublicGetCountries](../accelbyte_py_sdk/api/basic/operations/misc/public_get_countries.py) | [public_get_countries](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/public/namespaces/{namespace}/misc/languages | GET | publicGetLanguages | [PublicGetLanguages](../accelbyte_py_sdk/api/basic/operations/misc/public_get_languages.py) | [public_get_languages](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/public/misc/time | GET | publicGetTime | [PublicGetTime](../accelbyte_py_sdk/api/basic/operations/misc/public_get_time.py) | [public_get_time](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/public/namespaces/{namespace}/misc/timezones | GET | publicGetTimeZones | [PublicGetTimeZones](../accelbyte_py_sdk/api/basic/operations/misc/public_get_time_zones.py) | [public_get_time_zones](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |
| /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode} | PUT | updateCountryGroup | [UpdateCountryGroup](../accelbyte_py_sdk/api/basic/operations/misc/update_country_group.py) | [update_country_group](../accelbyte_py_sdk/api/basic/wrappers/_misc.py) |

### Namespace
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/status | PATCH | changeNamespaceStatus | [ChangeNamespaceStatus](../accelbyte_py_sdk/api/basic/operations/namespace/change_namespace_status.py) | [change_namespace_status](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces | POST | createNamespace | [CreateNamespace](../accelbyte_py_sdk/api/basic/operations/namespace/create_namespace.py) | [create_namespace](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces/{namespace} | DELETE | deleteNamespace | [DeleteNamespace](../accelbyte_py_sdk/api/basic/operations/namespace/delete_namespace.py) | [delete_namespace](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces/{namespace} | GET | getNamespace | [GetNamespace](../accelbyte_py_sdk/api/basic/operations/namespace/get_namespace.py) | [get_namespace](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces/{namespace}/publisher | GET | getNamespacePublisher | [GetNamespacePublisher](../accelbyte_py_sdk/api/basic/operations/namespace/get_namespace_publisher.py) | [get_namespace_publisher](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces | GET | getNamespaces | [GetNamespaces](../accelbyte_py_sdk/api/basic/operations/namespace/get_namespaces.py) | [get_namespaces](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/public/namespaces/{namespace}/publisher | GET | publicGetNamespacePublisher | [PublicGetNamespacePublisher](../accelbyte_py_sdk/api/basic/operations/namespace/public_get_namespace_publisher.py) | [public_get_namespace_publisher](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/public/namespaces | GET | publicGetNamespaces | [PublicGetNamespaces](../accelbyte_py_sdk/api/basic/operations/namespace/public_get_namespaces.py) | [public_get_namespaces](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |
| /basic/v1/admin/namespaces/{namespace}/basic | PATCH | updateNamespace | [UpdateNamespace](../accelbyte_py_sdk/api/basic/operations/namespace/update_namespace.py) | [update_namespace](../accelbyte_py_sdk/api/basic/wrappers/_namespace.py) |

### UserAction
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/actions/ban | POST | banUsers | [BanUsers](../accelbyte_py_sdk/api/basic/operations/user_action/ban_users.py) | [ban_users](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/admin/namespaces/{namespace}/actions | GET | getActions | [GetActions](../accelbyte_py_sdk/api/basic/operations/user_action/get_actions.py) | [get_actions](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/admin/namespaces/{namespace}/actions/banned | GET | getBannedUsers | [GetBannedUsers](../accelbyte_py_sdk/api/basic/operations/user_action/get_banned_users.py) | [get_banned_users](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/admin/namespaces/{namespace}/actions/status | GET | getUserStatus | [GetUserStatus](../accelbyte_py_sdk/api/basic/operations/user_action/get_user_status.py) | [get_user_status](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/actions/report | POST | publicReportUser | [PublicReportUser](../accelbyte_py_sdk/api/basic/operations/user_action/public_report_user.py) | [public_report_user](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/admin/namespaces/{namespace}/actions/report | POST | reportUser | [ReportUser](../accelbyte_py_sdk/api/basic/operations/user_action/report_user.py) | [report_user](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |
| /basic/v1/admin/namespaces/{namespace}/actions/unban | POST | unBanUsers | [UnBanUsers](../accelbyte_py_sdk/api/basic/operations/user_action/un_ban_users.py) | [un_ban_users](../accelbyte_py_sdk/api/basic/wrappers/_user_action.py) |

### UserProfile
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /basic/v1/admin/namespaces/{namespace}/profiles/public | POST | adminGetUserProfilePublicInfoByIds | [AdminGetUserProfilePublicInfoByIds](../accelbyte_py_sdk/api/basic/operations/user_profile/admin_get_user_profile_public_info_by_ids.py) | [admin_get_user_profile_public_info_by_ids](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/me/profiles | POST | createMyProfile | [CreateMyProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/create_my_profile.py) | [create_my_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles | DELETE | deleteUserProfile | [DeleteUserProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/delete_user_profile.py) | [delete_user_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes | GET | getCustomAttributesInfo | [GetCustomAttributesInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/get_custom_attributes_info.py) | [get_custom_attributes_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/me/profiles | GET | getMyProfileInfo | [GetMyProfileInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/get_my_profile_info.py) | [get_my_profile_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode | GET | getMyZipCode | [GetMyZipCode](../accelbyte_py_sdk/api/basic/operations/user_profile/get_my_zip_code.py) | [get_my_zip_code](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes | GET | getPrivateCustomAttributesInfo | [GetPrivateCustomAttributesInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/get_private_custom_attributes_info.py) | [get_private_custom_attributes_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles | GET | getUserProfileInfo | [GetUserProfileInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/get_user_profile_info.py) | [get_user_profile_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles | POST | publicCreateUserProfile | [PublicCreateUserProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/public_create_user_profile.py) | [public_create_user_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes | GET | publicGetCustomAttributesInfo | [PublicGetCustomAttributesInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/public_get_custom_attributes_info.py) | [public_get_custom_attributes_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles | GET | publicGetUserProfileInfo | [PublicGetUserProfileInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/public_get_user_profile_info.py) | [public_get_user_profile_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public | GET | publicGetUserProfilePublicInfo | [PublicGetUserProfilePublicInfo](../accelbyte_py_sdk/api/basic/operations/user_profile/public_get_user_profile_public_info.py) | [public_get_user_profile_public_info](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/profiles/public | GET | publicGetUserProfilePublicInfoByIds | [PublicGetUserProfilePublicInfoByIds](../accelbyte_py_sdk/api/basic/operations/user_profile/public_get_user_profile_public_info_by_ids.py) | [public_get_user_profile_public_info_by_ids](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes | PUT | publicUpdateCustomAttributesPartially | [PublicUpdateCustomAttributesPartially](../accelbyte_py_sdk/api/basic/operations/user_profile/public_update_custom_attributes_partially.py) | [public_update_custom_attributes_partially](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles | PUT | publicUpdateUserProfile | [PublicUpdateUserProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/public_update_user_profile.py) | [public_update_user_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status | PATCH | publicUpdateUserProfileStatus | [PublicUpdateUserProfileStatus](../accelbyte_py_sdk/api/basic/operations/user_profile/public_update_user_profile_status.py) | [public_update_user_profile_status](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes | PUT | updateCustomAttributesPartially | [UpdateCustomAttributesPartially](../accelbyte_py_sdk/api/basic/operations/user_profile/update_custom_attributes_partially.py) | [update_custom_attributes_partially](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/me/profiles | PUT | updateMyProfile | [UpdateMyProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/update_my_profile.py) | [update_my_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode | PATCH | updateMyZipCode | [UpdateMyZipCode](../accelbyte_py_sdk/api/basic/operations/user_profile/update_my_zip_code.py) | [update_my_zip_code](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes | PUT | updatePrivateCustomAttributesPartially | [UpdatePrivateCustomAttributesPartially](../accelbyte_py_sdk/api/basic/operations/user_profile/update_private_custom_attributes_partially.py) | [update_private_custom_attributes_partially](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles | PUT | updateUserProfile | [UpdateUserProfile](../accelbyte_py_sdk/api/basic/operations/user_profile/update_user_profile.py) | [update_user_profile](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |
| /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status | PATCH | updateUserProfileStatus | [UpdateUserProfileStatus](../accelbyte_py_sdk/api/basic/operations/user_profile/update_user_profile_status.py) | [update_user_profile_status](../accelbyte_py_sdk/api/basic/wrappers/_user_profile.py) |


## Models
| Model | Class |
|---|---|
| A DTO for unban user API call. | [ADTOForUnbanUserAPICall](../accelbyte_py_sdk/api/basic/models/a_dto_for_unban_user_api_call.py) |
| A DTO for update equ8 config API call. | [ADTOForUpdateEqu8ConfigAPICall](../accelbyte_py_sdk/api/basic/models/a_dto_for_update_equ8_config_api_call.py) |
| A DTO object for equ8 user ban status | [ADTOObjectForEqu8UserBanStatus](../accelbyte_py_sdk/api/basic/models/a_dto_object_for_equ8_user_ban_status.py) |
| A DTO object for equ8 user status | [ADTOObjectForEqu8UserStatus](../accelbyte_py_sdk/api/basic/models/a_dto_object_for_equ8_user_status.py) |
| Action | [Action](../accelbyte_py_sdk/api/basic/models/action.py) |
| AddCountryGroupRequest | [AddCountryGroupRequest](../accelbyte_py_sdk/api/basic/models/add_country_group_request.py) |
| AddCountryGroupResponse | [AddCountryGroupResponse](../accelbyte_py_sdk/api/basic/models/add_country_group_response.py) |
| CountryGroupObject | [CountryGroupObject](../accelbyte_py_sdk/api/basic/models/country_group_object.py) |
| CountryObject | [CountryObject](../accelbyte_py_sdk/api/basic/models/country_object.py) |
| Equ8Config | [Equ8Config](../accelbyte_py_sdk/api/basic/models/equ8_config.py) |
| ErrorEntity | [ErrorEntity](../accelbyte_py_sdk/api/basic/models/error_entity.py) |
| FieldValidationError | [FieldValidationError](../accelbyte_py_sdk/api/basic/models/field_validation_error.py) |
| FileUploadUrlInfo | [FileUploadUrlInfo](../accelbyte_py_sdk/api/basic/models/file_upload_url_info.py) |
| NamespaceCreate | [NamespaceCreate](../accelbyte_py_sdk/api/basic/models/namespace_create.py) |
| NamespaceInfo | [NamespaceInfo](../accelbyte_py_sdk/api/basic/models/namespace_info.py) |
| NamespacePublisherInfo | [NamespacePublisherInfo](../accelbyte_py_sdk/api/basic/models/namespace_publisher_info.py) |
| NamespaceStatusUpdate | [NamespaceStatusUpdate](../accelbyte_py_sdk/api/basic/models/namespace_status_update.py) |
| NamespaceUpdate | [NamespaceUpdate](../accelbyte_py_sdk/api/basic/models/namespace_update.py) |
| RetrieveCountryGroupResponse | [RetrieveCountryGroupResponse](../accelbyte_py_sdk/api/basic/models/retrieve_country_group_response.py) |
| RetrieveTimeResponse | [RetrieveTimeResponse](../accelbyte_py_sdk/api/basic/models/retrieve_time_response.py) |
| UpdateCountryGroupRequest | [UpdateCountryGroupRequest](../accelbyte_py_sdk/api/basic/models/update_country_group_request.py) |
| UserBanRequest | [UserBanRequest](../accelbyte_py_sdk/api/basic/models/user_ban_request.py) |
| UserProfileAdmin | [UserProfileAdmin](../accelbyte_py_sdk/api/basic/models/user_profile_admin.py) |
| UserProfileBulkRequest | [UserProfileBulkRequest](../accelbyte_py_sdk/api/basic/models/user_profile_bulk_request.py) |
| UserProfileCreate | [UserProfileCreate](../accelbyte_py_sdk/api/basic/models/user_profile_create.py) |
| UserProfileInfo | [UserProfileInfo](../accelbyte_py_sdk/api/basic/models/user_profile_info.py) |
| UserProfilePrivateCreate | [UserProfilePrivateCreate](../accelbyte_py_sdk/api/basic/models/user_profile_private_create.py) |
| UserProfilePrivateInfo | [UserProfilePrivateInfo](../accelbyte_py_sdk/api/basic/models/user_profile_private_info.py) |
| UserProfilePrivateUpdate | [UserProfilePrivateUpdate](../accelbyte_py_sdk/api/basic/models/user_profile_private_update.py) |
| UserProfilePublicInfo | [UserProfilePublicInfo](../accelbyte_py_sdk/api/basic/models/user_profile_public_info.py) |
| UserProfileStatusUpdate | [UserProfileStatusUpdate](../accelbyte_py_sdk/api/basic/models/user_profile_status_update.py) |
| UserProfileUpdate | [UserProfileUpdate](../accelbyte_py_sdk/api/basic/models/user_profile_update.py) |
| UserReportRequest | [UserReportRequest](../accelbyte_py_sdk/api/basic/models/user_report_request.py) |
| UserZipCode | [UserZipCode](../accelbyte_py_sdk/api/basic/models/user_zip_code.py) |
| UserZipCodeUpdate | [UserZipCodeUpdate](../accelbyte_py_sdk/api/basic/models/user_zip_code_update.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../accelbyte_py_sdk/api/basic/models/validation_error_entity.py) |
