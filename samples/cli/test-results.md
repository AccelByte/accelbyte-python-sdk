# Test Results

```tap
./../../tests/sh/run-python-cli-dsmc-unit-test.sh

TAP version 13
1..63
ok 1 ListConfig
ok 2 SaveConfig (skipped deprecated)
ok 3 UpdateImage
ok 4 CreateImage
ok 5 ImportImages
ok 6 GetConfig
ok 7 CreateConfig
ok 8 DeleteConfig
ok 9 UpdateConfig
ok 10 ClearCache
ok 11 GetAllDeployment
ok 12 GetDeployment
ok 13 CreateDeployment
ok 14 DeleteDeployment
ok 15 UpdateDeployment
ok 16 CreateRootRegionOverride
ok 17 DeleteRootRegionOverride
ok 18 UpdateRootRegionOverride
ok 19 CreateDeploymentOverride
ok 20 DeleteDeploymentOverride
ok 21 UpdateDeploymentOverride
ok 22 CreateOverrideRegionOverride
ok 23 DeleteOverrideRegionOverride
ok 24 UpdateOverrideRegionOverride
ok 25 GetAllPodConfig
ok 26 GetPodConfig
ok 27 CreatePodConfig
ok 28 DeletePodConfig
ok 29 UpdatePodConfig
ok 30 AddPort
ok 31 DeletePort
ok 32 UpdatePort
ok 33 ListImages
ok 34 DeleteImage
ok 35 ExportImages
ok 36 GetImageLimit
ok 37 GetImageDetail
ok 38 ListServer
ok 39 CountServer
ok 40 CountServerDetailed
ok 41 ListLocalServer
ok 42 DeleteLocalServer
ok 43 GetServer
ok 44 DeleteServer
ok 45 GetServerLogs
ok 46 ListSession
ok 47 CountSession
ok 48 DeleteSession
ok 49 ExportConfigV1
ok 50 ImportConfigV1
ok 51 ImageDetailClient
ok 52 DeregisterLocalServer
ok 53 RegisterLocalServer
ok 54 RegisterServer
ok 55 ShutdownServer
ok 56 GetServerSession
ok 57 CreateSession
ok 58 ClaimServer
ok 59 GetSession
ok 60 GetDefaultProvider
ok 61 ListProviders
ok 62 ListProvidersByRegion
ok 63 PublicGetMessages
```

