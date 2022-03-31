# Test Results

```tap
sh/run-python-cli-achievement-unit-test.sh

TAP version 13
1..14
ok 1 AdminListAchievements
ok 2 AdminCreateNewAchievement
ok 3 ExportAchievements
ok 4 ImportAchievements
ok 5 AdminGetAchievement
ok 6 AdminUpdateAchievement
ok 7 AdminDeleteAchievement
ok 8 AdminUpdateAchievementListOrder
ok 9 AdminListUserAchievements
ok 10 AdminUnlockAchievement
ok 11 PublicListAchievements
ok 12 PublicGetAchievement
ok 13 PublicListUserAchievements
ok 14 PublicUnlockAchievement
```

```tap
sh/run-python-cli-basic-unit-test.sh

TAP version 13
1..57
ok 1 GetNamespaces
ok 2 CreateNamespace
ok 3 GetNamespace
ok 4 DeleteNamespace
ok 5 GetActions
ok 6 BanUsers
ok 7 GetBannedUsers
ok 8 ReportUser
ok 9 GetUserStatus
ok 10 UnBanUsers
ok 11 UpdateNamespace
ok 12 GetConfig
ok 13 DeleteConfig
ok 14 UpdateConfig
ok 15 GeneratedUploadUrl
ok 16 GetCountries
ok 17 GetCountryGroups
ok 18 AddCountryGroup
ok 19 UpdateCountryGroup
ok 20 DeleteCountryGroup
ok 21 GetLanguages
ok 22 GetTimeZones
ok 23 AdminGetUserProfilePublicInfoByIds
ok 24 GetNamespacePublisher
ok 25 ChangeNamespaceStatus
ok 26 AnonymizeUserProfile
ok 27 GeneratedUserUploadContentUrl
ok 28 GetUserProfileInfo
ok 29 UpdateUserProfile
ok 30 DeleteUserProfile
ok 31 GetCustomAttributesInfo
ok 32 UpdateCustomAttributesPartially
ok 33 GetPrivateCustomAttributesInfo
ok 34 UpdatePrivateCustomAttributesPartially
ok 35 UpdateUserProfileStatus
ok 36 PublicGetTime
ok 37 PublicGetNamespaces
ok 38 PublicGeneratedUploadUrl
ok 39 PublicGetCountries
ok 40 PublicGetLanguages
ok 41 PublicGetTimeZones
ok 42 PublicGetUserProfilePublicInfoByIds
ok 43 PublicGetNamespacePublisher
ok 44 GetMyProfileInfo
ok 45 UpdateMyProfile
ok 46 CreateMyProfile
ok 47 GetMyZipCode
ok 48 UpdateMyZipCode
ok 49 PublicReportUser
ok 50 PublicGeneratedUserUploadContentUrl
ok 51 PublicGetUserProfileInfo
ok 52 PublicUpdateUserProfile
ok 53 PublicCreateUserProfile
ok 54 PublicGetCustomAttributesInfo
ok 55 PublicUpdateCustomAttributesPartially
ok 56 PublicGetUserProfilePublicInfo
ok 57 PublicUpdateUserProfileStatus
```

```tap
sh/run-python-cli-cloudsave-unit-test.sh

TAP version 13
1..30
ok 1 ListGameRecordsHandlerV1
ok 2 AdminGetGameRecordHandlerV1
ok 3 AdminPutGameRecordHandlerV1
ok 4 AdminPostGameRecordHandlerV1
ok 5 AdminDeleteGameRecordHandlerV1
ok 6 ListPlayerRecordHandlerV1 (skipped deprecated)
ok 7 AdminRetrievePlayerRecords
ok 8 AdminGetPlayerRecordHandlerV1
ok 9 AdminPutPlayerRecordHandlerV1
ok 10 AdminPostPlayerRecordHandlerV1
ok 11 AdminDeletePlayerRecordHandlerV1
ok 12 AdminGetPlayerPublicRecordHandlerV1
ok 13 AdminPutPlayerPublicRecordHandlerV1
ok 14 AdminPostPlayerPublicRecordHandlerV1
ok 15 AdminDeletePlayerPublicRecordHandlerV1
ok 16 PutGameRecordConcurrentHandlerV1
ok 17 GetGameRecordHandlerV1
ok 18 PutGameRecordHandlerV1
ok 19 PostGameRecordHandlerV1
ok 20 DeleteGameRecordHandlerV1
ok 21 BulkGetPlayerPublicRecordHandlerV1
ok 22 PublicDeletePlayerPublicRecordHandlerV1
ok 23 PutPlayerPublicRecordConcurrentHandlerV1
ok 24 GetPlayerRecordHandlerV1
ok 25 PutPlayerRecordHandlerV1
ok 26 PostPlayerRecordHandlerV1
ok 27 DeletePlayerRecordHandlerV1
ok 28 GetPlayerPublicRecordHandlerV1
ok 29 PutPlayerPublicRecordHandlerV1
ok 30 PostPlayerPublicRecordHandlerV1
```

```tap
sh/run-python-cli-dslogmanager-unit-test.sh

TAP version 13
1..6
ok 1 ListTerminatedServers
ok 2 DownloadServerLogs
ok 3 CheckServerLogs
ok 4 BatchDownloadServerLogs
ok 5 ListAllTerminatedServers
ok 6 PublicGetMessages
```

```tap
sh/run-python-cli-dsmc-unit-test.sh

TAP version 13
1..67
ok 1 ListConfig
ok 2 SaveConfig (skipped deprecated)
ok 3 UpdateImage
ok 4 CreateImage
ok 5 ImportImages
ok 6 CreateImagePatch
ok 7 GetConfig
ok 8 CreateConfig
ok 9 DeleteConfig
ok 10 UpdateConfig
ok 11 ClearCache
ok 12 GetAllDeployment
ok 13 GetDeployment
ok 14 CreateDeployment
ok 15 DeleteDeployment
ok 16 UpdateDeployment
ok 17 CreateRootRegionOverride
ok 18 DeleteRootRegionOverride
ok 19 UpdateRootRegionOverride
ok 20 CreateDeploymentOverride
ok 21 DeleteDeploymentOverride
ok 22 UpdateDeploymentOverride
ok 23 CreateOverrideRegionOverride
ok 24 DeleteOverrideRegionOverride
ok 25 UpdateOverrideRegionOverride
ok 26 GetAllPodConfig
ok 27 GetPodConfig
ok 28 CreatePodConfig
ok 29 DeletePodConfig
ok 30 UpdatePodConfig
ok 31 AddPort
ok 32 DeletePort
ok 33 UpdatePort
ok 34 ListImages
ok 35 DeleteImage
ok 36 ExportImages
ok 37 GetImageLimit
ok 38 DeleteImagePatch
ok 39 GetImageDetail
ok 40 GetImagePatches
ok 41 GetImagePatchDetail
ok 42 ListServer
ok 43 CountServer
ok 44 CountServerDetailed
ok 45 ListLocalServer
ok 46 DeleteLocalServer
ok 47 GetServer
ok 48 DeleteServer
ok 49 GetServerLogs
ok 50 ListSession
ok 51 CountSession
ok 52 DeleteSession
ok 53 ExportConfigV1
ok 54 ImportConfigV1
ok 55 ImageDetailClient
ok 56 DeregisterLocalServer
ok 57 RegisterLocalServer
ok 58 RegisterServer
ok 59 ShutdownServer
ok 60 GetServerSession
ok 61 CreateSession
ok 62 ClaimServer
ok 63 GetSession
ok 64 GetDefaultProvider
ok 65 ListProviders
ok 66 ListProvidersByRegion
ok 67 PublicGetMessages
```

