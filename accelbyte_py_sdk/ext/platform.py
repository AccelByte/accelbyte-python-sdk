# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..api.platform.models import AdditionalData
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
from ..api.platform.models import BasicCategoryInfo
from ..api.platform.models import BasicItem
from ..api.platform.models import BillingAccount
from ..api.platform.models import BillingHistoryInfo
from ..api.platform.models import BillingHistoryPagingSlicedResult
from ..api.platform.models import BulkOperationResult
from ..api.platform.models import CampaignCreate
from ..api.platform.models import CampaignDynamicInfo
from ..api.platform.models import CampaignInfo
from ..api.platform.models import CampaignPagingSlicedResult
from ..api.platform.models import CampaignUpdate
from ..api.platform.models import CancelRequest
from ..api.platform.models import CategoryCreate
from ..api.platform.models import CategoryInfo
from ..api.platform.models import CategoryUpdate
from ..api.platform.models import CheckoutConfig
from ..api.platform.models import CodeCreate
from ..api.platform.models import CodeCreateResult
from ..api.platform.models import CodeInfo
from ..api.platform.models import CodeInfoPagingSlicedResult
from ..api.platform.models import CreditRequest
from ..api.platform.models import CreditSummary
from ..api.platform.models import CurrencyConfig
from ..api.platform.models import CurrencyCreate
from ..api.platform.models import CurrencyInfo
from ..api.platform.models import CurrencySummary
from ..api.platform.models import CurrencyUpdate
from ..api.platform.models import Customization
from ..api.platform.models import DebitRequest
from ..api.platform.models import DistributionReceiverCreate
from ..api.platform.models import DistributionReceiverInfo
from ..api.platform.models import EntitlementDecrement
from ..api.platform.models import EntitlementGrant
from ..api.platform.models import EntitlementHistoryInfo
from ..api.platform.models import EntitlementInfo
from ..api.platform.models import EntitlementPagingSlicedResult
from ..api.platform.models import EntitlementSummary
from ..api.platform.models import EntitlementUpdate
from ..api.platform.models import EpicGamesIAPConfigInfo
from ..api.platform.models import EpicGamesIAPConfigRequest
from ..api.platform.models import EpicGamesReconcileRequest
from ..api.platform.models import EpicGamesReconcileResult
from ..api.platform.models import ErrorEntity
from ..api.platform.models import ExternalPaymentOrderCreate
from ..api.platform.models import FieldValidationError
from ..api.platform.models import FulfillCodeRequest
from ..api.platform.models import FulfillmentError
from ..api.platform.models import FulfillmentHistoryInfo
from ..api.platform.models import FulfillmentHistoryPagingSlicedResult
from ..api.platform.models import FulfillmentItem
from ..api.platform.models import FulfillmentRequest
from ..api.platform.models import FulfillmentResult
from ..api.platform.models import FullAppInfo
from ..api.platform.models import FullCategoryInfo
from ..api.platform.models import FullItemInfo
from ..api.platform.models import FullItemPagingSlicedResult
from ..api.platform.models import GameServerConfig
from ..api.platform.models import GoogleIAPConfigInfo
from ..api.platform.models import GoogleIAPConfigRequest
from ..api.platform.models import GoogleIAPReceipt
from ..api.platform.models import GrantSubscriptionDaysRequest
from ..api.platform.models import HierarchicalCategoryInfo
from ..api.platform.models import IAPOrderInfo
from ..api.platform.models import IAPOrderPagingSlicedResult
from ..api.platform.models import Image
from ..api.platform.models import InGameItemSync
from ..api.platform.models import ItemAcquireRequest
from ..api.platform.models import ItemAcquireResult
from ..api.platform.models import ItemCreate
from ..api.platform.models import ItemDynamicDataInfo
from ..api.platform.models import ItemId
from ..api.platform.models import ItemInfo
from ..api.platform.models import ItemPagingSlicedResult
from ..api.platform.models import ItemReturnRequest
from ..api.platform.models import ItemSnapshot
from ..api.platform.models import ItemUpdate
from ..api.platform.models import KeyGroupCreate
from ..api.platform.models import KeyGroupDynamicInfo
from ..api.platform.models import KeyGroupInfo
from ..api.platform.models import KeyGroupPagingSlicedResult
from ..api.platform.models import KeyGroupUpdate
from ..api.platform.models import KeyInfo
from ..api.platform.models import KeyPagingSliceResult
from ..api.platform.models import Localization
from ..api.platform.models import MockIAPReceipt
from ..api.platform.models import NotificationProcessResult
from ..api.platform.models import Order
from ..api.platform.models import OrderCreate
from ..api.platform.models import OrderGrantInfo
from ..api.platform.models import OrderHistoryInfo
from ..api.platform.models import OrderInfo
from ..api.platform.models import OrderPagingResult
from ..api.platform.models import OrderPagingSlicedResult
from ..api.platform.models import OrderRefundCreate
from ..api.platform.models import OrderStatistics
from ..api.platform.models import OrderSyncResult
from ..api.platform.models import OrderUpdate
from ..api.platform.models import Ownership
from ..api.platform.models import OwnershipToken
from ..api.platform.models import Paging
from ..api.platform.models import PayPalConfig
from ..api.platform.models import PaymentAccount
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
from ..api.platform.models import PlatformSubscribeRequest
from ..api.platform.models import PlayStationIAPConfigInfo
from ..api.platform.models import PlayStationReconcileResult
from ..api.platform.models import PlaystationIAPConfigRequest
from ..api.platform.models import PopulatedItemInfo
from ..api.platform.models import PurchasedItemCount
from ..api.platform.models import Recurring
from ..api.platform.models import RecurringChargeResult
from ..api.platform.models import RedeemHistoryInfo
from ..api.platform.models import RedeemHistoryPagingSlicedResult
from ..api.platform.models import RedeemRequest
from ..api.platform.models import RedeemResult
from ..api.platform.models import RedeemableItem
from ..api.platform.models import RegionDataItem
from ..api.platform.models import Requirement
from ..api.platform.models import RewardCondition
from ..api.platform.models import RewardCreate
from ..api.platform.models import RewardInfo
from ..api.platform.models import RewardItem
from ..api.platform.models import RewardPagingSlicedResult
from ..api.platform.models import RewardUpdate
from ..api.platform.models import Slide
from ..api.platform.models import StackableEntitlementInfo
from ..api.platform.models import StadiaIAPConfigInfo
from ..api.platform.models import StadiaSyncRequest
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
from ..api.platform.models import TradeNotification
from ..api.platform.models import Transaction
from ..api.platform.models import ValidationErrorEntity
from ..api.platform.models import WalletInfo
from ..api.platform.models import WalletPagingSlicedResult
from ..api.platform.models import WalletTransactionInfo
from ..api.platform.models import WalletTransactionPagingSlicedResult
from ..api.platform.models import WxPayConfigInfo
from ..api.platform.models import WxPayConfigRequest
from ..api.platform.models import XblIAPConfigInfo
from ..api.platform.models import XblIAPConfigRequest
from ..api.platform.models import XblReconcileRequest
from ..api.platform.models import XblReconcileResult
from ..api.platform.models import XsollaConfig
from ..api.platform.models import XsollaPaywallConfig
from ..api.platform.models import XsollaPaywallConfigRequest