```tap
./../../tests/sh/run-python-cli-achievement-unit-test.sh

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
./../../tests/sh/run-python-cli-iam-unit-test.sh

TAP version 13
1..262
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
ok 94 PublicCreateUserV2
ok 95 PublicForgotPasswordV2
ok 96 PublicResetPasswordV2
ok 97 PublicGetUserByUserIDV2
ok 98 PublicUpdateUserV2
ok 99 PublicGetUserBan
ok 100 PublicUpdatePasswordV2
ok 101 GetListJusticePlatformAccounts
ok 102 PublicPlatformLinkV2
ok 103 PublicDeletePlatformLinkV2
ok 104 AdminGetBansTypeV3
ok 105 AdminGetListBanReasonV3
ok 106 ListAdminsV3
ok 107 AdminGetAgeRestrictionStatusV3
ok 108 AdminUpdateAgeRestrictionConfigV3
ok 109 AdminGetListCountryAgeRestrictionV3
ok 110 AdminUpdateCountryAgeRestrictionV3
ok 111 AdminGetBannedUsersV3
ok 112 AdminGetBansTypeWithNamespaceV3
ok 113 AdminGetClientsByNamespaceV3
ok 114 AdminCreateClientV3
ok 115 AdminGetClientsbyNamespacebyIDV3
ok 116 AdminDeleteClientV3
ok 117 AdminUpdateClientV3
ok 118 AdminUpdateClientPermissionV3
ok 119 AdminAddClientPermissionsV3
ok 120 AdminDeleteClientPermissionV3
ok 121 RetrieveAllThirdPartyLoginPlatformCredentialV3
ok 122 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
ok 123 RetrieveAllSSOLoginPlatformCredentialV3
ok 124 RetrieveThirdPartyLoginPlatformCredentialV3
ok 125 AddThirdPartyLoginPlatformCredentialV3
ok 126 DeleteThirdPartyLoginPlatformCredentialV3
ok 127 UpdateThirdPartyLoginPlatformCredentialV3
ok 128 RetrieveSSOLoginPlatformCredential
ok 129 AddSSOLoginPlatformCredential
ok 130 DeleteSSOLoginPlatformCredentialV3
ok 131 UpdateSSOPlatformCredential
ok 132 AdminGetUserByPlatformUserIDV3
ok 133 GetAdminUsersByRoleIdV3
ok 134 AdminGetUserByEmailAddressV3
ok 135 AdminInviteUserV3
ok 136 AdminListUsersV3
ok 137 AdminSearchUserV3
ok 138 AdminGetBulkUserByEmailAddressV3
ok 139 AdminGetUserByUserIdV3
ok 140 AdminUpdateUserV3
ok 141 AdminGetUserBanV3
ok 142 AdminBanUserV3
ok 143 AdminUpdateUserBanV3
ok 144 AdminSendVerificationCodeV3
ok 145 AdminVerifyAccountV3
ok 146 GetUserVerificationCode
ok 147 AdminGetUserDeletionStatusV3
ok 148 AdminUpdateUserDeletionStatusV3
ok 149 AdminUpgradeHeadlessAccountV3
ok 150 AdminDeleteUserInformationV3
ok 151 AdminGetUserLoginHistoriesV3
ok 152 AdminUpdateUserPermissionV3
ok 153 AdminAddUserPermissionsV3
ok 154 AdminDeleteUserPermissionBulkV3
ok 155 AdminDeleteUserPermissionV3
ok 156 AdminGetUserPlatformAccountsV3
ok 157 AdminGetListJusticePlatformAccounts
ok 158 AdminCreateJusticeUser
ok 159 AdminLinkPlatformAccount
ok 160 AdminPlatformUnlinkV3
ok 161 AdminPlatformLinkV3
ok 162 AdminDeleteUserRolesV3
ok 163 AdminSaveUserRoleV3
ok 164 AdminAddUserRoleV3
ok 165 AdminDeleteUserRoleV3
ok 166 AdminUpdateUserStatusV3
ok 167 AdminVerifyUserWithoutVerificationCodeV3
ok 168 AdminGetRolesV3
ok 169 AdminCreateRoleV3
ok 170 AdminGetRoleV3
ok 171 AdminDeleteRoleV3
ok 172 AdminUpdateRoleV3
ok 173 AdminGetRoleAdminStatusV3
ok 174 AdminUpdateAdminRoleStatusV3
ok 175 AdminRemoveRoleAdminV3
ok 176 AdminGetRoleManagersV3
ok 177 AdminAddRoleManagersV3
ok 178 AdminRemoveRoleManagersV3
ok 179 AdminGetRoleMembersV3
ok 180 AdminAddRoleMembersV3
ok 181 AdminRemoveRoleMembersV3
ok 182 AdminUpdateRolePermissionsV3
ok 183 AdminAddRolePermissionsV3
ok 184 AdminDeleteRolePermissionsV3
ok 185 AdminDeleteRolePermissionV3
ok 186 AdminGetMyUserV3
ok 187 UserAuthenticationV3
ok 188 GetCountryLocationV3
ok 189 Logout
ok 190 AdminRetrieveUserThirdPartyPlatformTokenV3
ok 191 RevokeUserV3
ok 192 AuthorizeV3
ok 193 TokenIntrospectionV3
ok 194 GetJWKSV3
ok 195 RetrieveUserThirdPartyPlatformTokenV3
ok 196 AuthCodeRequestV3
ok 197 PlatformTokenGrantV3
ok 198 GetRevocationListV3
ok 199 TokenRevocationV3
ok 200 TokenGrantV3
ok 201 PlatformAuthenticationV3
ok 202 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
ok 203 PublicListUserIDByPlatformUserIDsV3
ok 204 PublicGetUserByPlatformUserIDV3
ok 205 PublicGetAsyncStatus
ok 206 PublicSearchUserV3
ok 207 PublicCreateUserV3
ok 208 PublicBulkGetUsers
ok 209 PublicForgotPasswordV3
ok 210 GetAdminInvitationV3
ok 211 CreateUserFromInvitationV3
ok 212 UpdateUserV3
ok 213 PublicUpdateUserV3
ok 214 PublicSendVerificationCodeV3
ok 215 PublicUserVerificationV3
ok 216 PublicUpgradeHeadlessAccountV3
ok 217 PublicVerifyHeadlessAccountV3
ok 218 PublicUpdatePasswordV3
ok 219 PublicCreateJusticeUser
ok 220 PublicPlatformLinkV3
ok 221 PublicPlatformUnlinkV3
ok 222 PublicWebLinkPlatform
ok 223 PublicWebLinkPlatformEstablish
ok 224 ResetPasswordV3
ok 225 PublicGetUserByUserIdV3
ok 226 PublicGetUserBanHistoryV3
ok 227 PublicGetUserLoginHistoriesV3
ok 228 PublicGetUserPlatformAccountsV3
ok 229 PublicLinkPlatformAccount
ok 230 PublicValidateUserByUserIDAndPasswordV3
ok 231 PublicGetRolesV3
ok 232 PublicGetRoleV3
ok 233 PublicGetMyUserV3
ok 234 PlatformAuthenticateSAMLV3Handler
ok 235 LoginSSOClient
ok 236 LogoutSSOClient
ok 237 AdminUpdateUserV4
ok 238 AdminUpdateUserEmailAddressV4
ok 239 AdminListUserRolesV4
ok 240 AdminUpdateUserRoleV4
ok 241 AdminAddUserRoleV4
ok 242 AdminRemoveUserRoleV4
ok 243 AdminGetRolesV4
ok 244 AdminCreateRoleV4
ok 245 AdminGetRoleV4
ok 246 AdminDeleteRoleV4
ok 247 AdminUpdateRoleV4
ok 248 AdminUpdateRolePermissionsV4
ok 249 AdminAddRolePermissionsV4
ok 250 AdminDeleteRolePermissionsV4
ok 251 AdminListAssignedUsersV4
ok 252 AdminAssignUserToRoleV4
ok 253 AdminRevokeUserFromRoleV4
ok 254 AdminUpdateMyUserV4
ok 255 AdminInviteUserV4
ok 256 PublicCreateTestUserV4
ok 257 PublicCreateUserV4
ok 258 CreateUserFromInvitationV4
ok 259 PublicUpdateUserV4
ok 260 PublicUpdateUserEmailAddressV4
ok 261 PublicUpgradeHeadlessAccountWithVerificationCodeV4
ok 262 PublicUpgradeHeadlessAccountV4
```