```tap
sh/run-python-cli-eventlog-unit-test.sh

TAP version 13
1..32
ok 1 AgentTypeDescriptionHandler (skipped deprecated)
ok 2 SpecificAgentTypeDescriptionHandler (skipped deprecated)
ok 3 EventIDDescriptionHandler (skipped deprecated)
ok 4 SpecificEventIDDescriptionHandler (skipped deprecated)
ok 5 EventLevelDescriptionHandler (skipped deprecated)
ok 6 SpecificEventLevelDescriptionHandler (skipped deprecated)
ok 7 EventTypeDescriptionHandler (skipped deprecated)
ok 8 SpecificEventTypeDescriptionHandler (skipped deprecated)
ok 9 UXNameDescriptionHandler (skipped deprecated)
ok 10 SpecificUXDescriptionHandler (skipped deprecated)
ok 11 GetEventByNamespaceHandler (skipped deprecated)
ok 12 PostEventHandler (skipped deprecated)
ok 13 GetEventByEventIDHandler (skipped deprecated)
ok 14 GetEventByEventTypeHandler (skipped deprecated)
ok 15 GetEventByEventTypeAndEventIDHandler (skipped deprecated)
ok 16 GetEventByUserIDHandler (skipped deprecated)
ok 17 GetUserActivitiesHandler (skipped deprecated)
ok 18 DeleteUserActivitiesHandler (skipped deprecated)
ok 19 GetEventByUserIDAndEventIDHandler (skipped deprecated)
ok 20 GetEventByUserIDAndEventTypeHandler (skipped deprecated)
ok 21 GetEventByUserEventIDAndEventTypeHandler (skipped deprecated)
ok 22 LastUserActivityTimeHandler (skipped deprecated)
ok 23 GetRegisteredEventsHandler (skipped deprecated)
ok 24 RegisterEventHandler (skipped deprecated)
ok 25 GetRegisteredEventIDHandler (skipped deprecated)
ok 26 UpdateEventRegistryHandler (skipped deprecated)
ok 27 UnregisterEventIDHandler (skipped deprecated)
ok 28 GetRegisteredEventsByEventTypeHandler (skipped deprecated)
ok 29 QueryEventStreamHandler
ok 30 GetEventSpecificUserV2Handler
ok 31 GetPublicEditHistory
ok 32 GetUserEventsV2Public
```

```tap
sh/run-python-cli-gametelemetry-unit-test.sh

TAP version 13
1..3
ok 1 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
ok 2 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
ok 3 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
```

```tap
sh/run-python-cli-gdpr-unit-test.sh

TAP version 13
1..20
ok 1 AdminGetListDeletionDataRequest
ok 2 GetAdminEmailConfiguration
ok 3 UpdateAdminEmailConfiguration
ok 4 SaveAdminEmailConfiguration
ok 5 DeleteAdminEmailConfiguration
ok 6 AdminGetListPersonalDataRequest
ok 7 AdminGetUserAccountDeletionRequest
ok 8 AdminSubmitUserAccountDeletionRequest
ok 9 AdminCancelUserAccountDeletionRequest
ok 10 AdminGetUserPersonalDataRequests
ok 11 AdminRequestDataRetrieval
ok 12 AdminCancelUserPersonalDataRequest
ok 13 AdminGeneratePersonalDataURL
ok 14 PublicSubmitUserAccountDeletionRequest
ok 15 PublicCancelUserAccountDeletionRequest
ok 16 PublicGetUserAccountDeletionStatus
ok 17 PublicGetUserPersonalDataRequests
ok 18 PublicRequestDataRetrieval
ok 19 PublicCancelUserPersonalDataRequest
ok 20 PublicGeneratePersonalDataURL
```

```tap
sh/run-python-cli-group-unit-test.sh

TAP version 13
1..44
ok 1 ListGroupConfigurationAdminV1
ok 2 CreateGroupConfigurationAdminV1
ok 3 InitiateGroupConfigurationAdminV1
ok 4 GetGroupConfigurationAdminV1
ok 5 DeleteGroupConfigurationV1
ok 6 UpdateGroupConfigurationAdminV1
ok 7 UpdateGroupConfigurationGlobalRuleAdminV1
ok 8 DeleteGroupConfigurationGlobalRuleAdminV1
ok 9 GetGroupListAdminV1
ok 10 GetSingleGroupAdminV1
ok 11 DeleteGroupAdminV1
ok 12 GetGroupMembersListAdminV1
ok 13 GetMemberRolesListAdminV1
ok 14 CreateMemberRoleAdminV1
ok 15 GetSingleMemberRoleAdminV1
ok 16 DeleteMemberRoleAdminV1
ok 17 UpdateMemberRoleAdminV1
ok 18 UpdateMemberRolePermissionAdminV1
ok 19 GetGroupListPublicV1
ok 20 CreateNewGroupPublicV1
ok 21 GetSingleGroupPublicV1
ok 22 UpdateSingleGroupV1
ok 23 DeleteGroupPublicV1
ok 24 UpdatePatchSingleGroupPublicV1
ok 25 UpdateGroupCustomAttributesPublicV1
ok 26 AcceptGroupInvitationPublicV1
ok 27 RejectGroupInvitationPublicV1
ok 28 JoinGroupV1
ok 29 CancelGroupJoinRequestV1
ok 30 GetGroupJoinRequestPublicV1
ok 31 GetGroupMembersListPublicV1
ok 32 UpdateGroupCustomRulePublicV1
ok 33 UpdateGroupPredefinedRulePublicV1
ok 34 DeleteGroupPredefinedRulePublicV1
ok 35 LeaveGroupPublicV1
ok 36 GetMemberRolesListPublicV1
ok 37 UpdateMemberRolePublicV1
ok 38 DeleteMemberRolePublicV1
ok 39 GetGroupInvitationRequestPublicV1
ok 40 GetUserGroupInformationPublicV1
ok 41 InviteGroupPublicV1
ok 42 AcceptGroupJoinRequestPublicV1
ok 43 RejectGroupJoinRequestPublicV1
ok 44 KickGroupMemberPublicV1
```

