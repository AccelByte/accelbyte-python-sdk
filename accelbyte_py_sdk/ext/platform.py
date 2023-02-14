# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from .utils import randomize

from ..api.platform.models import ADTOObjectForOrderCreationOptions
from ..api.platform.models import ADTOObjectForQueryingXboxUserAchievements
from ..api.platform.models import ADTOObjectForUnlockSteamAchievementAPI
from ..api.platform.models import (
    ADTOObjectForUpdateXboxAchievementCompletePercentageAPI,
)
from ..api.platform.models import AchievementInfo
from ..api.platform.models import AdditionalData
from ..api.platform.models import AdminOrderCreate
from ..api.platform.models import AdyenConfig
from ..api.platform.models import AliPayConfig
from ..api.platform.models import AppEntitlementInfo
from ..api.platform.models import AppEntitlementPagingSlicedResult
from ..api.platform.models import AppInfo
from ..api.platform.models import AppLocalization
from ..api.platform.models import AppUpdate
from ..api.platform.models import AppleIAPConfigInfo
from ..api.platform.models import AppleIAPConfigRequest
from ..api.platform.models import AppleIAPReceipt
from ..api.platform.models import AvailableComparisonObject
from ..api.platform.models import AvailablePredicateObject
from ..api.platform.models import BasicCategoryInfo
from ..api.platform.models import BasicItem
from ..api.platform.models import BillingAccount
from ..api.platform.models import BillingHistoryInfo
from ..api.platform.models import BillingHistoryPagingSlicedResult
from ..api.platform.models import BoxItem
from ..api.platform.models import BulkOperationResult
from ..api.platform.models import BundledItemInfo
from ..api.platform.models import CampaignCreate
from ..api.platform.models import CampaignDynamicInfo
from ..api.platform.models import CampaignInfo
from ..api.platform.models import CampaignPagingSlicedResult
from ..api.platform.models import CampaignUpdate
from ..api.platform.models import CancelRequest
from ..api.platform.models import CatalogChangeInfo
from ..api.platform.models import CatalogChangePagingSlicedResult
from ..api.platform.models import CatalogChangeStatistics
from ..api.platform.models import CategoryCreate
from ..api.platform.models import CategoryInfo
from ..api.platform.models import CategoryUpdate
from ..api.platform.models import CheckoutConfig
from ..api.platform.models import ClientRequestParameter
from ..api.platform.models import CodeCreate
from ..api.platform.models import CodeCreateResult
from ..api.platform.models import CodeInfo
from ..api.platform.models import CodeInfoPagingSlicedResult
from ..api.platform.models import ConditionGroup
from ..api.platform.models import ConditionGroupValidateResult
from ..api.platform.models import ConditionMatchResult
from ..api.platform.models import ConsumeItem
from ..api.platform.models import CreditRequest
from ..api.platform.models import CreditRevocation
from ..api.platform.models import CreditSummary
from ..api.platform.models import CurrencyConfig
from ..api.platform.models import CurrencyCreate
from ..api.platform.models import CurrencyInfo
from ..api.platform.models import CurrencySummary
from ..api.platform.models import CurrencyUpdate
from ..api.platform.models import CurrencyWallet
from ..api.platform.models import Customization
from ..api.platform.models import DLCItem
from ..api.platform.models import DLCItemConfigInfo
from ..api.platform.models import DLCItemConfigUpdate
from ..api.platform.models import DLCRecord
from ..api.platform.models import DebitByCurrencyCodeRequest
from ..api.platform.models import DebitRequest
from ..api.platform.models import DeleteRewardConditionRequest
from ..api.platform.models import DetailedWalletTransactionInfo
from ..api.platform.models import DetailedWalletTransactionPagingSlicedResult
from ..api.platform.models import DurableEntitlementRevocationConfig
from ..api.platform.models import EntitlementDecrement
from ..api.platform.models import EntitlementDecrementResult
from ..api.platform.models import EntitlementGrant
from ..api.platform.models import EntitlementHistoryInfo
from ..api.platform.models import EntitlementInfo
from ..api.platform.models import EntitlementLootBoxReward
from ..api.platform.models import EntitlementOwnership
from ..api.platform.models import EntitlementPagingSlicedResult
from ..api.platform.models import EntitlementRevocation
from ..api.platform.models import EntitlementRevocationConfig
from ..api.platform.models import EntitlementSummary
from ..api.platform.models import EntitlementUpdate
from ..api.platform.models import EpicGamesDLCSyncRequest
from ..api.platform.models import EpicGamesIAPConfigInfo
from ..api.platform.models import EpicGamesIAPConfigRequest
from ..api.platform.models import EpicGamesReconcileRequest
from ..api.platform.models import EpicGamesReconcileResult
from ..api.platform.models import ErrorEntity
from ..api.platform.models import EventPayload
from ..api.platform.models import ExportStoreRequest
from ..api.platform.models import ExtensionFulfillmentSummary
from ..api.platform.models import ExternalPaymentOrderCreate
from ..api.platform.models import FieldValidationError
from ..api.platform.models import FixedPeriodRotationConfig
from ..api.platform.models import FulfillCodeRequest
from ..api.platform.models import FulfillmentError
from ..api.platform.models import FulfillmentHistoryInfo
from ..api.platform.models import FulfillmentHistoryPagingSlicedResult
from ..api.platform.models import FulfillmentItem
from ..api.platform.models import FulfillmentRequest
from ..api.platform.models import FulfillmentResult
from ..api.platform.models import FulfillmentScriptContext
from ..api.platform.models import FulfillmentScriptCreate
from ..api.platform.models import FulfillmentScriptEvalTestRequest
from ..api.platform.models import FulfillmentScriptEvalTestResult
from ..api.platform.models import FulfillmentScriptInfo
from ..api.platform.models import FulfillmentScriptUpdate
from ..api.platform.models import FullAppInfo
from ..api.platform.models import FullCategoryInfo
from ..api.platform.models import FullItemInfo
from ..api.platform.models import FullItemPagingSlicedResult
from ..api.platform.models import FullSectionInfo
from ..api.platform.models import FullViewInfo
from ..api.platform.models import GoogleIAPConfigInfo
from ..api.platform.models import GoogleIAPConfigRequest
from ..api.platform.models import GoogleIAPReceipt
from ..api.platform.models import GoogleReceiptResolveResult
from ..api.platform.models import GrantSubscriptionDaysRequest
from ..api.platform.models import HierarchicalCategoryInfo
from ..api.platform.models import IAPConsumeHistoryInfo
from ..api.platform.models import IAPConsumeHistoryPagingSlicedResult
from ..api.platform.models import IAPItemConfigInfo
from ..api.platform.models import IAPItemConfigUpdate
from ..api.platform.models import IAPItemEntry
from ..api.platform.models import IAPOrderInfo
from ..api.platform.models import IAPOrderPagingSlicedResult
from ..api.platform.models import Image
from ..api.platform.models import ImportErrorDetails
from ..api.platform.models import ImportStoreError
from ..api.platform.models import ImportStoreItemInfo
from ..api.platform.models import ImportStoreResult
from ..api.platform.models import InGameItemSync
from ..api.platform.models import InvoiceCurrencySummary
from ..api.platform.models import InvoiceSummary
from ..api.platform.models import ItemAcquireRequest
from ..api.platform.models import ItemAcquireResult
from ..api.platform.models import ItemCreate
from ..api.platform.models import ItemDynamicDataInfo
from ..api.platform.models import ItemId
from ..api.platform.models import ItemInfo
from ..api.platform.models import ItemNaming
from ..api.platform.models import ItemPagingSlicedResult
from ..api.platform.models import ItemPurchaseConditionValidateRequest
from ..api.platform.models import ItemPurchaseConditionValidateResult
from ..api.platform.models import ItemReturnRequest
from ..api.platform.models import ItemRevocation
from ..api.platform.models import ItemSnapshot
from ..api.platform.models import ItemTypeConfigCreate
from ..api.platform.models import ItemTypeConfigInfo
from ..api.platform.models import ItemTypeConfigUpdate
from ..api.platform.models import ItemUpdate
from ..api.platform.models import KeyGroupCreate
from ..api.platform.models import KeyGroupDynamicInfo
from ..api.platform.models import KeyGroupInfo
from ..api.platform.models import KeyGroupPagingSlicedResult
from ..api.platform.models import KeyGroupUpdate
from ..api.platform.models import KeyInfo
from ..api.platform.models import KeyPagingSliceResult
from ..api.platform.models import ListViewInfo
from ..api.platform.models import Localization
from ..api.platform.models import LootBoxConfig
from ..api.platform.models import LootBoxReward
from ..api.platform.models import MockIAPReceipt
from ..api.platform.models import NotificationProcessResult
from ..api.platform.models import OptionBoxConfig
from ..api.platform.models import Order
from ..api.platform.models import OrderCreate
from ..api.platform.models import OrderGrantInfo
from ..api.platform.models import OrderHistoryInfo
from ..api.platform.models import OrderInfo
from ..api.platform.models import OrderPagingResult
from ..api.platform.models import OrderPagingSlicedResult
from ..api.platform.models import OrderRefundCreate
from ..api.platform.models import OrderStatistics
from ..api.platform.models import OrderSummary
from ..api.platform.models import OrderSyncResult
from ..api.platform.models import OrderUpdate
from ..api.platform.models import Ownership
from ..api.platform.models import OwnershipToken
from ..api.platform.models import Paging
from ..api.platform.models import PayPalConfig
from ..api.platform.models import PaymentAccount
from ..api.platform.models import PaymentCallbackConfigInfo
from ..api.platform.models import PaymentCallbackConfigUpdate
from ..api.platform.models import PaymentMerchantConfigInfo
from ..api.platform.models import PaymentMethod
from ..api.platform.models import PaymentNotificationInfo
from ..api.platform.models import PaymentNotificationPagingSlicedResult
from ..api.platform.models import PaymentOrder
from ..api.platform.models import PaymentOrderChargeRequest
from ..api.platform.models import PaymentOrderChargeStatus
from ..api.platform.models import PaymentOrderCreate
from ..api.platform.models import PaymentOrderCreateResult
from ..api.platform.models import PaymentOrderDetails
from ..api.platform.models import PaymentOrderInfo
from ..api.platform.models import PaymentOrderNotifySimulation
from ..api.platform.models import PaymentOrderPagingSlicedResult
from ..api.platform.models import PaymentOrderPaidResult
from ..api.platform.models import PaymentOrderRefund
from ..api.platform.models import PaymentOrderRefundResult
from ..api.platform.models import PaymentOrderSyncResult
from ..api.platform.models import PaymentProcessResult
from ..api.platform.models import PaymentProviderConfigEdit
from ..api.platform.models import PaymentProviderConfigInfo
from ..api.platform.models import PaymentProviderConfigPagingSlicedResult
from ..api.platform.models import PaymentRequest
from ..api.platform.models import PaymentTaxConfigEdit
from ..api.platform.models import PaymentTaxConfigInfo
from ..api.platform.models import PaymentToken
from ..api.platform.models import PaymentUrl
from ..api.platform.models import PaymentUrlCreate
from ..api.platform.models import PlatformDLCConfigInfo
from ..api.platform.models import PlatformDLCConfigUpdate
from ..api.platform.models import PlatformDlcEntry
from ..api.platform.models import PlatformReward
from ..api.platform.models import PlatformRewardCurrency
from ..api.platform.models import PlatformRewardItem
from ..api.platform.models import PlatformSubscribeRequest
from ..api.platform.models import PlatformWallet
from ..api.platform.models import PlatformWalletConfigInfo
from ..api.platform.models import PlatformWalletConfigUpdate
from ..api.platform.models import PlayStationDLCSyncMultiServiceLabelsRequest
from ..api.platform.models import PlayStationDLCSyncRequest
from ..api.platform.models import PlayStationIAPConfigInfo
from ..api.platform.models import PlayStationMultiServiceLabelsReconcileRequest
from ..api.platform.models import PlayStationReconcileRequest
from ..api.platform.models import PlayStationReconcileResult
from ..api.platform.models import PlaystationIAPConfigRequest
from ..api.platform.models import PopulatedItemInfo
from ..api.platform.models import PredicateObject
from ..api.platform.models import PredicateValidateResult
from ..api.platform.models import PurchaseCondition
from ..api.platform.models import PurchaseConditionUpdate
from ..api.platform.models import PurchasedItemCount
from ..api.platform.models import Recurring
from ..api.platform.models import RecurringChargeResult
from ..api.platform.models import RedeemHistoryInfo
from ..api.platform.models import RedeemHistoryPagingSlicedResult
from ..api.platform.models import RedeemRequest
from ..api.platform.models import RedeemResult
from ..api.platform.models import RedeemableItem
from ..api.platform.models import RegionDataItem
from ..api.platform.models import RequestHistory
from ..api.platform.models import Requirement
from ..api.platform.models import RevocationConfigInfo
from ..api.platform.models import RevocationConfigUpdate
from ..api.platform.models import RevocationHistoryInfo
from ..api.platform.models import RevocationHistoryPagingSlicedResult
from ..api.platform.models import RevocationRequest
from ..api.platform.models import RevocationResult
from ..api.platform.models import RevokeCurrency
from ..api.platform.models import RevokeEntitlement
from ..api.platform.models import RevokeEntry
from ..api.platform.models import RevokeItem
from ..api.platform.models import RevokeItemSummary
from ..api.platform.models import RevokeResult
from ..api.platform.models import RewardCondition
from ..api.platform.models import RewardCreate
from ..api.platform.models import RewardInfo
from ..api.platform.models import RewardItem
from ..api.platform.models import RewardPagingSlicedResult
from ..api.platform.models import RewardUpdate
from ..api.platform.models import RewardsRequest
from ..api.platform.models import SectionCreate
from ..api.platform.models import SectionInfo
from ..api.platform.models import SectionItem
from ..api.platform.models import SectionPagingSlicedResult
from ..api.platform.models import SectionUpdate
from ..api.platform.models import ServicePluginConfigInfo
from ..api.platform.models import ServicePluginConfigUpdate
from ..api.platform.models import Slide
from ..api.platform.models import StackableEntitlementInfo
from ..api.platform.models import SteamAchievementRequest
from ..api.platform.models import SteamDLCSyncRequest
from ..api.platform.models import SteamIAPConfig
from ..api.platform.models import SteamIAPConfigInfo
from ..api.platform.models import SteamIAPConfigRequest
from ..api.platform.models import SteamSyncRequest
from ..api.platform.models import StoreBackupInfo
from ..api.platform.models import StoreCreate
from ..api.platform.models import StoreInfo
from ..api.platform.models import StoreUpdate
from ..api.platform.models import StripeConfig
from ..api.platform.models import Subscribable
from ..api.platform.models import SubscribeRequest
from ..api.platform.models import SubscriptionActivityInfo
from ..api.platform.models import SubscriptionActivityPagingSlicedResult
from ..api.platform.models import SubscriptionInfo
from ..api.platform.models import SubscriptionPagingSlicedResult
from ..api.platform.models import SubscriptionSummary
from ..api.platform.models import TaxResult
from ..api.platform.models import TestResult
from ..api.platform.models import TicketAcquireRequest
from ..api.platform.models import TicketAcquireResult
from ..api.platform.models import TicketBoothID
from ..api.platform.models import TicketDynamicInfo
from ..api.platform.models import TicketSaleDecrementRequest
from ..api.platform.models import TicketSaleIncrementRequest
from ..api.platform.models import TicketSaleIncrementResult
from ..api.platform.models import TimeLimitedBalance
from ..api.platform.models import TimedOwnership
from ..api.platform.models import TradeNotification
from ..api.platform.models import Transaction
from ..api.platform.models import TransactionAmountDetails
from ..api.platform.models import TwitchIAPConfigInfo
from ..api.platform.models import TwitchIAPConfigRequest
from ..api.platform.models import TwitchSyncRequest
from ..api.platform.models import UserDLC
from ..api.platform.models import ValidationErrorEntity
from ..api.platform.models import ViewCreate
from ..api.platform.models import ViewInfo
from ..api.platform.models import ViewUpdate
from ..api.platform.models import WalletInfo
from ..api.platform.models import WalletPagingSlicedResult
from ..api.platform.models import WalletRevocationConfig
from ..api.platform.models import WalletTransactionInfo
from ..api.platform.models import WalletTransactionPagingSlicedResult
from ..api.platform.models import WxPayConfigInfo
from ..api.platform.models import WxPayConfigRequest
from ..api.platform.models import XblDLCSyncRequest
from ..api.platform.models import XblIAPConfigInfo
from ..api.platform.models import XblIAPConfigRequest
from ..api.platform.models import XblReconcileRequest
from ..api.platform.models import XblReconcileResult
from ..api.platform.models import XboxAchievementRequest
from ..api.platform.models import XsollaConfig
from ..api.platform.models import XsollaPaywallConfig
from ..api.platform.models import XsollaPaywallConfigRequest