```tap
./../../tests/sh/run-python-cli-seasonpass-unit-test.sh

TAP version 13
1..38
ok 1 GetPass
ok 2 DeletePass
ok 3 UpdatePass
ok 4 QueryPasses
ok 5 CreatePass
ok 6 GetReward
ok 7 DeleteReward
ok 8 UpdateReward
ok 9 QueryRewards
ok 10 CreateReward
ok 11 UnpublishSeason
ok 12 GetSeason
ok 13 DeleteSeason
ok 14 UpdateSeason
ok 15 CloneSeason
ok 16 QuerySeasons
ok 17 CreateSeason
ok 18 RetireSeason
ok 19 PublishSeason
ok 20 GetCurrentSeason
ok 21 UpdateTier
ok 22 DeleteTier
ok 23 QueryTiers
ok 24 CreateTier
ok 25 ExistsAnyPassByPassCodes
ok 26 GrantUserTier
ok 27 GetUserSeason
ok 28 CheckSeasonPurchasable
ok 29 GetCurrentUserSeasonProgression
ok 30 ResetUserSeason
ok 31 GrantUserPass
ok 32 GetUserParticipatedSeasons
ok 33 GrantUserExp
ok 34 PublicGetCurrentSeason
ok 35 PublicClaimUserReward
ok 36 PublicGetCurrentUserSeason
ok 37 PublicBulkClaimUserRewards
ok 38 PublicGetUserSeason
```