```tap
sh/run-python-cli-iam-unit-test.sh

TAP version 13
1..296
ok 1 GetBansType
ok 2 GetListBanReason
ok 3 GetClients (skipped deprecated)
ok 4 CreateClient (skipped deprecated)
ok 5 GetClient
ok 6 UpdateClient
ok 7 DeleteClient (skipped deprecated)
ok 8 UpdateClientPermission
ok 9 AddClientPermission
ok 10 DeleteClientPermission
ok 11 UpdateClientSecret
ok 12 GetClientsbyNamespace
ok 13 CreateClientByNamespace
ok 14 DeleteClientByNamespace
ok 15 CreateUser
ok 16 GetAdminUsersByRoleID
ok 17 GetUserByLoginID
ok 18 GetUserByPlatformUserID
ok 19 ForgotPassword
ok 20 GetUsersByLoginIds
ok 21 ResetPassword
ok 22 SearchUser (skipped deprecated)
ok 23 GetUserByUserID
ok 24 UpdateUser
ok 25 DeleteUser
ok 26 BanUser
ok 27 GetUserBanHistory
ok 28 DisableUserBan
ok 29 EnableUserBan
ok 30 ListCrossNamespaceAccountLink (skipped deprecated)
ok 31 DisableUser (skipped deprecated)
ok 32 EnableUser (skipped deprecated)
ok 33 GetUserInformation
ok 34 DeleteUserInformation
ok 35 GetUserLoginHistories
ok 36 UpdatePassword (skipped deprecated)
ok 37 SaveUserPermission
ok 38 AddUserPermission
ok 39 DeleteUserPermission
ok 40 GetUserPlatformAccounts
ok 41 GetUserMapping
ok 42 GetUserJusticePlatformAccount (skipped deprecated)
ok 43 PlatformLink
ok 44 PlatformUnlink
ok 45 GetPublisherUser
ok 46 SaveUserRoles
ok 47 AddUserRole
ok 48 DeleteUserRole
ok 49 UpgradeHeadlessAccount
ok 50 UpgradeHeadlessAccountWithVerificationCode
ok 51 UserVerification
ok 52 SendVerificationCode
ok 53 Authorization
ok 54 GetJWKS
ok 55 PlatformTokenRequestHandler (skipped deprecated)
ok 56 RevokeUser
ok 57 GetRevocationList
ok 58 RevokeToken (skipped deprecated)
ok 59 RevokeAUser (skipped deprecated)
ok 60 TokenGrant
ok 61 VerifyToken
ok 62 GetRoles
ok 63 CreateRole
ok 64 GetRole
ok 65 UpdateRole
ok 66 DeleteRole
ok 67 GetRoleAdminStatus
ok 68 SetRoleAsAdmin
ok 69 RemoveRoleAdmin
ok 70 GetRoleManagers
ok 71 AddRoleManagers
ok 72 RemoveRoleManagers
ok 73 GetRoleMembers
ok 74 AddRoleMembers
ok 75 RemoveRoleMembers
ok 76 UpdateRolePermissions
ok 77 AddRolePermission
ok 78 DeleteRolePermission
ok 79 AdminGetAgeRestrictionStatusV2
ok 80 AdminUpdateAgeRestrictionConfigV2
ok 81 GetListCountryAgeRestriction
ok 82 UpdateCountryAgeRestriction
ok 83 AdminSearchUsersV2
ok 84 AdminGetUserByUserIdV2
ok 85 AdminUpdateUserV2
ok 86 AdminBanUserV2
ok 87 AdminGetUserBanV2
ok 88 AdminDisableUserV2
ok 89 AdminEnableUserV2
ok 90 AdminResetPasswordV2
ok 91 AdminDeletePlatformLinkV2
ok 92 AdminPutUserRolesV2
ok 93 AdminCreateUserRolesV2
ok 94 PublicGetCountryAgeRestriction
ok 95 PublicCreateUserV2
ok 96 PublicForgotPasswordV2
ok 97 PublicResetPasswordV2
ok 98 PublicGetUserByUserIDV2
ok 99 PublicUpdateUserV2
ok 100 PublicGetUserBan
ok 101 PublicUpdatePasswordV2
ok 102 GetListJusticePlatformAccounts
ok 103 PublicPlatformLinkV2
ok 104 PublicDeletePlatformLinkV2
ok 105 AdminGetBansTypeV3
ok 106 AdminGetListBanReasonV3
ok 107 AdminGetInputValidations
ok 108 AdminUpdateInputValidations
ok 109 AdminResetInputValidations
ok 110 ListAdminsV3
ok 111 AdminGetAgeRestrictionStatusV3
ok 112 AdminUpdateAgeRestrictionConfigV3
ok 113 AdminGetListCountryAgeRestrictionV3
ok 114 AdminUpdateCountryAgeRestrictionV3
ok 115 AdminGetBannedUsersV3
ok 116 AdminGetBansTypeWithNamespaceV3
ok 117 AdminGetClientsByNamespaceV3
ok 118 AdminCreateClientV3
ok 119 AdminGetClientsbyNamespacebyIDV3
ok 120 AdminDeleteClientV3
ok 121 AdminUpdateClientV3
ok 122 AdminUpdateClientPermissionV3
ok 123 AdminAddClientPermissionsV3
ok 124 AdminDeleteClientPermissionV3
ok 125 RetrieveAllThirdPartyLoginPlatformCredentialV3
ok 126 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
ok 127 RetrieveAllSSOLoginPlatformCredentialV3
ok 128 RetrieveThirdPartyLoginPlatformCredentialV3
ok 129 AddThirdPartyLoginPlatformCredentialV3
ok 130 DeleteThirdPartyLoginPlatformCredentialV3
ok 131 UpdateThirdPartyLoginPlatformCredentialV3
ok 132 UpdateThirdPartyLoginPlatformDomainV3
ok 133 DeleteThirdPartyLoginPlatformDomainV3
ok 134 RetrieveSSOLoginPlatformCredential
ok 135 AddSSOLoginPlatformCredential
ok 136 DeleteSSOLoginPlatformCredentialV3
ok 137 UpdateSSOPlatformCredential
ok 138 AdminGetUserByPlatformUserIDV3
ok 139 GetAdminUsersByRoleIdV3
ok 140 AdminGetUserByEmailAddressV3
ok 141 AdminListUserIDByUserIDsV3
ok 142 AdminInviteUserV3
ok 143 AdminListUsersV3
ok 144 AdminSearchUserV3
ok 145 AdminGetBulkUserByEmailAddressV3
ok 146 AdminGetUserByUserIdV3
ok 147 AdminUpdateUserV3
ok 148 AdminGetUserBanV3
ok 149 AdminBanUserV3
ok 150 AdminUpdateUserBanV3
ok 151 AdminSendVerificationCodeV3
ok 152 AdminVerifyAccountV3
ok 153 GetUserVerificationCode
ok 154 AdminGetUserDeletionStatusV3
ok 155 AdminUpdateUserDeletionStatusV3
ok 156 AdminUpgradeHeadlessAccountV3
ok 157 AdminDeleteUserInformationV3
ok 158 AdminGetUserLoginHistoriesV3
ok 159 AdminUpdateUserPermissionV3
ok 160 AdminAddUserPermissionsV3
ok 161 AdminDeleteUserPermissionBulkV3
ok 162 AdminDeleteUserPermissionV3
ok 163 AdminGetUserPlatformAccountsV3
ok 164 AdminGetListJusticePlatformAccounts
ok 165 AdminCreateJusticeUser
ok 166 AdminLinkPlatformAccount
ok 167 AdminPlatformUnlinkV3
ok 168 AdminPlatformLinkV3
ok 169 AdminDeleteUserRolesV3
ok 170 AdminSaveUserRoleV3
ok 171 AdminAddUserRoleV3
ok 172 AdminDeleteUserRoleV3
ok 173 AdminUpdateUserStatusV3
ok 174 AdminVerifyUserWithoutVerificationCodeV3
ok 175 AdminGetRolesV3
ok 176 AdminCreateRoleV3
ok 177 AdminGetRoleV3
ok 178 AdminDeleteRoleV3
ok 179 AdminUpdateRoleV3
ok 180 AdminGetRoleAdminStatusV3
ok 181 AdminUpdateAdminRoleStatusV3
ok 182 AdminRemoveRoleAdminV3
ok 183 AdminGetRoleManagersV3
ok 184 AdminAddRoleManagersV3
ok 185 AdminRemoveRoleManagersV3
ok 186 AdminGetRoleMembersV3
ok 187 AdminAddRoleMembersV3
ok 188 AdminRemoveRoleMembersV3
ok 189 AdminUpdateRolePermissionsV3
ok 190 AdminAddRolePermissionsV3
ok 191 AdminDeleteRolePermissionsV3
ok 192 AdminDeleteRolePermissionV3
ok 193 AdminGetMyUserV3
ok 194 UserAuthenticationV3
ok 195 GetCountryLocationV3
ok 196 Logout
ok 197 AdminRetrieveUserThirdPartyPlatformTokenV3
ok 198 RevokeUserV3
ok 199 AuthorizeV3
ok 200 TokenIntrospectionV3
ok 201 GetJWKSV3
ok 202 Change2faMethod
ok 203 Verify2faCode
ok 204 RetrieveUserThirdPartyPlatformTokenV3
ok 205 AuthCodeRequestV3
ok 206 PlatformTokenGrantV3
ok 207 GetRevocationListV3
ok 208 TokenRevocationV3
ok 209 TokenGrantV3
ok 210 PlatformAuthenticationV3
ok 211 PublicGetInputValidations
ok 212 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
ok 213 PublicListUserIDByPlatformUserIDsV3
ok 214 PublicGetUserByPlatformUserIDV3
ok 215 PublicGetAsyncStatus
ok 216 PublicSearchUserV3
ok 217 PublicCreateUserV3
ok 218 CheckUserAvailability
ok 219 PublicBulkGetUsers
ok 220 PublicSendRegistrationCode
ok 221 PublicVerifyRegistrationCode
ok 222 PublicForgotPasswordV3
ok 223 GetAdminInvitationV3
ok 224 CreateUserFromInvitationV3
ok 225 UpdateUserV3
ok 226 PublicUpdateUserV3
ok 227 PublicSendVerificationCodeV3
ok 228 PublicUserVerificationV3
ok 229 PublicUpgradeHeadlessAccountV3
ok 230 PublicVerifyHeadlessAccountV3
ok 231 PublicUpdatePasswordV3
ok 232 PublicCreateJusticeUser
ok 233 PublicPlatformLinkV3
ok 234 PublicPlatformUnlinkV3
ok 235 PublicWebLinkPlatform
ok 236 PublicWebLinkPlatformEstablish
ok 237 ResetPasswordV3
ok 238 PublicGetUserByUserIdV3
ok 239 PublicGetUserBanHistoryV3
ok 240 PublicGetUserLoginHistoriesV3
ok 241 PublicGetUserPlatformAccountsV3
ok 242 PublicLinkPlatformAccount
ok 243 PublicValidateUserByUserIDAndPasswordV3
ok 244 PublicGetRolesV3
ok 245 PublicGetRoleV3
ok 246 PublicGetMyUserV3
ok 247 PlatformAuthenticateSAMLV3Handler
ok 248 LoginSSOClient
ok 249 LogoutSSOClient
ok 250 AdminBulkCheckValidUserIDV4
ok 251 AdminUpdateUserV4
ok 252 AdminUpdateUserEmailAddressV4
ok 253 AdminListUserRolesV4
ok 254 AdminUpdateUserRoleV4
ok 255 AdminAddUserRoleV4
ok 256 AdminRemoveUserRoleV4
ok 257 AdminGetRolesV4
ok 258 AdminCreateRoleV4
ok 259 AdminGetRoleV4
ok 260 AdminDeleteRoleV4
ok 261 AdminUpdateRoleV4
ok 262 AdminUpdateRolePermissionsV4
ok 263 AdminAddRolePermissionsV4
ok 264 AdminDeleteRolePermissionsV4
ok 265 AdminListAssignedUsersV4
ok 266 AdminAssignUserToRoleV4
ok 267 AdminRevokeUserFromRoleV4
ok 268 AdminUpdateMyUserV4
ok 269 AdminDisableMyAuthenticatorV4
ok 270 AdminEnableMyAuthenticatorV4
ok 271 AdminGenerateMyAuthenticatorKeyV4
ok 272 AdminGetMyBackupCodesV4
ok 273 AdminGenerateMyBackupCodesV4
ok 274 AdminDisableMyBackupCodesV4
ok 275 AdminDownloadMyBackupCodesV4
ok 276 AdminEnableMyBackupCodesV4
ok 277 AdminGetMyEnabledFactorsV4
ok 278 AdminMakeFactorMyDefaultV4
ok 279 AdminInviteUserV4
ok 280 PublicCreateTestUserV4
ok 281 PublicCreateUserV4
ok 282 CreateUserFromInvitationV4
ok 283 PublicUpdateUserV4
ok 284 PublicUpdateUserEmailAddressV4
ok 285 PublicUpgradeHeadlessAccountWithVerificationCodeV4
ok 286 PublicUpgradeHeadlessAccountV4
ok 287 PublicDisableMyAuthenticatorV4
ok 288 PublicEnableMyAuthenticatorV4
ok 289 PublicGenerateMyAuthenticatorKeyV4
ok 290 PublicGetMyBackupCodesV4
ok 291 PublicGenerateMyBackupCodesV4
ok 292 PublicDisableMyBackupCodesV4
ok 293 PublicDownloadMyBackupCodesV4
ok 294 PublicEnableMyBackupCodesV4
ok 295 PublicGetMyEnabledFactorsV4
ok 296 PublicMakeFactorMyDefaultV4
```