def create_a_dto_object_for_order_creation_options_example() -> (
    ADTOObjectForOrderCreationOptions
):
    instance = ADTOObjectForOrderCreationOptions()
    instance.skip_price_validation = randomize("bool")
    return instance


def create_a_dto_object_for_querying_xbox_user_achievements_example() -> (
    ADTOObjectForQueryingXboxUserAchievements
):
    instance = ADTOObjectForQueryingXboxUserAchievements()
    instance.achievements = [create_achievement_info_example()]
    return instance


def create_a_dto_object_for_unlock_steam_achievement_api_example() -> (
    ADTOObjectForUnlockSteamAchievementAPI
):
    instance = ADTOObjectForUnlockSteamAchievementAPI()
    instance.achievements = [create_steam_achievement_request_example()]
    instance.steam_user_id = randomize()
    return instance


def create_a_dto_object_for_update_xbox_achievement_complete_percentage_api_example() -> (
    ADTOObjectForUpdateXboxAchievementCompletePercentageAPI
):
    instance = ADTOObjectForUpdateXboxAchievementCompletePercentageAPI()
    instance.achievements = [create_xbox_achievement_request_example()]
    instance.service_config_id = randomize()
    instance.title_id = randomize()
    instance.xbox_user_id = randomize()
    return instance


def create_achievement_info_example() -> AchievementInfo:
    instance = AchievementInfo()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.progress_state = randomize()
    instance.progression = {randomize(): randomize()}
    instance.service_config_id = randomize()
    return instance


def create_additional_data_example() -> AdditionalData:
    instance = AdditionalData()
    instance.card_summary = randomize()
    return instance


def create_admin_order_create_example() -> AdminOrderCreate:
    instance = AdminOrderCreate()
    instance.currency_code = randomize()
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.currency_namespace = randomize("slug")
    instance.ext = {randomize(): randomize()}
    instance.language = randomize()
    instance.options = create_a_dto_object_for_order_creation_options_example()
    instance.platform = randomize()
    instance.return_url = randomize("url")
    instance.sandbox = randomize("bool")
    return instance


def create_adyen_config_example() -> AdyenConfig:
    instance = AdyenConfig()
    instance.allowed_payment_methods = [randomize()]
    instance.api_key = randomize()
    instance.authorise_as_capture = randomize("bool")
    instance.blocked_payment_methods = [randomize()]
    instance.client_key = randomize()
    instance.drop_in_settings = randomize()
    instance.live_endpoint_url_prefix = randomize()
    instance.merchant_account = randomize()
    instance.notification_hmac_key = randomize()
    instance.notification_password = randomize()
    instance.notification_username = randomize()
    instance.return_url = randomize("url")
    instance.settings = randomize()
    return instance


def create_ali_pay_config_example() -> AliPayConfig:
    instance = AliPayConfig()
    instance.app_id = randomize("uid")
    instance.private_key = randomize()
    instance.public_key = randomize()
    instance.return_url = randomize("url")
    return instance


def create_app_entitlement_info_example() -> AppEntitlementInfo:
    instance = AppEntitlementInfo()
    instance.granted_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.user_id = randomize("uid")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.end_date = randomize("date")
    instance.item_id = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    instance.sku = randomize("slug")
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    return instance