```tap
./../../tests/sh/run-python-cli-lobby-unit-test.sh

TAP version 13
1..89
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
ok 16 ExportConfig
ok 17 ImportConfig
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
ok 41 AdminGetUserPartyV1
ok 42 AdminGetLobbyCCU
ok 43 AdminGetAllPlayerSessionAttribute
ok 44 AdminSetPlayerSessionAttribute
ok 45 AdminGetPlayerSessionAttribute
ok 46 AdminGetPlayerBlockedPlayersV1
ok 47 AdminGetPlayerBlockedByPlayersV1
ok 48 AdminBulkBlockPlayersV1
ok 49 AdminDebugProfanityFilters
ok 50 AdminGetProfanityListFiltersV1
ok 51 AdminAddProfanityFilterIntoList
ok 52 AdminAddProfanityFilters
ok 53 AdminImportProfanityFiltersFromFile
ok 54 AdminDeleteProfanityFilter
ok 55 AdminGetProfanityLists
ok 56 AdminCreateProfanityList
ok 57 AdminUpdateProfanityList
ok 58 AdminDeleteProfanityList
ok 59 AdminGetProfanityRule
ok 60 AdminSetProfanityRuleForNamespace
ok 61 AdminVerifyMessageProfanityResponse
ok 62 AdminGetThirdPartyConfig
ok 63 AdminUpdateThirdPartyConfig
ok 64 AdminCreateThirdPartyConfig
ok 65 AdminDeleteThirdPartyConfig
ok 66 PublicGetMessages
ok 67 GetPersonalChatHistoryV1Public
ok 68 PublicGetPartyDataV1
ok 69 PublicUpdatePartyAttributesV1
ok 70 PublicGetPlayerBlockedPlayersV1
ok 71 PublicGetPlayerBlockedByPlayersV1
ok 72 UsersPresenceHandlerV1
ok 73 FreeFormNotification
ok 74 NotificationWithTemplate
ok 75 GetGameTemplate
ok 76 CreateTemplate
ok 77 GetSlugTemplate
ok 78 DeleteTemplateSlug
ok 79 GetLocalizationTemplate
ok 80 UpdateLocalizationTemplate
ok 81 DeleteTemplateLocalization
ok 82 PublishTemplate
ok 83 GetTopicByNamespace
ok 84 CreateTopic
ok 85 GetTopicByTopicName
ok 86 UpdateTopicByTopicName
ok 87 DeleteTopicByTopicName
ok 88 FreeFormNotificationByUserID
ok 89 NotificationWithTemplateByUserID
```

```tap
./../../tests/sh/run-python-cli-gdpr-unit-test.sh

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
./../../tests/sh/run-python-cli-social-unit-test.sh

TAP version 13
1..68
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
ok 64 DeleteUserStatItems2
ok 65 UpdateUserStatItemValue
ok 66 BulkUpdateUserStatItem1
ok 67 BulkUpdateUserStatItem2
ok 68 UpdateUserStatItemValue1
```