```tap
sh/run-python-cli-leaderboard-unit-test.sh

TAP version 13
1..34
ok 1 GetLeaderboardConfigurationsAdminV1
ok 2 CreateLeaderboardConfigurationAdminV1
ok 3 AdminGetArchivedLeaderboardRankingDataV1Handler
ok 4 CreateArchivedLeaderboardRankingDataV1Handler
ok 5 DeleteBulkLeaderboardConfigurationAdminV1
ok 6 GetLeaderboardConfigurationAdminV1
ok 7 UpdateLeaderboardConfigurationAdminV1
ok 8 DeleteLeaderboardConfigurationAdminV1
ok 9 GetAllTimeLeaderboardRankingAdminV1
ok 10 GetCurrentMonthLeaderboardRankingAdminV1
ok 11 GetCurrentSeasonLeaderboardRankingAdminV1
ok 12 GetTodayLeaderboardRankingAdminV1
ok 13 GetUserRankingAdminV1
ok 14 UpdateUserPointAdminV1
ok 15 DeleteUserRankingAdminV1
ok 16 GetCurrentWeekLeaderboardRankingAdminV1
ok 17 DeleteUserRankingsAdminV1
ok 18 GetUserLeaderboardRankingsAdminV1
ok 19 GetLeaderboardConfigurationsPublicV1
ok 20 CreateLeaderboardConfigurationPublicV1
ok 21 GetAllTimeLeaderboardRankingPublicV1
ok 22 GetArchivedLeaderboardRankingDataV1Handler
ok 23 GetCurrentMonthLeaderboardRankingPublicV1
ok 24 GetCurrentSeasonLeaderboardRankingPublicV1
ok 25 GetTodayLeaderboardRankingPublicV1
ok 26 GetUserRankingPublicV1
ok 27 DeleteUserRankingPublicV1
ok 28 GetCurrentWeekLeaderboardRankingPublicV1
ok 29 GetHiddenUsersV2
ok 30 GetUserVisibilityStatusV2
ok 31 SetUserLeaderboardVisibilityStatusV2
ok 32 SetUserVisibilityStatusV2
ok 33 GetLeaderboardConfigurationsPublicV2
ok 34 GetAllTimeLeaderboardRankingPublicV2
```

```tap
sh/run-python-cli-legal-unit-test.sh

TAP version 13
1..42
ok 1 ChangePreferenceConsent
ok 2 RetrieveAcceptedAgreements
ok 3 RetrieveAllUsersByPolicyVersion
ok 4 RetrieveAllLegalPolicies
ok 5 CreatePolicy
ok 6 RetrieveSinglePolicy
ok 7 PartialUpdatePolicy
ok 8 RetrievePolicyCountry
ok 9 RetrieveLocalizedPolicyVersions
ok 10 CreateLocalizedPolicyVersion
ok 11 RetrieveSingleLocalizedPolicyVersion
ok 12 UpdateLocalizedPolicyVersion
ok 13 RequestPresignedURL
ok 14 SetDefaultPolicy
ok 15 IndirectBulkAcceptVersionedPolicy
ok 16 AdminRetrieveEligibilities
ok 17 RetrievePolicies
ok 18 UpdatePolicyVersion
ok 19 PublishPolicyVersion
ok 20 UpdatePolicy
ok 21 SetDefaultPolicy1
ok 22 RetrieveSinglePolicyVersion
ok 23 CreatePolicyVersion
ok 24 RetrieveAllPolicyTypes
ok 25 GetUserInfoStatus
ok 26 SyncUserInfo
ok 27 InvalidateUserInfoCache
ok 28 AnonymizeUserAgreement
ok 29 ChangePreferenceConsent1
ok 30 AcceptVersionedPolicy
ok 31 RetrieveAgreementsPublic
ok 32 BulkAcceptVersionedPolicy
ok 33 IndirectBulkAcceptVersionedPolicyV2
ok 34 IndirectBulkAcceptVersionedPolicy1
ok 35 RetrieveEligibilitiesPublic
ok 36 RetrieveEligibilitiesPublicIndirect
ok 37 RetrieveSingleLocalizedPolicyVersion1
ok 38 RetrievePolicyVersions
ok 39 RetrieveLatestPolicies
ok 40 RetrieveLatestPoliciesPublic
ok 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
ok 42 CheckReadiness
```