def create_additional_data_example() -> AdditionalData:
    instance = AdditionalData()
    instance.card_summary = randomize()
    return instance


def create_adyen_config_example() -> AdyenConfig:
    instance = AdyenConfig()
    instance.api_key = randomize()
    instance.merchant_account = randomize()
    instance.notification_hmac_key = randomize()
    instance.notification_username = randomize()
    instance.notification_password = randomize()
    instance.return_url = randomize("url")
    instance.live_endpoint_url_prefix = randomize()
    instance.authorise_as_capture = randomize("bool")
    instance.allowed_payment_methods = [randomize()]
    instance.blocked_payment_methods = [randomize()]
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
    instance.namespace = randomize("slug")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.sku = randomize("slug")
    instance.user_id = randomize("uid")
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    instance.granted_at = randomize("date")
    instance.status = randomize()
    instance.item_snapshot = create_item_snapshot_example()
    return instance


def create_app_entitlement_paging_sliced_result_example() -> AppEntitlementPagingSlicedResult:
    instance = AppEntitlementPagingSlicedResult()
    instance.data = [create_app_entitlement_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_app_info_example() -> AppInfo:
    instance = AppInfo()
    instance.slogan = randomize()
    instance.announcement = randomize()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.publisher = randomize()
    instance.website_url = randomize("url")
    instance.forum_url = randomize("url")
    instance.platforms = [randomize()]
    instance.platform_requirements = {}
    instance.primary_genre = randomize()
    instance.genres = [randomize()]
    instance.players = [randomize()]
    instance.release_date = randomize("date")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_app_localization_example() -> AppLocalization:
    instance = AppLocalization()
    instance.slogan = randomize()
    instance.announcement = randomize()
    return instance


def create_app_update_example() -> AppUpdate:
    instance = AppUpdate()
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.publisher = randomize()
    instance.website_url = randomize("url")
    instance.forum_url = randomize("url")
    instance.platforms = [randomize()]
    instance.platform_requirements = {}
    instance.localizations = {}
    instance.primary_genre = randomize()
    instance.genres = [randomize()]
    instance.players = [randomize()]
    instance.release_date = randomize("date")
    return instance


def create_apple_iap_config_info_example() -> AppleIAPConfigInfo:
    instance = AppleIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.bundle_id = randomize()
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
    instance.transaction_id = randomize("uid")
    instance.receipt_data = randomize()
    instance.exclude_old_transactions = randomize("bool")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_basic_category_info_example() -> BasicCategoryInfo:
    instance = BasicCategoryInfo()
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.root = randomize("bool")
    return instance


def create_basic_item_example() -> BasicItem:
    instance = BasicItem()
    instance.item_id = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.sku = randomize("slug")
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.item_type = randomize()
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_billing_account_example() -> BillingAccount:
    instance = BillingAccount()
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.additional_data = create_additional_data_example()
    return instance


def create_billing_history_info_example() -> BillingHistoryInfo:
    instance = BillingHistoryInfo()
    instance.recurring_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.subscription_id = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.title = randomize()
    instance.description = randomize()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.currency = create_currency_summary_example()
    instance.payment_order_no = randomize()
    instance.billing_account = create_billing_account_example()
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.tx_end_time = randomize("date")
    instance.ext_tx_id = randomize()
    instance.change_billing_account = randomize("bool")
    instance.retry_attempted = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_billing_history_paging_sliced_result_example() -> BillingHistoryPagingSlicedResult:
    instance = BillingHistoryPagingSlicedResult()
    instance.data = [create_billing_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_bulk_operation_result_example() -> BulkOperationResult:
    instance = BulkOperationResult()
    instance.affected = randomize("int", min_val=1, max_val=1000)
    return instance


def create_campaign_create_example() -> CampaignCreate:
    instance = CampaignCreate()
    instance.type_ = randomize()
    instance.name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.status = randomize()
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_campaign_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.redeem_start = randomize("date")
    instance.redeem_end = randomize("date")
    instance.redeem_type = randomize()
    instance.items = [create_redeemable_item_example()]
    return instance


def create_campaign_dynamic_info_example() -> CampaignDynamicInfo:
    instance = CampaignDynamicInfo()
    instance.available_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sale_count = randomize("int", min_val=1, max_val=1000)
    instance.last_batch_no = randomize("int", min_val=1, max_val=1000)
    instance.remainder = randomize("int", min_val=1, max_val=1000)
    return instance


def create_campaign_info_example() -> CampaignInfo:
    instance = CampaignInfo()
    instance.id_ = randomize()
    instance.type_ = randomize()
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.status = randomize()
    instance.redeem_start = randomize("date")
    instance.redeem_end = randomize("date")
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_campaign_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.redeem_type = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.booth_name = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
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
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_campaign_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.redeem_start = randomize("date")
    instance.redeem_end = randomize("date")
    instance.redeem_type = randomize()
    instance.items = [create_redeemable_item_example()]
    return instance


def create_cancel_request_example() -> CancelRequest:
    instance = CancelRequest()
    instance.immediate = randomize("bool")
    instance.reason = randomize()
    return instance


def create_category_create_example() -> CategoryCreate:
    instance = CategoryCreate()
    instance.category_path = randomize()
    instance.localization_display_names = {randomize(): randomize()}
    return instance


def create_category_info_example() -> CategoryInfo:
    instance = CategoryInfo()
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.display_name = randomize("slug")
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
    instance.id_ = randomize()
    instance.type_ = randomize()
    instance.namespace = randomize("slug")
    instance.campaign_id = randomize()
    instance.value = randomize()
    instance.max_redeem_count_per_code = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_code_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_redeem_count_per_campaign_per_user = randomize("int", min_val=1, max_val=1000)
    instance.remainder = randomize("int", min_val=1, max_val=1000)
    instance.redeemed_count = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.redeem_start = randomize("date")
    instance.redeem_end = randomize("date")
    instance.redeem_type = randomize()
    instance.items = [create_redeemable_item_example()]
    instance.batch_no = randomize("int", min_val=1, max_val=1000)
    instance.acquire_order_no = randomize()
    instance.acquire_user_id = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_code_info_paging_sliced_result_example() -> CodeInfoPagingSlicedResult:
    instance = CodeInfoPagingSlicedResult()
    instance.data = [create_code_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_credit_request_example() -> CreditRequest:
    instance = CreditRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.reason = randomize()
    return instance


def create_credit_summary_example() -> CreditSummary:
    instance = CreditSummary()
    instance.wallet_id = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.amount = randomize("int", min_val=1, max_val=1000)
    return instance


def create_currency_config_example() -> CurrencyConfig:
    instance = CurrencyConfig()
    instance.currency_symbol = randomize()
    return instance


def create_currency_create_example() -> CurrencyCreate:
    instance = CurrencyCreate()
    instance.currency_code = randomize()
    instance.localization_descriptions = {randomize(): randomize()}
    instance.currency_symbol = randomize()
    instance.currency_type = randomize()
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    return instance


def create_currency_info_example() -> CurrencyInfo:
    instance = CurrencyInfo()
    instance.currency_code = randomize()
    instance.localization_descriptions = {randomize(): randomize()}
    instance.currency_symbol = randomize()
    instance.namespace = randomize("slug")
    instance.currency_type = randomize()
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_currency_summary_example() -> CurrencySummary:
    instance = CurrencySummary()
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.currency_type = randomize()
    instance.namespace = randomize("slug")
    instance.decimals = randomize("int", min_val=1, max_val=1000)
    return instance


def create_currency_update_example() -> CurrencyUpdate:
    instance = CurrencyUpdate()
    instance.localization_descriptions = {randomize(): randomize()}
    return instance


def create_customization_example() -> Customization:
    instance = Customization()
    instance.settings = randomize()
    return instance


def create_debit_request_example() -> DebitRequest:
    instance = DebitRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    return instance


def create_distribution_receiver_create_example() -> DistributionReceiverCreate:
    instance = DistributionReceiverCreate()
    instance.attributes = {randomize(): randomize()}
    return instance


def create_distribution_receiver_info_example() -> DistributionReceiverInfo:
    instance = DistributionReceiverInfo()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.ext_user_id = randomize()
    instance.attributes = {randomize(): randomize()}
    return instance


def create_entitlement_decrement_example() -> EntitlementDecrement:
    instance = EntitlementDecrement()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_entitlement_grant_example() -> EntitlementGrant:
    instance = EntitlementGrant()
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.granted_code = randomize()
    instance.item_namespace = randomize("slug")
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_entitlement_history_info_example() -> EntitlementHistoryInfo:
    instance = EntitlementHistoryInfo()
    instance.entitlement_id = randomize()
    instance.namespace = randomize("slug")
    instance.action = randomize()
    instance.operator = randomize()
    instance.user_id = randomize("uid")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_entitlement_info_example() -> EntitlementInfo:
    instance = EntitlementInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.clazz = randomize()
    instance.type_ = randomize()
    instance.status = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.sku = randomize("slug")
    instance.user_id = randomize("uid")
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.granted_code = randomize()
    instance.item_namespace = randomize("slug")
    instance.name = randomize()
    instance.features = [randomize()]
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.distributed_quantity = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.item_snapshot = create_item_snapshot_example()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    instance.stackable = randomize("bool")
    instance.granted_at = randomize("date")
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_entitlement_paging_sliced_result_example() -> EntitlementPagingSlicedResult:
    instance = EntitlementPagingSlicedResult()
    instance.data = [create_entitlement_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_entitlement_summary_example() -> EntitlementSummary:
    instance = EntitlementSummary()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.clazz = randomize()
    instance.type_ = randomize()
    instance.stackable = randomize("bool")
    instance.stacked_use_count = randomize("int", min_val=1, max_val=1000)
    instance.stacked_quantity = randomize("int", min_val=1, max_val=1000)
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.granted_code = randomize()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    return instance


def create_entitlement_update_example() -> EntitlementUpdate:
    instance = EntitlementUpdate()
    instance.null_field_list = [randomize()]
    instance.status = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
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
    instance.transaction_id = randomize("uid")
    instance.epic_games_item_id = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.dev_stack_trace = randomize()
    return instance


def create_external_payment_order_create_example() -> ExternalPaymentOrderCreate:
    instance = ExternalPaymentOrderCreate()
    instance.ext_order_no = randomize()
    instance.sku = randomize("slug")
    instance.ext_user_id = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.title = randomize()
    instance.description = randomize()
    instance.item_type = randomize()
    instance.currency_code = randomize()
    instance.currency_namespace = randomize("slug")
    instance.region = randomize()
    instance.language = randomize()
    instance.sandbox = randomize("bool")
    instance.return_url = randomize("url")
    instance.notify_url = randomize("url")
    instance.custom_parameters = {randomize(): randomize()}
    instance.subscription_id = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.omit_notification = randomize("bool")
    instance.metadata = {randomize(): randomize()}
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_value = randomize()
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_fulfill_code_request_example() -> FulfillCodeRequest:
    instance = FulfillCodeRequest()
    instance.code = randomize()
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_fulfillment_error_example() -> FulfillmentError:
    instance = FulfillmentError()
    instance.http_status = randomize("int", min_val=1, max_val=1000)
    instance.code = randomize("int", min_val=1, max_val=1000)
    instance.message = randomize()
    return instance


def create_fulfillment_history_info_example() -> FulfillmentHistoryInfo:
    instance = FulfillmentHistoryInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.order_no = randomize()
    instance.code = randomize()
    instance.fulfill_items = [create_fulfillment_item_example()]
    instance.granted_item_ids = [randomize()]
    instance.entitlement_summaries = [create_entitlement_summary_example()]
    instance.credit_summaries = [create_credit_summary_example()]
    instance.status = randomize()
    instance.fulfillment_error = create_fulfillment_error_example()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_fulfillment_history_paging_sliced_result_example() -> FulfillmentHistoryPagingSlicedResult:
    instance = FulfillmentHistoryPagingSlicedResult()
    instance.data = [create_fulfillment_history_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_fulfillment_item_example() -> FulfillmentItem:
    instance = FulfillmentItem()
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    instance.item_name = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.extra_subscription_days = randomize("int", min_val=1, max_val=1000)
    return instance


def create_fulfillment_request_example() -> FulfillmentRequest:
    instance = FulfillmentRequest()
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.item_sku = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.order_no = randomize()
    instance.source = randomize()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_fulfillment_result_example() -> FulfillmentResult:
    instance = FulfillmentResult()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.entitlement_summaries = [create_entitlement_summary_example()]
    instance.credit_summaries = [create_credit_summary_example()]
    instance.subscription_summaries = [create_subscription_summary_example()]
    return instance


def create_full_app_info_example() -> FullAppInfo:
    instance = FullAppInfo()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.carousel = [create_slide_example()]
    instance.developer = randomize()
    instance.publisher = randomize()
    instance.website_url = randomize("url")
    instance.forum_url = randomize("url")
    instance.platforms = [randomize()]
    instance.platform_requirements = {}
    instance.localizations = {}
    instance.primary_genre = randomize()
    instance.genres = [randomize()]
    instance.players = [randomize()]
    instance.release_date = randomize("date")
    return instance


def create_full_category_info_example() -> FullCategoryInfo:
    instance = FullCategoryInfo()
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.localization_display_names = {randomize(): randomize()}
    instance.root = randomize("bool")
    return instance


def create_full_item_info_example() -> FullItemInfo:
    instance = FullItemInfo()
    instance.item_id = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.namespace = randomize("slug")
    instance.sku = randomize("slug")
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.category_path = randomize()
    instance.images = [create_image_example()]
    instance.thumbnail_url = randomize("url")
    instance.localizations = {}
    instance.status = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.item_type = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.region_data = {}
    instance.recurring = create_recurring_example()
    instance.item_ids = [randomize()]
    instance.bound_item_ids = [randomize()]
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.ext = {randomize(): randomize()}
    instance.booth_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_full_item_paging_sliced_result_example() -> FullItemPagingSlicedResult:
    instance = FullItemPagingSlicedResult()
    instance.data = [create_full_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_game_server_config_example() -> GameServerConfig:
    instance = GameServerConfig()
    instance.private_key = randomize()
    instance.notify_url = randomize("url")
    instance.dry_run = randomize("bool")
    return instance


def create_google_iap_config_info_example() -> GoogleIAPConfigInfo:
    instance = GoogleIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.application_name = randomize()
    instance.service_account_id = randomize()
    instance.p12_file_name = randomize()
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
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_grant_subscription_days_request_example() -> GrantSubscriptionDaysRequest:
    instance = GrantSubscriptionDaysRequest()
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    return instance


def create_hierarchical_category_info_example() -> HierarchicalCategoryInfo:
    instance = HierarchicalCategoryInfo()
    instance.namespace = randomize("slug")
    instance.parent_category_path = randomize()
    instance.category_path = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.display_name = randomize("slug")
    instance.child_categories = [create_hierarchical_category_info_example()]
    instance.root = randomize("bool")
    return instance


def create_iap_order_info_example() -> IAPOrderInfo:
    instance = IAPOrderInfo()
    instance.iap_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.product_id = randomize("uid")
    instance.receipt_data = randomize()
    instance.transaction_id = randomize("uid")
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sandbox = randomize("bool")
    instance.type_ = randomize()
    instance.fulfilled_time = randomize("date")
    instance.entitlements = [create_entitlement_summary_example()]
    instance.credits = [create_credit_summary_example()]
    return instance


def create_iap_order_paging_sliced_result_example() -> IAPOrderPagingSlicedResult:
    instance = IAPOrderPagingSlicedResult()
    instance.data = [create_iap_order_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_image_example() -> Image:
    instance = Image()
    instance.as_ = randomize()
    instance.caption = randomize()
    instance.height = randomize("int", min_val=1, max_val=1000)
    instance.width = randomize("int", min_val=1, max_val=1000)
    instance.image_url = randomize("url")
    instance.small_image_url = randomize("url")
    return instance


def create_in_game_item_sync_example() -> InGameItemSync:
    instance = InGameItemSync()
    instance.target_namespace = randomize("slug")
    instance.target_item_id = randomize()
    instance.category_path = randomize()
    return instance


def create_item_acquire_request_example() -> ItemAcquireRequest:
    instance = ItemAcquireRequest()
    instance.order_no = randomize()
    instance.count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_acquire_result_example() -> ItemAcquireResult:
    instance = ItemAcquireResult()
    instance.success = randomize("bool")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_create_example() -> ItemCreate:
    instance = ItemCreate()
    instance.item_type = randomize()
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.target_currency_code = randomize()
    instance.target_namespace = randomize("slug")
    instance.category_path = randomize()
    instance.localizations = {}
    instance.status = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.sku = randomize("slug")
    instance.images = [create_image_example()]
    instance.thumbnail_url = randomize("url")
    instance.region_data = {}
    instance.item_ids = [randomize()]
    instance.recurring = create_recurring_example()
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.booth_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.ext = {randomize(): randomize()}
    return instance


def create_item_dynamic_data_info_example() -> ItemDynamicDataInfo:
    instance = ItemDynamicDataInfo()
    instance.item_id = randomize()
    instance.namespace = randomize("slug")
    instance.available_count = randomize("int", min_val=1, max_val=1000)
    instance.user_available_count = randomize("int", min_val=1, max_val=1000)
    instance.user_purchase_limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_item_id_example() -> ItemId:
    instance = ItemId()
    instance.item_id = randomize()
    return instance


def create_item_info_example() -> ItemInfo:
    instance = ItemInfo()
    instance.title = randomize()
    instance.description = randomize()
    instance.long_description = randomize()
    instance.item_id = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.sku = randomize("slug")
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.category_path = randomize()
    instance.status = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.item_type = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.images = [create_image_example()]
    instance.thumbnail_url = randomize("url")
    instance.region_data = [create_region_data_item_example()]
    instance.recurring = create_recurring_example()
    instance.item_ids = [randomize()]
    instance.bound_item_ids = [randomize()]
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.booth_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.region = randomize()
    instance.language = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.local_ext = {randomize(): randomize()}
    return instance


def create_item_paging_sliced_result_example() -> ItemPagingSlicedResult:
    instance = ItemPagingSlicedResult()
    instance.data = [create_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_item_return_request_example() -> ItemReturnRequest:
    instance = ItemReturnRequest()
    instance.order_no = randomize()
    return instance


def create_item_snapshot_example() -> ItemSnapshot:
    instance = ItemSnapshot()
    instance.item_id = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.sku = randomize("slug")
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.item_type = randomize()
    instance.thumbnail_url = randomize("url")
    instance.target_namespace = randomize("slug")
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.title = randomize()
    instance.description = randomize()
    instance.region_data_item = create_region_data_item_example()
    instance.recurring = create_recurring_example()
    instance.item_ids = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.booth_name = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_item_update_example() -> ItemUpdate:
    instance = ItemUpdate()
    instance.item_type = randomize()
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.target_currency_code = randomize()
    instance.target_namespace = randomize("slug")
    instance.category_path = randomize()
    instance.images = [create_image_example()]
    instance.thumbnail_url = randomize("url")
    instance.localizations = {}
    instance.status = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.sku = randomize("slug")
    instance.region_data = {}
    instance.item_ids = [randomize()]
    instance.recurring = create_recurring_example()
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.booth_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.ext = {randomize(): randomize()}
    return instance


def create_key_group_create_example() -> KeyGroupCreate:
    instance = KeyGroupCreate()
    instance.name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.status = randomize()
    return instance


def create_key_group_dynamic_info_example() -> KeyGroupDynamicInfo:
    instance = KeyGroupDynamicInfo()
    instance.available_sale_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sale_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_key_group_info_example() -> KeyGroupInfo:
    instance = KeyGroupInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    instance.status = randomize()
    instance.booth_name = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
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
    instance.tags = [randomize()]
    instance.status = randomize()
    return instance


def create_key_info_example() -> KeyInfo:
    instance = KeyInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.key_group_id = randomize()
    instance.value = randomize()
    instance.status = randomize()
    instance.key_file = randomize()
    instance.acquire_order_no = randomize()
    instance.acquire_user_id = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_key_paging_slice_result_example() -> KeyPagingSliceResult:
    instance = KeyPagingSliceResult()
    instance.data = [create_key_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_localization_example() -> Localization:
    instance = Localization()
    instance.title = randomize()
    instance.description = randomize()
    instance.long_description = randomize()
    instance.local_ext = {randomize(): randomize()}
    return instance


def create_mock_iap_receipt_example() -> MockIAPReceipt:
    instance = MockIAPReceipt()
    instance.type_ = randomize()
    instance.product_id = randomize("uid")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_notification_process_result_example() -> NotificationProcessResult:
    instance = NotificationProcessResult()
    instance.status = randomize()
    instance.code = randomize()
    instance.custom_param = {randomize(): randomize()}
    instance.severity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_example() -> Order:
    instance = Order()
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.payment_order_no = randomize()
    instance.status = randomize()
    instance.sandbox = randomize("bool")
    instance.item_id = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.payment_station_url = randomize("url")
    instance.status_reason = randomize()
    instance.created_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.fulfilled_time = randomize("date")
    instance.refunded_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.return_url = randomize("url")
    instance.ext = {randomize(): randomize()}
    instance.item_snapshot = create_item_snapshot_example()
    instance.region = randomize()
    instance.language = randomize()
    instance.count_namespace = randomize("slug")
    instance.count_item_id = randomize()
    instance.count_user_id = randomize()
    instance.expire_time = randomize("date")
    instance.payment_remain_seconds = randomize("int", min_val=1, max_val=1000)
    instance.charged = randomize("bool")
    instance.free = randomize("bool")
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    return instance


def create_order_create_example() -> OrderCreate:
    instance = OrderCreate()
    instance.item_id = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.currency_code = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.return_url = randomize("url")
    instance.ext = {randomize(): randomize()}
    return instance


def create_order_grant_info_example() -> OrderGrantInfo:
    instance = OrderGrantInfo()
    instance.entitlements = [create_entitlement_summary_example()]
    instance.credits = [create_credit_summary_example()]
    return instance


def create_order_history_info_example() -> OrderHistoryInfo:
    instance = OrderHistoryInfo()
    instance.order_no = randomize()
    instance.operator = randomize()
    instance.action = randomize()
    instance.reason = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_order_info_example() -> OrderInfo:
    instance = OrderInfo()
    instance.order_no = randomize()
    instance.payment_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.item_id = randomize()
    instance.sandbox = randomize("bool")
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.payment_station_url = randomize("url")
    instance.item_snapshot = create_item_snapshot_example()
    instance.region = randomize()
    instance.language = randomize()
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.created_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.fulfilled_time = randomize("date")
    instance.refunded_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.expire_time = randomize("date")
    instance.payment_remain_seconds = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
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
    instance.total = randomize("int", min_val=1, max_val=1000)
    instance.status_count = {}
    return instance


def create_order_sync_result_example() -> OrderSyncResult:
    instance = OrderSyncResult()
    instance.orders = [create_order_example()]
    instance.next_evaluated_key = randomize()
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
    instance.previous = randomize()
    instance.next_ = randomize()
    return instance


def create_pay_pal_config_example() -> PayPalConfig:
    instance = PayPalConfig()
    instance.client_id = randomize("uid")
    instance.client_secret = randomize()
    instance.web_hook_id = randomize()
    instance.return_url = randomize("url")
    return instance


def create_payment_account_example() -> PaymentAccount:
    instance = PaymentAccount()
    instance.id_ = randomize()
    instance.type_ = randomize()
    instance.name = randomize()
    return instance


def create_payment_merchant_config_info_example() -> PaymentMerchantConfigInfo:
    instance = PaymentMerchantConfigInfo()
    instance.id_ = randomize()
    instance.ali_pay_config = create_ali_pay_config_example()
    instance.ali_pay_sandbox_config = create_ali_pay_config_example()
    instance.wx_pay_config = create_wx_pay_config_info_example()
    instance.xsolla_config = create_xsolla_config_example()
    instance.xsolla_paywall_config = create_xsolla_paywall_config_example()
    instance.adyen_config = create_adyen_config_example()
    instance.adyen_sandbox_config = create_adyen_config_example()
    instance.pay_pal_config = create_pay_pal_config_example()
    instance.pay_pal_sandbox_config = create_pay_pal_config_example()
    instance.stripe_config = create_stripe_config_example()
    instance.stripe_sandbox_config = create_stripe_config_example()
    instance.checkout_config = create_checkout_config_example()
    instance.checkout_sandbox_config = create_checkout_config_example()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_payment_method_example() -> PaymentMethod:
    instance = PaymentMethod()
    instance.name = randomize()
    instance.payment_provider = randomize()
    return instance


def create_payment_notification_info_example() -> PaymentNotificationInfo:
    instance = PaymentNotificationInfo()
    instance.id_ = randomize()
    instance.payment_order_no = randomize()
    instance.external_id = randomize()
    instance.namespace = randomize("slug")
    instance.notification_type = randomize()
    instance.notification = {randomize(): randomize()}
    instance.status = randomize()
    instance.notification_source = randomize()
    instance.status_reason = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_payment_notification_paging_sliced_result_example() -> PaymentNotificationPagingSlicedResult:
    instance = PaymentNotificationPagingSlicedResult()
    instance.data = [create_payment_notification_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_order_example() -> PaymentOrder:
    instance = PaymentOrder()
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.payment_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.status = randomize()
    instance.sandbox = randomize("bool")
    instance.ext_order_no = randomize()
    instance.title = randomize()
    instance.description = randomize()
    instance.item_type = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.sku = randomize("slug")
    instance.ext_user_id = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.zip_code = randomize("zip_code")
    instance.state = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.payment_station_url = randomize("url")
    instance.transactions = [create_transaction_example()]
    instance.status_reason = randomize()
    instance.created_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.authorised_time = randomize("date")
    instance.refunded_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.return_url = randomize("url")
    instance.channel = randomize()
    instance.notify_url = randomize("url")
    instance.custom_parameters = {randomize(): randomize()}
    instance.charging = randomize("bool")
    instance.subscription_id = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.omit_notification = randomize("bool")
    instance.metadata = {randomize(): randomize()}
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    return instance


def create_payment_order_charge_request_example() -> PaymentOrderChargeRequest:
    instance = PaymentOrderChargeRequest()
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.ext_tx_id = randomize()
    return instance


def create_payment_order_charge_status_example() -> PaymentOrderChargeStatus:
    instance = PaymentOrderChargeStatus()
    instance.status = randomize()
    instance.charging = randomize("bool")
    return instance


def create_payment_order_create_example() -> PaymentOrderCreate:
    instance = PaymentOrderCreate()
    instance.ext_order_no = randomize()
    instance.sku = randomize("slug")
    instance.ext_user_id = randomize()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.title = randomize()
    instance.description = randomize()
    instance.item_type = randomize()
    instance.currency_code = randomize()
    instance.currency_namespace = randomize("slug")
    instance.region = randomize()
    instance.language = randomize()
    instance.sandbox = randomize("bool")
    instance.return_url = randomize("url")
    instance.notify_url = randomize("url")
    instance.custom_parameters = {randomize(): randomize()}
    instance.subscription_id = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.omit_notification = randomize("bool")
    instance.metadata = {randomize(): randomize()}
    return instance


def create_payment_order_create_result_example() -> PaymentOrderCreateResult:
    instance = PaymentOrderCreateResult()
    instance.payment_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.status = randomize()
    instance.payment_station_url = randomize("url")
    instance.created_time = randomize("date")
    return instance


def create_payment_order_details_example() -> PaymentOrderDetails:
    instance = PaymentOrderDetails()
    instance.display_name = randomize("slug")
    instance.title = randomize()
    instance.description = randomize()
    instance.price = randomize()
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.sandbox = randomize("bool")
    instance.region = randomize()
    instance.charging = randomize("bool")
    return instance


def create_payment_order_info_example() -> PaymentOrderInfo:
    instance = PaymentOrderInfo()
    instance.payment_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.ext_order_no = randomize()
    instance.sku = randomize("slug")
    instance.ext_user_id = randomize()
    instance.sandbox = randomize("bool")
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.payment_station_url = randomize("url")
    instance.transactions = [create_transaction_example()]
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.created_time = randomize("date")
    instance.authorised_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.refunded_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.return_url = randomize("url")
    instance.notify_url = randomize("url")
    instance.title = randomize()
    instance.description = randomize()
    instance.item_type = randomize()
    instance.channel = randomize()
    instance.custom_parameters = {randomize(): randomize()}
    instance.subscription_id = randomize()
    instance.recurring_payment_order_no = randomize()
    instance.charging = randomize("bool")
    instance.omit_notification = randomize("bool")
    instance.metadata = {randomize(): randomize()}
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_payment_order_notify_simulation_example() -> PaymentOrderNotifySimulation:
    instance = PaymentOrderNotifySimulation()
    instance.payment_provider = randomize()
    instance.notify_type = randomize()
    instance.currency_code = randomize()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    return instance


def create_payment_order_paging_sliced_result_example() -> PaymentOrderPagingSlicedResult:
    instance = PaymentOrderPagingSlicedResult()
    instance.data = [create_payment_order_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_order_paid_result_example() -> PaymentOrderPaidResult:
    instance = PaymentOrderPaidResult()
    instance.success = randomize("bool")
    instance.charging = randomize("bool")
    return instance


def create_payment_order_refund_example() -> PaymentOrderRefund:
    instance = PaymentOrderRefund()
    instance.description = randomize()
    return instance


def create_payment_order_refund_result_example() -> PaymentOrderRefundResult:
    instance = PaymentOrderRefundResult()
    instance.payment_order_no = randomize()
    instance.namespace = randomize("slug")
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.status = randomize()
    instance.created_time = randomize("date")
    instance.refunded_time = randomize("date")
    return instance


def create_payment_order_sync_result_example() -> PaymentOrderSyncResult:
    instance = PaymentOrderSyncResult()
    instance.payment_orders = [create_payment_order_example()]
    instance.next_evaluated_key = randomize()
    return instance


def create_payment_process_result_example() -> PaymentProcessResult:
    instance = PaymentProcessResult()
    instance.success = randomize("bool")
    instance.pending = randomize("bool")
    instance.redirect_url = randomize("url")
    instance.reason = randomize()
    return instance


def create_payment_provider_config_edit_example() -> PaymentProviderConfigEdit:
    instance = PaymentProviderConfigEdit()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.aggregate = randomize()
    instance.specials = [randomize()]
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_api_token = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.use_global_tax_jar_api_token = randomize("bool")
    return instance


def create_payment_provider_config_info_example() -> PaymentProviderConfigInfo:
    instance = PaymentProviderConfigInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.aggregate = randomize()
    instance.specials = [randomize()]
    instance.payment_merchant_config_id = randomize()
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_api_token = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.use_global_tax_jar_api_token = randomize("bool")
    return instance


def create_payment_provider_config_paging_sliced_result_example() -> PaymentProviderConfigPagingSlicedResult:
    instance = PaymentProviderConfigPagingSlicedResult()
    instance.data = [create_payment_provider_config_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_payment_request_example() -> PaymentRequest:
    instance = PaymentRequest()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    return instance


def create_payment_tax_config_edit_example() -> PaymentTaxConfigEdit:
    instance = PaymentTaxConfigEdit()
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_api_token = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.tax_jar_product_codes_mapping = {randomize(): randomize()}
    return instance


def create_payment_tax_config_info_example() -> PaymentTaxConfigInfo:
    instance = PaymentTaxConfigInfo()
    instance.tax_jar_enabled = randomize("bool")
    instance.tax_jar_api_token = randomize()
    instance.sandbox_tax_jar_api_token = randomize()
    instance.tax_jar_product_codes_mapping = {randomize(): randomize()}
    return instance


def create_payment_token_example() -> PaymentToken:
    instance = PaymentToken()
    instance.token = randomize()
    return instance


def create_payment_url_example() -> PaymentUrl:
    instance = PaymentUrl()
    instance.payment_provider = randomize()
    instance.payment_url = randomize("url")
    instance.return_url = randomize("url")
    instance.payment_type = randomize()
    return instance


def create_payment_url_create_example() -> PaymentUrlCreate:
    instance = PaymentUrlCreate()
    instance.payment_order_no = randomize()
    instance.payment_provider = randomize()
    instance.zip_code = randomize("zip_code")
    instance.return_url = randomize("url")
    instance.ui = randomize()
    return instance


def create_platform_subscribe_request_example() -> PlatformSubscribeRequest:
    instance = PlatformSubscribeRequest()
    instance.item_id = randomize()
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.reason = randomize()
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_play_station_iap_config_info_example() -> PlayStationIAPConfigInfo:
    instance = PlayStationIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.environment = randomize()
    return instance


def create_play_station_reconcile_result_example() -> PlayStationReconcileResult:
    instance = PlayStationReconcileResult()
    instance.transaction_id = randomize("uid")
    instance.psn_item_id = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    return instance


def create_playstation_iap_config_request_example() -> PlaystationIAPConfigRequest:
    instance = PlaystationIAPConfigRequest()
    instance.environment = randomize()
    return instance


def create_populated_item_info_example() -> PopulatedItemInfo:
    instance = PopulatedItemInfo()
    instance.title = randomize()
    instance.description = randomize()
    instance.long_description = randomize()
    instance.item_id = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.season_type = randomize()
    instance.base_app_id = randomize()
    instance.sku = randomize("slug")
    instance.namespace = randomize("slug")
    instance.name = randomize()
    instance.entitlement_type = randomize()
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.stackable = randomize("bool")
    instance.category_path = randomize()
    instance.status = randomize()
    instance.listable = randomize("bool")
    instance.purchasable = randomize("bool")
    instance.item_type = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_currency_code = randomize()
    instance.target_item_id = randomize()
    instance.images = [create_image_example()]
    instance.thumbnail_url = randomize("url")
    instance.region_data = [create_region_data_item_example()]
    instance.recurring = create_recurring_example()
    instance.item_ids = [randomize()]
    instance.bound_item_ids = [randomize()]
    instance.tags = [randomize()]
    instance.features = [randomize()]
    instance.max_count_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.clazz = randomize()
    instance.booth_name = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.ext = {randomize(): randomize()}
    instance.region = randomize()
    instance.language = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.items = [create_item_info_example()]
    instance.local_ext = {randomize(): randomize()}
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
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.campaign_id = randomize()
    instance.code = randomize()
    instance.order_no = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.redeemed_at = randomize("date")
    return instance


def create_redeem_history_paging_sliced_result_example() -> RedeemHistoryPagingSlicedResult:
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
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.extra_subscription_days = randomize("int", min_val=1, max_val=1000)
    return instance


def create_region_data_item_example() -> RegionDataItem:
    instance = RegionDataItem()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.discount_percentage = randomize("int", min_val=1, max_val=1000)
    instance.discount_amount = randomize("int", min_val=1, max_val=1000)
    instance.discounted_price = randomize("int", min_val=1, max_val=1000)
    instance.currency_code = randomize()
    instance.currency_type = randomize()
    instance.currency_namespace = randomize("slug")
    instance.trial_price = randomize("int", min_val=1, max_val=1000)
    instance.purchase_at = randomize("date")
    instance.expire_at = randomize("date")
    instance.discount_purchase_at = randomize("date")
    instance.discount_expire_at = randomize("date")
    return instance


def create_requirement_example() -> Requirement:
    instance = Requirement()
    instance.label = randomize()
    instance.os_version = randomize()
    instance.processor = randomize()
    instance.ram = randomize()
    instance.graphics = randomize()
    instance.direct_x_version = randomize()
    instance.disk_space = randomize()
    instance.sound_card = randomize()
    instance.additionals = randomize()
    return instance


def create_reward_condition_example() -> RewardCondition:
    instance = RewardCondition()
    instance.condition_name = randomize()
    instance.condition = randomize()
    instance.event_name = randomize()
    instance.reward_items = [create_reward_item_example()]
    return instance


def create_reward_create_example() -> RewardCreate:
    instance = RewardCreate()
    instance.reward_code = randomize()
    instance.description = randomize()
    instance.event_topic = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    return instance


def create_reward_info_example() -> RewardInfo:
    instance = RewardInfo()
    instance.reward_id = randomize()
    instance.namespace = randomize("slug")
    instance.reward_code = randomize()
    instance.description = randomize()
    instance.event_topic = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_reward_item_example() -> RewardItem:
    instance = RewardItem()
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
    instance.reward_code = randomize()
    instance.description = randomize()
    instance.event_topic = randomize()
    instance.reward_conditions = [create_reward_condition_example()]
    instance.max_awarded = randomize("int", min_val=1, max_val=1000)
    instance.max_awarded_per_user = randomize("int", min_val=1, max_val=1000)
    return instance


def create_slide_example() -> Slide:
    instance = Slide()
    instance.type_ = randomize()
    instance.video_source = randomize()
    instance.url = randomize("url")
    instance.alt = randomize()
    instance.thumbnail_url = randomize("url")
    instance.preview_url = randomize("url")
    return instance


def create_stackable_entitlement_info_example() -> StackableEntitlementInfo:
    instance = StackableEntitlementInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.clazz = randomize()
    instance.type_ = randomize()
    instance.status = randomize()
    instance.app_id = randomize("uid")
    instance.app_type = randomize()
    instance.sku = randomize("slug")
    instance.user_id = randomize("uid")
    instance.store_id = randomize()
    instance.item_id = randomize()
    instance.granted_code = randomize()
    instance.item_namespace = randomize("slug")
    instance.name = randomize()
    instance.features = [randomize()]
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.distributed_quantity = randomize("int", min_val=1, max_val=1000)
    instance.target_namespace = randomize("slug")
    instance.item_snapshot = create_item_snapshot_example()
    instance.start_date = randomize("date")
    instance.end_date = randomize("date")
    instance.stackable = randomize("bool")
    instance.granted_at = randomize("date")
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.stacked_use_count = randomize("int", min_val=1, max_val=1000)
    instance.stacked_quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stadia_iap_config_info_example() -> StadiaIAPConfigInfo:
    instance = StadiaIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.json_file = randomize()
    return instance


def create_stadia_sync_request_example() -> StadiaSyncRequest:
    instance = StadiaSyncRequest()
    instance.stadia_player_id = randomize()
    instance.app_id = randomize("uid")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_steam_iap_config_example() -> SteamIAPConfig:
    instance = SteamIAPConfig()
    instance.rvn = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.publisher_authentication_key = randomize()
    return instance


def create_steam_iap_config_info_example() -> SteamIAPConfigInfo:
    instance = SteamIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.publisher_authentication_key = randomize()
    return instance


def create_steam_iap_config_request_example() -> SteamIAPConfigRequest:
    instance = SteamIAPConfigRequest()
    instance.publisher_authentication_key = randomize()
    return instance


def create_steam_sync_request_example() -> SteamSyncRequest:
    instance = SteamSyncRequest()
    instance.steam_id = randomize()
    instance.app_id = randomize("uid")
    instance.region = randomize()
    instance.language = randomize()
    return instance


def create_store_backup_info_example() -> StoreBackupInfo:
    instance = StoreBackupInfo()
    instance.id_ = randomize()
    instance.auto_backup = randomize("bool")
    instance.name = randomize()
    instance.store_id = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_store_create_example() -> StoreCreate:
    instance = StoreCreate()
    instance.title = randomize()
    instance.description = randomize()
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    instance.default_region = randomize()
    instance.default_language = randomize()
    return instance


def create_store_info_example() -> StoreInfo:
    instance = StoreInfo()
    instance.store_id = randomize()
    instance.namespace = randomize("slug")
    instance.title = randomize()
    instance.description = randomize()
    instance.published = randomize("bool")
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    instance.default_region = randomize()
    instance.default_language = randomize()
    instance.published_time = randomize("date")
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_store_update_example() -> StoreUpdate:
    instance = StoreUpdate()
    instance.title = randomize()
    instance.description = randomize()
    instance.supported_languages = [randomize()]
    instance.supported_regions = [randomize()]
    instance.default_region = randomize()
    instance.default_language = randomize()
    return instance


def create_stripe_config_example() -> StripeConfig:
    instance = StripeConfig()
    instance.publishable_key = randomize()
    instance.secret_key = randomize()
    instance.webhook_secret = randomize()
    instance.allowed_payment_method_types = [randomize()]
    return instance


def create_subscribable_example() -> Subscribable:
    instance = Subscribable()
    instance.subscribable = randomize("bool")
    return instance


def create_subscribe_request_example() -> SubscribeRequest:
    instance = SubscribeRequest()
    instance.item_id = randomize()
    instance.currency_code = randomize()
    instance.source = randomize()
    instance.region = randomize()
    instance.language = randomize()
    instance.return_url = randomize("url")
    return instance


def create_subscription_activity_info_example() -> SubscriptionActivityInfo:
    instance = SubscriptionActivityInfo()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.subscription_id = randomize()
    instance.operator = randomize()
    instance.action = randomize()
    instance.subscribed_by = randomize()
    instance.current_cycle = randomize("int", min_val=1, max_val=1000)
    instance.charged_cycles = randomize("int", min_val=1, max_val=1000)
    instance.trialed_cycles = randomize("int", min_val=1, max_val=1000)
    instance.in_fixed_free_days = randomize("bool")
    instance.in_fixed_cycle_trial = randomize("bool")
    instance.reason = randomize()
    instance.grant_days = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_subscription_activity_paging_sliced_result_example() -> SubscriptionActivityPagingSlicedResult:
    instance = SubscriptionActivityPagingSlicedResult()
    instance.data = [create_subscription_activity_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_subscription_info_example() -> SubscriptionInfo:
    instance = SubscriptionInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.title = randomize()
    instance.description = randomize()
    instance.currency = create_currency_summary_example()
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.trial_price = randomize("int", min_val=1, max_val=1000)
    instance.recurring = create_recurring_example()
    instance.status = randomize()
    instance.charge_status = randomize()
    instance.next_billing_date = randomize("date")
    instance.entitlements = [create_entitlement_summary_example()]
    instance.item_snapshot = create_item_snapshot_example()
    instance.current_period_start = randomize("date")
    instance.current_period_end = randomize("date")
    instance.start = randomize("date")
    instance.end = randomize("date")
    instance.current_cycle = randomize("int", min_val=1, max_val=1000)
    instance.charged_cycles = randomize("int", min_val=1, max_val=1000)
    instance.trialed_cycles = randomize("int", min_val=1, max_val=1000)
    instance.in_fixed_free_days = randomize("bool")
    instance.in_fixed_cycle_trial = randomize("bool")
    instance.first_subscribe = randomize("bool")
    instance.paid = randomize("bool")
    instance.payment_flow_required = randomize("bool")
    instance.payment_station_url = randomize("url")
    instance.source = randomize()
    instance.subscribed_by = randomize()
    instance.subscribed_at = randomize("date")
    instance.unsubscribed_at = randomize("date")
    instance.unsubscribe_reason = randomize()
    instance.payment_order_no = randomize()
    instance.billing_account = create_billing_account_example()
    instance.return_url = randomize("url")
    instance.region = randomize()
    instance.language = randomize()
    instance.sandbox = randomize("bool")
    instance.retry_attempted = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_subscription_paging_sliced_result_example() -> SubscriptionPagingSlicedResult:
    instance = SubscriptionPagingSlicedResult()
    instance.data = [create_subscription_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_subscription_summary_example() -> SubscriptionSummary:
    instance = SubscriptionSummary()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.status = randomize()
    instance.current_period_start = randomize("date")
    instance.current_period_end = randomize("date")
    instance.subscribed_by = randomize()
    return instance


def create_tax_result_example() -> TaxResult:
    instance = TaxResult()
    instance.enable_tax = randomize("bool")
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.formatted_tax = randomize()
    instance.state = randomize()
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
    instance.success = randomize("bool")
    instance.max_sale_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_trade_notification_example() -> TradeNotification:
    instance = TradeNotification()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.issued_at = randomize("date")
    instance.type_ = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.nonce_str = randomize()
    instance.payment_order_no = randomize()
    instance.ext_order_no = randomize()
    instance.sku = randomize("slug")
    instance.ext_user_id = randomize()
    instance.sandbox = randomize("bool")
    instance.price = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider = randomize()
    instance.payment_method = randomize()
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.payment_station_url = randomize("url")
    instance.status = randomize()
    instance.status_reason = randomize()
    instance.authorised_time = randomize("date")
    instance.created_time = randomize("date")
    instance.charged_time = randomize("date")
    instance.refunded_time = randomize("date")
    instance.chargeback_time = randomize("date")
    instance.chargeback_reversed_time = randomize("date")
    instance.custom_parameters = {randomize(): randomize()}
    instance.metadata = {randomize(): randomize()}
    instance.subscription_id = randomize()
    instance.total_tax = randomize("int", min_val=1, max_val=1000)
    instance.total_price = randomize("int", min_val=1, max_val=1000)
    instance.subtotal_price = randomize("int", min_val=1, max_val=1000)
    instance.ext_tx_id = randomize()
    instance.tx_end_time = randomize("date")
    instance.additional_data = create_additional_data_example()
    return instance


def create_transaction_example() -> Transaction:
    instance = Transaction()
    instance.tx_id = randomize()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.tax = randomize("int", min_val=1, max_val=1000)
    instance.vat = randomize("int", min_val=1, max_val=1000)
    instance.sales_tax = randomize("int", min_val=1, max_val=1000)
    instance.payment_provider_fee = randomize("int", min_val=1, max_val=1000)
    instance.payment_method_fee = randomize("int", min_val=1, max_val=1000)
    instance.currency = create_currency_summary_example()
    instance.type_ = randomize()
    instance.status = randomize()
    instance.provider = randomize()
    instance.payment_method = randomize()
    instance.merchant_id = randomize()
    instance.ext_tx_id = randomize()
    instance.ext_status_code = randomize()
    instance.ext_message = randomize()
    instance.tx_end_time = randomize("date")
    instance.additional_data = create_additional_data_example()
    instance.notified = randomize("bool")
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance


def create_wallet_info_example() -> WalletInfo:
    instance = WalletInfo()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.currency_code = randomize()
    instance.currency_symbol = randomize()
    instance.balance = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.status = randomize()
    return instance


def create_wallet_paging_sliced_result_example() -> WalletPagingSlicedResult:
    instance = WalletPagingSlicedResult()
    instance.data = [create_wallet_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_wallet_transaction_info_example() -> WalletTransactionInfo:
    instance = WalletTransactionInfo()
    instance.wallet_id = randomize()
    instance.amount = randomize("int", min_val=1, max_val=1000)
    instance.reason = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.operator = randomize()
    instance.wallet_action = randomize()
    instance.currency_code = randomize()
    instance.balance_source = randomize()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_wallet_transaction_paging_sliced_result_example() -> WalletTransactionPagingSlicedResult:
    instance = WalletTransactionPagingSlicedResult()
    instance.data = [create_wallet_transaction_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_wx_pay_config_info_example() -> WxPayConfigInfo:
    instance = WxPayConfigInfo()
    instance.app_id = randomize("uid")
    instance.mchid = randomize()
    instance.key = randomize()
    instance.cert_path = randomize()
    instance.return_url = randomize("url")
    return instance


def create_wx_pay_config_request_example() -> WxPayConfigRequest:
    instance = WxPayConfigRequest()
    instance.app_id = randomize("uid")
    instance.mchid = randomize()
    instance.key = randomize()
    instance.return_url = randomize("url")
    return instance


def create_xbl_iap_config_info_example() -> XblIAPConfigInfo:
    instance = XblIAPConfigInfo()
    instance.namespace = randomize("slug")
    instance.relying_party_cert = randomize()
    instance.business_partner_cert_file_name = randomize()
    instance.password = randomize("password")
    return instance


def create_xbl_iap_config_request_example() -> XblIAPConfigRequest:
    instance = XblIAPConfigRequest()
    instance.relying_party_cert = randomize()
    return instance


def create_xbl_reconcile_request_example() -> XblReconcileRequest:
    instance = XblReconcileRequest()
    instance.xsts_token = randomize()
    return instance


def create_xbl_reconcile_result_example() -> XblReconcileResult:
    instance = XblReconcileResult()
    instance.transaction_id = randomize("uid")
    instance.xbox_product_id = randomize()
    instance.item_id = randomize()
    instance.sku = randomize("slug")
    instance.iap_order_status = randomize()
    return instance


def create_xsolla_config_example() -> XsollaConfig:
    instance = XsollaConfig()
    instance.merchant_id = randomize("int", min_val=1, max_val=1000)
    instance.project_id = randomize("int", min_val=1, max_val=1000)
    instance.project_secret_key = randomize()
    instance.api_key = randomize()
    instance.flow_completion_url = randomize("url")
    return instance


def create_xsolla_paywall_config_example() -> XsollaPaywallConfig:
    instance = XsollaPaywallConfig()
    instance.theme = randomize()
    instance.size = randomize()
    instance.device = randomize()
    instance.show_close_button = randomize("bool")
    return instance


def create_xsolla_paywall_config_request_example() -> XsollaPaywallConfigRequest:
    instance = XsollaPaywallConfigRequest()
    instance.theme = randomize()
    instance.size = randomize()
    instance.device = randomize()
    instance.show_close_button = randomize("bool")
    return instance