```tap
./../../tests/sh/run-python-cli-platform-unit-test.sh

TAP version 13
1..302
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
ok 35 QueryEntitlements
ok 36 GetEntitlement
ok 37 QueryFulfillmentHistories
ok 38 GetAppleIAPConfig
ok 39 UpdateAppleIAPConfig
ok 40 DeleteAppleIAPConfig
ok 41 GetEpicGamesIAPConfig
ok 42 UpdateEpicGamesIAPConfig
ok 43 DeleteEpicGamesIAPConfig
ok 44 GetGoogleIAPConfig
ok 45 UpdateGoogleIAPConfig
ok 46 DeleteGoogleIAPConfig
ok 47 UpdateGoogleP12File
ok 48 GetPlayStationIAPConfig
ok 49 UpdatePlaystationIAPConfig
ok 50 DeletePlaystationIAPConfig
ok 51 GetStadiaIAPConfig
ok 52 DeleteStadiaIAPConfig
ok 53 UpdateStadiaJsonConfigFile
ok 54 GetSteamIAPConfig
ok 55 UpdateSteamIAPConfig
ok 56 DeleteSteamIAPConfig
ok 57 GetXblIAPConfig
ok 58 UpdateXblIAPConfig
ok 59 DeleteXblAPConfig
ok 60 UpdateXblBPCertFile
ok 61 SyncInGameItem
ok 62 CreateItem
ok 63 GetItemByAppId
ok 64 QueryItems
ok 65 ListBasicItemsByFeatures
ok 66 GetItemBySku
ok 67 GetLocaleItemBySku
ok 68 GetItemIdBySku
ok 69 BulkGetLocaleItems
ok 70 SearchItems
ok 71 QueryUncategorizedItems
ok 72 GetItem
ok 73 UpdateItem
ok 74 DeleteItem
ok 75 AcquireItem
ok 76 GetApp
ok 77 UpdateApp
ok 78 DisableItem
ok 79 GetItemDynamicData
ok 80 EnableItem
ok 81 FeatureItem
ok 82 DefeatureItem
ok 83 GetLocaleItem
ok 84 ReturnItem
ok 85 QueryKeyGroups
ok 86 CreateKeyGroup
ok 87 GetKeyGroup
ok 88 UpdateKeyGroup
ok 89 GetKeyGroupDynamic
ok 90 ListKeys
ok 91 UploadKeys
ok 92 QueryOrders
ok 93 GetOrderStatistics
ok 94 GetOrder
ok 95 RefundOrder
ok 96 GetPaymentCallbackConfig
ok 97 UpdatePaymentCallbackConfig
ok 98 QueryPaymentNotifications
ok 99 QueryPaymentOrders
ok 100 CreatePaymentOrderByDedicated
ok 101 ListExtOrderNoByExtTxId
ok 102 GetPaymentOrder
ok 103 ChargePaymentOrder
ok 104 RefundPaymentOrderByDedicated
ok 105 SimulatePaymentOrderNotification
ok 106 GetPaymentOrderChargeStatus
ok 107 CreateReward
ok 108 QueryRewards
ok 109 ExportRewards
ok 110 ImportRewards
ok 111 GetReward
ok 112 UpdateReward
ok 113 DeleteReward
ok 114 CheckEventCondition
ok 115 ListStores
ok 116 CreateStore
ok 117 ImportStore
ok 118 GetPublishedStore
ok 119 DeletePublishedStore
ok 120 GetPublishedStoreBackup
ok 121 RollbackPublishedStore
ok 122 GetStore
ok 123 UpdateStore
ok 124 DeleteStore
ok 125 CloneStore
ok 126 ExportStore
ok 127 QuerySubscriptions
ok 128 RecurringChargeSubscription
ok 129 GetTicketDynamic
ok 130 DecreaseTicketSale
ok 131 GetTicketBoothID
ok 132 IncreaseTicketSale
ok 133 AnonymizeCampaign
ok 134 AnonymizeEntitlement
ok 135 AnonymizeFulfillment
ok 136 AnonymizeIntegration
ok 137 AnonymizeOrder
ok 138 AnonymizePayment
ok 139 AnonymizeSubscription
ok 140 AnonymizeWallet
ok 141 QueryUserEntitlements
ok 142 GrantUserEntitlement
ok 143 GetUserAppEntitlementByAppId
ok 144 QueryUserEntitlementsByAppType
ok 145 GetUserEntitlementByItemId
ok 146 GetUserEntitlementBySku
ok 147 ExistsAnyUserActiveEntitlement
ok 148 ExistsAnyUserActiveEntitlementByItemIds
ok 149 GetUserAppEntitlementOwnershipByAppId
ok 150 GetUserEntitlementOwnershipByItemId
ok 151 GetUserEntitlementOwnershipBySku
ok 152 RevokeUserEntitlements
ok 153 GetUserEntitlement
ok 154 UpdateUserEntitlement
ok 155 ConsumeUserEntitlement
ok 156 DisableUserEntitlement
ok 157 EnableUserEntitlement
ok 158 GetUserEntitlementHistories
ok 159 RevokeUserEntitlement
ok 160 FulfillItem
ok 161 RedeemCode
ok 162 QueryUserIAPOrders
ok 163 MockFulfillIAPItem
ok 164 QueryUserOrders
ok 165 CountOfPurchasedItem
ok 166 GetUserOrder
ok 167 UpdateUserOrderStatus
ok 168 FulfillUserOrder
ok 169 GetUserOrderGrant
ok 170 GetUserOrderHistories
ok 171 ProcessUserOrderNotification
ok 172 DownloadUserOrderReceipt
ok 173 CreateUserPaymentOrder
ok 174 RefundUserPaymentOrder
ok 175 ApplyUserRedemption
ok 176 QueryUserSubscriptions
ok 177 GetUserSubscriptionActivities
ok 178 PlatformSubscribeSubscription
ok 179 CheckUserSubscriptionSubscribableByItemId
ok 180 GetUserSubscription
ok 181 DeleteUserSubscription
ok 182 CancelSubscription
ok 183 GrantDaysToSubscription
ok 184 GetUserSubscriptionBillingHistories
ok 185 ProcessUserSubscriptionNotification
ok 186 AcquireUserTicket
ok 187 CheckWallet
ok 188 CreditUserWallet
ok 189 PayWithUserWallet
ok 190 GetUserWallet
ok 191 DebitUserWallet
ok 192 DisableUserWallet
ok 193 EnableUserWallet
ok 194 ListUserWalletTransactions
ok 195 QueryWallets
ok 196 GetWallet
ok 197 SyncOrders
ok 198 TestAdyenConfig
ok 199 TestAliPayConfig
ok 200 TestCheckoutConfig
ok 201 DebugMatchedPaymentMerchantConfig
ok 202 TestPayPalConfig
ok 203 TestStripeConfig
ok 204 TestWxPayConfig
ok 205 TestXsollaConfig
ok 206 GetPaymentMerchantConfig
ok 207 UpdateAdyenConfig
ok 208 TestAdyenConfigById
ok 209 UpdateAliPayConfig
ok 210 TestAliPayConfigById
ok 211 UpdateCheckoutConfig
ok 212 TestCheckoutConfigById
ok 213 UpdatePayPalConfig
ok 214 TestPayPalConfigById
ok 215 UpdateStripeConfig
ok 216 TestStripeConfigById
ok 217 UpdateWxPayConfig
ok 218 UpdateWxPayConfigCert
ok 219 TestWxPayConfigById
ok 220 UpdateXsollaConfig
ok 221 TestXsollaConfigById
ok 222 UpdateXsollaUIConfig
ok 223 QueryPaymentProviderConfig
ok 224 CreatePaymentProviderConfig
ok 225 GetAggregatePaymentProviders
ok 226 DebugMatchedPaymentProviderConfig
ok 227 GetSpecialPaymentProviders
ok 228 UpdatePaymentProviderConfig
ok 229 DeletePaymentProviderConfig
ok 230 GetPaymentTaxConfig
ok 231 UpdatePaymentTaxConfig
ok 232 SyncPaymentOrders
ok 233 PublicGetRootCategories
ok 234 DownloadCategories
ok 235 PublicGetCategory
ok 236 PublicGetChildCategories
ok 237 PublicGetDescendantCategories
ok 238 PublicListCurrencies
ok 239 PublicGetItemByAppId
ok 240 PublicQueryItems
ok 241 PublicGetItemBySku
ok 242 PublicBulkGetItems
ok 243 PublicSearchItems
ok 244 PublicGetApp
ok 245 PublicGetItemDynamicData
ok 246 PublicGetItem
ok 247 GetPaymentCustomization
ok 248 PublicGetPaymentUrl
ok 249 PublicGetPaymentMethods
ok 250 PublicGetUnpaidPaymentOrder
ok 251 Pay
ok 252 PublicCheckPaymentOrderPaidStatus
ok 253 GetPaymentPublicConfig
ok 254 PublicGetQRCode
ok 255 PublicNormalizePaymentReturnUrl
ok 256 GetPaymentTaxValue
ok 257 GetRewardByCode
ok 258 QueryRewards1
ok 259 GetReward1
ok 260 PublicListStores
ok 261 PublicExistsAnyMyActiveEntitlement
ok 262 PublicGetMyAppEntitlementOwnershipByAppId
ok 263 PublicGetMyEntitlementOwnershipByItemId
ok 264 PublicGetMyEntitlementOwnershipBySku
ok 265 PublicGetEntitlementOwnershipToken
ok 266 PublicGetMyWallet
ok 267 PublicQueryUserEntitlements
ok 268 PublicGetUserAppEntitlementByAppId
ok 269 PublicQueryUserEntitlementsByAppType
ok 270 PublicGetUserEntitlementByItemId
ok 271 PublicGetUserEntitlementBySku
ok 272 PublicExistsAnyUserActiveEntitlement
ok 273 PublicGetUserAppEntitlementOwnershipByAppId
ok 274 PublicGetUserEntitlementOwnershipByItemId
ok 275 PublicGetUserEntitlementOwnershipBySku
ok 276 PublicGetUserEntitlement
ok 277 PublicConsumeUserEntitlement
ok 278 PublicRedeemCode
ok 279 PublicFulfillAppleIAPItem
ok 280 SyncEpicGamesInventory
ok 281 PublicFulfillGoogleIAPItem
ok 282 PublicReconcilePlayStationStore
ok 283 SyncStadiaEntitlement
ok 284 SyncSteamInventory
ok 285 SyncXboxInventory
ok 286 PublicQueryUserOrders
ok 287 PublicCreateUserOrder
ok 288 PublicGetUserOrder
ok 289 PublicCancelUserOrder
ok 290 PublicGetUserOrderHistories
ok 291 PublicDownloadUserOrderReceipt
ok 292 PublicGetPaymentAccounts
ok 293 PublicDeletePaymentAccount
ok 294 PublicQueryUserSubscriptions
ok 295 PublicSubscribeSubscription
ok 296 PublicCheckUserSubscriptionSubscribableByItemId
ok 297 PublicGetUserSubscription
ok 298 PublicChangeSubscriptionBillingAccount
ok 299 PublicCancelSubscription
ok 300 PublicGetUserSubscriptionBillingHistories
ok 301 PublicGetWallet
ok 302 PublicListUserWalletTransactions
```