```tap
sh/run-python-cli-lobby-unit-test.sh

TAP version 13
1..90
ok 1 GetUserFriendsUpdated
ok 2 GetUserIncomingFriends
ok 3 GetUserOutgoingFriends
ok 4 UserRequestFriend
ok 5 UserAcceptFriendRequest
ok 6 UserCancelFriendRequest
ok 7 UserRejectFriendRequest
ok 8 UserGetFriendshipStatus
ok 9 UserUnfriendRequest
ok 10 AddFriendsWithoutConfirmation
ok 11 PersonalChatHistory
ok 12 AdminChatHistory
ok 13 AdminGetAllConfigV1
ok 14 AdminGetConfigV1
ok 15 AdminUpdateConfigV1
ok 16 AdminExportConfigV1
ok 17 AdminImportConfigV1
ok 18 GetListOfFriends
ok 19 SendMultipleUsersFreeformNotificationV1Admin
ok 20 SendUsersFreeformNotificationV1Admin
ok 21 SendPartyFreeformNotificationV1Admin
ok 22 SendPartyTemplatedNotificationV1Admin
ok 23 GetAllNotificationTemplatesV1Admin
ok 24 CreateNotificationTemplateV1Admin
ok 25 SendUsersTemplatedNotificationV1Admin
ok 26 GetTemplateSlugLocalizationsTemplateV1Admin
ok 27 DeleteNotificationTemplateSlugV1Admin
ok 28 GetSingleTemplateLocalizationV1Admin
ok 29 UpdateTemplateLocalizationV1Admin
ok 30 DeleteTemplateLocalizationV1Admin
ok 31 PublishTemplateLocalizationV1Admin
ok 32 GetAllNotificationTopicsV1Admin
ok 33 CreateNotificationTopicV1Admin
ok 34 GetNotificationTopicV1Admin
ok 35 UpdateNotificationTopicV1Admin
ok 36 DeleteNotificationTopicV1Admin
ok 37 SendSpecificUserFreeformNotificationV1Admin
ok 38 SendSpecificUserTemplatedNotificationV1Admin
ok 39 AdminGetPartyDataV1
ok 40 AdminUpdatePartyAttributesV1
ok 41 AdminJoinPartyV1
ok 42 AdminGetUserPartyV1
ok 43 AdminGetLobbyCCU
ok 44 AdminGetAllPlayerSessionAttribute
ok 45 AdminSetPlayerSessionAttribute
ok 46 AdminGetPlayerSessionAttribute
ok 47 AdminGetPlayerBlockedPlayersV1
ok 48 AdminGetPlayerBlockedByPlayersV1
ok 49 AdminBulkBlockPlayersV1
ok 50 AdminDebugProfanityFilters
ok 51 AdminGetProfanityListFiltersV1
ok 52 AdminAddProfanityFilterIntoList
ok 53 AdminAddProfanityFilters
ok 54 AdminImportProfanityFiltersFromFile
ok 55 AdminDeleteProfanityFilter
ok 56 AdminGetProfanityLists
ok 57 AdminCreateProfanityList
ok 58 AdminUpdateProfanityList
ok 59 AdminDeleteProfanityList
ok 60 AdminGetProfanityRule
ok 61 AdminSetProfanityRuleForNamespace
ok 62 AdminVerifyMessageProfanityResponse
ok 63 AdminGetThirdPartyConfig
ok 64 AdminUpdateThirdPartyConfig
ok 65 AdminCreateThirdPartyConfig
ok 66 AdminDeleteThirdPartyConfig
ok 67 PublicGetMessages
ok 68 GetPersonalChatHistoryV1Public
ok 69 PublicGetPartyDataV1
ok 70 PublicUpdatePartyAttributesV1
ok 71 PublicGetPlayerBlockedPlayersV1
ok 72 PublicGetPlayerBlockedByPlayersV1
ok 73 UsersPresenceHandlerV1
ok 74 FreeFormNotification
ok 75 NotificationWithTemplate
ok 76 GetGameTemplate
ok 77 CreateTemplate
ok 78 GetSlugTemplate
ok 79 DeleteTemplateSlug
ok 80 GetLocalizationTemplate
ok 81 UpdateLocalizationTemplate
ok 82 DeleteTemplateLocalization
ok 83 PublishTemplate
ok 84 GetTopicByNamespace
ok 85 CreateTopic
ok 86 GetTopicByTopicName
ok 87 UpdateTopicByTopicName
ok 88 DeleteTopicByTopicName
ok 89 FreeFormNotificationByUserID
ok 90 NotificationWithTemplateByUserID
```

```tap
sh/run-python-cli-lobby-ws-unit-test.sh

TAP version 13
1..103
ok 1 AcceptFriendsNotif
ok 2 AcceptFriendsRequest
ok 3 AcceptFriendsResponse
ok 4 BlockPlayerNotif
ok 5 BlockPlayerRequest
ok 6 BlockPlayerResponse
ok 7 CancelFriendsNotif
ok 8 CancelFriendsRequest
ok 9 CancelFriendsResponse
ok 10 CancelMatchmakingRequest
ok 11 CancelMatchmakingResponse
ok 12 ChannelChatNotif
ok 13 ClientResetRequest
ok 14 ConnectNotif
ok 15 DisconnectNotif
ok 16 DsNotif
ok 17 ErrorNotif
ok 18 ExitAllChannel
ok 19 FriendsStatusRequest
ok 20 FriendsStatusResponse
ok 21 GetAllSessionAttributeRequest
ok 22 GetAllSessionAttributeResponse
ok 23 GetFriendshipStatusRequest
ok 24 GetFriendshipStatusResponse
ok 25 GetSessionAttributeRequest
ok 26 GetSessionAttributeResponse
ok 27 Heartbeat
ok 28 JoinDefaultChannelRequest
ok 29 JoinDefaultChannelResponse
ok 30 ListIncomingFriendsRequest
ok 31 ListIncomingFriendsResponse
ok 32 ListOfFriendsRequest
ok 33 ListOfFriendsResponse
ok 34 ListOnlineFriendsRequest
ok 35 ListOutgoingFriendsRequest
ok 36 ListOutgoingFriendsResponse
ok 37 MatchmakingNotif
ok 38 MessageNotif
ok 39 OfflineNotificationRequest
ok 40 OfflineNotificationResponse
ok 41 OnlineFriends
ok 42 PartyChatNotif
ok 43 PartyChatRequest
ok 44 PartyChatResponse
ok 45 PartyCreateRequest
ok 46 PartyCreateResponse
ok 47 PartyDataUpdateNotif
ok 48 PartyGetInvitedNotif
ok 49 PartyInfoRequest
ok 50 PartyInfoResponse
ok 51 PartyInviteNotif
ok 52 PartyInviteRequest
ok 53 PartyInviteResponse
ok 54 PartyJoinNotif
ok 55 PartyJoinRequest
ok 56 PartyJoinResponse
ok 57 PartyKickNotif
ok 58 PartyKickRequest
ok 59 PartyKickResponse
ok 60 PartyLeaveNotif
ok 61 PartyLeaveRequest
ok 62 PartyLeaveResponse
ok 63 PartyPromoteLeaderRequest
ok 64 PartyPromoteLeaderResponse
ok 65 PartyRejectNotif
ok 66 PartyRejectRequest
ok 67 PartyRejectResponse
ok 68 PersonalChatHistoryRequest
ok 69 PersonalChatHistoryResponse
ok 70 PersonalChatNotif
ok 71 PersonalChatRequest
ok 72 PersonalChatResponse
ok 73 RejectFriendsNotif
ok 74 RejectFriendsRequest
ok 75 RejectFriendsResponse
ok 76 RematchmakingNotif
ok 77 RequestFriendsNotif
ok 78 RequestFriendsRequest
ok 79 RequestFriendsResponse
ok 80 SendChannelChatRequest
ok 81 SendChannelChatResponse
ok 82 SetReadyConsentNotif
ok 83 SetReadyConsentRequest
ok 84 SetReadyConsentResponse
ok 85 SetSessionAttributeRequest
ok 86 SetSessionAttributeResponse
ok 87 SetUserStatusRequest
ok 88 SetUserStatusResponse
ok 89 ShutdownNotif
ok 90 SignalingP2PNotif
ok 91 StartMatchmakingRequest
ok 92 StartMatchmakingResponse
ok 93 SystemComponentsStatus
ok 94 UnblockPlayerNotif
ok 95 UnblockPlayerRequest
ok 96 UnblockPlayerResponse
ok 97 UnfriendNotif
ok 98 UnfriendRequest
ok 99 UnfriendResponse
ok 100 UserBannedNotification
ok 101 UserMetricRequest
ok 102 UserMetricResponse
ok 103 UserStatusNotif
```

