[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-platform-service Index (3.39.0)


## Operations

### Anonymization
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/campaign | DELETE | anonymizeCampaign | [AnonymizeCampaign](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_campaign.py) | [anonymize_campaign](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements | DELETE | anonymizeEntitlement | [AnonymizeEntitlement](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_entitlement.py) | [anonymize_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment | DELETE | anonymizeFulfillment | [AnonymizeFulfillment](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_fulfillment.py) | [anonymize_fulfillment](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/integrations | DELETE | anonymizeIntegration | [AnonymizeIntegration](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_integration.py) | [anonymize_integration](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/orders | DELETE | anonymizeOrder | [AnonymizeOrder](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_order.py) | [anonymize_order](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment | DELETE | anonymizePayment | [AnonymizePayment](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_payment.py) | [anonymize_payment](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions | DELETE | anonymizeSubscription | [AnonymizeSubscription](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_subscription.py) | [anonymize_subscription](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/wallets | DELETE | anonymizeWallet | [AnonymizeWallet](../accelbyte_py_sdk/api/platform/operations/anonymization/anonymize_wallet.py) | [anonymize_wallet](../accelbyte_py_sdk/api/platform/wrappers/_anonymization.py) |

### Campaign
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/redemption | POST | applyUserRedemption | [ApplyUserRedemption](../accelbyte_py_sdk/api/platform/operations/campaign/apply_user_redemption.py) | [apply_user_redemption](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk | PUT | bulkDisableCodes | [BulkDisableCodes](../accelbyte_py_sdk/api/platform/operations/campaign/bulk_disable_codes.py) | [bulk_disable_codes](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk | PUT | bulkEnableCodes | [BulkEnableCodes](../accelbyte_py_sdk/api/platform/operations/campaign/bulk_enable_codes.py) | [bulk_enable_codes](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/campaigns | POST | createCampaign | [CreateCampaign](../accelbyte_py_sdk/api/platform/operations/campaign/create_campaign.py) | [create_campaign](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId} | POST | createCodes | [CreateCodes](../accelbyte_py_sdk/api/platform/operations/campaign/create_codes.py) | [create_codes](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/{code}/disable | PUT | disableCode | [DisableCode](../accelbyte_py_sdk/api/platform/operations/campaign/disable_code.py) | [disable_code](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv | GET | download | [Download](../accelbyte_py_sdk/api/platform/operations/campaign/download.py) | [download](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/{code}/enable | PUT | enableCode | [EnableCode](../accelbyte_py_sdk/api/platform/operations/campaign/enable_code.py) | [enable_code](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/campaigns/{campaignId} | GET | getCampaign | [GetCampaign](../accelbyte_py_sdk/api/platform/operations/campaign/get_campaign.py) | [get_campaign](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic | GET | getCampaignDynamic | [GetCampaignDynamic](../accelbyte_py_sdk/api/platform/operations/campaign/get_campaign_dynamic.py) | [get_campaign_dynamic](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/{code} | GET | getCode | [GetCode](../accelbyte_py_sdk/api/platform/operations/campaign/get_code.py) | [get_code](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/campaigns | GET | queryCampaigns | [QueryCampaigns](../accelbyte_py_sdk/api/platform/operations/campaign/query_campaigns.py) | [query_campaigns](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId} | GET | queryCodes | [QueryCodes](../accelbyte_py_sdk/api/platform/operations/campaign/query_codes.py) | [query_codes](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history | GET | queryRedeemHistory | [QueryRedeemHistory](../accelbyte_py_sdk/api/platform/operations/campaign/query_redeem_history.py) | [query_redeem_history](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |
| /platform/admin/namespaces/{namespace}/campaigns/{campaignId} | PUT | updateCampaign | [UpdateCampaign](../accelbyte_py_sdk/api/platform/operations/campaign/update_campaign.py) | [update_campaign](../accelbyte_py_sdk/api/platform/wrappers/_campaign.py) |

### Category
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/categories | POST | createCategory | [CreateCategory](../accelbyte_py_sdk/api/platform/operations/category/create_category.py) | [create_category](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/{categoryPath} | DELETE | deleteCategory | [DeleteCategory](../accelbyte_py_sdk/api/platform/operations/category/delete_category.py) | [delete_category](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/public/namespaces/{namespace}/categories/download | GET | downloadCategories | [DownloadCategories](../accelbyte_py_sdk/api/platform/operations/category/download_categories.py) | [download_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/{categoryPath} | GET | getCategory | [GetCategory](../accelbyte_py_sdk/api/platform/operations/category/get_category.py) | [get_category](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/{categoryPath}/children | GET | getChildCategories | [GetChildCategories](../accelbyte_py_sdk/api/platform/operations/category/get_child_categories.py) | [get_child_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants | GET | getDescendantCategories | [GetDescendantCategories](../accelbyte_py_sdk/api/platform/operations/category/get_descendant_categories.py) | [get_descendant_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories | GET | getRootCategories | [GetRootCategories](../accelbyte_py_sdk/api/platform/operations/category/get_root_categories.py) | [get_root_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/basic | GET | listCategoriesBasic | [ListCategoriesBasic](../accelbyte_py_sdk/api/platform/operations/category/list_categories_basic.py) | [list_categories_basic](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/public/namespaces/{namespace}/categories/{categoryPath} | GET | publicGetCategory | [PublicGetCategory](../accelbyte_py_sdk/api/platform/operations/category/public_get_category.py) | [public_get_category](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/public/namespaces/{namespace}/categories/{categoryPath}/children | GET | publicGetChildCategories | [PublicGetChildCategories](../accelbyte_py_sdk/api/platform/operations/category/public_get_child_categories.py) | [public_get_child_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants | GET | publicGetDescendantCategories | [PublicGetDescendantCategories](../accelbyte_py_sdk/api/platform/operations/category/public_get_descendant_categories.py) | [public_get_descendant_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/public/namespaces/{namespace}/categories | GET | publicGetRootCategories | [PublicGetRootCategories](../accelbyte_py_sdk/api/platform/operations/category/public_get_root_categories.py) | [public_get_root_categories](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |
| /platform/admin/namespaces/{namespace}/categories/{categoryPath} | PUT | updateCategory | [UpdateCategory](../accelbyte_py_sdk/api/platform/operations/category/update_category.py) | [update_category](../accelbyte_py_sdk/api/platform/wrappers/_category.py) |

### Currency
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/currencies | POST | createCurrency | [CreateCurrency](../accelbyte_py_sdk/api/platform/operations/currency/create_currency.py) | [create_currency](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/admin/namespaces/{namespace}/currencies/{currencyCode} | DELETE | deleteCurrency | [DeleteCurrency](../accelbyte_py_sdk/api/platform/operations/currency/delete_currency.py) | [delete_currency](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/config | GET | getCurrencyConfig | [GetCurrencyConfig](../accelbyte_py_sdk/api/platform/operations/currency/get_currency_config.py) | [get_currency_config](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/admin/namespaces/{namespace}/currencies/{currencyCode}/summary | GET | getCurrencySummary | [GetCurrencySummary](../accelbyte_py_sdk/api/platform/operations/currency/get_currency_summary.py) | [get_currency_summary](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/admin/namespaces/{namespace}/currencies | GET | listCurrencies | [ListCurrencies](../accelbyte_py_sdk/api/platform/operations/currency/list_currencies.py) | [list_currencies](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/public/namespaces/{namespace}/currencies | GET | publicListCurrencies | [PublicListCurrencies](../accelbyte_py_sdk/api/platform/operations/currency/public_list_currencies.py) | [public_list_currencies](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |
| /platform/admin/namespaces/{namespace}/currencies/{currencyCode} | PUT | updateCurrency | [UpdateCurrency](../accelbyte_py_sdk/api/platform/operations/currency/update_currency.py) | [update_currency](../accelbyte_py_sdk/api/platform/wrappers/_currency.py) |

### Entitlement
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement | PUT | consumeUserEntitlement | [ConsumeUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/consume_user_entitlement.py) | [consume_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | POST | createUserDistributionReceiver | [CreateUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/create_user_distribution_receiver.py) | [create_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | DELETE | deleteUserDistributionReceiver | [DeleteUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/delete_user_distribution_receiver.py) | [delete_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable | PUT | disableUserEntitlement | [DisableUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/disable_user_entitlement.py) | [disable_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable | PUT | enableUserEntitlement | [EnableUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/enable_user_entitlement.py) | [enable_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any | GET | existsAnyUserActiveEntitlement | [ExistsAnyUserActiveEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/exists_any_user_active_entitlement.py) | [exists_any_user_active_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf | GET | existsAnyUserActiveEntitlementByItemIds | [ExistsAnyUserActiveEntitlementByItemIds](../accelbyte_py_sdk/api/platform/operations/entitlement/exists_any_user_active_entitlement_by_item_ids.py) | [exists_any_user_active_entitlement_by_item_ids](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/entitlements/{entitlementId} | GET | getEntitlement | [GetEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/get_entitlement.py) | [get_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId | GET | getUserAppEntitlementByAppId | [GetUserAppEntitlementByAppId](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_app_entitlement_by_app_id.py) | [get_user_app_entitlement_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId | GET | getUserAppEntitlementOwnershipByAppId | [GetUserAppEntitlementOwnershipByAppId](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_app_entitlement_ownership_by_app_id.py) | [get_user_app_entitlement_ownership_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers | GET | getUserDistributionReceivers | [GetUserDistributionReceivers](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_distribution_receivers.py) | [get_user_distribution_receivers](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} | GET | getUserEntitlement | [GetUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement.py) | [get_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId | GET | getUserEntitlementByItemId | [GetUserEntitlementByItemId](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement_by_item_id.py) | [get_user_entitlement_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku | GET | getUserEntitlementBySku | [GetUserEntitlementBySku](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement_by_sku.py) | [get_user_entitlement_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history | GET | getUserEntitlementHistories | [GetUserEntitlementHistories](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement_histories.py) | [get_user_entitlement_histories](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId | GET | getUserEntitlementOwnershipByItemId | [GetUserEntitlementOwnershipByItemId](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement_ownership_by_item_id.py) | [get_user_entitlement_ownership_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku | GET | getUserEntitlementOwnershipBySku | [GetUserEntitlementOwnershipBySku](../accelbyte_py_sdk/api/platform/operations/entitlement/get_user_entitlement_ownership_by_sku.py) | [get_user_entitlement_ownership_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements | POST | grantUserEntitlement | [GrantUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/grant_user_entitlement.py) | [grant_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement | PUT | publicConsumeUserEntitlement | [PublicConsumeUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/public_consume_user_entitlement.py) | [public_consume_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | POST | publicCreateUserDistributionReceiver | [PublicCreateUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/public_create_user_distribution_receiver.py) | [public_create_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | DELETE | publicDeleteUserDistributionReceiver | [PublicDeleteUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/public_delete_user_distribution_receiver.py) | [public_delete_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/distribute | PUT | publicDistributeUserDistribution | [PublicDistributeUserDistribution](../accelbyte_py_sdk/api/platform/operations/entitlement/public_distribute_user_distribution.py) | [public_distribute_user_distribution](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any | GET | publicExistsAnyMyActiveEntitlement | [PublicExistsAnyMyActiveEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/public_exists_any_my_active_entitlement.py) | [public_exists_any_my_active_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any | GET | publicExistsAnyUserActiveEntitlement | [PublicExistsAnyUserActiveEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/public_exists_any_user_active_entitlement.py) | [public_exists_any_user_active_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken | GET | publicGetEntitlementOwnershipToken | [PublicGetEntitlementOwnershipToken](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_entitlement_ownership_token.py) | [public_get_entitlement_ownership_token](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId | GET | publicGetMyAppEntitlementOwnershipByAppId | [PublicGetMyAppEntitlementOwnershipByAppId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_my_app_entitlement_ownership_by_app_id.py) | [public_get_my_app_entitlement_ownership_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId | GET | publicGetMyEntitlementOwnershipByItemId | [PublicGetMyEntitlementOwnershipByItemId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_my_entitlement_ownership_by_item_id.py) | [public_get_my_entitlement_ownership_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku | GET | publicGetMyEntitlementOwnershipBySku | [PublicGetMyEntitlementOwnershipBySku](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_my_entitlement_ownership_by_sku.py) | [public_get_my_entitlement_ownership_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId | GET | publicGetUserAppEntitlementByAppId | [PublicGetUserAppEntitlementByAppId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_app_entitlement_by_app_id.py) | [public_get_user_app_entitlement_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId | GET | publicGetUserAppEntitlementOwnershipByAppId | [PublicGetUserAppEntitlementOwnershipByAppId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_app_entitlement_ownership_by_app_id.py) | [public_get_user_app_entitlement_ownership_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers | GET | publicGetUserDistributionReceivers | [PublicGetUserDistributionReceivers](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_distribution_receivers.py) | [public_get_user_distribution_receivers](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} | GET | publicGetUserEntitlement | [PublicGetUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_entitlement.py) | [public_get_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId | GET | publicGetUserEntitlementByItemId | [PublicGetUserEntitlementByItemId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_entitlement_by_item_id.py) | [public_get_user_entitlement_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku | GET | publicGetUserEntitlementBySku | [PublicGetUserEntitlementBySku](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_entitlement_by_sku.py) | [public_get_user_entitlement_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId | GET | publicGetUserEntitlementOwnershipByItemId | [PublicGetUserEntitlementOwnershipByItemId](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_entitlement_ownership_by_item_id.py) | [public_get_user_entitlement_ownership_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku | GET | publicGetUserEntitlementOwnershipBySku | [PublicGetUserEntitlementOwnershipBySku](../accelbyte_py_sdk/api/platform/operations/entitlement/public_get_user_entitlement_ownership_by_sku.py) | [public_get_user_entitlement_ownership_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements | GET | publicQueryUserEntitlements | [PublicQueryUserEntitlements](../accelbyte_py_sdk/api/platform/operations/entitlement/public_query_user_entitlements.py) | [public_query_user_entitlements](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType | GET | publicQueryUserEntitlementsByAppType | [PublicQueryUserEntitlementsByAppType](../accelbyte_py_sdk/api/platform/operations/entitlement/public_query_user_entitlements_by_app_type.py) | [public_query_user_entitlements_by_app_type](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | PUT | publicUpdateUserDistributionReceiver | [PublicUpdateUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/public_update_user_distribution_receiver.py) | [public_update_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/entitlements | GET | queryEntitlements | [QueryEntitlements](../accelbyte_py_sdk/api/platform/operations/entitlement/query_entitlements.py) | [query_entitlements](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements | GET | queryUserEntitlements | [QueryUserEntitlements](../accelbyte_py_sdk/api/platform/operations/entitlement/query_user_entitlements.py) | [query_user_entitlements](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType | GET | queryUserEntitlementsByAppType | [QueryUserEntitlementsByAppType](../accelbyte_py_sdk/api/platform/operations/entitlement/query_user_entitlements_by_app_type.py) | [query_user_entitlements_by_app_type](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke | PUT | revokeUserEntitlement | [RevokeUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/revoke_user_entitlement.py) | [revoke_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds | PUT | revokeUserEntitlements | [RevokeUserEntitlements](../accelbyte_py_sdk/api/platform/operations/entitlement/revoke_user_entitlements.py) | [revoke_user_entitlements](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/receivers/{extUserId} | PUT | updateUserDistributionReceiver | [UpdateUserDistributionReceiver](../accelbyte_py_sdk/api/platform/operations/entitlement/update_user_distribution_receiver.py) | [update_user_distribution_receiver](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} | PUT | updateUserEntitlement | [UpdateUserEntitlement](../accelbyte_py_sdk/api/platform/operations/entitlement/update_user_entitlement.py) | [update_user_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_entitlement.py) |

### Fulfillment
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment | POST | fulfillItem | [FulfillItem](../accelbyte_py_sdk/api/platform/operations/fulfillment/fulfill_item.py) | [fulfill_item](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code | POST | publicRedeemCode | [PublicRedeemCode](../accelbyte_py_sdk/api/platform/operations/fulfillment/public_redeem_code.py) | [public_redeem_code](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment.py) |
| /platform/admin/namespaces/{namespace}/fulfillment/history | GET | queryFulfillmentHistories | [QueryFulfillmentHistories](../accelbyte_py_sdk/api/platform/operations/fulfillment/query_fulfillment_histories.py) | [query_fulfillment_histories](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code | POST | redeemCode | [RedeemCode](../accelbyte_py_sdk/api/platform/operations/fulfillment/redeem_code.py) | [redeem_code](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment.py) |

### FulfillmentScript
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/fulfillment/scripts/{id} | POST | createFulfillmentScript | [CreateFulfillmentScript](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/create_fulfillment_script.py) | [create_fulfillment_script](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |
| /platform/admin/fulfillment/scripts/{id} | DELETE | deleteFulfillmentScript | [DeleteFulfillmentScript](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/delete_fulfillment_script.py) | [delete_fulfillment_script](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |
| /platform/admin/fulfillment/scripts/{id} | GET | getFulfillmentScript | [GetFulfillmentScript](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/get_fulfillment_script.py) | [get_fulfillment_script](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |
| /platform/admin/fulfillment/scripts | GET | listFulfillmentScripts | [ListFulfillmentScripts](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/list_fulfillment_scripts.py) | [list_fulfillment_scripts](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |
| /platform/admin/fulfillment/scripts/tests/eval | POST | testFulfillmentScriptEval | [TestFulfillmentScriptEval](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/test_fulfillment_script_eval.py) | [test_fulfillment_script_eval](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |
| /platform/admin/fulfillment/scripts/{id} | PATCH | updateFulfillmentScript | [UpdateFulfillmentScript](../accelbyte_py_sdk/api/platform/operations/fulfillment_script/update_fulfillment_script.py) | [update_fulfillment_script](../accelbyte_py_sdk/api/platform/wrappers/_fulfillment_script.py) |

### IAP
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/iap/config/apple | DELETE | deleteAppleIAPConfig | [DeleteAppleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_apple_iap_config.py) | [delete_apple_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/epicgames | DELETE | deleteEpicGamesIAPConfig | [DeleteEpicGamesIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_epic_games_iap_config.py) | [delete_epic_games_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/google | DELETE | deleteGoogleIAPConfig | [DeleteGoogleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_google_iap_config.py) | [delete_google_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/playstation | DELETE | deletePlaystationIAPConfig | [DeletePlaystationIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_playstation_iap_config.py) | [delete_playstation_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/stadia | DELETE | deleteStadiaIAPConfig | [DeleteStadiaIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_stadia_iap_config.py) | [delete_stadia_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/steam | DELETE | deleteSteamIAPConfig | [DeleteSteamIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_steam_iap_config.py) | [delete_steam_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/xbl | DELETE | deleteXblAPConfig | [DeleteXblAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/delete_xbl_ap_config.py) | [delete_xbl_ap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/apple | GET | getAppleIAPConfig | [GetAppleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_apple_iap_config.py) | [get_apple_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/epicgames | GET | getEpicGamesIAPConfig | [GetEpicGamesIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_epic_games_iap_config.py) | [get_epic_games_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/google | GET | getGoogleIAPConfig | [GetGoogleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_google_iap_config.py) | [get_google_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/playstation | GET | getPlayStationIAPConfig | [GetPlayStationIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_play_station_iap_config.py) | [get_play_station_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/stadia | GET | getStadiaIAPConfig | [GetStadiaIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_stadia_iap_config.py) | [get_stadia_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/steam | GET | getSteamIAPConfig | [GetSteamIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_steam_iap_config.py) | [get_steam_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/xbl | GET | getXblIAPConfig | [GetXblIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/get_xbl_iap_config.py) | [get_xbl_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt | PUT | mockFulfillIAPItem | [MockFulfillIAPItem](../accelbyte_py_sdk/api/platform/operations/iap/mock_fulfill_iap_item.py) | [mock_fulfill_iap_item](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt | PUT | publicFulfillAppleIAPItem | [PublicFulfillAppleIAPItem](../accelbyte_py_sdk/api/platform/operations/iap/public_fulfill_apple_iap_item.py) | [public_fulfill_apple_iap_item](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt | PUT | publicFulfillGoogleIAPItem | [PublicFulfillGoogleIAPItem](../accelbyte_py_sdk/api/platform/operations/iap/public_fulfill_google_iap_item.py) | [public_fulfill_google_iap_item](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync | PUT | publicReconcilePlayStationStore | [PublicReconcilePlayStationStore](../accelbyte_py_sdk/api/platform/operations/iap/public_reconcile_play_station_store.py) | [public_reconcile_play_station_store](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/iap | GET | queryUserIAPOrders | [QueryUserIAPOrders](../accelbyte_py_sdk/api/platform/operations/iap/query_user_iap_orders.py) | [query_user_iap_orders](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync | PUT | syncEpicGamesInventory | [SyncEpicGamesInventory](../accelbyte_py_sdk/api/platform/operations/iap/sync_epic_games_inventory.py) | [sync_epic_games_inventory](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/stadia/sync | PUT | syncStadiaEntitlement | [SyncStadiaEntitlement](../accelbyte_py_sdk/api/platform/operations/iap/sync_stadia_entitlement.py) | [sync_stadia_entitlement](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync | PUT | syncSteamInventory | [SyncSteamInventory](../accelbyte_py_sdk/api/platform/operations/iap/sync_steam_inventory.py) | [sync_steam_inventory](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync | PUT | syncXboxInventory | [SyncXboxInventory](../accelbyte_py_sdk/api/platform/operations/iap/sync_xbox_inventory.py) | [sync_xbox_inventory](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/apple | PUT | updateAppleIAPConfig | [UpdateAppleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_apple_iap_config.py) | [update_apple_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/epicgames | PUT | updateEpicGamesIAPConfig | [UpdateEpicGamesIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_epic_games_iap_config.py) | [update_epic_games_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/google | PUT | updateGoogleIAPConfig | [UpdateGoogleIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_google_iap_config.py) | [update_google_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/google/cert | PUT | updateGoogleP12File | [UpdateGoogleP12File](../accelbyte_py_sdk/api/platform/operations/iap/update_google_p12_file.py) | [update_google_p12_file](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/playstation | PUT | updatePlaystationIAPConfig | [UpdatePlaystationIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_playstation_iap_config.py) | [update_playstation_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/stadia/cert | PUT | updateStadiaJsonConfigFile | [UpdateStadiaJsonConfigFile](../accelbyte_py_sdk/api/platform/operations/iap/update_stadia_json_config_file.py) | [update_stadia_json_config_file](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/steam | PUT | updateSteamIAPConfig | [UpdateSteamIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_steam_iap_config.py) | [update_steam_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/xbl/cert | PUT | updateXblBPCertFile | [UpdateXblBPCertFile](../accelbyte_py_sdk/api/platform/operations/iap/update_xbl_bp_cert_file.py) | [update_xbl_bp_cert_file](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |
| /platform/admin/namespaces/{namespace}/iap/config/xbl | PUT | updateXblIAPConfig | [UpdateXblIAPConfig](../accelbyte_py_sdk/api/platform/operations/iap/update_xbl_iap_config.py) | [update_xbl_iap_config](../accelbyte_py_sdk/api/platform/wrappers/_iap.py) |

### Integration
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/integrations/gameserverconfig | GET | getGameServerConfig | [GetGameServerConfig](../accelbyte_py_sdk/api/platform/operations/integration/get_game_server_config.py) | [get_game_server_config](../accelbyte_py_sdk/api/platform/wrappers/_integration.py) |
| /platform/admin/namespaces/{namespace}/integrations/gameserverconfig | PUT | updateGameServerConfig | [UpdateGameServerConfig](../accelbyte_py_sdk/api/platform/operations/integration/update_game_server_config.py) | [update_game_server_config](../accelbyte_py_sdk/api/platform/wrappers/_integration.py) |

### Item
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/items/{itemId}/acquire | PUT | acquireItem | [AcquireItem](../accelbyte_py_sdk/api/platform/operations/item/acquire_item.py) | [acquire_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/locale/byIds | GET | bulkGetLocaleItems | [BulkGetLocaleItems](../accelbyte_py_sdk/api/platform/operations/item/bulk_get_locale_items.py) | [bulk_get_locale_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items | POST | createItem | [CreateItem](../accelbyte_py_sdk/api/platform/operations/item/create_item.py) | [create_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} | DELETE | defeatureItem | [DefeatureItem](../accelbyte_py_sdk/api/platform/operations/item/defeature_item.py) | [defeature_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId} | DELETE | deleteItem | [DeleteItem](../accelbyte_py_sdk/api/platform/operations/item/delete_item.py) | [delete_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/disable | PUT | disableItem | [DisableItem](../accelbyte_py_sdk/api/platform/operations/item/disable_item.py) | [disable_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/enable | PUT | enableItem | [EnableItem](../accelbyte_py_sdk/api/platform/operations/item/enable_item.py) | [enable_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature} | PUT | featureItem | [FeatureItem](../accelbyte_py_sdk/api/platform/operations/item/feature_item.py) | [feature_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/app | GET | getApp | [GetApp](../accelbyte_py_sdk/api/platform/operations/item/get_app.py) | [get_app](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId} | GET | getItem | [GetItem](../accelbyte_py_sdk/api/platform/operations/item/get_item.py) | [get_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/byAppId | GET | getItemByAppId | [GetItemByAppId](../accelbyte_py_sdk/api/platform/operations/item/get_item_by_app_id.py) | [get_item_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/bySku | GET | getItemBySku | [GetItemBySku](../accelbyte_py_sdk/api/platform/operations/item/get_item_by_sku.py) | [get_item_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/dynamic | GET | getItemDynamicData | [GetItemDynamicData](../accelbyte_py_sdk/api/platform/operations/item/get_item_dynamic_data.py) | [get_item_dynamic_data](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/itemId/bySku | GET | getItemIdBySku | [GetItemIdBySku](../accelbyte_py_sdk/api/platform/operations/item/get_item_id_by_sku.py) | [get_item_id_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/locale | GET | getLocaleItem | [GetLocaleItem](../accelbyte_py_sdk/api/platform/operations/item/get_locale_item.py) | [get_locale_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/bySku/locale | GET | getLocaleItemBySku | [GetLocaleItemBySku](../accelbyte_py_sdk/api/platform/operations/item/get_locale_item_by_sku.py) | [get_locale_item_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/byFeatures/basic | GET | listBasicItemsByFeatures | [ListBasicItemsByFeatures](../accelbyte_py_sdk/api/platform/operations/item/list_basic_items_by_features.py) | [list_basic_items_by_features](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/locale/byIds | GET | publicBulkGetItems | [PublicBulkGetItems](../accelbyte_py_sdk/api/platform/operations/item/public_bulk_get_items.py) | [public_bulk_get_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/{itemId}/app/locale | GET | publicGetApp | [PublicGetApp](../accelbyte_py_sdk/api/platform/operations/item/public_get_app.py) | [public_get_app](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/{itemId}/locale | GET | publicGetItem | [PublicGetItem](../accelbyte_py_sdk/api/platform/operations/item/public_get_item.py) | [public_get_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/byAppId | GET | publicGetItemByAppId | [PublicGetItemByAppId](../accelbyte_py_sdk/api/platform/operations/item/public_get_item_by_app_id.py) | [public_get_item_by_app_id](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/bySku | GET | publicGetItemBySku | [PublicGetItemBySku](../accelbyte_py_sdk/api/platform/operations/item/public_get_item_by_sku.py) | [public_get_item_by_sku](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/{itemId}/dynamic | GET | publicGetItemDynamicData | [PublicGetItemDynamicData](../accelbyte_py_sdk/api/platform/operations/item/public_get_item_dynamic_data.py) | [public_get_item_dynamic_data](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/byCriteria | GET | publicQueryItems | [PublicQueryItems](../accelbyte_py_sdk/api/platform/operations/item/public_query_items.py) | [public_query_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/public/namespaces/{namespace}/items/search | GET | publicSearchItems | [PublicSearchItems](../accelbyte_py_sdk/api/platform/operations/item/public_search_items.py) | [public_search_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/byCriteria | GET | queryItems | [QueryItems](../accelbyte_py_sdk/api/platform/operations/item/query_items.py) | [query_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/uncategorized | GET | queryUncategorizedItems | [QueryUncategorizedItems](../accelbyte_py_sdk/api/platform/operations/item/query_uncategorized_items.py) | [query_uncategorized_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/return | PUT | returnItem | [ReturnItem](../accelbyte_py_sdk/api/platform/operations/item/return_item.py) | [return_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/search | GET | searchItems | [SearchItems](../accelbyte_py_sdk/api/platform/operations/item/search_items.py) | [search_items](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items | PUT | syncInGameItem | [SyncInGameItem](../accelbyte_py_sdk/api/platform/operations/item/sync_in_game_item.py) | [sync_in_game_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId}/app | PUT | updateApp | [UpdateApp](../accelbyte_py_sdk/api/platform/operations/item/update_app.py) | [update_app](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |
| /platform/admin/namespaces/{namespace}/items/{itemId} | PUT | updateItem | [UpdateItem](../accelbyte_py_sdk/api/platform/operations/item/update_item.py) | [update_item](../accelbyte_py_sdk/api/platform/wrappers/_item.py) |

### KeyGroup
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/keygroups | POST | createKeyGroup | [CreateKeyGroup](../accelbyte_py_sdk/api/platform/operations/key_group/create_key_group.py) | [create_key_group](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId} | GET | getKeyGroup | [GetKeyGroup](../accelbyte_py_sdk/api/platform/operations/key_group/get_key_group.py) | [get_key_group](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic | GET | getKeyGroupDynamic | [GetKeyGroupDynamic](../accelbyte_py_sdk/api/platform/operations/key_group/get_key_group_dynamic.py) | [get_key_group_dynamic](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys | GET | listKeys | [ListKeys](../accelbyte_py_sdk/api/platform/operations/key_group/list_keys.py) | [list_keys](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups | GET | queryKeyGroups | [QueryKeyGroups](../accelbyte_py_sdk/api/platform/operations/key_group/query_key_groups.py) | [query_key_groups](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId} | PUT | updateKeyGroup | [UpdateKeyGroup](../accelbyte_py_sdk/api/platform/operations/key_group/update_key_group.py) | [update_key_group](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |
| /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys | POST | uploadKeys | [UploadKeys](../accelbyte_py_sdk/api/platform/operations/key_group/upload_keys.py) | [upload_keys](../accelbyte_py_sdk/api/platform/wrappers/_key_group.py) |

### Order
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem | GET | countOfPurchasedItem | [CountOfPurchasedItem](../accelbyte_py_sdk/api/platform/operations/order/count_of_purchased_item.py) | [count_of_purchased_item](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf | GET | downloadUserOrderReceipt | [DownloadUserOrderReceipt](../accelbyte_py_sdk/api/platform/operations/order/download_user_order_receipt.py) | [download_user_order_receipt](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill | PUT | fulfillUserOrder | [FulfillUserOrder](../accelbyte_py_sdk/api/platform/operations/order/fulfill_user_order.py) | [fulfill_user_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/orders/{orderNo} | GET | getOrder | [GetOrder](../accelbyte_py_sdk/api/platform/operations/order/get_order.py) | [get_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/orders/stats | GET | getOrderStatistics | [GetOrderStatistics](../accelbyte_py_sdk/api/platform/operations/order/get_order_statistics.py) | [get_order_statistics](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} | GET | getUserOrder | [GetUserOrder](../accelbyte_py_sdk/api/platform/operations/order/get_user_order.py) | [get_user_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant | GET | getUserOrderGrant | [GetUserOrderGrant](../accelbyte_py_sdk/api/platform/operations/order/get_user_order_grant.py) | [get_user_order_grant](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history | GET | getUserOrderHistories | [GetUserOrderHistories](../accelbyte_py_sdk/api/platform/operations/order/get_user_order_histories.py) | [get_user_order_histories](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications | POST | processUserOrderNotification | [ProcessUserOrderNotification](../accelbyte_py_sdk/api/platform/operations/order/process_user_order_notification.py) | [process_user_order_notification](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel | PUT | publicCancelUserOrder | [PublicCancelUserOrder](../accelbyte_py_sdk/api/platform/operations/order/public_cancel_user_order.py) | [public_cancel_user_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders | POST | publicCreateUserOrder | [PublicCreateUserOrder](../accelbyte_py_sdk/api/platform/operations/order/public_create_user_order.py) | [public_create_user_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf | GET | publicDownloadUserOrderReceipt | [PublicDownloadUserOrderReceipt](../accelbyte_py_sdk/api/platform/operations/order/public_download_user_order_receipt.py) | [public_download_user_order_receipt](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo} | GET | publicGetUserOrder | [PublicGetUserOrder](../accelbyte_py_sdk/api/platform/operations/order/public_get_user_order.py) | [public_get_user_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history | GET | publicGetUserOrderHistories | [PublicGetUserOrderHistories](../accelbyte_py_sdk/api/platform/operations/order/public_get_user_order_histories.py) | [public_get_user_order_histories](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/orders | GET | publicQueryUserOrders | [PublicQueryUserOrders](../accelbyte_py_sdk/api/platform/operations/order/public_query_user_orders.py) | [public_query_user_orders](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/orders | GET | queryOrders | [QueryOrders](../accelbyte_py_sdk/api/platform/operations/order/query_orders.py) | [query_orders](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders | GET | queryUserOrders | [QueryUserOrders](../accelbyte_py_sdk/api/platform/operations/order/query_user_orders.py) | [query_user_orders](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/orders/{orderNo}/refund | PUT | refundOrder | [RefundOrder](../accelbyte_py_sdk/api/platform/operations/order/refund_order.py) | [refund_order](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} | PUT | updateUserOrderStatus | [UpdateUserOrderStatus](../accelbyte_py_sdk/api/platform/operations/order/update_user_order_status.py) | [update_user_order_status](../accelbyte_py_sdk/api/platform/wrappers/_order.py) |

### OrderDedicated
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/orders | GET | syncOrders | [SyncOrders](../accelbyte_py_sdk/api/platform/operations/order_dedicated/sync_orders.py) | [sync_orders](../accelbyte_py_sdk/api/platform/wrappers/_order_dedicated.py) |

### Payment
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} | PUT | chargePaymentOrder | [ChargePaymentOrder](../accelbyte_py_sdk/api/platform/operations/payment/charge_payment_order.py) | [charge_payment_order](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders | POST | createUserPaymentOrder | [CreateUserPaymentOrder](../accelbyte_py_sdk/api/platform/operations/payment/create_user_payment_order.py) | [create_user_payment_order](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo} | GET | getPaymentOrder | [GetPaymentOrder](../accelbyte_py_sdk/api/platform/operations/payment/get_payment_order.py) | [get_payment_order](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status | GET | getPaymentOrderChargeStatus | [GetPaymentOrderChargeStatus](../accelbyte_py_sdk/api/platform/operations/payment/get_payment_order_charge_status.py) | [get_payment_order_charge_status](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/orders/byExtTxId | GET | listExtOrderNoByExtTxId | [ListExtOrderNoByExtTxId](../accelbyte_py_sdk/api/platform/operations/payment/list_ext_order_no_by_ext_tx_id.py) | [list_ext_order_no_by_ext_tx_id](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/notifications | GET | queryPaymentNotifications | [QueryPaymentNotifications](../accelbyte_py_sdk/api/platform/operations/payment/query_payment_notifications.py) | [query_payment_notifications](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/orders | GET | queryPaymentOrders | [QueryPaymentOrders](../accelbyte_py_sdk/api/platform/operations/payment/query_payment_orders.py) | [query_payment_orders](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund | PUT | refundUserPaymentOrder | [RefundUserPaymentOrder](../accelbyte_py_sdk/api/platform/operations/payment/refund_user_payment_order.py) | [refund_user_payment_order](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |
| /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification | PUT | simulatePaymentOrderNotification | [SimulatePaymentOrderNotification](../accelbyte_py_sdk/api/platform/operations/payment/simulate_payment_order_notification.py) | [simulate_payment_order_notification](../accelbyte_py_sdk/api/platform/wrappers/_payment.py) |

### PaymentAccount
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id} | DELETE | publicDeletePaymentAccount | [PublicDeletePaymentAccount](../accelbyte_py_sdk/api/platform/operations/payment_account/public_delete_payment_account.py) | [public_delete_payment_account](../accelbyte_py_sdk/api/platform/wrappers/_payment_account.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/payment/accounts | GET | publicGetPaymentAccounts | [PublicGetPaymentAccounts](../accelbyte_py_sdk/api/platform/operations/payment_account/public_get_payment_accounts.py) | [public_get_payment_accounts](../accelbyte_py_sdk/api/platform/wrappers/_payment_account.py) |

### PaymentConfig
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/payment/config/provider | POST | createPaymentProviderConfig | [CreatePaymentProviderConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/create_payment_provider_config.py) | [create_payment_provider_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/matched | GET | debugMatchedPaymentMerchantConfig | [DebugMatchedPaymentMerchantConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/debug_matched_payment_merchant_config.py) | [debug_matched_payment_merchant_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider/matched | GET | debugMatchedPaymentProviderConfig | [DebugMatchedPaymentProviderConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/debug_matched_payment_provider_config.py) | [debug_matched_payment_provider_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider/{id} | DELETE | deletePaymentProviderConfig | [DeletePaymentProviderConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/delete_payment_provider_config.py) | [delete_payment_provider_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider/aggregate | GET | getAggregatePaymentProviders | [GetAggregatePaymentProviders](../accelbyte_py_sdk/api/platform/operations/payment_config/get_aggregate_payment_providers.py) | [get_aggregate_payment_providers](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id} | GET | getPaymentMerchantConfig | [GetPaymentMerchantConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/get_payment_merchant_config.py) | [get_payment_merchant_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/tax | GET | getPaymentTaxConfig | [GetPaymentTaxConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/get_payment_tax_config.py) | [get_payment_tax_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider/special | GET | getSpecialPaymentProviders | [GetSpecialPaymentProviders](../accelbyte_py_sdk/api/platform/operations/payment_config/get_special_payment_providers.py) | [get_special_payment_providers](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider | GET | queryPaymentProviderConfig | [QueryPaymentProviderConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/query_payment_provider_config.py) | [query_payment_provider_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/adyenconfig/test | POST | testAdyenConfig | [TestAdyenConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_adyen_config.py) | [test_adyen_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/adyenconfig/test | GET | testAdyenConfigById | [TestAdyenConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_adyen_config_by_id.py) | [test_adyen_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/alipayconfig/test | POST | testAliPayConfig | [TestAliPayConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_ali_pay_config.py) | [test_ali_pay_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/alipayconfig/test | GET | testAliPayConfigById | [TestAliPayConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_ali_pay_config_by_id.py) | [test_ali_pay_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/checkoutconfig/test | POST | testCheckoutConfig | [TestCheckoutConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_checkout_config.py) | [test_checkout_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/checkoutconfig/test | GET | testCheckoutConfigById | [TestCheckoutConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_checkout_config_by_id.py) | [test_checkout_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/paypalconfig/test | POST | testPayPalConfig | [TestPayPalConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_pay_pal_config.py) | [test_pay_pal_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/paypalconfig/test | GET | testPayPalConfigById | [TestPayPalConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_pay_pal_config_by_id.py) | [test_pay_pal_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/stripeconfig/test | POST | testStripeConfig | [TestStripeConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_stripe_config.py) | [test_stripe_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/stripeconfig/test | GET | testStripeConfigById | [TestStripeConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_stripe_config_by_id.py) | [test_stripe_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/wxpayconfig/test | POST | testWxPayConfig | [TestWxPayConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_wx_pay_config.py) | [test_wx_pay_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/wxpayconfig/test | GET | testWxPayConfigById | [TestWxPayConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_wx_pay_config_by_id.py) | [test_wx_pay_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/xsollaconfig/test | POST | testXsollaConfig | [TestXsollaConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/test_xsolla_config.py) | [test_xsolla_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/xsollaconfig/test | GET | testXsollaConfigById | [TestXsollaConfigById](../accelbyte_py_sdk/api/platform/operations/payment_config/test_xsolla_config_by_id.py) | [test_xsolla_config_by_id](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/adyenconfig | PUT | updateAdyenConfig | [UpdateAdyenConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_adyen_config.py) | [update_adyen_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/alipayconfig | PUT | updateAliPayConfig | [UpdateAliPayConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_ali_pay_config.py) | [update_ali_pay_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/checkoutconfig | PUT | updateCheckoutConfig | [UpdateCheckoutConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_checkout_config.py) | [update_checkout_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/paypalconfig | PUT | updatePayPalConfig | [UpdatePayPalConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_pay_pal_config.py) | [update_pay_pal_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/provider/{id} | PUT | updatePaymentProviderConfig | [UpdatePaymentProviderConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_payment_provider_config.py) | [update_payment_provider_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/tax | PUT | updatePaymentTaxConfig | [UpdatePaymentTaxConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_payment_tax_config.py) | [update_payment_tax_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/stripeconfig | PUT | updateStripeConfig | [UpdateStripeConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_stripe_config.py) | [update_stripe_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/wxpayconfig | PUT | updateWxPayConfig | [UpdateWxPayConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_wx_pay_config.py) | [update_wx_pay_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/wxpayconfig/cert | PUT | updateWxPayConfigCert | [UpdateWxPayConfigCert](../accelbyte_py_sdk/api/platform/operations/payment_config/update_wx_pay_config_cert.py) | [update_wx_pay_config_cert](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/xsollaconfig | PUT | updateXsollaConfig | [UpdateXsollaConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_xsolla_config.py) | [update_xsolla_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |
| /platform/admin/payment/config/merchant/{id}/xsollauiconfig | PUT | updateXsollaUIConfig | [UpdateXsollaUIConfig](../accelbyte_py_sdk/api/platform/operations/payment_config/update_xsolla_ui_config.py) | [update_xsolla_ui_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_config.py) |

### PaymentDedicated
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/payment/orders | POST | createPaymentOrderByDedicated | [CreatePaymentOrderByDedicated](../accelbyte_py_sdk/api/platform/operations/payment_dedicated/create_payment_order_by_dedicated.py) | [create_payment_order_by_dedicated](../accelbyte_py_sdk/api/platform/wrappers/_payment_dedicated.py) |
| /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund | PUT | refundPaymentOrderByDedicated | [RefundPaymentOrderByDedicated](../accelbyte_py_sdk/api/platform/operations/payment_dedicated/refund_payment_order_by_dedicated.py) | [refund_payment_order_by_dedicated](../accelbyte_py_sdk/api/platform/wrappers/_payment_dedicated.py) |
| /platform/admin/payment/orders | GET | syncPaymentOrders | [SyncPaymentOrders](../accelbyte_py_sdk/api/platform/operations/payment_dedicated/sync_payment_orders.py) | [sync_payment_orders](../accelbyte_py_sdk/api/platform/wrappers/_payment_dedicated.py) |

### PaymentStation
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/public/namespaces/{namespace}/payment/customization | GET | getPaymentCustomization | [GetPaymentCustomization](../accelbyte_py_sdk/api/platform/operations/payment_station/get_payment_customization.py) | [get_payment_customization](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/publicconfig | GET | getPaymentPublicConfig | [GetPaymentPublicConfig](../accelbyte_py_sdk/api/platform/operations/payment_station/get_payment_public_config.py) | [get_payment_public_config](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/tax | GET | getPaymentTaxValue | [GetPaymentTaxValue](../accelbyte_py_sdk/api/platform/operations/payment_station/get_payment_tax_value.py) | [get_payment_tax_value](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay | POST | pay | [Pay](../accelbyte_py_sdk/api/platform/operations/payment_station/pay.py) | [pay](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status | GET | publicCheckPaymentOrderPaidStatus | [PublicCheckPaymentOrderPaidStatus](../accelbyte_py_sdk/api/platform/operations/payment_station/public_check_payment_order_paid_status.py) | [public_check_payment_order_paid_status](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/methods | GET | publicGetPaymentMethods | [PublicGetPaymentMethods](../accelbyte_py_sdk/api/platform/operations/payment_station/public_get_payment_methods.py) | [public_get_payment_methods](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/link | POST | publicGetPaymentUrl | [PublicGetPaymentUrl](../accelbyte_py_sdk/api/platform/operations/payment_station/public_get_payment_url.py) | [public_get_payment_url](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/qrcode | GET | publicGetQRCode | [PublicGetQRCode](../accelbyte_py_sdk/api/platform/operations/payment_station/public_get_qr_code.py) | [public_get_qr_code](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info | GET | publicGetUnpaidPaymentOrder | [PublicGetUnpaidPaymentOrder](../accelbyte_py_sdk/api/platform/operations/payment_station/public_get_unpaid_payment_order.py) | [public_get_unpaid_payment_order](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |
| /platform/public/namespaces/{namespace}/payment/returnurl | GET | publicNormalizePaymentReturnUrl | [PublicNormalizePaymentReturnUrl](../accelbyte_py_sdk/api/platform/operations/payment_station/public_normalize_payment_return_url.py) | [public_normalize_payment_return_url](../accelbyte_py_sdk/api/platform/wrappers/_payment_station.py) |

### Reward
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/rewards/{rewardId}/match | PUT | checkEventCondition | [CheckEventCondition](../accelbyte_py_sdk/api/platform/operations/reward/check_event_condition.py) | [check_event_condition](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards | POST | createReward | [CreateReward](../accelbyte_py_sdk/api/platform/operations/reward/create_reward.py) | [create_reward](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/{rewardId} | DELETE | deleteReward | [DeleteReward](../accelbyte_py_sdk/api/platform/operations/reward/delete_reward.py) | [delete_reward](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/export | GET | exportRewards | [ExportRewards](../accelbyte_py_sdk/api/platform/operations/reward/export_rewards.py) | [export_rewards](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/{rewardId} | GET | getReward | [GetReward](../accelbyte_py_sdk/api/platform/operations/reward/get_reward.py) | [get_reward](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/public/namespaces/{namespace}/rewards/{rewardId} | GET | getReward_1 | [GetReward1](../accelbyte_py_sdk/api/platform/operations/reward/get_reward_1.py) | [get_reward_1](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/public/namespaces/{namespace}/rewards/byCode | GET | getRewardByCode | [GetRewardByCode](../accelbyte_py_sdk/api/platform/operations/reward/get_reward_by_code.py) | [get_reward_by_code](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/import | POST | importRewards | [ImportRewards](../accelbyte_py_sdk/api/platform/operations/reward/import_rewards.py) | [import_rewards](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/byCriteria | GET | queryRewards | [QueryRewards](../accelbyte_py_sdk/api/platform/operations/reward/query_rewards.py) | [query_rewards](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/public/namespaces/{namespace}/rewards/byCriteria | GET | queryRewards_1 | [QueryRewards1](../accelbyte_py_sdk/api/platform/operations/reward/query_rewards_1.py) | [query_rewards_1](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |
| /platform/admin/namespaces/{namespace}/rewards/{rewardId} | PUT | updateReward | [UpdateReward](../accelbyte_py_sdk/api/platform/operations/reward/update_reward.py) | [update_reward](../accelbyte_py_sdk/api/platform/wrappers/_reward.py) |

### Store
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/stores/{storeId}/clone | PUT | cloneStore | [CloneStore](../accelbyte_py_sdk/api/platform/operations/store/clone_store.py) | [clone_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores | POST | createStore | [CreateStore](../accelbyte_py_sdk/api/platform/operations/store/create_store.py) | [create_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/published | DELETE | deletePublishedStore | [DeletePublishedStore](../accelbyte_py_sdk/api/platform/operations/store/delete_published_store.py) | [delete_published_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/{storeId} | DELETE | deleteStore | [DeleteStore](../accelbyte_py_sdk/api/platform/operations/store/delete_store.py) | [delete_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/{storeId}/export | GET | exportStore | [ExportStore](../accelbyte_py_sdk/api/platform/operations/store/export_store.py) | [export_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/published | GET | getPublishedStore | [GetPublishedStore](../accelbyte_py_sdk/api/platform/operations/store/get_published_store.py) | [get_published_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/published/backup | GET | getPublishedStoreBackup | [GetPublishedStoreBackup](../accelbyte_py_sdk/api/platform/operations/store/get_published_store_backup.py) | [get_published_store_backup](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/{storeId} | GET | getStore | [GetStore](../accelbyte_py_sdk/api/platform/operations/store/get_store.py) | [get_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/import | PUT | importStore | [ImportStore](../accelbyte_py_sdk/api/platform/operations/store/import_store.py) | [import_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores | GET | listStores | [ListStores](../accelbyte_py_sdk/api/platform/operations/store/list_stores.py) | [list_stores](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/public/namespaces/{namespace}/stores | GET | publicListStores | [PublicListStores](../accelbyte_py_sdk/api/platform/operations/store/public_list_stores.py) | [public_list_stores](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/published/rollback | PUT | rollbackPublishedStore | [RollbackPublishedStore](../accelbyte_py_sdk/api/platform/operations/store/rollback_published_store.py) | [rollback_published_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |
| /platform/admin/namespaces/{namespace}/stores/{storeId} | PUT | updateStore | [UpdateStore](../accelbyte_py_sdk/api/platform/operations/store/update_store.py) | [update_store](../accelbyte_py_sdk/api/platform/wrappers/_store.py) |

### Subscription
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel | PUT | cancelSubscription | [CancelSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/cancel_subscription.py) | [cancel_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId | GET | checkUserSubscriptionSubscribableByItemId | [CheckUserSubscriptionSubscribableByItemId](../accelbyte_py_sdk/api/platform/operations/subscription/check_user_subscription_subscribable_by_item_id.py) | [check_user_subscription_subscribable_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} | DELETE | deleteUserSubscription | [DeleteUserSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/delete_user_subscription.py) | [delete_user_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} | GET | getUserSubscription | [GetUserSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/get_user_subscription.py) | [get_user_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/activities | GET | getUserSubscriptionActivities | [GetUserSubscriptionActivities](../accelbyte_py_sdk/api/platform/operations/subscription/get_user_subscription_activities.py) | [get_user_subscription_activities](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history | GET | getUserSubscriptionBillingHistories | [GetUserSubscriptionBillingHistories](../accelbyte_py_sdk/api/platform/operations/subscription/get_user_subscription_billing_histories.py) | [get_user_subscription_billing_histories](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/grant | PUT | grantDaysToSubscription | [GrantDaysToSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/grant_days_to_subscription.py) | [grant_days_to_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/platformSubscribe | POST | platformSubscribeSubscription | [PlatformSubscribeSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/platform_subscribe_subscription.py) | [platform_subscribe_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/notifications | POST | processUserSubscriptionNotification | [ProcessUserSubscriptionNotification](../accelbyte_py_sdk/api/platform/operations/subscription/process_user_subscription_notification.py) | [process_user_subscription_notification](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/cancel | PUT | publicCancelSubscription | [PublicCancelSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/public_cancel_subscription.py) | [public_cancel_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/billingAccount | PUT | publicChangeSubscriptionBillingAccount | [PublicChangeSubscriptionBillingAccount](../accelbyte_py_sdk/api/platform/operations/subscription/public_change_subscription_billing_account.py) | [public_change_subscription_billing_account](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/subscribable/byItemId | GET | publicCheckUserSubscriptionSubscribableByItemId | [PublicCheckUserSubscriptionSubscribableByItemId](../accelbyte_py_sdk/api/platform/operations/subscription/public_check_user_subscription_subscribable_by_item_id.py) | [public_check_user_subscription_subscribable_by_item_id](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} | GET | publicGetUserSubscription | [PublicGetUserSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/public_get_user_subscription.py) | [public_get_user_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}/history | GET | publicGetUserSubscriptionBillingHistories | [PublicGetUserSubscriptionBillingHistories](../accelbyte_py_sdk/api/platform/operations/subscription/public_get_user_subscription_billing_histories.py) | [public_get_user_subscription_billing_histories](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions | GET | publicQueryUserSubscriptions | [PublicQueryUserSubscriptions](../accelbyte_py_sdk/api/platform/operations/subscription/public_query_user_subscriptions.py) | [public_query_user_subscriptions](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/subscriptions | POST | publicSubscribeSubscription | [PublicSubscribeSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/public_subscribe_subscription.py) | [public_subscribe_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/subscriptions | GET | querySubscriptions | [QuerySubscriptions](../accelbyte_py_sdk/api/platform/operations/subscription/query_subscriptions.py) | [query_subscriptions](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions | GET | queryUserSubscriptions | [QueryUserSubscriptions](../accelbyte_py_sdk/api/platform/operations/subscription/query_user_subscriptions.py) | [query_user_subscriptions](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |
| /platform/admin/namespaces/{namespace}/subscriptions/{subscriptionId}/recurring | PUT | recurringChargeSubscription | [RecurringChargeSubscription](../accelbyte_py_sdk/api/platform/operations/subscription/recurring_charge_subscription.py) | [recurring_charge_subscription](../accelbyte_py_sdk/api/platform/wrappers/_subscription.py) |

### Ticket
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName} | POST | acquireUserTicket | [AcquireUserTicket](../accelbyte_py_sdk/api/platform/operations/ticket/acquire_user_ticket.py) | [acquire_user_ticket](../accelbyte_py_sdk/api/platform/wrappers/_ticket.py) |
| /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement | PUT | decreaseTicketSale | [DecreaseTicketSale](../accelbyte_py_sdk/api/platform/operations/ticket/decrease_ticket_sale.py) | [decrease_ticket_sale](../accelbyte_py_sdk/api/platform/wrappers/_ticket.py) |
| /platform/admin/namespaces/{namespace}/tickets/{boothName}/id | GET | getTicketBoothID | [GetTicketBoothID](../accelbyte_py_sdk/api/platform/operations/ticket/get_ticket_booth_id.py) | [get_ticket_booth_id](../accelbyte_py_sdk/api/platform/wrappers/_ticket.py) |
| /platform/admin/namespaces/{namespace}/tickets/{boothName} | GET | getTicketDynamic | [GetTicketDynamic](../accelbyte_py_sdk/api/platform/operations/ticket/get_ticket_dynamic.py) | [get_ticket_dynamic](../accelbyte_py_sdk/api/platform/wrappers/_ticket.py) |
| /platform/admin/namespaces/{namespace}/tickets/{boothName}/increment | PUT | increaseTicketSale | [IncreaseTicketSale](../accelbyte_py_sdk/api/platform/operations/ticket/increase_ticket_sale.py) | [increase_ticket_sale](../accelbyte_py_sdk/api/platform/wrappers/_ticket.py) |

### Wallet
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check | GET | checkWallet | [CheckWallet](../accelbyte_py_sdk/api/platform/operations/wallet/check_wallet.py) | [check_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit | PUT | creditUserWallet | [CreditUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/credit_user_wallet.py) | [credit_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit | PUT | debitUserWallet | [DebitUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/debit_user_wallet.py) | [debit_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable | PUT | disableUserWallet | [DisableUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/disable_user_wallet.py) | [disable_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable | PUT | enableUserWallet | [EnableUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/enable_user_wallet.py) | [enable_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId} | GET | getUserWallet | [GetUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/get_user_wallet.py) | [get_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/wallets/{walletId} | GET | getWallet | [GetWallet](../accelbyte_py_sdk/api/platform/operations/wallet/get_wallet.py) | [get_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions | GET | listUserWalletTransactions | [ListUserWalletTransactions](../accelbyte_py_sdk/api/platform/operations/wallet/list_user_wallet_transactions.py) | [list_user_wallet_transactions](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment | PUT | payWithUserWallet | [PayWithUserWallet](../accelbyte_py_sdk/api/platform/operations/wallet/pay_with_user_wallet.py) | [pay_with_user_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode} | GET | publicGetMyWallet | [PublicGetMyWallet](../accelbyte_py_sdk/api/platform/operations/wallet/public_get_my_wallet.py) | [public_get_my_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode} | GET | publicGetWallet | [PublicGetWallet](../accelbyte_py_sdk/api/platform/operations/wallet/public_get_wallet.py) | [public_get_wallet](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions | GET | publicListUserWalletTransactions | [PublicListUserWalletTransactions](../accelbyte_py_sdk/api/platform/operations/wallet/public_list_user_wallet_transactions.py) | [public_list_user_wallet_transactions](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |
| /platform/admin/namespaces/{namespace}/wallets | GET | queryWallets | [QueryWallets](../accelbyte_py_sdk/api/platform/operations/wallet/query_wallets.py) | [query_wallets](../accelbyte_py_sdk/api/platform/wrappers/_wallet.py) |


## Models
| Model | Class |
|---|---|
| AdditionalData | [AdditionalData](../accelbyte_py_sdk/api/platform/models/additional_data.py) |
| AdyenConfig | [AdyenConfig](../accelbyte_py_sdk/api/platform/models/adyen_config.py) |
| AliPayConfig | [AliPayConfig](../accelbyte_py_sdk/api/platform/models/ali_pay_config.py) |
| AppEntitlementInfo | [AppEntitlementInfo](../accelbyte_py_sdk/api/platform/models/app_entitlement_info.py) |
| AppEntitlementPagingSlicedResult | [AppEntitlementPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/app_entitlement_paging_sliced_result.py) |
| AppInfo | [AppInfo](../accelbyte_py_sdk/api/platform/models/app_info.py) |
| AppLocalization | [AppLocalization](../accelbyte_py_sdk/api/platform/models/app_localization.py) |
| AppUpdate | [AppUpdate](../accelbyte_py_sdk/api/platform/models/app_update.py) |
| AppleIAPConfigInfo | [AppleIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/apple_iap_config_info.py) |
| AppleIAPConfigRequest | [AppleIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/apple_iap_config_request.py) |
| AppleIAPReceipt | [AppleIAPReceipt](../accelbyte_py_sdk/api/platform/models/apple_iap_receipt.py) |
| BasicCategoryInfo | [BasicCategoryInfo](../accelbyte_py_sdk/api/platform/models/basic_category_info.py) |
| BasicItem | [BasicItem](../accelbyte_py_sdk/api/platform/models/basic_item.py) |
| BillingAccount | [BillingAccount](../accelbyte_py_sdk/api/platform/models/billing_account.py) |
| BillingHistoryInfo | [BillingHistoryInfo](../accelbyte_py_sdk/api/platform/models/billing_history_info.py) |
| BillingHistoryPagingSlicedResult | [BillingHistoryPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/billing_history_paging_sliced_result.py) |
| BulkOperationResult | [BulkOperationResult](../accelbyte_py_sdk/api/platform/models/bulk_operation_result.py) |
| CampaignCreate | [CampaignCreate](../accelbyte_py_sdk/api/platform/models/campaign_create.py) |
| CampaignDynamicInfo | [CampaignDynamicInfo](../accelbyte_py_sdk/api/platform/models/campaign_dynamic_info.py) |
| CampaignInfo | [CampaignInfo](../accelbyte_py_sdk/api/platform/models/campaign_info.py) |
| CampaignPagingSlicedResult | [CampaignPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/campaign_paging_sliced_result.py) |
| CampaignUpdate | [CampaignUpdate](../accelbyte_py_sdk/api/platform/models/campaign_update.py) |
| CancelRequest | [CancelRequest](../accelbyte_py_sdk/api/platform/models/cancel_request.py) |
| CategoryCreate | [CategoryCreate](../accelbyte_py_sdk/api/platform/models/category_create.py) |
| CategoryInfo | [CategoryInfo](../accelbyte_py_sdk/api/platform/models/category_info.py) |
| CategoryUpdate | [CategoryUpdate](../accelbyte_py_sdk/api/platform/models/category_update.py) |
| CheckoutConfig | [CheckoutConfig](../accelbyte_py_sdk/api/platform/models/checkout_config.py) |
| CodeCreate | [CodeCreate](../accelbyte_py_sdk/api/platform/models/code_create.py) |
| CodeCreateResult | [CodeCreateResult](../accelbyte_py_sdk/api/platform/models/code_create_result.py) |
| CodeInfo | [CodeInfo](../accelbyte_py_sdk/api/platform/models/code_info.py) |
| CodeInfoPagingSlicedResult | [CodeInfoPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/code_info_paging_sliced_result.py) |
| ConditionMatchResult | [ConditionMatchResult](../accelbyte_py_sdk/api/platform/models/condition_match_result.py) |
| CreditRequest | [CreditRequest](../accelbyte_py_sdk/api/platform/models/credit_request.py) |
| CreditSummary | [CreditSummary](../accelbyte_py_sdk/api/platform/models/credit_summary.py) |
| CurrencyConfig | [CurrencyConfig](../accelbyte_py_sdk/api/platform/models/currency_config.py) |
| CurrencyCreate | [CurrencyCreate](../accelbyte_py_sdk/api/platform/models/currency_create.py) |
| CurrencyInfo | [CurrencyInfo](../accelbyte_py_sdk/api/platform/models/currency_info.py) |
| CurrencySummary | [CurrencySummary](../accelbyte_py_sdk/api/platform/models/currency_summary.py) |
| CurrencyUpdate | [CurrencyUpdate](../accelbyte_py_sdk/api/platform/models/currency_update.py) |
| Customization | [Customization](../accelbyte_py_sdk/api/platform/models/customization.py) |
| DebitRequest | [DebitRequest](../accelbyte_py_sdk/api/platform/models/debit_request.py) |
| DistributionReceiverCreate | [DistributionReceiverCreate](../accelbyte_py_sdk/api/platform/models/distribution_receiver_create.py) |
| DistributionReceiverInfo | [DistributionReceiverInfo](../accelbyte_py_sdk/api/platform/models/distribution_receiver_info.py) |
| EntitlementDecrement | [EntitlementDecrement](../accelbyte_py_sdk/api/platform/models/entitlement_decrement.py) |
| EntitlementGrant | [EntitlementGrant](../accelbyte_py_sdk/api/platform/models/entitlement_grant.py) |
| EntitlementHistoryInfo | [EntitlementHistoryInfo](../accelbyte_py_sdk/api/platform/models/entitlement_history_info.py) |
| EntitlementInfo | [EntitlementInfo](../accelbyte_py_sdk/api/platform/models/entitlement_info.py) |
| EntitlementPagingSlicedResult | [EntitlementPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/entitlement_paging_sliced_result.py) |
| EntitlementSummary | [EntitlementSummary](../accelbyte_py_sdk/api/platform/models/entitlement_summary.py) |
| EntitlementUpdate | [EntitlementUpdate](../accelbyte_py_sdk/api/platform/models/entitlement_update.py) |
| EpicGamesIAPConfigInfo | [EpicGamesIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/epic_games_iap_config_info.py) |
| EpicGamesIAPConfigRequest | [EpicGamesIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/epic_games_iap_config_request.py) |
| EpicGamesReconcileRequest | [EpicGamesReconcileRequest](../accelbyte_py_sdk/api/platform/models/epic_games_reconcile_request.py) |
| EpicGamesReconcileResult | [EpicGamesReconcileResult](../accelbyte_py_sdk/api/platform/models/epic_games_reconcile_result.py) |
| ErrorEntity | [ErrorEntity](../accelbyte_py_sdk/api/platform/models/error_entity.py) |
| EventPayload | [EventPayload](../accelbyte_py_sdk/api/platform/models/event_payload.py) |
| ExternalPaymentOrderCreate | [ExternalPaymentOrderCreate](../accelbyte_py_sdk/api/platform/models/external_payment_order_create.py) |
| FieldValidationError | [FieldValidationError](../accelbyte_py_sdk/api/platform/models/field_validation_error.py) |
| FulfillCodeRequest | [FulfillCodeRequest](../accelbyte_py_sdk/api/platform/models/fulfill_code_request.py) |
| FulfillmentError | [FulfillmentError](../accelbyte_py_sdk/api/platform/models/fulfillment_error.py) |
| FulfillmentHistoryInfo | [FulfillmentHistoryInfo](../accelbyte_py_sdk/api/platform/models/fulfillment_history_info.py) |
| FulfillmentHistoryPagingSlicedResult | [FulfillmentHistoryPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/fulfillment_history_paging_sliced_result.py) |
| FulfillmentItem | [FulfillmentItem](../accelbyte_py_sdk/api/platform/models/fulfillment_item.py) |
| FulfillmentRequest | [FulfillmentRequest](../accelbyte_py_sdk/api/platform/models/fulfillment_request.py) |
| FulfillmentResult | [FulfillmentResult](../accelbyte_py_sdk/api/platform/models/fulfillment_result.py) |
| FulfillmentScriptContext | [FulfillmentScriptContext](../accelbyte_py_sdk/api/platform/models/fulfillment_script_context.py) |
| FulfillmentScriptCreate | [FulfillmentScriptCreate](../accelbyte_py_sdk/api/platform/models/fulfillment_script_create.py) |
| FulfillmentScriptEvalTestRequest | [FulfillmentScriptEvalTestRequest](../accelbyte_py_sdk/api/platform/models/fulfillment_script_eval_test_request.py) |
| FulfillmentScriptEvalTestResult | [FulfillmentScriptEvalTestResult](../accelbyte_py_sdk/api/platform/models/fulfillment_script_eval_test_result.py) |
| FulfillmentScriptInfo | [FulfillmentScriptInfo](../accelbyte_py_sdk/api/platform/models/fulfillment_script_info.py) |
| FulfillmentScriptUpdate | [FulfillmentScriptUpdate](../accelbyte_py_sdk/api/platform/models/fulfillment_script_update.py) |
| FullAppInfo | [FullAppInfo](../accelbyte_py_sdk/api/platform/models/full_app_info.py) |
| FullCategoryInfo | [FullCategoryInfo](../accelbyte_py_sdk/api/platform/models/full_category_info.py) |
| FullItemInfo | [FullItemInfo](../accelbyte_py_sdk/api/platform/models/full_item_info.py) |
| FullItemPagingSlicedResult | [FullItemPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/full_item_paging_sliced_result.py) |
| GameServerConfig | [GameServerConfig](../accelbyte_py_sdk/api/platform/models/game_server_config.py) |
| GoogleIAPConfigInfo | [GoogleIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/google_iap_config_info.py) |
| GoogleIAPConfigRequest | [GoogleIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/google_iap_config_request.py) |
| GoogleIAPReceipt | [GoogleIAPReceipt](../accelbyte_py_sdk/api/platform/models/google_iap_receipt.py) |
| GrantSubscriptionDaysRequest | [GrantSubscriptionDaysRequest](../accelbyte_py_sdk/api/platform/models/grant_subscription_days_request.py) |
| HierarchicalCategoryInfo | [HierarchicalCategoryInfo](../accelbyte_py_sdk/api/platform/models/hierarchical_category_info.py) |
| IAPOrderInfo | [IAPOrderInfo](../accelbyte_py_sdk/api/platform/models/iap_order_info.py) |
| IAPOrderPagingSlicedResult | [IAPOrderPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/iap_order_paging_sliced_result.py) |
| Image | [Image](../accelbyte_py_sdk/api/platform/models/image.py) |
| InGameItemSync | [InGameItemSync](../accelbyte_py_sdk/api/platform/models/in_game_item_sync.py) |
| ItemAcquireRequest | [ItemAcquireRequest](../accelbyte_py_sdk/api/platform/models/item_acquire_request.py) |
| ItemAcquireResult | [ItemAcquireResult](../accelbyte_py_sdk/api/platform/models/item_acquire_result.py) |
| ItemCreate | [ItemCreate](../accelbyte_py_sdk/api/platform/models/item_create.py) |
| ItemDynamicDataInfo | [ItemDynamicDataInfo](../accelbyte_py_sdk/api/platform/models/item_dynamic_data_info.py) |
| ItemId | [ItemId](../accelbyte_py_sdk/api/platform/models/item_id.py) |
| ItemInfo | [ItemInfo](../accelbyte_py_sdk/api/platform/models/item_info.py) |
| ItemPagingSlicedResult | [ItemPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/item_paging_sliced_result.py) |
| ItemReturnRequest | [ItemReturnRequest](../accelbyte_py_sdk/api/platform/models/item_return_request.py) |
| ItemSnapshot | [ItemSnapshot](../accelbyte_py_sdk/api/platform/models/item_snapshot.py) |
| ItemUpdate | [ItemUpdate](../accelbyte_py_sdk/api/platform/models/item_update.py) |
| KeyGroupCreate | [KeyGroupCreate](../accelbyte_py_sdk/api/platform/models/key_group_create.py) |
| KeyGroupDynamicInfo | [KeyGroupDynamicInfo](../accelbyte_py_sdk/api/platform/models/key_group_dynamic_info.py) |
| KeyGroupInfo | [KeyGroupInfo](../accelbyte_py_sdk/api/platform/models/key_group_info.py) |
| KeyGroupPagingSlicedResult | [KeyGroupPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/key_group_paging_sliced_result.py) |
| KeyGroupUpdate | [KeyGroupUpdate](../accelbyte_py_sdk/api/platform/models/key_group_update.py) |
| KeyInfo | [KeyInfo](../accelbyte_py_sdk/api/platform/models/key_info.py) |
| KeyPagingSliceResult | [KeyPagingSliceResult](../accelbyte_py_sdk/api/platform/models/key_paging_slice_result.py) |
| Localization | [Localization](../accelbyte_py_sdk/api/platform/models/localization.py) |
| MockIAPReceipt | [MockIAPReceipt](../accelbyte_py_sdk/api/platform/models/mock_iap_receipt.py) |
| NotificationProcessResult | [NotificationProcessResult](../accelbyte_py_sdk/api/platform/models/notification_process_result.py) |
| Order | [Order](../accelbyte_py_sdk/api/platform/models/order.py) |
| OrderCreate | [OrderCreate](../accelbyte_py_sdk/api/platform/models/order_create.py) |
| OrderGrantInfo | [OrderGrantInfo](../accelbyte_py_sdk/api/platform/models/order_grant_info.py) |
| OrderHistoryInfo | [OrderHistoryInfo](../accelbyte_py_sdk/api/platform/models/order_history_info.py) |
| OrderInfo | [OrderInfo](../accelbyte_py_sdk/api/platform/models/order_info.py) |
| OrderPagingResult | [OrderPagingResult](../accelbyte_py_sdk/api/platform/models/order_paging_result.py) |
| OrderPagingSlicedResult | [OrderPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/order_paging_sliced_result.py) |
| OrderRefundCreate | [OrderRefundCreate](../accelbyte_py_sdk/api/platform/models/order_refund_create.py) |
| OrderStatistics | [OrderStatistics](../accelbyte_py_sdk/api/platform/models/order_statistics.py) |
| OrderSummary | [OrderSummary](../accelbyte_py_sdk/api/platform/models/order_summary.py) |
| OrderSyncResult | [OrderSyncResult](../accelbyte_py_sdk/api/platform/models/order_sync_result.py) |
| OrderUpdate | [OrderUpdate](../accelbyte_py_sdk/api/platform/models/order_update.py) |
| Ownership | [Ownership](../accelbyte_py_sdk/api/platform/models/ownership.py) |
| OwnershipToken | [OwnershipToken](../accelbyte_py_sdk/api/platform/models/ownership_token.py) |
| Paging | [Paging](../accelbyte_py_sdk/api/platform/models/paging.py) |
| PayPalConfig | [PayPalConfig](../accelbyte_py_sdk/api/platform/models/pay_pal_config.py) |
| PaymentAccount | [PaymentAccount](../accelbyte_py_sdk/api/platform/models/payment_account.py) |
| PaymentMerchantConfigInfo | [PaymentMerchantConfigInfo](../accelbyte_py_sdk/api/platform/models/payment_merchant_config_info.py) |
| PaymentMethod | [PaymentMethod](../accelbyte_py_sdk/api/platform/models/payment_method.py) |
| PaymentNotificationInfo | [PaymentNotificationInfo](../accelbyte_py_sdk/api/platform/models/payment_notification_info.py) |
| PaymentNotificationPagingSlicedResult | [PaymentNotificationPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/payment_notification_paging_sliced_result.py) |
| PaymentOrder | [PaymentOrder](../accelbyte_py_sdk/api/platform/models/payment_order.py) |
| PaymentOrderChargeRequest | [PaymentOrderChargeRequest](../accelbyte_py_sdk/api/platform/models/payment_order_charge_request.py) |
| PaymentOrderChargeStatus | [PaymentOrderChargeStatus](../accelbyte_py_sdk/api/platform/models/payment_order_charge_status.py) |
| PaymentOrderCreate | [PaymentOrderCreate](../accelbyte_py_sdk/api/platform/models/payment_order_create.py) |
| PaymentOrderCreateResult | [PaymentOrderCreateResult](../accelbyte_py_sdk/api/platform/models/payment_order_create_result.py) |
| PaymentOrderDetails | [PaymentOrderDetails](../accelbyte_py_sdk/api/platform/models/payment_order_details.py) |
| PaymentOrderInfo | [PaymentOrderInfo](../accelbyte_py_sdk/api/platform/models/payment_order_info.py) |
| PaymentOrderNotifySimulation | [PaymentOrderNotifySimulation](../accelbyte_py_sdk/api/platform/models/payment_order_notify_simulation.py) |
| PaymentOrderPagingSlicedResult | [PaymentOrderPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/payment_order_paging_sliced_result.py) |
| PaymentOrderPaidResult | [PaymentOrderPaidResult](../accelbyte_py_sdk/api/platform/models/payment_order_paid_result.py) |
| PaymentOrderRefund | [PaymentOrderRefund](../accelbyte_py_sdk/api/platform/models/payment_order_refund.py) |
| PaymentOrderRefundResult | [PaymentOrderRefundResult](../accelbyte_py_sdk/api/platform/models/payment_order_refund_result.py) |
| PaymentOrderSyncResult | [PaymentOrderSyncResult](../accelbyte_py_sdk/api/platform/models/payment_order_sync_result.py) |
| PaymentProcessResult | [PaymentProcessResult](../accelbyte_py_sdk/api/platform/models/payment_process_result.py) |
| PaymentProviderConfigEdit | [PaymentProviderConfigEdit](../accelbyte_py_sdk/api/platform/models/payment_provider_config_edit.py) |
| PaymentProviderConfigInfo | [PaymentProviderConfigInfo](../accelbyte_py_sdk/api/platform/models/payment_provider_config_info.py) |
| PaymentProviderConfigPagingSlicedResult | [PaymentProviderConfigPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/payment_provider_config_paging_sliced_result.py) |
| PaymentRequest | [PaymentRequest](../accelbyte_py_sdk/api/platform/models/payment_request.py) |
| PaymentTaxConfigEdit | [PaymentTaxConfigEdit](../accelbyte_py_sdk/api/platform/models/payment_tax_config_edit.py) |
| PaymentTaxConfigInfo | [PaymentTaxConfigInfo](../accelbyte_py_sdk/api/platform/models/payment_tax_config_info.py) |
| PaymentToken | [PaymentToken](../accelbyte_py_sdk/api/platform/models/payment_token.py) |
| PaymentUrl | [PaymentUrl](../accelbyte_py_sdk/api/platform/models/payment_url.py) |
| PaymentUrlCreate | [PaymentUrlCreate](../accelbyte_py_sdk/api/platform/models/payment_url_create.py) |
| PlatformSubscribeRequest | [PlatformSubscribeRequest](../accelbyte_py_sdk/api/platform/models/platform_subscribe_request.py) |
| PlayStationIAPConfigInfo | [PlayStationIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/play_station_iap_config_info.py) |
| PlayStationReconcileResult | [PlayStationReconcileResult](../accelbyte_py_sdk/api/platform/models/play_station_reconcile_result.py) |
| PlaystationIAPConfigRequest | [PlaystationIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/playstation_iap_config_request.py) |
| PopulatedItemInfo | [PopulatedItemInfo](../accelbyte_py_sdk/api/platform/models/populated_item_info.py) |
| PurchasedItemCount | [PurchasedItemCount](../accelbyte_py_sdk/api/platform/models/purchased_item_count.py) |
| Recurring | [Recurring](../accelbyte_py_sdk/api/platform/models/recurring.py) |
| RecurringChargeResult | [RecurringChargeResult](../accelbyte_py_sdk/api/platform/models/recurring_charge_result.py) |
| RedeemHistoryInfo | [RedeemHistoryInfo](../accelbyte_py_sdk/api/platform/models/redeem_history_info.py) |
| RedeemHistoryPagingSlicedResult | [RedeemHistoryPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/redeem_history_paging_sliced_result.py) |
| RedeemRequest | [RedeemRequest](../accelbyte_py_sdk/api/platform/models/redeem_request.py) |
| RedeemResult | [RedeemResult](../accelbyte_py_sdk/api/platform/models/redeem_result.py) |
| RedeemableItem | [RedeemableItem](../accelbyte_py_sdk/api/platform/models/redeemable_item.py) |
| RegionDataItem | [RegionDataItem](../accelbyte_py_sdk/api/platform/models/region_data_item.py) |
| Requirement | [Requirement](../accelbyte_py_sdk/api/platform/models/requirement.py) |
| RewardCondition | [RewardCondition](../accelbyte_py_sdk/api/platform/models/reward_condition.py) |
| RewardCreate | [RewardCreate](../accelbyte_py_sdk/api/platform/models/reward_create.py) |
| RewardInfo | [RewardInfo](../accelbyte_py_sdk/api/platform/models/reward_info.py) |
| RewardItem | [RewardItem](../accelbyte_py_sdk/api/platform/models/reward_item.py) |
| RewardPagingSlicedResult | [RewardPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/reward_paging_sliced_result.py) |
| RewardUpdate | [RewardUpdate](../accelbyte_py_sdk/api/platform/models/reward_update.py) |
| Slide | [Slide](../accelbyte_py_sdk/api/platform/models/slide.py) |
| StackableEntitlementInfo | [StackableEntitlementInfo](../accelbyte_py_sdk/api/platform/models/stackable_entitlement_info.py) |
| StadiaIAPConfigInfo | [StadiaIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/stadia_iap_config_info.py) |
| StadiaSyncRequest | [StadiaSyncRequest](../accelbyte_py_sdk/api/platform/models/stadia_sync_request.py) |
| SteamIAPConfig | [SteamIAPConfig](../accelbyte_py_sdk/api/platform/models/steam_iap_config.py) |
| SteamIAPConfigInfo | [SteamIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/steam_iap_config_info.py) |
| SteamIAPConfigRequest | [SteamIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/steam_iap_config_request.py) |
| SteamSyncRequest | [SteamSyncRequest](../accelbyte_py_sdk/api/platform/models/steam_sync_request.py) |
| StoreBackupInfo | [StoreBackupInfo](../accelbyte_py_sdk/api/platform/models/store_backup_info.py) |
| StoreCreate | [StoreCreate](../accelbyte_py_sdk/api/platform/models/store_create.py) |
| StoreInfo | [StoreInfo](../accelbyte_py_sdk/api/platform/models/store_info.py) |
| StoreUpdate | [StoreUpdate](../accelbyte_py_sdk/api/platform/models/store_update.py) |
| StripeConfig | [StripeConfig](../accelbyte_py_sdk/api/platform/models/stripe_config.py) |
| Subscribable | [Subscribable](../accelbyte_py_sdk/api/platform/models/subscribable.py) |
| SubscribeRequest | [SubscribeRequest](../accelbyte_py_sdk/api/platform/models/subscribe_request.py) |
| SubscriptionActivityInfo | [SubscriptionActivityInfo](../accelbyte_py_sdk/api/platform/models/subscription_activity_info.py) |
| SubscriptionActivityPagingSlicedResult | [SubscriptionActivityPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/subscription_activity_paging_sliced_result.py) |
| SubscriptionInfo | [SubscriptionInfo](../accelbyte_py_sdk/api/platform/models/subscription_info.py) |
| SubscriptionPagingSlicedResult | [SubscriptionPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/subscription_paging_sliced_result.py) |
| SubscriptionSummary | [SubscriptionSummary](../accelbyte_py_sdk/api/platform/models/subscription_summary.py) |
| TaxResult | [TaxResult](../accelbyte_py_sdk/api/platform/models/tax_result.py) |
| TestResult | [TestResult](../accelbyte_py_sdk/api/platform/models/test_result.py) |
| TicketAcquireRequest | [TicketAcquireRequest](../accelbyte_py_sdk/api/platform/models/ticket_acquire_request.py) |
| TicketAcquireResult | [TicketAcquireResult](../accelbyte_py_sdk/api/platform/models/ticket_acquire_result.py) |
| TicketBoothID | [TicketBoothID](../accelbyte_py_sdk/api/platform/models/ticket_booth_id.py) |
| TicketDynamicInfo | [TicketDynamicInfo](../accelbyte_py_sdk/api/platform/models/ticket_dynamic_info.py) |
| TicketSaleDecrementRequest | [TicketSaleDecrementRequest](../accelbyte_py_sdk/api/platform/models/ticket_sale_decrement_request.py) |
| TicketSaleIncrementRequest | [TicketSaleIncrementRequest](../accelbyte_py_sdk/api/platform/models/ticket_sale_increment_request.py) |
| TicketSaleIncrementResult | [TicketSaleIncrementResult](../accelbyte_py_sdk/api/platform/models/ticket_sale_increment_result.py) |
| TimedOwnership | [TimedOwnership](../accelbyte_py_sdk/api/platform/models/timed_ownership.py) |
| TradeNotification | [TradeNotification](../accelbyte_py_sdk/api/platform/models/trade_notification.py) |
| Transaction | [Transaction](../accelbyte_py_sdk/api/platform/models/transaction.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../accelbyte_py_sdk/api/platform/models/validation_error_entity.py) |
| WalletInfo | [WalletInfo](../accelbyte_py_sdk/api/platform/models/wallet_info.py) |
| WalletPagingSlicedResult | [WalletPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/wallet_paging_sliced_result.py) |
| WalletTransactionInfo | [WalletTransactionInfo](../accelbyte_py_sdk/api/platform/models/wallet_transaction_info.py) |
| WalletTransactionPagingSlicedResult | [WalletTransactionPagingSlicedResult](../accelbyte_py_sdk/api/platform/models/wallet_transaction_paging_sliced_result.py) |
| WxPayConfigInfo | [WxPayConfigInfo](../accelbyte_py_sdk/api/platform/models/wx_pay_config_info.py) |
| WxPayConfigRequest | [WxPayConfigRequest](../accelbyte_py_sdk/api/platform/models/wx_pay_config_request.py) |
| XblIAPConfigInfo | [XblIAPConfigInfo](../accelbyte_py_sdk/api/platform/models/xbl_iap_config_info.py) |
| XblIAPConfigRequest | [XblIAPConfigRequest](../accelbyte_py_sdk/api/platform/models/xbl_iap_config_request.py) |
| XblReconcileRequest | [XblReconcileRequest](../accelbyte_py_sdk/api/platform/models/xbl_reconcile_request.py) |
| XblReconcileResult | [XblReconcileResult](../accelbyte_py_sdk/api/platform/models/xbl_reconcile_result.py) |
| XsollaConfig | [XsollaConfig](../accelbyte_py_sdk/api/platform/models/xsolla_config.py) |
| XsollaPaywallConfig | [XsollaPaywallConfig](../accelbyte_py_sdk/api/platform/models/xsolla_paywall_config.py) |
| XsollaPaywallConfigRequest | [XsollaPaywallConfigRequest](../accelbyte_py_sdk/api/platform/models/xsolla_paywall_config_request.py) |