def create_app_entitlement_paging_sliced_result_example() -> (
    AppEntitlementPagingSlicedResult
):
    instance = AppEntitlementPagingSlicedResult()
    instance.data = [create_app_entitlement_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_app_info_example() -> AppInfo:
    instance = AppInfo()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.announcement = randomize()
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.forum_url = randomize("url")
    instance.genres = [randomize()]
    instance.language = randomize()
    instance.platform_requirements = {}
    instance.platforms = [randomize()]
    instance.players = [randomize()]
    instance.primary_genre = randomize()
    instance.publisher = randomize()
    instance.region = randomize()
    instance.release_date = randomize("date")
    instance.slogan = randomize()
    instance.website_url = randomize("url")
    return instance


def create_app_localization_example() -> AppLocalization:
    instance = AppLocalization()
    instance.announcement = randomize()
    instance.slogan = randomize()
    return instance


def create_app_update_example() -> AppUpdate:
    instance = AppUpdate()
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.forum_url = randomize("url")
    instance.genres = [randomize()]
    instance.localizations = {}
    instance.platform_requirements = {}
    instance.platforms = [randomize()]
    instance.players = [randomize()]
    instance.primary_genre = randomize()
    instance.publisher = randomize()
    instance.release_date = randomize("date")
    instance.website_url = randomize("url")
    return instance


def create_apple_iap_config_info_example() -> AppleIAPConfigInfo:
    instance = AppleIAPConfigInfo()
    instance.bundle_id = randomize()
    instance.namespace = randomize("slug")
    instance.password = randomize("password")
    return instance


def create_apple_iap_config_request_example() -> AppleIAPConfigRequest:
    instance = AppleIAPConfigRequest()
    instance.bundle_id = randomize()
    instance.password = randomize("password")
    return instance


def create_apple_iap_receipt_example() -> AppleIAPReceipt:
    instance = AppleIAPReceipt()
    instance.product_id = randomize("uid")
    instance.receipt_data = randomize()
    instance.transaction_id = randomize("uid")
    instance.exclude_old_transactions = randomize("bool")
    instance.language = randomize()
    instance.region = randomize()
    return instance


def create_available_comparison_object_example() -> AvailableComparisonObject:
    instance = AvailableComparisonObject()
    instance.comparison = randomize()
    instance.text = randomize()
    return instance


def create_available_predicate_object_example() -> AvailablePredicateObject:
    instance = AvailablePredicateObject()
    instance.available_comparisons = [create_available_comparison_object_example()]
    instance.predicate_type = randomize()
    instance.show_any_of = randomize("bool")
    instance.value_type = randomize()
    return instance


def create_basic_category_info_example() -> BasicCategoryInfo:
    instance = BasicCategoryInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.updated_at = randomize("date")
    instance.root = randomize("bool")
    return instance


def create_basic_item_example() -> BasicItem:
    instance = BasicItem()
    instance.created_at = randomize("date")
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.features = [randomize()]
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.tags = [randomize()]
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_billing_account_example() -> BillingAccount:
    instance = BillingAccount()
    instance.additional_data = create_additional_data_example()
    instance.payment_method = randomize()
    instance.payment_provider = randomize()
    return instance


def create_billing_history_info_example() -> BillingHistoryInfo:
    instance = BillingHistoryInfo()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.currency = create_currency_summary_example()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.payment_order_no = randomize()
    instance.recurring_order_no = randomize()
    instance.sandbox = randomize("bool")
    instance.status = randomize()
    instance.subscription_id = randomize()
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.billing_account = create_billing_account_example()
    instance.change_billing_account = randomize("bool")
    instance.description = randomize()
    instance.ext_tx_id = randomize()
    instance.retry_attempted = randomize("int", min_val=1, max_val=1000)
    instance.sku = randomize("slug")
    instance.status_reason = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.tx_end_time = randomize("date")
    return instance


def create_billing_history_paging_sliced_result_example() -> (
    BillingHistoryPagingSlicedResult
):
    instance = BillingHistoryPagingSlicedResult()
    instance.data = [create_billing_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_box_item_example() -> BoxItem:
    instance = BoxItem()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    return instance


def create_bulk_operation_result_example() -> BulkOperationResult:
    instance = BulkOperationResult()
    instance.affected = randomize("int", min_val=1, max_val=1000)
    return instance


def create_bundled_item_info_example() -> BundledItemInfo:
    instance = BundledItemInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.status = randomize()
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.bound_item_ids = [randomize()]
    instance.bundled_qty = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.description = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.fresh = randomize("bool")
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.purchase_condition = create_purchase_condition_example()
    instance.recurring = create_recurring_example()
    instance.region_data = [create_region_data_item_example()]
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_campaign_create_example() -> CampaignCreate:
    instance = CampaignCreate()
    instance.name = randomize()
    instance.description = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.max_redeem_count_per_campaign_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.redeem_end = randomize("date")
    instance.redeem_start = randomize("date")
    instance.redeem_type = randomize()
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_campaign_dynamic_info_example() -> CampaignDynamicInfo:
    instance = CampaignDynamicInfo()
    instance.available_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.last_batch_no = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.remainder = randomize("int", min_val=1, max_val=1000)
    instance.sale_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_campaign_info_example() -> CampaignInfo:
    instance = CampaignInfo()
    instance.booth_name = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.max_redeem_count_per_campaign_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.redeem_type = randomize()
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.redeem_end = randomize("date")
    instance.redeem_start = randomize("date")
    instance.tags = [randomize()]
    return instance


def create_campaign_paging_sliced_result_example() -> CampaignPagingSlicedResult:
    instance = CampaignPagingSlicedResult()
    instance.data = [create_campaign_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_campaign_update_example() -> CampaignUpdate:
    instance = CampaignUpdate()
    instance.name = randomize()
    instance.description = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.max_redeem_count_per_campaign_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.redeem_end = randomize("date")
    instance.redeem_start = randomize("date")
    instance.redeem_type = randomize()
    instance.status = randomize()
    instance.tags = [randomize()]
    return instance


def create_cancel_request_example() -> CancelRequest:
    instance = CancelRequest()
    instance.immediate = randomize("bool")
    instance.reason = randomize()
    return instance


def create_catalog_change_info_example() -> CatalogChangeInfo:
    instance = CatalogChangeInfo()
    instance.action = randomize()
    instance.change_id = randomize()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.selected = randomize("bool")
    instance.status = randomize()
    instance.store_id = randomize()
    instance.updated_at = randomize("date")
    instance.category_path = randomize()
    instance.description = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.published_at = randomize("date")
    instance.section_id = randomize()
    instance.sku = randomize("slug")
    instance.title = randomize()
    instance.type_ = randomize()
    instance.view_id = randomize()
    return instance


def create_catalog_change_paging_sliced_result_example() -> (
    CatalogChangePagingSlicedResult
):
    instance = CatalogChangePagingSlicedResult()
    instance.data = [create_catalog_change_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_catalog_change_statistics_example() -> CatalogChangeStatistics:
    instance = CatalogChangeStatistics()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.selected_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_category_create_example() -> CategoryCreate:
    instance = CategoryCreate()
    instance.category_path = randomize()
    instance.localization_display_names = {randomize(): randomize()}
    return instance


def create_category_info_example() -> CategoryInfo:
    instance = CategoryInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.updated_at = randomize("date")
    instance.root = randomize("bool")
    return instance


def create_category_update_example() -> CategoryUpdate:
    instance = CategoryUpdate()
    instance.localization_display_names = {randomize(): randomize()}
    return instance


def create_checkout_config_example() -> CheckoutConfig:
    instance = CheckoutConfig()
    instance.public_key = randomize()
    instance.secret_key = randomize()
    return instance


def create_client_request_parameter_example() -> ClientRequestParameter:
    instance = ClientRequestParameter()
    instance.currency_code = randomize()
    instance.language = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    return instance


def create_code_create_example() -> CodeCreate:
    instance = CodeCreate()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_code_create_result_example() -> CodeCreateResult:
    instance = CodeCreateResult()
    instance.num_created = randomize("int", min_val=1, max_val=1000)
    return instance


def create_code_info_example() -> CodeInfo:
    instance = CodeInfo()
    instance.batch_no = randomize("int", min_val=1, max_val=1000)
    instance.campaign_id = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.max_redeem_count_per_campaign_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.namespace = randomize("slug")
    instance.redeem_type = randomize()
    instance.redeemed_count = randomize("int", min_val=1, max_val=1000)
    instance.remainder = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.value = randomize()
    instance.acquire_order_no = randomize()
    instance.acquire_user_id = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.redeem_end = randomize("date")
    instance.redeem_start = randomize("date")
    return instance


def create_code_info_paging_sliced_result_example() -> CodeInfoPagingSlicedResult:
    instance = CodeInfoPagingSlicedResult()
    instance.data = [create_code_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_condition_group_example() -> ConditionGroup:
    instance = ConditionGroup()
    instance.operator = randomize()
    instance.predicates = [create_predicate_object_example()]
    return instance


def create_condition_group_validate_result_example() -> ConditionGroupValidateResult:
    instance = ConditionGroupValidateResult()
    instance.predicate_validate_results = [create_predicate_validate_result_example()]
    return instance


def create_condition_match_result_example() -> ConditionMatchResult:
    instance = ConditionMatchResult()
    instance.matched = randomize("bool")
    instance.matched_conditions = [{randomize(): randomize()}]
    instance.not_match_reason = randomize()
    return instance


def create_consume_item_example() -> ConsumeItem:
    instance = ConsumeItem()
    instance.ext_item_id = randomize()
    instance.item_identity = randomize()
    instance.item_identity_type = randomize()
    return instance


def create_credit_request_example() -> CreditRequest:
    instance = CreditRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.expire_at = randomize("date")
    instance.origin = randomize()
    instance.reason = randomize()
    instance.source = randomize()
    return instance


def create_credit_revocation_example() -> CreditRevocation:
    instance = CreditRevocation()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.balance_origin = randomize()
    instance.currency_code = randomize()
    instance.reason = randomize()
    instance.revocation_strategy = randomize()
    instance.skipped = randomize("bool")
    instance.status = randomize()
    instance.wallet_id = randomize()
    return instance


def create_credit_summary_example() -> CreditSummary:
    instance = CreditSummary()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.wallet_id = randomize()
    return instance


def create_currency_config_example() -> CurrencyConfig:
    instance = CurrencyConfig()
    instance.currency_symbol = randomize()
    return instance


def create_currency_create_example() -> CurrencyCreate:
    instance = CurrencyCreate()
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.currency_type = randomize()
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    instance.localization_descriptions = {randomize(): randomize()}
    return instance


def create_currency_info_example() -> CurrencyInfo:
    instance = CurrencyInfo()
    instance.created_at = randomize("date")
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.currency_type = randomize()
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.localization_descriptions = {randomize(): randomize()}
    return instance


def create_currency_summary_example() -> CurrencySummary:
    instance = CurrencySummary()
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.currency_type = randomize()
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    return instance


def create_currency_update_example() -> CurrencyUpdate:
    instance = CurrencyUpdate()
    instance.localization_descriptions = {randomize(): randomize()}
    return instance


def create_currency_wallet_example() -> CurrencyWallet:
    instance = CurrencyWallet()
    instance.balance = randomize("int", min_val=1, max_val=1000)
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.total_permanent_balance = randomize("int", min_val=1, max_val=1000)
    instance.total_time_limited_balance = randomize("int", min_val=1, max_val=1000)
    instance.wallet_infos = [create_wallet_info_example()]
    return instance


def create_customization_example() -> Customization:
    instance = Customization()
    instance.settings = randomize()
    return instance


def create_debit_by_currency_code_request_example() -> DebitByCurrencyCodeRequest:
    instance = DebitByCurrencyCodeRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.allow_overdraft = randomize("bool")
    instance.balance_origin = randomize()
    instance.reason = randomize()
    return instance


def create_debit_request_example() -> DebitRequest:
    instance = DebitRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    return instance


def create_delete_reward_condition_request_example() -> DeleteRewardConditionRequest:
    instance = DeleteRewardConditionRequest()
    instance.condition_name = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_detailed_wallet_transaction_info_example() -> DetailedWalletTransactionInfo:
    instance = DetailedWalletTransactionInfo()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.currency_code = randomize()
    instance.namespace = randomize("slug")
    instance.operator = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.wallet_action = randomize()
    instance.wallet_id = randomize()
    instance.balance_source = randomize()
    instance.reason = randomize()
    return instance


def create_detailed_wallet_transaction_paging_sliced_result_example() -> (
    DetailedWalletTransactionPagingSlicedResult
):
    instance = DetailedWalletTransactionPagingSlicedResult()
    instance.data = [create_detailed_wallet_transaction_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_dlc_item_example() -> DLCItem:
    instance = DLCItem()
    instance.id_ = randomize()
    instance.rewards = [create_platform_reward_example()]
    return instance


def create_dlc_item_config_info_example() -> DLCItemConfigInfo:
    instance = DLCItemConfigInfo()
    instance.data = [create_dlc_item_example()]
    return instance


def create_dlc_item_config_update_example() -> DLCItemConfigUpdate:
    instance = DLCItemConfigUpdate()
    instance.data = [create_dlc_item_example()]
    return instance


def create_dlc_record_example() -> DLCRecord:
    instance = DLCRecord()
    instance.id_ = randomize()
    instance.obtained_at = randomize("date")
    instance.revocation_result = create_revocation_result_example()
    instance.revoke_results = [create_revoke_result_example()]
    instance.revoked_at = randomize("date")
    instance.rewards = [create_platform_reward_example()]
    instance.sources = [randomize()]
    instance.status = randomize()
    instance.transaction_id = randomize("uid")
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_durable_entitlement_revocation_config_example() -> (
    DurableEntitlementRevocationConfig
):
    instance = DurableEntitlementRevocationConfig()
    instance.enabled = randomize("bool")
    instance.strategy = randomize()
    return instance


def create_entitlement_decrement_example() -> EntitlementDecrement:
    instance = EntitlementDecrement()
    instance.options = [randomize()]
    instance.request_id = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_entitlement_decrement_result_example() -> EntitlementDecrementResult:
    instance = EntitlementDecrementResult()
    instance.clazz = randomize()
    instance.created_at = randomize("date")
    instance.granted_at = randomize("date")
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.item_namespace = randomize("slug")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.source = randomize()
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.end_date = randomize("date")
    instance.features = [randomize()]
    instance.granted_code = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    instance.replayed = randomize("bool")
    instance.request_id = randomize()
    instance.rewards = [create_entitlement_loot_box_reward_example()]
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_entitlement_grant_example() -> EntitlementGrant:
    instance = EntitlementGrant()
    instance.item_id = randomize()
    instance.item_namespace = randomize("slug")
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.end_date = randomize("date")
    instance.granted_code = randomize()
    instance.language = randomize()
    instance.region = randomize()
    instance.source = randomize()
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    return instance


def create_entitlement_history_info_example() -> EntitlementHistoryInfo:
    instance = EntitlementHistoryInfo()
    instance.action = randomize()
    instance.created_at = randomize("date")
    instance.entitlement_id = randomize()
    instance.namespace = randomize("slug")
    instance.operator = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_entitlement_info_example() -> EntitlementInfo:
    instance = EntitlementInfo()
    instance.clazz = randomize()
    instance.created_at = randomize("date")
    instance.granted_at = randomize("date")
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.item_namespace = randomize("slug")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.source = randomize()
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.end_date = randomize("date")
    instance.features = [randomize()]
    instance.granted_code = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_entitlement_loot_box_reward_example() -> EntitlementLootBoxReward:
    instance = EntitlementLootBoxReward()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.item_sku = randomize()
    return instance


def create_entitlement_ownership_example() -> EntitlementOwnership:
    instance = EntitlementOwnership()
    instance.owned = randomize("bool")
    instance.item_id = randomize()
    return instance


def create_entitlement_paging_sliced_result_example() -> EntitlementPagingSlicedResult:
    instance = EntitlementPagingSlicedResult()
    instance.data = [create_entitlement_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_entitlement_revocation_example() -> EntitlementRevocation:
    instance = EntitlementRevocation()
    instance.entitlement_id = randomize()
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    instance.revocation_strategy = randomize()
    instance.skipped = randomize("bool")
    instance.status = randomize()
    return instance


def create_entitlement_revocation_config_example() -> EntitlementRevocationConfig:
    instance = EntitlementRevocationConfig()
    instance.durable = create_durable_entitlement_revocation_config_example()
    return instance


def create_entitlement_summary_example() -> EntitlementSummary:
    instance = EntitlementSummary()
    instance.clazz = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.end_date = randomize("date")
    instance.granted_code = randomize()
    instance.item_id = randomize()
    instance.stackable = randomize("bool")
    instance.stacked_use_count = randomize("int", min_val=1, max_val=1000)
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    return instance


def create_entitlement_update_example() -> EntitlementUpdate:
    instance = EntitlementUpdate()
    instance.end_date = randomize("date")
    instance.null_field_list = [randomize()]
    instance.start_date = randomize("date")
    instance.status = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_epic_games_dlc_sync_request_example() -> EpicGamesDLCSyncRequest:
    instance = EpicGamesDLCSyncRequest()
    instance.epic_games_jwt_token = randomize()
    return instance


def create_epic_games_iap_config_info_example() -> EpicGamesIAPConfigInfo:
    instance = EpicGamesIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.sandbox_id = randomize()
    return instance


def create_epic_games_iap_config_request_example() -> EpicGamesIAPConfigRequest:
    instance = EpicGamesIAPConfigRequest()
    instance.sandbox_id = randomize()
    return instance


def create_epic_games_reconcile_request_example() -> EpicGamesReconcileRequest:
    instance = EpicGamesReconcileRequest()
    instance.epic_games_jwt_token = randomize()
    return instance


def create_epic_games_reconcile_result_example() -> EpicGamesReconcileResult:
    instance = EpicGamesReconcileResult()
    instance.epic_games_item_id = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    instance.transaction_id = randomize("uid")
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.dev_stack_trace = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_event_payload_example() -> EventPayload:
    instance = EventPayload()
    instance.payload = {randomize(): randomize()}
    return instance


def create_export_store_request_example() -> ExportStoreRequest:
    instance = ExportStoreRequest()
    instance.item_ids = [randomize()]
    return instance


def create_extension_fulfillment_summary_example() -> ExtensionFulfillmentSummary:
    instance = ExtensionFulfillmentSummary()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.granted_at = randomize("date")
    instance.item_clazz = randomize()
    instance.item_ext = {randomize(): randomize()}
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_external_payment_order_create_example() -> ExternalPaymentOrderCreate:
    instance = ExternalPaymentOrderCreate()
    instance.description = randomize()
    instance.ext_order_no = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.title = randomize()
    instance.currency_code = randomize()
    instance.currency_namespace = randomize("slug")
    instance.custom_parameters = {randomize(): randomize()}
    instance.ext_user_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.notify_url = randomize("url")
    instance.omit_notification = randomize("bool")
    instance.platform = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.sandbox = randomize("bool")
    instance.sku = randomize("slug")
    instance.subscription_id = randomize()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_message = randomize()
    instance.error_value = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_fixed_period_rotation_config_example() -> FixedPeriodRotationConfig:
    instance = FixedPeriodRotationConfig()
    instance.backfill_type = randomize()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.item_count = randomize("int", min_val=1, max_val=1000)
    instance.rule = randomize()
    return instance


def create_fulfill_code_request_example() -> FulfillCodeRequest:
    instance = FulfillCodeRequest()
    instance.code = randomize()
    instance.language = randomize()
    instance.region = randomize()
    return instance


def create_fulfillment_error_example() -> FulfillmentError:
    instance = FulfillmentError()
    instance.code = randomize("int", min_val=1, max_val=1000)
    instance.http_status = randomize("int", min_val=1, max_val=1000)
    instance.message = randomize()
    return instance


def create_fulfillment_history_info_example() -> FulfillmentHistoryInfo:
    instance = FulfillmentHistoryInfo()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.code = randomize()
    instance.credit_summaries = [create_credit_summary_example()]
    instance.entitlement_summaries = [create_entitlement_summary_example()]
    instance.extension_fulfillment_summaries = [
        create_extension_fulfillment_summary_example()
    ]
    instance.fulfill_items = [create_fulfillment_item_example()]
    instance.fulfillment_error = create_fulfillment_error_example()
    instance.granted_item_ids = [randomize()]
    instance.order_no = randomize()
    return instance


def create_fulfillment_history_paging_sliced_result_example() -> (
    FulfillmentHistoryPagingSlicedResult
):
    instance = FulfillmentHistoryPagingSlicedResult()
    instance.data = [create_fulfillment_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_fulfillment_item_example() -> FulfillmentItem:
    instance = FulfillmentItem()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.extra_subscription_days = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    instance.store_id = randomize()
    return instance


def create_fulfillment_request_example() -> FulfillmentRequest:
    instance = FulfillmentRequest()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.end_date = randomize("date")
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.language = randomize()
    instance.order = create_order_summary_example()
    instance.order_no = randomize()
    instance.origin = randomize()
    instance.region = randomize()
    instance.source = randomize()
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    return instance


def create_fulfillment_result_example() -> FulfillmentResult:
    instance = FulfillmentResult()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.credit_summaries = [create_credit_summary_example()]
    instance.entitlement_summaries = [create_entitlement_summary_example()]
    instance.subscription_summaries = [create_subscription_summary_example()]
    return instance


def create_fulfillment_script_context_example() -> FulfillmentScriptContext:
    instance = FulfillmentScriptContext()
    instance.item = create_item_info_example()
    instance.namespace = randomize("slug")
    instance.source = randomize()
    instance.order = create_order_summary_example()
    return instance


def create_fulfillment_script_create_example() -> FulfillmentScriptCreate:
    instance = FulfillmentScriptCreate()
    instance.grant_days = randomize()
    return instance


def create_fulfillment_script_eval_test_request_example() -> (
    FulfillmentScriptEvalTestRequest
):
    instance = FulfillmentScriptEvalTestRequest()
    instance.context = create_fulfillment_script_context_example()
    instance.script = randomize()
    instance.type_ = randomize()
    return instance


def create_fulfillment_script_eval_test_result_example() -> (
    FulfillmentScriptEvalTestResult
):
    instance = FulfillmentScriptEvalTestResult()
    instance.error_stack_trace = randomize()
    instance.result = {randomize(): randomize()}
    return instance


def create_fulfillment_script_info_example() -> FulfillmentScriptInfo:
    instance = FulfillmentScriptInfo()
    instance.grant_days = randomize()
    instance.id_ = randomize()
    return instance


def create_fulfillment_script_update_example() -> FulfillmentScriptUpdate:
    instance = FulfillmentScriptUpdate()
    instance.grant_days = randomize()
    return instance


def create_full_app_info_example() -> FullAppInfo:
    instance = FullAppInfo()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.forum_url = randomize("url")
    instance.genres = [randomize()]
    instance.localizations = {}
    instance.platform_requirements = {}
    instance.platforms = [randomize()]
    instance.players = [randomize()]
    instance.primary_genre = randomize()
    instance.publisher = randomize()
    instance.release_date = randomize("date")
    instance.website_url = randomize("url")
    return instance


def create_full_category_info_example() -> FullCategoryInfo:
    instance = FullCategoryInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.localization_display_names = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.updated_at = randomize("date")
    instance.root = randomize("bool")
    return instance


def create_full_item_info_example() -> FullItemInfo:
    instance = FullItemInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.localizations = {}
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.region_data = {}
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.bound_item_ids = [randomize()]
    instance.clazz = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.purchase_condition = create_purchase_condition_example()
    instance.recurring = create_recurring_example()
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_full_item_paging_sliced_result_example() -> FullItemPagingSlicedResult:
    instance = FullItemPagingSlicedResult()
    instance.data = [create_full_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_full_section_info_example() -> FullSectionInfo:
    instance = FullSectionInfo()
    instance.active = randomize("bool")
    instance.created_at = randomize("date")
    instance.end_date = randomize("date")
    instance.localizations = {}
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.section_id = randomize()
    instance.start_date = randomize("date")
    instance.updated_at = randomize("date")
    instance.view_id = randomize()
    instance.view_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.fixed_period_rotation_config = (
        create_fixed_period_rotation_config_example()
    )
    instance.item_namings = [create_item_naming_example()]
    instance.items = [create_section_item_example()]
    instance.rotation_type = randomize()
    return instance


def create_full_view_info_example() -> FullViewInfo:
    instance = FullViewInfo()
    instance.created_at = randomize("date")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.localizations = {}
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.view_id = randomize()
    return instance


def create_google_iap_config_info_example() -> GoogleIAPConfigInfo:
    instance = GoogleIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.application_name = randomize()
    instance.p12_file_name = randomize()
    instance.service_account_id = randomize()
    return instance


def create_google_iap_config_request_example() -> GoogleIAPConfigRequest:
    instance = GoogleIAPConfigRequest()
    instance.application_name = randomize()
    instance.service_account_id = randomize()
    return instance


def create_google_iap_receipt_example() -> GoogleIAPReceipt:
    instance = GoogleIAPReceipt()
    instance.order_id = randomize()
    instance.package_name = randomize()
    instance.product_id = randomize("uid")
    instance.purchase_time = randomize("int", min_val=1, max_val=1000)
    instance.purchase_token = randomize()
    instance.auto_ack = randomize("bool")
    instance.language = randomize()
    instance.region = randomize()
    return instance


def create_google_receipt_resolve_result_example() -> GoogleReceiptResolveResult:
    instance = GoogleReceiptResolveResult()
    instance.need_consume = randomize("bool")
    return instance


def create_grant_subscription_days_request_example() -> GrantSubscriptionDaysRequest:
    instance = GrantSubscriptionDaysRequest()
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    return instance


def create_hierarchical_category_info_example() -> HierarchicalCategoryInfo:
    instance = HierarchicalCategoryInfo()
    instance.category_path = randomize()
    instance.child_categories = [create_hierarchical_category_info_example()]
    instance.created_at = randomize("date")
    instance.display_name = randomize("slug")
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.updated_at = randomize("date")
    instance.root = randomize("bool")
    return instance


def create_iap_consume_history_info_example() -> IAPConsumeHistoryInfo:
    instance = IAPConsumeHistoryInfo()
    instance.client_request_parameter = create_client_request_parameter_example()
    instance.consume_items = [create_consume_item_example()]
    instance.iap_type = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.request_body = {randomize(): randomize()}
    instance.request_histories = [create_request_history_example()]
    instance.request_url = randomize("url")
    instance.status = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_iap_consume_history_paging_sliced_result_example() -> (
    IAPConsumeHistoryPagingSlicedResult
):
    instance = IAPConsumeHistoryPagingSlicedResult()
    instance.data = [create_iap_consume_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_iap_item_config_info_example() -> IAPItemConfigInfo:
    instance = IAPItemConfigInfo()
    instance.data = [create_iap_item_entry_example()]
    return instance


def create_iap_item_config_update_example() -> IAPItemConfigUpdate:
    instance = IAPItemConfigUpdate()
    instance.data = [create_iap_item_entry_example()]
    return instance


def create_iap_item_entry_example() -> IAPItemEntry:
    instance = IAPItemEntry()
    instance.item_identity = randomize()
    instance.item_identity_type = randomize()
    instance.platform_product_id_map = {randomize(): randomize()}
    return instance


def create_iap_order_info_example() -> IAPOrderInfo:
    instance = IAPOrderInfo()
    instance.created_at = randomize("date")
    instance.iap_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.credits = [create_credit_summary_example()]
    instance.currency_code = randomize()
    instance.entitlements = [create_entitlement_summary_example()]
    instance.fulfilled_time = randomize("date")
    instance.language = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.product_id = randomize("uid")
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.receipt_data = randomize()
    instance.region = randomize()
    instance.retry_count = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.status_reason = randomize()
    instance.transaction_id = randomize("uid")
    return instance


def create_iap_order_paging_sliced_result_example() -> IAPOrderPagingSlicedResult:
    instance = IAPOrderPagingSlicedResult()
    instance.data = [create_iap_order_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_image_example() -> Image:
    instance = Image()
    instance.height = randomize("int", min_val=1, max_val=1000)
    instance.image_url = randomize("url")
    instance.small_image_url = randomize("url")
    instance.width = randomize("int", min_val=1, max_val=1000)
    instance.as_ = randomize()
    instance.caption = randomize()
    return instance


def create_import_error_details_example() -> ImportErrorDetails:
    instance = ImportErrorDetails()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_import_store_error_example() -> ImportStoreError:
    instance = ImportStoreError()
    instance.errors = [create_import_error_details_example()]
    instance.item = create_import_store_item_info_example()
    instance.type_ = randomize()
    return instance


def create_import_store_item_info_example() -> ImportStoreItemInfo:
    instance = ImportStoreItemInfo()
    instance.category_path = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.localizations = {}
    instance.name = randomize()
    instance.sku = randomize("slug")
    return instance


def create_import_store_result_example() -> ImportStoreResult:
    instance = ImportStoreResult()
    instance.errors = [create_import_store_error_example()]
    instance.store_info = create_store_info_example()
    instance.success = randomize("bool")
    return instance


def create_in_game_item_sync_example() -> InGameItemSync:
    instance = InGameItemSync()
    instance.category_path = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    return instance


def create_invoice_currency_summary_example() -> InvoiceCurrencySummary:
    instance = InvoiceCurrencySummary()
    instance.currency = create_currency_summary_example()
    instance.sales_volume = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    return instance


def create_invoice_summary_example() -> InvoiceSummary:
    instance = InvoiceSummary()
    instance.invoice_currency_summary = [create_invoice_currency_summary_example()]
    instance.total_sales_volume = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_acquire_request_example() -> ItemAcquireRequest:
    instance = ItemAcquireRequest()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.order_no = randomize()
    return instance


def create_item_acquire_result_example() -> ItemAcquireResult:
    instance = ItemAcquireResult()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.success = randomize("bool")
    return instance


def create_item_create_example() -> ItemCreate:
    instance = ItemCreate()
    instance.category_path = randomize()
    instance.entitlement_type = randomize()
    instance.item_type = randomize()
    instance.localizations = {}
    instance.name = randomize()
    instance.region_data = {}
    instance.status = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.clazz = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.recurring = create_recurring_example()
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_dynamic_data_info_example() -> ItemDynamicDataInfo:
    instance = ItemDynamicDataInfo()
    instance.available_count = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.user_available_count = randomize("int", min_val=1, max_val=1000)
    instance.user_purchase_limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_id_example() -> ItemId:
    instance = ItemId()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    return instance


def create_item_info_example() -> ItemInfo:
    instance = ItemInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.status = randomize()
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.bound_item_ids = [randomize()]
    instance.clazz = randomize()
    instance.description = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.fresh = randomize("bool")
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.purchase_condition = create_purchase_condition_example()
    instance.recurring = create_recurring_example()
    instance.region_data = [create_region_data_item_example()]
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_naming_example() -> ItemNaming:
    instance = ItemNaming()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.category_path = randomize()
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    return instance


def create_item_paging_sliced_result_example() -> ItemPagingSlicedResult:
    instance = ItemPagingSlicedResult()
    instance.data = [create_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_item_purchase_condition_validate_request_example() -> (
    ItemPurchaseConditionValidateRequest
):
    instance = ItemPurchaseConditionValidateRequest()
    instance.item_ids = [randomize()]
    return instance


def create_item_purchase_condition_validate_result_example() -> (
    ItemPurchaseConditionValidateResult
):
    instance = ItemPurchaseConditionValidateResult()
    instance.item_id = randomize()
    instance.purchasable = randomize("bool")
    instance.sku = randomize("slug")
    instance.validate_details = [create_condition_group_validate_result_example()]
    return instance


def create_item_return_request_example() -> ItemReturnRequest:
    instance = ItemReturnRequest()
    instance.order_no = randomize()
    return instance


def create_item_revocation_example() -> ItemRevocation:
    instance = ItemRevocation()
    instance.credit_revocations = [create_credit_revocation_example()]
    instance.entitlement_revocations = [create_entitlement_revocation_example()]
    instance.item_id = randomize()
    instance.item_revocations = [create_item_revocation_example()]
    instance.item_sku = randomize()
    instance.item_type = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.skipped = randomize("bool")
    instance.status = randomize()
    return instance


def create_item_snapshot_example() -> ItemSnapshot:
    instance = ItemSnapshot()
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.title = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.features = [randomize()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.recurring = create_recurring_example()
    instance.region_data_item = create_region_data_item_example()
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.updated_at = randomize("date")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_type_config_create_example() -> ItemTypeConfigCreate:
    instance = ItemTypeConfigCreate()
    instance.fulfillment_url = randomize("url")
    instance.item_type = randomize()
    instance.clazz = randomize()
    instance.dry_run = randomize("bool")
    instance.purchase_condition_url = randomize("url")
    return instance


def create_item_type_config_info_example() -> ItemTypeConfigInfo:
    instance = ItemTypeConfigInfo()
    instance.created_at = randomize("date")
    instance.fulfillment_url = randomize("url")
    instance.id_ = randomize()
    instance.item_type = randomize()
    instance.updated_at = randomize("date")
    instance.clazz = randomize()
    instance.dry_run = randomize("bool")
    instance.purchase_condition_url = randomize("url")
    return instance


def create_item_type_config_update_example() -> ItemTypeConfigUpdate:
    instance = ItemTypeConfigUpdate()
    instance.fulfillment_url = randomize("url")
    instance.clazz = randomize()
    instance.dry_run = randomize("bool")
    instance.purchase_condition_url = randomize("url")
    return instance


def create_item_update_example() -> ItemUpdate:
    instance = ItemUpdate()
    instance.entitlement_type = randomize()
    instance.item_type = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.category_path = randomize()
    instance.clazz = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.listable = randomize("bool")
    instance.localizations = {}
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.recurring = create_recurring_example()
    instance.region_data = {}
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_key_group_create_example() -> KeyGroupCreate:
    instance = KeyGroupCreate()
    instance.name = randomize()
    instance.description = randomize()
    instance.status = randomize()
    instance.tags = [randomize()]
    return instance


def create_key_group_dynamic_info_example() -> KeyGroupDynamicInfo:
    instance = KeyGroupDynamicInfo()
    instance.available_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sale_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_key_group_info_example() -> KeyGroupInfo:
    instance = KeyGroupInfo()
    instance.booth_name = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.tags = [randomize()]
    return instance


def create_key_group_paging_sliced_result_example() -> KeyGroupPagingSlicedResult:
    instance = KeyGroupPagingSlicedResult()
    instance.data = [create_key_group_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_key_group_update_example() -> KeyGroupUpdate:
    instance = KeyGroupUpdate()
    instance.name = randomize()
    instance.description = randomize()
    instance.status = randomize()
    instance.tags = [randomize()]
    return instance


def create_key_info_example() -> KeyInfo:
    instance = KeyInfo()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.key_file = randomize()
    instance.key_group_id = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.value = randomize()
    instance.acquire_order_no = randomize()
    instance.acquire_user_id = randomize()
    return instance


def create_key_paging_slice_result_example() -> KeyPagingSliceResult:
    instance = KeyPagingSliceResult()
    instance.data = [create_key_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_list_view_info_example() -> ListViewInfo:
    instance = ListViewInfo()
    instance.created_at = randomize("date")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.view_id = randomize()
    return instance


def create_localization_example() -> Localization:
    instance = Localization()
    instance.title = randomize()
    instance.description = randomize()
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    return instance


def create_loot_box_config_example() -> LootBoxConfig:
    instance = LootBoxConfig()
    instance.reward_count = randomize("int", min_val=1, max_val=1000)
    instance.rewards = [create_loot_box_reward_example()]
    instance.roll_function = randomize()
    return instance


def create_loot_box_reward_example() -> LootBoxReward:
    instance = LootBoxReward()
    instance.loot_box_items = [create_box_item_example()]
    instance.name = randomize()
    instance.odds = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    instance.weight = randomize("int", min_val=1, max_val=1000)
    return instance


def create_mock_iap_receipt_example() -> MockIAPReceipt:
    instance = MockIAPReceipt()
    instance.product_id = randomize("uid")
    instance.type_ = randomize()
    instance.item_identity_type = randomize()
    instance.language = randomize()
    instance.region = randomize()
    return instance


def create_notification_process_result_example() -> NotificationProcessResult:
    instance = NotificationProcessResult()
    instance.code = randomize()
    instance.custom_param = {randomize(): randomize()}
    instance.severity = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    return instance


def create_option_box_config_example() -> OptionBoxConfig:
    instance = OptionBoxConfig()
    instance.box_items = [create_box_item_example()]
    return instance


def create_order_example() -> Order:
    instance = Order()
    instance.chargeback_reversed_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.charged = randomize("bool")
    instance.charged_time = randomize("date")
    instance.count_item_id = randomize()
    instance.count_namespace = randomize("slug")
    instance.count_user_id = randomize()
    instance.created_at = randomize("date")
    instance.created_time = randomize("date")
    instance.creation_options = create_a_dto_object_for_order_creation_options_example()
    instance.currency = create_currency_summary_example()
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.expire_time = randomize("date")
    instance.ext = {randomize(): randomize()}
    instance.free = randomize("bool")
    instance.fulfilled_time = randomize("date")
    instance.item_id = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    instance.language = randomize()
    instance.namespace = randomize("slug")
    instance.order_no = randomize()
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_remain_seconds = randomize("int", min_val=1, max_val=1000)
    instance.payment_station_url = randomize("url")
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.refunded_time = randomize("date")
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_create_example() -> OrderCreate:
    instance = OrderCreate()
    instance.currency_code = randomize()
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.language = randomize()
    instance.region = randomize()
    instance.return_url = randomize("url")
    return instance


def create_order_grant_info_example() -> OrderGrantInfo:
    instance = OrderGrantInfo()
    instance.credits = [create_credit_summary_example()]
    instance.entitlements = [create_entitlement_summary_example()]
    return instance


def create_order_history_info_example() -> OrderHistoryInfo:
    instance = OrderHistoryInfo()
    instance.action = randomize()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.operator = randomize()
    instance.order_no = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.reason = randomize()
    return instance


def create_order_info_example() -> OrderInfo:
    instance = OrderInfo()
    instance.created_at = randomize("date")
    instance.currency = create_currency_summary_example()
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.expire_time = randomize("date")
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.order_no = randomize()
    instance.payment_remain_seconds = randomize("int", min_val=1, max_val=1000)
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.chargeback_reversed_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.created_time = randomize("date")
    instance.creation_options = create_a_dto_object_for_order_creation_options_example()
    instance.ext = {randomize(): randomize()}
    instance.fulfilled_time = randomize("date")
    instance.item_snapshot = create_item_snapshot_example()
    instance.language = randomize()
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_station_url = randomize("url")
    instance.refunded_time = randomize("date")
    instance.region = randomize()
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.status_reason = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_paging_result_example() -> OrderPagingResult:
    instance = OrderPagingResult()
    instance.data = [create_order_info_example()]
    instance.paging = create_paging_example()
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_paging_sliced_result_example() -> OrderPagingSlicedResult:
    instance = OrderPagingSlicedResult()
    instance.data = [create_order_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_order_refund_create_example() -> OrderRefundCreate:
    instance = OrderRefundCreate()
    instance.description = randomize()
    return instance


def create_order_statistics_example() -> OrderStatistics:
    instance = OrderStatistics()
    instance.status_count = {}
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_summary_example() -> OrderSummary:
    instance = OrderSummary()
    instance.currency = create_currency_summary_example()
    instance.ext = {randomize(): randomize()}
    instance.free = randomize("bool")
    return instance


def create_order_sync_result_example() -> OrderSyncResult:
    instance = OrderSyncResult()
    instance.next_evaluated_key = randomize()
    instance.orders = [create_order_example()]
    return instance


def create_order_update_example() -> OrderUpdate:
    instance = OrderUpdate()
    instance.status = randomize()
    instance.status_reason = randomize()
    return instance


def create_ownership_example() -> Ownership:
    instance = Ownership()
    instance.owned = randomize("bool")
    return instance


def create_ownership_token_example() -> OwnershipToken:
    instance = OwnershipToken()
    instance.ownership_token = randomize()
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_pay_pal_config_example() -> PayPalConfig:
    instance = PayPalConfig()
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.return_url = randomize("url")
    instance.web_hook_id = randomize()
    return instance


def create_payment_account_example() -> PaymentAccount:
    instance = PaymentAccount()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.type_ = randomize()
    return instance


def create_payment_callback_config_info_example() -> PaymentCallbackConfigInfo:
    instance = PaymentCallbackConfigInfo()
    instance.namespace = randomize("slug")
    instance.dry_run = randomize("bool")
    instance.notify_url = randomize("url")
    instance.private_key = randomize()
    return instance


def create_payment_callback_config_update_example() -> PaymentCallbackConfigUpdate:
    instance = PaymentCallbackConfigUpdate()
    instance.dry_run = randomize("bool")
    instance.notify_url = randomize("url")
    instance.private_key = randomize()
    return instance


def create_payment_merchant_config_info_example() -> PaymentMerchantConfigInfo:
    instance = PaymentMerchantConfigInfo()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.updated_at = randomize("date")
    instance.adyen_config = create_adyen_config_example()
    instance.adyen_sandbox_config = create_adyen_config_example()
    instance.ali_pay_config = create_ali_pay_config_example()
    instance.ali_pay_sandbox_config = create_ali_pay_config_example()
    instance.checkout_config = create_checkout_config_example()
    instance.checkout_sandbox_config = create_checkout_config_example()
    instance.pay_pal_config = create_pay_pal_config_example()
    instance.pay_pal_sandbox_config = create_pay_pal_config_example()
    instance.stripe_config = create_stripe_config_example()
    instance.stripe_sandbox_config = create_stripe_config_example()
    instance.wx_pay_config = create_wx_pay_config_info_example()
    instance.xsolla_config = create_xsolla_config_example()
    instance.xsolla_paywall_config = create_xsolla_paywall_config_example()
    return instance


def create_payment_method_example() -> PaymentMethod:
    instance = PaymentMethod()
    instance.name = randomize()
    instance.payment_provider = randomize()
    return instance


def create_payment_notification_info_example() -> PaymentNotificationInfo:
    instance = PaymentNotificationInfo()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.notification = {randomize(): randomize()}
    instance.notification_source = randomize()
    instance.notification_type = randomize()
    instance.payment_order_no = randomize()
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.external_id = randomize()
    instance.status_reason = randomize()
    return instance


def create_payment_notification_paging_sliced_result_example() -> (
    PaymentNotificationPagingSlicedResult
):
    instance = PaymentNotificationPagingSlicedResult()
    instance.data = [create_payment_notification_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_order_example() -> PaymentOrder:
    instance = PaymentOrder()
    instance.authorised_time = randomize("date")
    instance.channel = randomize()
    instance.chargeback_reversed_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.charging = randomize("bool")
    instance.created_at = randomize("date")
    instance.created_time = randomize("date")
    instance.currency = create_currency_summary_example()
    instance.custom_parameters = {randomize(): randomize()}
    instance.description = randomize()
    instance.ext_order_no = randomize()
    instance.ext_user_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.notify_url = randomize("url")
    instance.omit_notification = randomize("bool")
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_station_url = randomize("url")
    instance.platform = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.recurring_payment_order_no = randomize()
    instance.refunded_time = randomize("date")
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.sku = randomize("slug")
    instance.state = randomize()
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.subscription_id = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.title = randomize()
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.transactions = [create_transaction_example()]
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.zip_code = randomize("zip_code")
    return instance


def create_payment_order_charge_request_example() -> PaymentOrderChargeRequest:
    instance = PaymentOrderChargeRequest()
    instance.payment_provider = randomize()
    instance.ext_tx_id = randomize()
    instance.payment_method = randomize()
    return instance


def create_payment_order_charge_status_example() -> PaymentOrderChargeStatus:
    instance = PaymentOrderChargeStatus()
    instance.charging = randomize("bool")
    instance.status = randomize()
    return instance


def create_payment_order_create_example() -> PaymentOrderCreate:
    instance = PaymentOrderCreate()
    instance.description = randomize()
    instance.ext_order_no = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.title = randomize()
    instance.currency_code = randomize()
    instance.currency_namespace = randomize("slug")
    instance.custom_parameters = {randomize(): randomize()}
    instance.ext_user_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.notify_url = randomize("url")
    instance.omit_notification = randomize("bool")
    instance.platform = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.sandbox = randomize("bool")
    instance.sku = randomize("slug")
    instance.subscription_id = randomize()
    return instance


def create_payment_order_create_result_example() -> PaymentOrderCreateResult:
    instance = PaymentOrderCreateResult()
    instance.created_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.payment_order_no = randomize()
    instance.status = randomize()
    instance.payment_station_url = randomize("url")
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    return instance


def create_payment_order_details_example() -> PaymentOrderDetails:
    instance = PaymentOrderDetails()
    instance.charging = randomize("bool")
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.price = randomize()
    instance.sandbox = randomize("bool")
    instance.title = randomize()
    instance.description = randomize()
    instance.display_name = randomize("slug")
    instance.region = randomize()
    return instance


def create_payment_order_info_example() -> PaymentOrderInfo:
    instance = PaymentOrderInfo()
    instance.channel = randomize()
    instance.created_at = randomize("date")
    instance.currency = create_currency_summary_example()
    instance.ext_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.status = randomize()
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.authorised_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.charging = randomize("bool")
    instance.created_time = randomize("date")
    instance.custom_parameters = {randomize(): randomize()}
    instance.description = randomize()
    instance.ext_user_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.notify_url = randomize("url")
    instance.omit_notification = randomize("bool")
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_station_url = randomize("url")
    instance.recurring_payment_order_no = randomize()
    instance.refunded_time = randomize("date")
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.sku = randomize("slug")
    instance.status_reason = randomize()
    instance.subscription_id = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.transactions = [create_transaction_example()]
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_payment_order_notify_simulation_example() -> PaymentOrderNotifySimulation:
    instance = PaymentOrderNotifySimulation()
    instance.currency_code = randomize()
    instance.notify_type = randomize()
    instance.payment_provider = randomize()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_payment_order_paging_sliced_result_example() -> (
    PaymentOrderPagingSlicedResult
):
    instance = PaymentOrderPagingSlicedResult()
    instance.data = [create_payment_order_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_order_paid_result_example() -> PaymentOrderPaidResult:
    instance = PaymentOrderPaidResult()
    instance.charging = randomize("bool")
    instance.success = randomize("bool")
    return instance


def create_payment_order_refund_example() -> PaymentOrderRefund:
    instance = PaymentOrderRefund()
    instance.description = randomize()
    return instance


def create_payment_order_refund_result_example() -> PaymentOrderRefundResult:
    instance = PaymentOrderRefundResult()
    instance.created_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.payment_order_no = randomize()
    instance.status = randomize()
    instance.refunded_time = randomize("date")
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    return instance


def create_payment_order_sync_result_example() -> PaymentOrderSyncResult:
    instance = PaymentOrderSyncResult()
    instance.next_evaluated_key = randomize()
    instance.payment_orders = [create_payment_order_example()]
    return instance


def create_payment_process_result_example() -> PaymentProcessResult:
    instance = PaymentProcessResult()
    instance.pending = randomize("bool")
    instance.success = randomize("bool")
    instance.reason = randomize()
    instance.redirect_url = randomize("url")
    return instance


def create_payment_provider_config_edit_example() -> PaymentProviderConfigEdit:
    instance = PaymentProviderConfigEdit()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.aggregate = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.specials = [randomize()]
    instance.tax_jar_api_token = randomize()
    instance.tax_jar_enabled = randomize("bool")
    instance.use_global_tax_jar_api_token = randomize("bool")
    return instance


def create_payment_provider_config_info_example() -> PaymentProviderConfigInfo:
    instance = PaymentProviderConfigInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.payment_merchant_config_id = randomize()
    instance.region = randomize()
    instance.aggregate = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.specials = [randomize()]
    instance.tax_jar_api_token = randomize()
    instance.tax_jar_enabled = randomize("bool")
    instance.use_global_tax_jar_api_token = randomize("bool")
    return instance


def create_payment_provider_config_paging_sliced_result_example() -> (
    PaymentProviderConfigPagingSlicedResult
):
    instance = PaymentProviderConfigPagingSlicedResult()
    instance.data = [create_payment_provider_config_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_request_example() -> PaymentRequest:
    instance = PaymentRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.wallet_platform = randomize()
    return instance


def create_payment_tax_config_edit_example() -> PaymentTaxConfigEdit:
    instance = PaymentTaxConfigEdit()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.tax_jar_api_token = randomize()
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_product_codes_mapping = {randomize(): randomize()}
    return instance


def create_payment_tax_config_info_example() -> PaymentTaxConfigInfo:
    instance = PaymentTaxConfigInfo()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.tax_jar_api_token = randomize()
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_product_codes_mapping = {randomize(): randomize()}
    return instance


def create_payment_token_example() -> PaymentToken:
    instance = PaymentToken()
    instance.token = randomize()
    return instance


def create_payment_url_example() -> PaymentUrl:
    instance = PaymentUrl()
    instance.payment_provider = randomize()
    instance.payment_type = randomize()
    instance.payment_url = randomize("url")
    instance.return_url = randomize("url")
    instance.session_data = randomize()
    instance.session_id = randomize("uid")
    return instance


def create_payment_url_create_example() -> PaymentUrlCreate:
    instance = PaymentUrlCreate()
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.return_url = randomize("url")
    instance.ui = randomize()
    instance.zip_code = randomize("zip_code")
    return instance


def create_platform_dlc_config_info_example() -> PlatformDLCConfigInfo:
    instance = PlatformDLCConfigInfo()
    instance.data = [create_platform_dlc_entry_example()]
    return instance


def create_platform_dlc_config_update_example() -> PlatformDLCConfigUpdate:
    instance = PlatformDLCConfigUpdate()
    instance.data = [create_platform_dlc_entry_example()]
    return instance


def create_platform_dlc_entry_example() -> PlatformDlcEntry:
    instance = PlatformDlcEntry()
    instance.platform = randomize()
    instance.platform_dlc_id_map = {randomize(): randomize()}
    return instance


def create_platform_reward_example() -> PlatformReward:
    instance = PlatformReward()
    instance.currency = create_platform_reward_currency_example()
    instance.item = create_platform_reward_item_example()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    return instance


def create_platform_reward_currency_example() -> PlatformRewardCurrency:
    instance = PlatformRewardCurrency()
    instance.currency_code = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_platform_reward_item_example() -> PlatformRewardItem:
    instance = PlatformRewardItem()
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    return instance


def create_platform_subscribe_request_example() -> PlatformSubscribeRequest:
    instance = PlatformSubscribeRequest()
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.language = randomize()
    instance.reason = randomize()
    instance.region = randomize()
    instance.source = randomize()
    return instance


def create_platform_wallet_example() -> PlatformWallet:
    instance = PlatformWallet()
    instance.balance = randomize("int", min_val=1, max_val=1000)
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.id_ = randomize()
    instance.status = randomize()
    instance.wallet_infos = [create_wallet_info_example()]
    instance.wallet_status = randomize()
    return instance


def create_platform_wallet_config_info_example() -> PlatformWalletConfigInfo:
    instance = PlatformWalletConfigInfo()
    instance.allowed_balance_origins = [randomize()]
    instance.namespace = randomize("slug")
    instance.platform = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_platform_wallet_config_update_example() -> PlatformWalletConfigUpdate:
    instance = PlatformWalletConfigUpdate()
    instance.allowed_balance_origins = [randomize()]
    return instance


def create_play_station_dlc_sync_multi_service_labels_request_example() -> (
    PlayStationDLCSyncMultiServiceLabelsRequest
):
    instance = PlayStationDLCSyncMultiServiceLabelsRequest()
    instance.service_labels = [randomize("int", min_val=1, max_val=1000)]
    return instance


def create_play_station_dlc_sync_request_example() -> PlayStationDLCSyncRequest:
    instance = PlayStationDLCSyncRequest()
    instance.service_label = randomize("int", min_val=1, max_val=1000)
    return instance


def create_play_station_iap_config_info_example() -> PlayStationIAPConfigInfo:
    instance = PlayStationIAPConfigInfo()
    instance.environment = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_play_station_multi_service_labels_reconcile_request_example() -> (
    PlayStationMultiServiceLabelsReconcileRequest
):
    instance = PlayStationMultiServiceLabelsReconcileRequest()
    instance.currency_code = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.product_id = randomize("uid")
    instance.service_labels = [randomize("int", min_val=1, max_val=1000)]
    return instance


def create_play_station_reconcile_request_example() -> PlayStationReconcileRequest:
    instance = PlayStationReconcileRequest()
    instance.currency_code = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.product_id = randomize("uid")
    instance.service_label = randomize("int", min_val=1, max_val=1000)
    return instance


def create_play_station_reconcile_result_example() -> PlayStationReconcileResult:
    instance = PlayStationReconcileResult()
    instance.item_id = randomize()
    instance.psn_item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    instance.transaction_id = randomize("uid")
    return instance


def create_playstation_iap_config_request_example() -> PlaystationIAPConfigRequest:
    instance = PlaystationIAPConfigRequest()
    instance.environment = randomize()
    return instance


def create_populated_item_info_example() -> PopulatedItemInfo:
    instance = PopulatedItemInfo()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.entitlement_type = randomize()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.language = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.status = randomize()
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.base_app_id = randomize()
    instance.booth_name = randomize()
    instance.bound_item_ids = [randomize()]
    instance.clazz = randomize()
    instance.description = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.features = [randomize()]
    instance.fresh = randomize("bool")
    instance.images = [create_image_example()]
    instance.item_ids = [randomize()]
    instance.item_qty = {}
    instance.items = [create_bundled_item_info_example()]
    instance.listable = randomize("bool")
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    instance.loot_box_config = create_loot_box_config_example()
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.option_box_config = create_option_box_config_example()
    instance.purchasable = randomize("bool")
    instance.purchase_condition = create_purchase_condition_example()
    instance.recurring = create_recurring_example()
    instance.region_data = [create_region_data_item_example()]
    instance.season_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.tags = [randomize()]
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.thumbnail_url = randomize("url")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_predicate_object_example() -> PredicateObject:
    instance = PredicateObject()
    instance.any_of = randomize("int", min_val=1, max_val=1000)
    instance.comparison = randomize()
    instance.name = randomize()
    instance.predicate_type = randomize()
    instance.value = randomize()
    instance.values = [randomize()]
    return instance


def create_predicate_validate_result_example() -> PredicateValidateResult:
    instance = PredicateValidateResult()
    instance.matched = [randomize()]
    instance.predicate_name = randomize()
    instance.unmatched = [randomize()]
    instance.validated = randomize("bool")
    return instance


def create_purchase_condition_example() -> PurchaseCondition:
    instance = PurchaseCondition()
    instance.condition_groups = [create_condition_group_example()]
    return instance


def create_purchase_condition_update_example() -> PurchaseConditionUpdate:
    instance = PurchaseConditionUpdate()
    instance.purchase_condition = create_purchase_condition_example()
    return instance


def create_purchased_item_count_example() -> PurchasedItemCount:
    instance = PurchasedItemCount()
    instance.count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_recurring_example() -> Recurring:
    instance = Recurring()
    instance.cycle = randomize()
    instance.fixed_free_days = randomize("int", min_val=1, max_val=1000)
    instance.fixed_trial_cycles = randomize("int", min_val=1, max_val=1000)
    instance.grace_days = randomize("int", min_val=1, max_val=1000)
    return instance


def create_recurring_charge_result_example() -> RecurringChargeResult:
    instance = RecurringChargeResult()
    instance.triggered = randomize("bool")
    instance.code = randomize()
    instance.detail = randomize()
    return instance


def create_redeem_history_info_example() -> RedeemHistoryInfo:
    instance = RedeemHistoryInfo()
    instance.campaign_id = randomize()
    instance.code = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.order_no = randomize()
    instance.redeemed_at = randomize("date")
    return instance


def create_redeem_history_paging_sliced_result_example() -> (
    RedeemHistoryPagingSlicedResult
):
    instance = RedeemHistoryPagingSlicedResult()
    instance.data = [create_redeem_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_redeem_request_example() -> RedeemRequest:
    instance = RedeemRequest()
    instance.code = randomize()
    instance.order_no = randomize()
    return instance


def create_redeem_result_example() -> RedeemResult:
    instance = RedeemResult()
    instance.items = [create_redeemable_item_example()]
    return instance


def create_redeemable_item_example() -> RedeemableItem:
    instance = RedeemableItem()
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.extra_subscription_days = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_region_data_item_example() -> RegionDataItem:
    instance = RegionDataItem()
    instance.currency_code = randomize()
    instance.currency_namespace = randomize("slug")
    instance.currency_type = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.discount_amount = randomize("int", min_val=1, max_val=1000)
    instance.discount_expire_at = randomize("date")
    instance.discount_percentage = randomize("int", min_val=1, max_val=1000)
    instance.discount_purchase_at = randomize("date")
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.expire_at = randomize("date")
    instance.purchase_at = randomize("date")
    instance.trial_price = randomize("int", min_val=1, max_val=1000)
    return instance


def create_request_history_example() -> RequestHistory:
    instance = RequestHistory()
    instance.request_time = randomize("date")
    instance.response_body = {randomize(): randomize()}
    instance.response_time = randomize("date")
    instance.status = randomize()
    instance.status_code = randomize("int", min_val=1, max_val=1000)
    return instance


def create_requirement_example() -> Requirement:
    instance = Requirement()
    instance.label = randomize()
    instance.additionals = randomize()
    instance.direct_x_version = randomize()
    instance.disk_space = randomize()
    instance.graphics = randomize()
    instance.os_version = randomize()
    instance.processor = randomize()
    instance.ram = randomize()
    instance.sound_card = randomize()
    return instance


def create_revocation_config_info_example() -> RevocationConfigInfo:
    instance = RevocationConfigInfo()
    instance.entitlement = create_entitlement_revocation_config_example()
    instance.namespace = randomize("slug")
    instance.wallet = create_wallet_revocation_config_example()
    return instance


def create_revocation_config_update_example() -> RevocationConfigUpdate:
    instance = RevocationConfigUpdate()
    instance.entitlement = create_entitlement_revocation_config_example()
    instance.wallet = create_wallet_revocation_config_example()
    return instance


def create_revocation_history_info_example() -> RevocationHistoryInfo:
    instance = RevocationHistoryInfo()
    instance.created_at = randomize("date")
    instance.credit_revocations = [create_credit_revocation_example()]
    instance.entitlement_revocations = [create_entitlement_revocation_example()]
    instance.id_ = randomize()
    instance.item_revocations = [create_item_revocation_example()]
    instance.meta = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.revoke_entries = [create_revoke_entry_example()]
    instance.source = randomize()
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_revocation_history_paging_sliced_result_example() -> (
    RevocationHistoryPagingSlicedResult
):
    instance = RevocationHistoryPagingSlicedResult()
    instance.data = [create_revocation_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_revocation_request_example() -> RevocationRequest:
    instance = RevocationRequest()
    instance.meta = {randomize(): randomize()}
    instance.revoke_entries = [create_revoke_entry_example()]
    instance.source = randomize()
    instance.transaction_id = randomize("uid")
    return instance


def create_revocation_result_example() -> RevocationResult:
    instance = RevocationResult()
    instance.id_ = randomize()
    instance.status = randomize()
    instance.credit_revocations = [create_credit_revocation_example()]
    instance.entitlement_revocations = [create_entitlement_revocation_example()]
    instance.item_revocations = [create_item_revocation_example()]
    return instance


def create_revoke_currency_example() -> RevokeCurrency:
    instance = RevokeCurrency()
    instance.balance_origin = randomize()
    instance.currency_code = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_revoke_entitlement_example() -> RevokeEntitlement:
    instance = RevokeEntitlement()
    instance.clazz = randomize()
    instance.entitlement_id = randomize()
    instance.type_ = randomize()
    return instance


def create_revoke_entry_example() -> RevokeEntry:
    instance = RevokeEntry()
    instance.currency = create_revoke_currency_example()
    instance.entitlement = create_revoke_entitlement_example()
    instance.item = create_revoke_item_example()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    return instance


def create_revoke_item_example() -> RevokeItem:
    instance = RevokeItem()
    instance.item_identity = randomize()
    instance.item_identity_type = randomize()
    instance.origin = randomize()
    return instance


def create_revoke_item_summary_example() -> RevokeItemSummary:
    instance = RevokeItemSummary()
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    instance.revoke_status = randomize()
    return instance


def create_revoke_result_example() -> RevokeResult:
    instance = RevokeResult()
    instance.revoke_item_summaries = [create_revoke_item_summary_example()]
    instance.reward = create_platform_reward_example()
    instance.status = randomize()
    return instance


def create_reward_condition_example() -> RewardCondition:
    instance = RewardCondition()
    instance.condition = randomize()
    instance.condition_name = randomize()
    instance.event_name = randomize()
    instance.reward_items = [create_reward_item_example()]
    return instance


def create_reward_create_example() -> RewardCreate:
    instance = RewardCreate()
    instance.event_topic = randomize()
    instance.reward_code = randomize()
    instance.description = randomize()
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    instance.namespace_expression = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.user_id_expression = randomize()
    return instance


def create_reward_info_example() -> RewardInfo:
    instance = RewardInfo()
    instance.event_topic = randomize()
    instance.namespace = randomize("slug")
    instance.reward_id = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    instance.namespace_expression = randomize()
    instance.reward_code = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.updated_at = randomize("date")
    instance.user_id_expression = randomize()
    return instance


def create_reward_item_example() -> RewardItem:
    instance = RewardItem()
    instance.duration = randomize("int", min_val=1, max_val=1000)
    instance.item_id = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_reward_paging_sliced_result_example() -> RewardPagingSlicedResult:
    instance = RewardPagingSlicedResult()
    instance.data = [create_reward_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_reward_update_example() -> RewardUpdate:
    instance = RewardUpdate()
    instance.event_topic = randomize()
    instance.reward_code = randomize()
    instance.description = randomize()
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    instance.namespace_expression = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.user_id_expression = randomize()
    return instance


def create_rewards_request_example() -> RewardsRequest:
    instance = RewardsRequest()
    instance.rewards = [create_platform_reward_example()]
    instance.origin = randomize()
    instance.source = randomize()
    return instance


def create_section_create_example() -> SectionCreate:
    instance = SectionCreate()
    instance.end_date = randomize("date")
    instance.localizations = {}
    instance.name = randomize()
    instance.start_date = randomize("date")
    instance.active = randomize("bool")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.fixed_period_rotation_config = (
        create_fixed_period_rotation_config_example()
    )
    instance.items = [create_section_item_example()]
    instance.rotation_type = randomize()
    instance.view_id = randomize()
    return instance


def create_section_info_example() -> SectionInfo:
    instance = SectionInfo()
    instance.active = randomize("bool")
    instance.created_at = randomize("date")
    instance.end_date = randomize("date")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.section_id = randomize()
    instance.start_date = randomize("date")
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.view_id = randomize()
    instance.current_rotation_expire_at = randomize("date")
    instance.current_rotation_items = [create_item_info_example()]
    instance.description = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    return instance


def create_section_item_example() -> SectionItem:
    instance = SectionItem()
    instance.id_ = randomize()
    instance.sku = randomize("slug")
    return instance


def create_section_paging_sliced_result_example() -> SectionPagingSlicedResult:
    instance = SectionPagingSlicedResult()
    instance.data = [create_full_section_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_section_update_example() -> SectionUpdate:
    instance = SectionUpdate()
    instance.end_date = randomize("date")
    instance.localizations = {}
    instance.name = randomize()
    instance.start_date = randomize("date")
    instance.active = randomize("bool")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.fixed_period_rotation_config = (
        create_fixed_period_rotation_config_example()
    )
    instance.items = [create_section_item_example()]
    instance.rotation_type = randomize()
    instance.view_id = randomize()
    return instance


def create_service_plugin_config_info_example() -> ServicePluginConfigInfo:
    instance = ServicePluginConfigInfo()
    instance.grpc_server_address = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_service_plugin_config_update_example() -> ServicePluginConfigUpdate:
    instance = ServicePluginConfigUpdate()
    instance.grpc_server_address = randomize()
    return instance


def create_slide_example() -> Slide:
    instance = Slide()
    instance.alt = randomize()
    instance.preview_url = randomize("url")
    instance.thumbnail_url = randomize("url")
    instance.type_ = randomize()
    instance.url = randomize("url")
    instance.video_source = randomize()
    return instance


def create_stackable_entitlement_info_example() -> StackableEntitlementInfo:
    instance = StackableEntitlementInfo()
    instance.clazz = randomize()
    instance.created_at = randomize("date")
    instance.granted_at = randomize("date")
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.item_namespace = randomize("slug")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.source = randomize()
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.end_date = randomize("date")
    instance.features = [randomize()]
    instance.granted_code = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.stacked_use_count = randomize("int", min_val=1, max_val=1000)
    instance.start_date = randomize("date")
    instance.store_id = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_steam_achievement_request_example() -> SteamAchievementRequest:
    instance = SteamAchievementRequest()
    instance.id_ = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_steam_dlc_sync_request_example() -> SteamDLCSyncRequest:
    instance = SteamDLCSyncRequest()
    instance.steam_id = randomize()
    instance.app_id = randomize("uid")
    return instance


def create_steam_iap_config_example() -> SteamIAPConfig:
    instance = SteamIAPConfig()
    instance.app_id = randomize("uid")
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.publisher_authentication_key = randomize()
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    return instance


def create_steam_iap_config_info_example() -> SteamIAPConfigInfo:
    instance = SteamIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.publisher_authentication_key = randomize()
    instance.app_id = randomize("uid")
    return instance


def create_steam_iap_config_request_example() -> SteamIAPConfigRequest:
    instance = SteamIAPConfigRequest()
    instance.app_id = randomize("uid")
    instance.publisher_authentication_key = randomize()
    return instance


def create_steam_sync_request_example() -> SteamSyncRequest:
    instance = SteamSyncRequest()
    instance.app_id = randomize("uid")
    instance.steam_id = randomize()
    instance.currency_code = randomize()
    instance.language = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.product_id = randomize("uid")
    instance.region = randomize()
    return instance


def create_store_backup_info_example() -> StoreBackupInfo:
    instance = StoreBackupInfo()
    instance.auto_backup = randomize("bool")
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.store_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_store_create_example() -> StoreCreate:
    instance = StoreCreate()
    instance.title = randomize()
    instance.default_language = randomize()
    instance.default_region = randomize()
    instance.description = randomize()
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    return instance


def create_store_info_example() -> StoreInfo:
    instance = StoreInfo()
    instance.created_at = randomize("date")
    instance.default_language = randomize()
    instance.default_region = randomize()
    instance.namespace = randomize("slug")
    instance.published = randomize("bool")
    instance.store_id = randomize()
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.published_time = randomize("date")
    return instance


def create_store_update_example() -> StoreUpdate:
    instance = StoreUpdate()
    instance.title = randomize()
    instance.default_language = randomize()
    instance.default_region = randomize()
    instance.description = randomize()
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    return instance


def create_stripe_config_example() -> StripeConfig:
    instance = StripeConfig()
    instance.allowed_payment_method_types = [randomize()]
    instance.publishable_key = randomize()
    instance.secret_key = randomize()
    instance.webhook_secret = randomize()
    return instance


def create_subscribable_example() -> Subscribable:
    instance = Subscribable()
    instance.subscribable = randomize("bool")
    return instance


def create_subscribe_request_example() -> SubscribeRequest:
    instance = SubscribeRequest()
    instance.currency_code = randomize()
    instance.item_id = randomize()
    instance.language = randomize()
    instance.region = randomize()
    instance.return_url = randomize("url")
    instance.source = randomize()
    return instance


def create_subscription_activity_info_example() -> SubscriptionActivityInfo:
    instance = SubscriptionActivityInfo()
    instance.action = randomize()
    instance.charged_cycles = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.current_cycle = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.operator = randomize()
    instance.subscribed_by = randomize()
    instance.subscription_id = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.in_fixed_cycle_trial = randomize("bool")
    instance.in_fixed_free_days = randomize("bool")
    instance.reason = randomize()
    instance.trialed_cycles = randomize("int", min_val=1, max_val=1000)
    return instance


def create_subscription_activity_paging_sliced_result_example() -> (
    SubscriptionActivityPagingSlicedResult
):
    instance = SubscriptionActivityPagingSlicedResult()
    instance.data = [create_subscription_activity_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_subscription_info_example() -> SubscriptionInfo:
    instance = SubscriptionInfo()
    instance.charge_status = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.in_fixed_cycle_trial = randomize("bool")
    instance.in_fixed_free_days = randomize("bool")
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.payment_flow_required = randomize("bool")
    instance.recurring = create_recurring_example()
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.billing_account = create_billing_account_example()
    instance.charged_cycles = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.current_cycle = randomize("int", min_val=1, max_val=1000)
    instance.current_period_end = randomize("date")
    instance.current_period_start = randomize("date")
    instance.description = randomize()
    instance.end = randomize("date")
    instance.entitlements = [create_entitlement_summary_example()]
    instance.first_subscribe = randomize("bool")
    instance.item_snapshot = create_item_snapshot_example()
    instance.language = randomize()
    instance.next_billing_date = randomize("date")
    instance.paid = randomize("bool")
    instance.payment_order_no = randomize()
    instance.payment_station_url = randomize("url")
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.retry_attempted = randomize("int", min_val=1, max_val=1000)
    instance.return_url = randomize("url")
    instance.sandbox = randomize("bool")
    instance.sku = randomize("slug")
    instance.source = randomize()
    instance.start = randomize("date")
    instance.subscribed_at = randomize("date")
    instance.subscribed_by = randomize()
    instance.title = randomize()
    instance.trial_price = randomize("int", min_val=1, max_val=1000)
    instance.trialed_cycles = randomize("int", min_val=1, max_val=1000)
    instance.unsubscribe_reason = randomize()
    instance.unsubscribed_at = randomize("date")
    return instance


def create_subscription_paging_sliced_result_example() -> (
    SubscriptionPagingSlicedResult
):
    instance = SubscriptionPagingSlicedResult()
    instance.data = [create_subscription_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_subscription_summary_example() -> SubscriptionSummary:
    instance = SubscriptionSummary()
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.user_id = randomize("uid")
    instance.current_period_end = randomize("date")
    instance.current_period_start = randomize("date")
    instance.sku = randomize("slug")
    instance.subscribed_by = randomize()
    return instance


def create_tax_result_example() -> TaxResult:
    instance = TaxResult()
    instance.enable_tax = randomize("bool")
    instance.formatted_tax = randomize()
    instance.state = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    return instance


def create_test_result_example() -> TestResult:
    instance = TestResult()
    instance.success = randomize("bool")
    instance.msg = randomize()
    return instance


def create_ticket_acquire_request_example() -> TicketAcquireRequest:
    instance = TicketAcquireRequest()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.order_no = randomize()
    return instance


def create_ticket_acquire_result_example() -> TicketAcquireResult:
    instance = TicketAcquireResult()
    instance.values = [randomize()]
    return instance


def create_ticket_booth_id_example() -> TicketBoothID:
    instance = TicketBoothID()
    instance.id_ = randomize()
    instance.type_ = randomize()
    return instance


def create_ticket_dynamic_info_example() -> TicketDynamicInfo:
    instance = TicketDynamicInfo()
    instance.available_sale_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_ticket_sale_decrement_request_example() -> TicketSaleDecrementRequest:
    instance = TicketSaleDecrementRequest()
    instance.order_no = randomize()
    return instance


def create_ticket_sale_increment_request_example() -> TicketSaleIncrementRequest:
    instance = TicketSaleIncrementRequest()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.order_no = randomize()
    return instance


def create_ticket_sale_increment_result_example() -> TicketSaleIncrementResult:
    instance = TicketSaleIncrementResult()
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.success = randomize("bool")
    return instance


def create_time_limited_balance_example() -> TimeLimitedBalance:
    instance = TimeLimitedBalance()
    instance.balance = randomize("int", min_val=1, max_val=1000)
    instance.balance_source = randomize()
    instance.expire_at = randomize("date")
    return instance


def create_timed_ownership_example() -> TimedOwnership:
    instance = TimedOwnership()
    instance.owned = randomize("bool")
    instance.end_date = randomize("date")
    return instance


def create_trade_notification_example() -> TradeNotification:
    instance = TradeNotification()
    instance.currency = create_currency_summary_example()
    instance.ext_order_no = randomize()
    instance.issued_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.nonce_str = randomize()
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.status = randomize()
    instance.type_ = randomize()
    instance.additional_data = create_additional_data_example()
    instance.authorised_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.created_time = randomize("date")
    instance.custom_parameters = {randomize(): randomize()}
    instance.ext_tx_id = randomize()
    instance.ext_user_id = randomize()
    instance.metadata = {randomize(): randomize()}
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_station_url = randomize("url")
    instance.refunded_time = randomize("date")
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.sku = randomize("slug")
    instance.status_reason = randomize()
    instance.subscription_id = randomize()
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.tx_end_time = randomize("date")
    instance.user_id = randomize("uid")
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_transaction_example() -> Transaction:
    instance = Transaction()
    instance.additional_data = create_additional_data_example()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.ext_message = randomize()
    instance.ext_status_code = randomize()
    instance.ext_tx_id = randomize()
    instance.merchant_id = randomize()
    instance.notified = randomize("bool")
    instance.payment_method = randomize()
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.provider = randomize()
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.tx_end_time = randomize("date")
    instance.tx_id = randomize()
    instance.type_ = randomize()
    instance.vat = randomize("int", min_val=1, max_val=1000)
    return instance


def create_transaction_amount_details_example() -> TransactionAmountDetails:
    instance = TransactionAmountDetails()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.expire_at = randomize("date")
    instance.origin = randomize()
    instance.wallet_id = randomize()
    return instance


def create_twitch_iap_config_info_example() -> TwitchIAPConfigInfo:
    instance = TwitchIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.organization_id = randomize()
    return instance


def create_twitch_iap_config_request_example() -> TwitchIAPConfigRequest:
    instance = TwitchIAPConfigRequest()
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.organization_id = randomize()
    return instance


def create_twitch_sync_request_example() -> TwitchSyncRequest:
    instance = TwitchSyncRequest()
    instance.game_id = randomize()
    instance.language = randomize()
    instance.region = randomize()
    return instance


def create_user_dlc_example() -> UserDLC:
    instance = UserDLC()
    instance.created_at = randomize("date")
    instance.dlcs = [create_dlc_record_example()]
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.platform = randomize()
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance


def create_view_create_example() -> ViewCreate:
    instance = ViewCreate()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.localizations = {}
    instance.name = randomize()
    return instance


def create_view_info_example() -> ViewInfo:
    instance = ViewInfo()
    instance.created_at = randomize("date")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.title = randomize()
    instance.updated_at = randomize("date")
    instance.view_id = randomize()
    instance.description = randomize()
    instance.local_ext = {randomize(): randomize()}
    instance.long_description = randomize()
    return instance


def create_view_update_example() -> ViewUpdate:
    instance = ViewUpdate()
    instance.name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.localizations = {}
    return instance


def create_wallet_info_example() -> WalletInfo:
    instance = WalletInfo()
    instance.balance = randomize("int", min_val=1, max_val=1000)
    instance.balance_origin = randomize()
    instance.created_at = randomize("date")
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.time_limited_balances = [create_time_limited_balance_example()]
    instance.total_permanent_balance = randomize("int", min_val=1, max_val=1000)
    instance.total_time_limited_balance = randomize("int", min_val=1, max_val=1000)
    return instance


def create_wallet_paging_sliced_result_example() -> WalletPagingSlicedResult:
    instance = WalletPagingSlicedResult()
    instance.data = [create_wallet_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_wallet_revocation_config_example() -> WalletRevocationConfig:
    instance = WalletRevocationConfig()
    instance.enabled = randomize("bool")
    instance.strategy = randomize()
    return instance


def create_wallet_transaction_info_example() -> WalletTransactionInfo:
    instance = WalletTransactionInfo()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.currency_code = randomize()
    instance.namespace = randomize("slug")
    instance.operator = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.wallet_action = randomize()
    instance.balance_source = randomize()
    instance.reason = randomize()
    instance.transaction_amount_details = [create_transaction_amount_details_example()]
    return instance


def create_wallet_transaction_paging_sliced_result_example() -> (
    WalletTransactionPagingSlicedResult
):
    instance = WalletTransactionPagingSlicedResult()
    instance.data = [create_wallet_transaction_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_wx_pay_config_info_example() -> WxPayConfigInfo:
    instance = WxPayConfigInfo()
    instance.app_id = randomize("uid")
    instance.cert_path = randomize()
    instance.key = randomize()
    instance.mchid = randomize()
    instance.return_url = randomize("url")
    return instance


def create_wx_pay_config_request_example() -> WxPayConfigRequest:
    instance = WxPayConfigRequest()
    instance.app_id = randomize("uid")
    instance.key = randomize()
    instance.mchid = randomize()
    instance.return_url = randomize("url")
    return instance


def create_xbl_dlc_sync_request_example() -> XblDLCSyncRequest:
    instance = XblDLCSyncRequest()
    instance.xsts_token = randomize()
    return instance


def create_xbl_iap_config_info_example() -> XblIAPConfigInfo:
    instance = XblIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.business_partner_cert_file_name = randomize()
    instance.password = randomize("password")
    instance.relying_party_cert = randomize()
    return instance


def create_xbl_iap_config_request_example() -> XblIAPConfigRequest:
    instance = XblIAPConfigRequest()
    instance.relying_party_cert = randomize()
    return instance


def create_xbl_reconcile_request_example() -> XblReconcileRequest:
    instance = XblReconcileRequest()
    instance.currency_code = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.product_id = randomize("uid")
    instance.xsts_token = randomize()
    return instance


def create_xbl_reconcile_result_example() -> XblReconcileResult:
    instance = XblReconcileResult()
    instance.iap_order_status = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.transaction_id = randomize("uid")
    instance.xbox_product_id = randomize()
    return instance


def create_xbox_achievement_request_example() -> XboxAchievementRequest:
    instance = XboxAchievementRequest()
    instance.id_ = randomize()
    instance.percent_complete = randomize("int", min_val=1, max_val=1000)
    return instance


def create_xsolla_config_example() -> XsollaConfig:
    instance = XsollaConfig()
    instance.api_key = randomize()
    instance.flow_completion_url = randomize("url")
    instance.merchant_id = randomize("int", min_val=1, max_val=1000)
    instance.project_id = randomize("int", min_val=1, max_val=1000)
    instance.project_secret_key = randomize()
    return instance


def create_xsolla_paywall_config_example() -> XsollaPaywallConfig:
    instance = XsollaPaywallConfig()
    instance.device = randomize()
    instance.show_close_button = randomize("bool")
    instance.size = randomize()
    instance.theme = randomize()
    return instance


def create_xsolla_paywall_config_request_example() -> XsollaPaywallConfigRequest:
    instance = XsollaPaywallConfigRequest()
    instance.device = randomize()
    instance.show_close_button = randomize("bool")
    instance.size = randomize()
    instance.theme = randomize()
    return instance