```tap
sh/run-python-cli-matchmaking-unit-test.sh

TAP version 13
1..28
ok 1 GetHealthcheckInfo
ok 2 HandlerV3Healthz
ok 3 GetAllChannelsHandler
ok 4 CreateChannelHandler
ok 5 DeleteChannelHandler
ok 6 StoreMatchResults
ok 7 QueueSessionHandler
ok 8 DequeueSessionHandler
ok 9 QuerySessionHandler
ok 10 UpdatePlayTimeWeight
ok 11 GetAllPartyInAllChannel
ok 12 BulkGetSessions
ok 13 ExportChannels
ok 14 ImportChannels
ok 15 GetSingleMatchmakingChannel
ok 16 UpdateMatchmakingChannel
ok 17 GetAllPartyInChannel
ok 18 GetAllSessionsInChannel
ok 19 AddUserIntoSessionInChannel
ok 20 DeleteSessionInChannel
ok 21 DeleteUserFromSessionInChannel
ok 22 SearchSessions
ok 23 GetSessionHistoryDetailed
ok 24 PublicGetMessages
ok 25 PublicGetAllMatchmakingChannel
ok 26 PublicGetSingleMatchmakingChannel
ok 27 SearchSessionsV2
ok 28 VersionCheckHandler
```

```tap
sh/run-python-cli-platform-unit-test.sh

TAP version 13
1..320
ok 1 ListFulfillmentScripts
ok 2 TestFulfillmentScriptEval
ok 3 GetFulfillmentScript
ok 4 CreateFulfillmentScript
ok 5 DeleteFulfillmentScript
ok 6 UpdateFulfillmentScript
ok 7 QueryCampaigns
ok 8 CreateCampaign
ok 9 GetCampaign
ok 10 UpdateCampaign
ok 11 GetCampaignDynamic
ok 12 GetRootCategories
ok 13 CreateCategory
ok 14 ListCategoriesBasic
ok 15 GetCategory
ok 16 UpdateCategory
ok 17 DeleteCategory
ok 18 GetChildCategories
ok 19 GetDescendantCategories
ok 20 QueryCodes
ok 21 CreateCodes
ok 22 Download
ok 23 BulkDisableCodes
ok 24 BulkEnableCodes
ok 25 QueryRedeemHistory
ok 26 GetCode
ok 27 DisableCode
ok 28 EnableCode
ok 29 ListCurrencies
ok 30 CreateCurrency
ok 31 UpdateCurrency
ok 32 DeleteCurrency
ok 33 GetCurrencyConfig
ok 34 GetCurrencySummary
ok 35 GetDLCItemConfig
ok 36 UpdateDLCItemConfig
ok 37 DeleteDLCItemConfig
ok 38 GetPlatformDLCConfig
ok 39 UpdatePlatformDLCConfig
ok 40 DeletePlatformDLCConfig
ok 41 QueryEntitlements
ok 42 GetEntitlement
ok 43 QueryFulfillmentHistories
ok 44 GetAppleIAPConfig
ok 45 UpdateAppleIAPConfig
ok 46 DeleteAppleIAPConfig
ok 47 GetEpicGamesIAPConfig
ok 48 UpdateEpicGamesIAPConfig
ok 49 DeleteEpicGamesIAPConfig
ok 50 GetGoogleIAPConfig
ok 51 UpdateGoogleIAPConfig
ok 52 DeleteGoogleIAPConfig
ok 53 UpdateGoogleP12File
ok 54 GetIAPItemConfig
ok 55 UpdateIAPItemConfig
ok 56 DeleteIAPItemConfig
ok 57 GetPlayStationIAPConfig
ok 58 UpdatePlaystationIAPConfig
ok 59 DeletePlaystationIAPConfig
ok 60 GetStadiaIAPConfig
ok 61 DeleteStadiaIAPConfig
ok 62 UpdateStadiaJsonConfigFile
ok 63 GetSteamIAPConfig
ok 64 UpdateSteamIAPConfig
ok 65 DeleteSteamIAPConfig
ok 66 GetTwitchIAPConfig
ok 67 UpdateTwitchIAPConfig
ok 68 DeleteTwitchIAPConfig
ok 69 GetXblIAPConfig
ok 70 UpdateXblIAPConfig
ok 71 DeleteXblAPConfig
ok 72 UpdateXblBPCertFile
ok 73 SyncInGameItem
ok 74 CreateItem
ok 75 GetItemByAppId
ok 76 QueryItems
ok 77 ListBasicItemsByFeatures
ok 78 GetItemBySku
ok 79 GetLocaleItemBySku
ok 80 GetItemIdBySku
ok 81 BulkGetLocaleItems
ok 82 SearchItems
ok 83 QueryUncategorizedItems
ok 84 GetItem
ok 85 UpdateItem
ok 86 DeleteItem
ok 87 AcquireItem
ok 88 GetApp
ok 89 UpdateApp
ok 90 DisableItem
ok 91 GetItemDynamicData
ok 92 EnableItem
ok 93 FeatureItem
ok 94 DefeatureItem
ok 95 GetLocaleItem
ok 96 ReturnItem
ok 97 QueryKeyGroups
ok 98 CreateKeyGroup
ok 99 GetKeyGroup
ok 100 UpdateKeyGroup
ok 101 GetKeyGroupDynamic
ok 102 ListKeys
ok 103 UploadKeys
ok 104 QueryOrders
ok 105 GetOrderStatistics
ok 106 GetOrder
ok 107 RefundOrder
ok 108 GetPaymentCallbackConfig
ok 109 UpdatePaymentCallbackConfig
ok 110 QueryPaymentNotifications
ok 111 QueryPaymentOrders
ok 112 CreatePaymentOrderByDedicated
ok 113 ListExtOrderNoByExtTxId
ok 114 GetPaymentOrder
ok 115 ChargePaymentOrder
ok 116 RefundPaymentOrderByDedicated
ok 117 SimulatePaymentOrderNotification
ok 118 GetPaymentOrderChargeStatus
ok 119 CreateReward
ok 120 QueryRewards
ok 121 ExportRewards
ok 122 ImportRewards
ok 123 GetReward
ok 124 UpdateReward
ok 125 DeleteReward
ok 126 CheckEventCondition
ok 127 ListStores
ok 128 CreateStore
ok 129 ImportStore
ok 130 GetPublishedStore
ok 131 DeletePublishedStore
ok 132 GetPublishedStoreBackup
ok 133 RollbackPublishedStore
ok 134 GetStore
ok 135 UpdateStore
ok 136 DeleteStore
ok 137 CloneStore
ok 138 ExportStore
ok 139 QuerySubscriptions
ok 140 RecurringChargeSubscription
ok 141 GetTicketDynamic
ok 142 DecreaseTicketSale
ok 143 GetTicketBoothID
ok 144 IncreaseTicketSale
ok 145 AnonymizeCampaign
ok 146 AnonymizeEntitlement
ok 147 AnonymizeFulfillment
ok 148 AnonymizeIntegration
ok 149 AnonymizeOrder
ok 150 AnonymizePayment
ok 151 AnonymizeSubscription
ok 152 AnonymizeWallet
ok 153 QueryUserEntitlements
ok 154 GrantUserEntitlement
ok 155 GetUserAppEntitlementByAppId
ok 156 QueryUserEntitlementsByAppType
ok 157 GetUserEntitlementByItemId
ok 158 GetUserEntitlementBySku
ok 159 ExistsAnyUserActiveEntitlement
ok 160 ExistsAnyUserActiveEntitlementByItemIds
ok 161 GetUserAppEntitlementOwnershipByAppId
ok 162 GetUserEntitlementOwnershipByItemId
ok 163 GetUserEntitlementOwnershipBySku
ok 164 RevokeUserEntitlements
ok 165 GetUserEntitlement
ok 166 UpdateUserEntitlement
ok 167 ConsumeUserEntitlement
ok 168 DisableUserEntitlement
ok 169 EnableUserEntitlement
ok 170 GetUserEntitlementHistories
ok 171 RevokeUserEntitlement
ok 172 FulfillItem
ok 173 RedeemCode
ok 174 FulfillRewards
ok 175 QueryUserIAPOrders
ok 176 QueryAllUserIAPOrders
ok 177 MockFulfillIAPItem
ok 178 QueryUserOrders
ok 179 CountOfPurchasedItem
ok 180 GetUserOrder
ok 181 UpdateUserOrderStatus
ok 182 FulfillUserOrder
ok 183 GetUserOrderGrant
ok 184 GetUserOrderHistories
ok 185 ProcessUserOrderNotification
ok 186 DownloadUserOrderReceipt
ok 187 CreateUserPaymentOrder
ok 188 RefundUserPaymentOrder
ok 189 ApplyUserRedemption
ok 190 QueryUserSubscriptions
ok 191 GetUserSubscriptionActivities
ok 192 PlatformSubscribeSubscription
ok 193 CheckUserSubscriptionSubscribableByItemId
ok 194 GetUserSubscription
ok 195 DeleteUserSubscription
ok 196 CancelSubscription
ok 197 GrantDaysToSubscription
ok 198 GetUserSubscriptionBillingHistories
ok 199 ProcessUserSubscriptionNotification
ok 200 AcquireUserTicket
ok 201 CheckWallet
ok 202 CreditUserWallet
ok 203 PayWithUserWallet
ok 204 GetUserWallet
ok 205 DebitUserWallet
ok 206 DisableUserWallet
ok 207 EnableUserWallet
ok 208 ListUserWalletTransactions
ok 209 QueryWallets
ok 210 GetWallet
ok 211 SyncOrders
ok 212 TestAdyenConfig
ok 213 TestAliPayConfig
ok 214 TestCheckoutConfig
ok 215 DebugMatchedPaymentMerchantConfig
ok 216 TestPayPalConfig
ok 217 TestStripeConfig
ok 218 TestWxPayConfig
ok 219 TestXsollaConfig
ok 220 GetPaymentMerchantConfig
ok 221 UpdateAdyenConfig
ok 222 TestAdyenConfigById
ok 223 UpdateAliPayConfig
ok 224 TestAliPayConfigById
ok 225 UpdateCheckoutConfig
ok 226 TestCheckoutConfigById
ok 227 UpdatePayPalConfig
ok 228 TestPayPalConfigById
ok 229 UpdateStripeConfig
ok 230 TestStripeConfigById
ok 231 UpdateWxPayConfig
ok 232 UpdateWxPayConfigCert
ok 233 TestWxPayConfigById
ok 234 UpdateXsollaConfig
ok 235 TestXsollaConfigById
ok 236 UpdateXsollaUIConfig
ok 237 QueryPaymentProviderConfig
ok 238 CreatePaymentProviderConfig
ok 239 GetAggregatePaymentProviders
ok 240 DebugMatchedPaymentProviderConfig
ok 241 GetSpecialPaymentProviders
ok 242 UpdatePaymentProviderConfig
ok 243 DeletePaymentProviderConfig
ok 244 GetPaymentTaxConfig
ok 245 UpdatePaymentTaxConfig
ok 246 SyncPaymentOrders
ok 247 PublicGetRootCategories
ok 248 DownloadCategories
ok 249 PublicGetCategory
ok 250 PublicGetChildCategories
ok 251 PublicGetDescendantCategories
ok 252 PublicListCurrencies
ok 253 PublicGetItemByAppId
ok 254 PublicQueryItems
ok 255 PublicGetItemBySku
ok 256 PublicBulkGetItems
ok 257 PublicSearchItems
ok 258 PublicGetApp
ok 259 PublicGetItemDynamicData
ok 260 PublicGetItem
ok 261 GetPaymentCustomization (skipped deprecated)
ok 262 PublicGetPaymentUrl
ok 263 PublicGetPaymentMethods
ok 264 PublicGetUnpaidPaymentOrder
ok 265 Pay
ok 266 PublicCheckPaymentOrderPaidStatus
ok 267 GetPaymentPublicConfig
ok 268 PublicGetQRCode
ok 269 PublicNormalizePaymentReturnUrl
ok 270 GetPaymentTaxValue
ok 271 GetRewardByCode
ok 272 QueryRewards1
ok 273 GetReward1
ok 274 PublicListStores
ok 275 PublicExistsAnyMyActiveEntitlement
ok 276 PublicGetMyAppEntitlementOwnershipByAppId
ok 277 PublicGetMyEntitlementOwnershipByItemId
ok 278 PublicGetMyEntitlementOwnershipBySku
ok 279 PublicGetEntitlementOwnershipToken
ok 280 PublicGetMyWallet
ok 281 PublicSyncPsnDlcInventory
ok 282 SyncSteamDLC
ok 283 SyncXboxDLC
ok 284 PublicQueryUserEntitlements
ok 285 PublicGetUserAppEntitlementByAppId
ok 286 PublicQueryUserEntitlementsByAppType
ok 287 PublicGetUserEntitlementByItemId
ok 288 PublicGetUserEntitlementBySku
ok 289 PublicExistsAnyUserActiveEntitlement
ok 290 PublicGetUserAppEntitlementOwnershipByAppId
ok 291 PublicGetUserEntitlementOwnershipByItemId
ok 292 PublicGetUserEntitlementOwnershipBySku
ok 293 PublicGetUserEntitlement
ok 294 PublicConsumeUserEntitlement
ok 295 PublicRedeemCode
ok 296 PublicFulfillAppleIAPItem
ok 297 SyncEpicGamesInventory
ok 298 PublicFulfillGoogleIAPItem
ok 299 PublicReconcilePlayStationStore
ok 300 SyncStadiaEntitlement
ok 301 SyncSteamInventory
ok 302 SyncTwitchDropsEntitlement
ok 303 SyncXboxInventory
ok 304 PublicQueryUserOrders
ok 305 PublicCreateUserOrder
ok 306 PublicGetUserOrder
ok 307 PublicCancelUserOrder
ok 308 PublicGetUserOrderHistories
ok 309 PublicDownloadUserOrderReceipt
ok 310 PublicGetPaymentAccounts
ok 311 PublicDeletePaymentAccount
ok 312 PublicQueryUserSubscriptions
ok 313 PublicSubscribeSubscription
ok 314 PublicCheckUserSubscriptionSubscribableByItemId
ok 315 PublicGetUserSubscription
ok 316 PublicChangeSubscriptionBillingAccount
ok 317 PublicCancelSubscription
ok 318 PublicGetUserSubscriptionBillingHistories
ok 319 PublicGetWallet
ok 320 PublicListUserWalletTransactions
```