```tap
./../../tests/sh/run-python-cli-sessionbrowser-unit-test.sh

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
./../../tests/sh/run-python-cli-leaderboard-unit-test.sh

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
./../../tests/sh/run-python-cli-eventlog-unit-test.sh

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
./../../tests/sh/run-python-cli-ugc-unit-test.sh

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

```tap
./../../tests/sh/run-python-cli-group-unit-test.sh

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
ok 24 UpdateSingleGroupPublicV1
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
./../../tests/sh/run-python-cli-qosm-unit-test.sh

TAP version 13
1..4
ok 1 DeleteServer
ok 2 SetServerAlias
ok 3 ListServer
ok 4 Heartbeat
```

```tap
./../../tests/sh/run-python-cli-legal-unit-test.sh

TAP version 13
1..39
ok 1 RetrieveAcceptedAgreements
ok 2 RetrieveAllUsersByPolicyVersion
ok 3 RetrieveAllLegalPolicies
ok 4 CreatePolicy
ok 5 RetrieveSinglePolicy
ok 6 PartialUpdatePolicy
ok 7 RetrievePolicyCountry
ok 8 RetrieveLocalizedPolicyVersions
ok 9 CreateLocalizedPolicyVersion
ok 10 RetrieveSingleLocalizedPolicyVersion
ok 11 UpdateLocalizedPolicyVersion
ok 12 RequestPresignedURL
ok 13 SetDefaultPolicy
ok 14 RetrievePolicies
ok 15 UpdatePolicyVersion
ok 16 PublishPolicyVersion
ok 17 UpdatePolicy
ok 18 SetDefaultPolicy1
ok 19 RetrieveSinglePolicyVersion
ok 20 CreatePolicyVersion
ok 21 RetrieveAllPolicyTypes
ok 22 GetUserInfoStatus
ok 23 SyncUserInfo
ok 24 InvalidateUserInfoCache
ok 25 AnonymizeUserAgreement
ok 26 ChangePreferenceConsent
ok 27 AcceptVersionedPolicy
ok 28 RetrieveAgreementsPublic
ok 29 BulkAcceptVersionedPolicy
ok 30 IndirectBulkAcceptVersionedPolicyV2
ok 31 IndirectBulkAcceptVersionedPolicy
ok 32 RetrieveEligibilitiesPublic
ok 33 RetrieveEligibilitiesPublicIndirect
ok 34 RetrieveSingleLocalizedPolicyVersion1
ok 35 RetrievePolicyVersions
ok 36 RetrieveLatestPolicies
ok 37 RetrieveLatestPoliciesPublic
ok 38 RetrieveLatestPoliciesByNamespaceAndCountryPublic
ok 39 CheckReadiness
```

```tap
./../../tests/sh/run-python-cli-matchmaking-unit-test.sh

TAP version 13
1..27
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
ok 27 VersionCheckHandler
```

```tap
./../../tests/sh/run-python-cli-cloudsave-unit-test.sh

TAP version 13
1..29
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
ok 21 PublicDeletePlayerPublicRecordHandlerV1
ok 22 PutPlayerPublicRecordConcurrentHandlerV1
ok 23 GetPlayerRecordHandlerV1
ok 24 PutPlayerRecordHandlerV1
ok 25 PostPlayerRecordHandlerV1
ok 26 DeletePlayerRecordHandlerV1
ok 27 GetPlayerPublicRecordHandlerV1
ok 28 PutPlayerPublicRecordHandlerV1
ok 29 PostPlayerPublicRecordHandlerV1
```

```tap
./../../tests/sh/run-python-cli-dslogmanager-unit-test.sh

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
./../../tests/sh/run-python-cli-basic-unit-test.sh

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
./../../tests/sh/run-python-cli-gametelemetry-unit-test.sh

TAP version 13
1..3
ok 1 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
ok 2 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
ok 3 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
```