```tap
sh/run-python-cli-qosm-unit-test.sh

TAP version 13
1..4
ok 1 DeleteServer
ok 2 SetServerAlias
ok 3 ListServer
ok 4 Heartbeat
```

```tap
sh/run-python-cli-seasonpass-unit-test.sh

TAP version 13
1..39
ok 1 QuerySeasons
ok 2 CreateSeason
ok 3 GetCurrentSeason
ok 4 GetSeason
ok 5 DeleteSeason
ok 6 UpdateSeason
ok 7 CloneSeason
ok 8 QueryPasses
ok 9 CreatePass
ok 10 GetPass
ok 11 DeletePass
ok 12 UpdatePass
ok 13 PublishSeason
ok 14 RetireSeason
ok 15 QueryRewards
ok 16 CreateReward
ok 17 GetReward
ok 18 DeleteReward
ok 19 UpdateReward
ok 20 QueryTiers
ok 21 CreateTier
ok 22 UpdateTier
ok 23 DeleteTier
ok 24 ReorderTier
ok 25 UnpublishSeason
ok 26 GetUserParticipatedSeasons
ok 27 GrantUserExp
ok 28 GrantUserPass
ok 29 ExistsAnyPassByPassCodes
ok 30 GetCurrentUserSeasonProgression
ok 31 CheckSeasonPurchasable
ok 32 ResetUserSeason
ok 33 GrantUserTier
ok 34 GetUserSeason
ok 35 PublicGetCurrentSeason
ok 36 PublicGetCurrentUserSeason
ok 37 PublicClaimUserReward
ok 38 PublicBulkClaimUserRewards
ok 39 PublicGetUserSeason
```

```tap
sh/run-python-cli-sessionbrowser-unit-test.sh

TAP version 13
1..15
ok 1 GetTotalActiveSession
ok 2 GetActiveCustomGameSessions
ok 3 GetActiveMatchmakingGameSessions
ok 4 AdminGetSession
ok 5 QuerySession
ok 6 CreateSession
ok 7 GetSessionByUserIDs
ok 8 GetSession
ok 9 UpdateSession
ok 10 DeleteSession
ok 11 JoinSession
ok 12 DeleteSessionLocalDS
ok 13 AddPlayerToSession
ok 14 RemovePlayerFromSession
ok 15 GetRecentPlayer
```

```tap
sh/run-python-cli-social-unit-test.sh

TAP version 13
1..69
ok 1 GetNamespaceSlotConfig
ok 2 UpdateNamespaceSlotConfig
ok 3 DeleteNamespaceSlotConfig
ok 4 GetUserSlotConfig
ok 5 UpdateUserSlotConfig
ok 6 DeleteUserSlotConfig
ok 7 GetUserProfiles
ok 8 GetProfile
ok 9 GetUserNamespaceSlots
ok 10 GetSlotData
ok 11 PublicGetUserGameProfiles
ok 12 PublicGetUserProfiles
ok 13 PublicCreateProfile
ok 14 PublicGetProfile
ok 15 PublicUpdateProfile
ok 16 PublicDeleteProfile
ok 17 PublicGetProfileAttribute
ok 18 PublicUpdateAttribute
ok 19 PublicGetUserNamespaceSlots
ok 20 PublicCreateUserNamespaceSlot
ok 21 PublicGetSlotData
ok 22 PublicUpdateUserNamespaceSlot
ok 23 PublicDeleteUserNamespaceSlot
ok 24 PublicUpdateUserNamespaceSlotMetadata
ok 25 GetGlobalStatItems
ok 26 BulkFetchStatItems
ok 27 BulkIncUserStatItem
ok 28 BulkIncUserStatItemValue
ok 29 BulkResetUserStatItem
ok 30 GetStats
ok 31 CreateStat
ok 32 ExportStats
ok 33 ImportStats
ok 34 QueryStats
ok 35 GetStat
ok 36 DeleteStat
ok 37 UpdateStat
ok 38 GetUserStatItems
ok 39 BulkCreateUserStatItems
ok 40 BulkIncUserStatItem1
ok 41 BulkIncUserStatItemValue1
ok 42 BulkResetUserStatItem1
ok 43 CreateUserStatItem
ok 44 DeleteUserStatItems
ok 45 IncUserStatItemValue
ok 46 ResetUserStatItemValue
ok 47 BulkFetchStatItems1
ok 48 PublicBulkIncUserStatItem
ok 49 PublicBulkIncUserStatItemValue
ok 50 BulkResetUserStatItem2
ok 51 CreateStat1
ok 52 PublicQueryUserStatItems
ok 53 PublicBulkCreateUserStatItems
ok 54 PublicBulkIncUserStatItem1
ok 55 BulkIncUserStatItemValue2
ok 56 BulkResetUserStatItem3
ok 57 PublicCreateUserStatItem
ok 58 DeleteUserStatItems1
ok 59 PublicIncUserStatItem
ok 60 PublicIncUserStatItemValue
ok 61 ResetUserStatItemValue1
ok 62 BulkUpdateUserStatItemV2
ok 63 BulkUpdateUserStatItem
ok 64 BulkResetUserStatItemValues
ok 65 DeleteUserStatItems2
ok 66 UpdateUserStatItemValue
ok 67 BulkUpdateUserStatItem1
ok 68 BulkUpdateUserStatItem2
ok 69 UpdateUserStatItemValue1
```

```tap
sh/run-python-cli-ugc-unit-test.sh

TAP version 13
1..84
ok 1 SingleAdminGetChannel
ok 2 AdminCreateChannel
ok 3 SingleAdminUpdateChannel
ok 4 SingleAdminDeleteChannel
ok 5 AdminUploadContentDirect (skipped deprecated)
ok 6 AdminUploadContentS3
ok 7 SingleAdminUpdateContentS3
ok 8 AdminSearchChannelSpecificContent
ok 9 SingleAdminUpdateContentDirect (skipped deprecated)
ok 10 SingleAdminDeleteContent
ok 11 SingleAdminGetContent
ok 12 AdminSearchContent
ok 13 AdminGetSpecificContent
ok 14 AdminDownloadContentPreview
ok 15 AdminUpdateScreenshots
ok 16 AdminUploadContentScreenshot
ok 17 AdminDeleteContentScreenshot
ok 18 SingleAdminGetAllGroups
ok 19 AdminCreateGroup
ok 20 SingleAdminGetGroup
ok 21 SingleAdminUpdateGroup
ok 22 SingleAdminDeleteGroup
ok 23 SingleAdminGetGroupContents
ok 24 AdminGetTag
ok 25 AdminCreateTag
ok 26 AdminUpdateTag
ok 27 AdminDeleteTag
ok 28 AdminGetType
ok 29 AdminCreateType
ok 30 AdminUpdateType
ok 31 AdminDeleteType
ok 32 AdminGetChannel
ok 33 AdminDeleteAllUserChannels
ok 34 AdminUpdateChannel
ok 35 AdminDeleteChannel
ok 36 AdminUpdateContentS3
ok 37 AdminUpdateContentDirect (skipped deprecated)
ok 38 AdminDeleteContent
ok 39 AdminGetContent
ok 40 AdminDeleteAllUserContents
ok 41 AdminHideUserContent
ok 42 AdminGetAllGroups
ok 43 AdminDeleteAllUserGroup
ok 44 AdminGetGroup
ok 45 AdminUpdateGroup
ok 46 AdminDeleteGroup
ok 47 AdminGetGroupContents
ok 48 AdminDeleteAllUserStates
ok 49 SearchChannelSpecificContent
ok 50 PublicSearchContent
ok 51 GetFollowedContent
ok 52 GetLikedContent
ok 53 DownloadContentByShareCode
ok 54 PublicDownloadContentByContentID
ok 55 AddDownloadCount
ok 56 UpdateContentLikeStatus
ok 57 PublicDownloadContentPreview
ok 58 GetTag
ok 59 GetType
ok 60 GetFollowedUsers
ok 61 GetChannels
ok 62 CreateChannel
ok 63 DeleteAllUserChannel
ok 64 UpdateChannel
ok 65 DeleteChannel
ok 66 CreateContentDirect (skipped deprecated)
ok 67 CreateContentS3
ok 68 UpdateContentS3
ok 69 UpdateContentDirect (skipped deprecated)
ok 70 DeleteContent
ok 71 PublicGetUserContent
ok 72 DeleteAllUserContents
ok 73 UpdateScreenshots
ok 74 UploadContentScreenshot
ok 75 DeleteContentScreenshot
ok 76 UpdateUserFollowStatus
ok 77 GetGroups
ok 78 CreateGroup
ok 79 DeleteAllUserGroup
ok 80 GetGroup
ok 81 UpdateGroup
ok 82 DeleteGroup
ok 83 GetGroupContent
ok 84 DeleteAllUserStates
```

