from ._anonymize_campaign import anonymize_campaign
from ._get_campaign import get_campaign
from ._update_campaign import update_campaign
from ._query_campaigns import query_campaigns
from ._create_campaign import create_campaign
from ._get_campaign_dynamic import get_campaign_dynamic
from ._enable_code import enable_code
from ._query_redeem_history import query_redeem_history
from ._bulk_enable_codes import bulk_enable_codes
from ._query_codes import query_codes
from ._create_codes import create_codes
from ._download import download
from ._disable_code import disable_code
from ._get_code import get_code
from ._bulk_disable_codes import bulk_disable_codes
from ._get_key_group import get_key_group
from ._update_key_group import update_key_group
from ._list_keys import list_keys
from ._upload_keys import upload_keys
from ._get_key_group_dynamic import get_key_group_dynamic
from ._query_key_groups import query_key_groups
from ._create_key_group import create_key_group
from ._increase_ticket_sale import increase_ticket_sale
from ._get_ticket_booth_id import get_ticket_booth_id
from ._get_ticket_dynamic import get_ticket_dynamic
from ._decrease_ticket_sale import decrease_ticket_sale
from ._apply_user_redemption import apply_user_redemption
from ._acquire_user_ticket import acquire_user_ticket
from ._get_app import get_app
from ._update_app import update_app
from ._get_category import get_category
from ._update_category import update_category
from ._delete_category import delete_category
from ._list_categories_basic import list_categories_basic
from ._get_descendant_categories import get_descendant_categories
from ._get_child_categories import get_child_categories
from ._get_root_categories import get_root_categories
from ._create_category import create_category
from ._get_item import get_item
from ._update_item import update_item
from ._delete_item import delete_item
from ._get_item_by_sku import get_item_by_sku
from ._get_locale_item_by_sku import get_locale_item_by_sku
from ._return_item import return_item
from ._feature_item import feature_item
from ._defeature_item import defeature_item
from ._get_item_id_by_sku import get_item_id_by_sku
from ._get_item_by_app_id import get_item_by_app_id
from ._query_uncategorized_items import query_uncategorized_items
from ._query_items import query_items
from ._acquire_item import acquire_item
from ._search_items import search_items
from ._enable_item import enable_item
from ._bulk_get_locale_items import bulk_get_locale_items
from ._get_item_dynamic_data import get_item_dynamic_data
from ._sync_in_game_item import sync_in_game_item
from ._create_item import create_item
from ._get_locale_item import get_locale_item
from ._list_basic_items_by_features import list_basic_items_by_features
from ._disable_item import disable_item
from ._get_published_store_backup import get_published_store_backup
from ._get_store import get_store
from ._update_store import update_store
from ._delete_store import delete_store
from ._list_stores import list_stores
from ._create_store import create_store
from ._get_published_store import get_published_store
from ._delete_published_store import delete_published_store
from ._clone_store import clone_store
from ._rollback_published_store import rollback_published_store
from ._export_store import export_store
from ._import_store import import_store
from ._public_get_app import public_get_app
from ._public_get_child_categories import public_get_child_categories
from ._public_get_category import public_get_category
from ._public_get_root_categories import public_get_root_categories
from ._public_get_descendant_categories import public_get_descendant_categories
from ._download_categories import download_categories
from ._public_get_item_by_sku import public_get_item_by_sku
from ._public_search_items import public_search_items
from ._public_get_item_by_app_id import public_get_item_by_app_id
from ._public_get_item import public_get_item
from ._public_query_items import public_query_items
from ._public_get_item_dynamic_data import public_get_item_dynamic_data
from ._public_bulk_get_items import public_bulk_get_items
from ._public_list_stores import public_list_stores
from ._list_currencies import list_currencies
from ._create_currency import create_currency
from ._get_currency_summary import get_currency_summary
from ._update_currency import update_currency
from ._delete_currency import delete_currency
from ._get_currency_config import get_currency_config
from ._public_list_currencies import public_list_currencies
from ._anonymize_entitlement import anonymize_entitlement
from ._query_entitlements import query_entitlements
from ._get_entitlement import get_entitlement
from ._get_user_entitlement_histories import get_user_entitlement_histories
from ._get_user_distribution_receivers import get_user_distribution_receivers
from ._get_user_entitlement_by_sku import get_user_entitlement_by_sku
from ._query_user_entitlements import query_user_entitlements
from ._grant_user_entitlement import grant_user_entitlement
from ._revoke_user_entitlements import revoke_user_entitlements
from ._get_user_entitlement import get_user_entitlement
from ._update_user_entitlement import update_user_entitlement
from ._get_user_entitlement_ownership_by_sku import get_user_entitlement_ownership_by_sku
from ._update_user_distribution_receiver import update_user_distribution_receiver
from ._create_user_distribution_receiver import create_user_distribution_receiver
from ._delete_user_distribution_receiver import delete_user_distribution_receiver
from ._get_user_app_entitlement_by_app_id import get_user_app_entitlement_by_app_id
from ._get_user_app_entitlement_ownership_by_app_id import get_user_app_entitlement_ownership_by_app_id
from ._disable_user_entitlement import disable_user_entitlement
from ._consume_user_entitlement import consume_user_entitlement
from ._enable_user_entitlement import enable_user_entitlement
from ._query_user_entitlements_by_app_type import query_user_entitlements_by_app_type
from ._exists_any_user_active_entitlement_by_item_ids import exists_any_user_active_entitlement_by_item_ids
from ._exists_any_user_active_entitlement import exists_any_user_active_entitlement
from ._revoke_user_entitlement import revoke_user_entitlement
from ._public_get_my_app_entitlement_ownership_by_app_id import public_get_my_app_entitlement_ownership_by_app_id
from ._public_exists_any_my_active_entitlement import public_exists_any_my_active_entitlement
from ._public_get_my_entitlement_ownership_by_sku import public_get_my_entitlement_ownership_by_sku
from ._public_get_entitlement_ownership_token import public_get_entitlement_ownership_token
from ._public_exists_any_user_active_entitlement import public_exists_any_user_active_entitlement
from ._public_get_user_app_entitlement_by_app_id import public_get_user_app_entitlement_by_app_id
from ._public_update_user_distribution_receiver import public_update_user_distribution_receiver
from ._public_create_user_distribution_receiver import public_create_user_distribution_receiver
from ._public_delete_user_distribution_receiver import public_delete_user_distribution_receiver
from ._public_get_user_entitlement_ownership_by_sku import public_get_user_entitlement_ownership_by_sku
from ._public_query_user_entitlements import public_query_user_entitlements
from ._public_get_user_entitlement import public_get_user_entitlement
from ._public_get_user_app_entitlement_ownership_by_app_id import public_get_user_app_entitlement_ownership_by_app_id
from ._public_get_user_entitlement_by_sku import public_get_user_entitlement_by_sku
from ._public_get_user_distribution_receivers import public_get_user_distribution_receivers
from ._public_distribute_user_distribution import public_distribute_user_distribution
from ._public_query_user_entitlements_by_app_type import public_query_user_entitlements_by_app_type
from ._public_consume_user_entitlement import public_consume_user_entitlement
from ._anonymize_fulfillment import anonymize_fulfillment
from ._query_fulfillment_histories import query_fulfillment_histories
from ._fulfill_item import fulfill_item
from ._public_redeem_code import public_redeem_code
from ._update_xbl_bp_cert_file import update_xbl_bp_cert_file
from ._get_epic_games_iap_config import get_epic_games_iap_config
from ._update_epic_games_iap_config import update_epic_games_iap_config
from ._delete_epic_games_iap_config import delete_epic_games_iap_config
from ._get_xbl_iap_config import get_xbl_iap_config
from ._update_xbl_iap_config import update_xbl_iap_config
from ._delete_xbl_ap_config import delete_xbl_ap_config
from ._get_apple_iap_config import get_apple_iap_config
from ._update_apple_iap_config import update_apple_iap_config
from ._delete_apple_iap_config import delete_apple_iap_config
from ._get_play_station_iap_config import get_play_station_iap_config
from ._update_playstation_iap_config import update_playstation_iap_config
from ._delete_playstation_iap_config import delete_playstation_iap_config
from ._get_google_iap_config import get_google_iap_config
from ._update_google_iap_config import update_google_iap_config
from ._delete_google_iap_config import delete_google_iap_config
from ._update_google_p12_file import update_google_p12_file
from ._get_steam_iap_config import get_steam_iap_config
from ._update_steam_iap_config import update_steam_iap_config
from ._delete_steam_iap_config import delete_steam_iap_config
from ._get_stadia_iap_config import get_stadia_iap_config
from ._delete_stadia_iap_config import delete_stadia_iap_config
from ._update_stadia_json_config_file import update_stadia_json_config_file
from ._anonymize_integration import anonymize_integration
from ._get_game_server_config import get_game_server_config
from ._update_game_server_config import update_game_server_config
from ._mock_fulfill_iap_item import mock_fulfill_iap_item
from ._query_user_iap_orders import query_user_iap_orders
from ._sync_steam_inventory import sync_steam_inventory
from ._public_fulfill_apple_iap_item import public_fulfill_apple_iap_item
from ._public_reconcile_play_station_store import public_reconcile_play_station_store
from ._sync_stadia_entitlement import sync_stadia_entitlement
from ._public_fulfill_google_iap_item import public_fulfill_google_iap_item
from ._sync_xbox_inventory import sync_xbox_inventory
from ._sync_epic_games_inventory import sync_epic_games_inventory
from ._anonymize_order import anonymize_order
from ._get_order_statistics import get_order_statistics
from ._refund_order import refund_order
from ._query_orders import query_orders
from ._get_order import get_order
from ._sync_orders import sync_orders
from ._download_user_order_receipt import download_user_order_receipt
from ._get_user_order_histories import get_user_order_histories
from ._query_user_orders import query_user_orders
from ._count_of_purchased_item import count_of_purchased_item
from ._get_user_order import get_user_order
from ._update_user_order_status import update_user_order_status
from ._fulfill_user_order import fulfill_user_order
from ._process_user_order_notification import process_user_order_notification
from ._get_user_order_grant import get_user_order_grant
from ._public_query_user_orders import public_query_user_orders
from ._public_create_user_order import public_create_user_order
from ._public_get_user_order import public_get_user_order
from ._public_download_user_order_receipt import public_download_user_order_receipt
from ._public_cancel_user_order import public_cancel_user_order
from ._public_get_user_order_histories import public_get_user_order_histories
from ._anonymize_payment import anonymize_payment
from ._update_checkout_config import update_checkout_config
from ._debug_matched_payment_merchant_config import debug_matched_payment_merchant_config
from ._test_checkout_config import test_checkout_config
from ._test_adyen_config import test_adyen_config
from ._get_payment_merchant_config import get_payment_merchant_config
from ._test_stripe_config_by_id import test_stripe_config_by_id
from ._test_stripe_config import test_stripe_config
from ._test_wx_pay_config_by_id import test_wx_pay_config_by_id
from ._update_stripe_config import update_stripe_config
from ._update_adyen_config import update_adyen_config
from ._test_checkout_config_by_id import test_checkout_config_by_id
from ._update_ali_pay_config import update_ali_pay_config
from ._update_wx_pay_config import update_wx_pay_config
from ._test_pay_pal_config import test_pay_pal_config
from ._test_ali_pay_config_by_id import test_ali_pay_config_by_id
from ._test_adyen_config_by_id import test_adyen_config_by_id
from ._update_xsolla_config import update_xsolla_config
from ._test_pay_pal_config_by_id import test_pay_pal_config_by_id
from ._test_xsolla_config import test_xsolla_config
from ._update_wx_pay_config_cert import update_wx_pay_config_cert
from ._test_wx_pay_config import test_wx_pay_config
from ._test_ali_pay_config import test_ali_pay_config
from ._update_xsolla_ui_config import update_xsolla_ui_config
from ._update_pay_pal_config import update_pay_pal_config
from ._test_xsolla_config_by_id import test_xsolla_config_by_id
from ._query_payment_notifications import query_payment_notifications
from ._get_payment_order import get_payment_order
from ._charge_payment_order import charge_payment_order
from ._list_ext_order_no_by_ext_tx_id import list_ext_order_no_by_ext_tx_id
from ._simulate_payment_order_notification import simulate_payment_order_notification
from ._get_payment_order_charge_status import get_payment_order_charge_status
from ._query_payment_orders import query_payment_orders
from ._create_payment_order_by_dedicated import create_payment_order_by_dedicated
from ._sync_payment_orders import sync_payment_orders
from ._query_payment_provider_config import query_payment_provider_config
from ._create_payment_provider_config import create_payment_provider_config
from ._get_aggregate_payment_providers import get_aggregate_payment_providers
from ._debug_matched_payment_provider_config import debug_matched_payment_provider_config
from ._get_special_payment_providers import get_special_payment_providers
from ._update_payment_provider_config import update_payment_provider_config
from ._delete_payment_provider_config import delete_payment_provider_config
from ._get_payment_tax_config import get_payment_tax_config
from ._update_payment_tax_config import update_payment_tax_config
from ._create_user_payment_order import create_user_payment_order
from ._refund_user_payment_order import refund_user_payment_order
from ._refund_payment_order_by_dedicated import refund_payment_order_by_dedicated
from ._public_get_payment_accounts import public_get_payment_accounts
from ._public_delete_payment_account import public_delete_payment_account
from ._public_check_payment_order_paid_status import public_check_payment_order_paid_status
from ._get_payment_tax_value import get_payment_tax_value
from ._pay import pay
from ._get_payment_public_config import get_payment_public_config
from ._public_normalize_payment_return_url import public_normalize_payment_return_url
from ._public_get_payment_methods import public_get_payment_methods
from ._public_get_unpaid_payment_order import public_get_unpaid_payment_order
from ._public_get_qr_code import public_get_qr_code
from ._get_payment_customization import get_payment_customization
from ._public_get_payment_url import public_get_payment_url
from ._export_rewards import export_rewards
from ._get_reward import get_reward
from ._update_reward import update_reward
from ._delete_reward import delete_reward
from ._import_rewards import import_rewards
from ._create_reward import create_reward
from ._query_rewards import query_rewards
from ._get_reward_by_code import get_reward_by_code
from ._get_reward_1 import get_reward_1
from ._query_rewards_1 import query_rewards_1
from ._anonymize_subscription import anonymize_subscription
from ._recurring_charge_subscription import recurring_charge_subscription
from ._query_subscriptions import query_subscriptions
from ._cancel_subscription import cancel_subscription
from ._get_user_subscription_billing_histories import get_user_subscription_billing_histories
from ._platform_subscribe_subscription import platform_subscribe_subscription
from ._grant_days_to_subscription import grant_days_to_subscription
from ._get_user_subscription_activities import get_user_subscription_activities
from ._process_user_subscription_notification import process_user_subscription_notification
from ._get_user_subscription import get_user_subscription
from ._delete_user_subscription import delete_user_subscription
from ._query_user_subscriptions import query_user_subscriptions
from ._check_user_subscription_subscribable_by_item_id import check_user_subscription_subscribable_by_item_id
from ._public_get_user_subscription import public_get_user_subscription
from ._public_get_user_subscription_billing_histories import public_get_user_subscription_billing_histories
from ._public_check_user_subscription_subscribable_by_item_id import public_check_user_subscription_subscribable_by_item_id
from ._public_query_user_subscriptions import public_query_user_subscriptions
from ._public_subscribe_subscription import public_subscribe_subscription
from ._public_cancel_subscription import public_cancel_subscription
from ._public_change_subscription_billing_account import public_change_subscription_billing_account
from ._list_user_wallet_transactions import list_user_wallet_transactions
from ._enable_user_wallet import enable_user_wallet
from ._debit_user_wallet import debit_user_wallet
from ._get_user_wallet import get_user_wallet
from ._check_wallet import check_wallet
from ._disable_user_wallet import disable_user_wallet
from ._credit_user_wallet import credit_user_wallet
from ._pay_with_user_wallet import pay_with_user_wallet
from ._anonymize_wallet import anonymize_wallet
from ._query_wallets import query_wallets
from ._get_wallet import get_wallet
from ._public_get_my_wallet import public_get_my_wallet
from ._public_list_user_wallet_transactions import public_list_user_wallet_transactions
from ._public_get_wallet import public_get_wallet


commands = [
    anonymize_campaign,
    get_campaign,
    update_campaign,
    query_campaigns,
    create_campaign,
    get_campaign_dynamic,
    enable_code,
    query_redeem_history,
    bulk_enable_codes,
    query_codes,
    create_codes,
    download,
    disable_code,
    get_code,
    bulk_disable_codes,
    get_key_group,
    update_key_group,
    list_keys,
    upload_keys,
    get_key_group_dynamic,
    query_key_groups,
    create_key_group,
    increase_ticket_sale,
    get_ticket_booth_id,
    get_ticket_dynamic,
    decrease_ticket_sale,
    apply_user_redemption,
    acquire_user_ticket,
    get_app,
    update_app,
    get_category,
    update_category,
    delete_category,
    list_categories_basic,
    get_descendant_categories,
    get_child_categories,
    get_root_categories,
    create_category,
    get_item,
    update_item,
    delete_item,
    get_item_by_sku,
    get_locale_item_by_sku,
    return_item,
    feature_item,
    defeature_item,
    get_item_id_by_sku,
    get_item_by_app_id,
    query_uncategorized_items,
    query_items,
    acquire_item,
    search_items,
    enable_item,
    bulk_get_locale_items,
    get_item_dynamic_data,
    sync_in_game_item,
    create_item,
    get_locale_item,
    list_basic_items_by_features,
    disable_item,
    get_published_store_backup,
    get_store,
    update_store,
    delete_store,
    list_stores,
    create_store,
    get_published_store,
    delete_published_store,
    clone_store,
    rollback_published_store,
    export_store,
    import_store,
    public_get_app,
    public_get_child_categories,
    public_get_category,
    public_get_root_categories,
    public_get_descendant_categories,
    download_categories,
    public_get_item_by_sku,
    public_search_items,
    public_get_item_by_app_id,
    public_get_item,
    public_query_items,
    public_get_item_dynamic_data,
    public_bulk_get_items,
    public_list_stores,
    list_currencies,
    create_currency,
    get_currency_summary,
    update_currency,
    delete_currency,
    get_currency_config,
    public_list_currencies,
    anonymize_entitlement,
    query_entitlements,
    get_entitlement,
    get_user_entitlement_histories,
    get_user_distribution_receivers,
    get_user_entitlement_by_sku,
    query_user_entitlements,
    grant_user_entitlement,
    revoke_user_entitlements,
    get_user_entitlement,
    update_user_entitlement,
    get_user_entitlement_ownership_by_sku,
    update_user_distribution_receiver,
    create_user_distribution_receiver,
    delete_user_distribution_receiver,
    get_user_app_entitlement_by_app_id,
    get_user_app_entitlement_ownership_by_app_id,
    disable_user_entitlement,
    consume_user_entitlement,
    enable_user_entitlement,
    query_user_entitlements_by_app_type,
    exists_any_user_active_entitlement_by_item_ids,
    exists_any_user_active_entitlement,
    revoke_user_entitlement,
    public_get_my_app_entitlement_ownership_by_app_id,
    public_exists_any_my_active_entitlement,
    public_get_my_entitlement_ownership_by_sku,
    public_get_entitlement_ownership_token,
    public_exists_any_user_active_entitlement,
    public_get_user_app_entitlement_by_app_id,
    public_update_user_distribution_receiver,
    public_create_user_distribution_receiver,
    public_delete_user_distribution_receiver,
    public_get_user_entitlement_ownership_by_sku,
    public_query_user_entitlements,
    public_get_user_entitlement,
    public_get_user_app_entitlement_ownership_by_app_id,
    public_get_user_entitlement_by_sku,
    public_get_user_distribution_receivers,
    public_distribute_user_distribution,
    public_query_user_entitlements_by_app_type,
    public_consume_user_entitlement,
    anonymize_fulfillment,
    query_fulfillment_histories,
    fulfill_item,
    public_redeem_code,
    update_xbl_bp_cert_file,
    get_epic_games_iap_config,
    update_epic_games_iap_config,
    delete_epic_games_iap_config,
    get_xbl_iap_config,
    update_xbl_iap_config,
    delete_xbl_ap_config,
    get_apple_iap_config,
    update_apple_iap_config,
    delete_apple_iap_config,
    get_play_station_iap_config,
    update_playstation_iap_config,
    delete_playstation_iap_config,
    get_google_iap_config,
    update_google_iap_config,
    delete_google_iap_config,
    update_google_p12_file,
    get_steam_iap_config,
    update_steam_iap_config,
    delete_steam_iap_config,
    get_stadia_iap_config,
    delete_stadia_iap_config,
    update_stadia_json_config_file,
    anonymize_integration,
    get_game_server_config,
    update_game_server_config,
    mock_fulfill_iap_item,
    query_user_iap_orders,
    sync_steam_inventory,
    public_fulfill_apple_iap_item,
    public_reconcile_play_station_store,
    sync_stadia_entitlement,
    public_fulfill_google_iap_item,
    sync_xbox_inventory,
    sync_epic_games_inventory,
    anonymize_order,
    get_order_statistics,
    refund_order,
    query_orders,
    get_order,
    sync_orders,
    download_user_order_receipt,
    get_user_order_histories,
    query_user_orders,
    count_of_purchased_item,
    get_user_order,
    update_user_order_status,
    fulfill_user_order,
    process_user_order_notification,
    get_user_order_grant,
    public_query_user_orders,
    public_create_user_order,
    public_get_user_order,
    public_download_user_order_receipt,
    public_cancel_user_order,
    public_get_user_order_histories,
    anonymize_payment,
    update_checkout_config,
    debug_matched_payment_merchant_config,
    test_checkout_config,
    test_adyen_config,
    get_payment_merchant_config,
    test_stripe_config_by_id,
    test_stripe_config,
    test_wx_pay_config_by_id,
    update_stripe_config,
    update_adyen_config,
    test_checkout_config_by_id,
    update_ali_pay_config,
    update_wx_pay_config,
    test_pay_pal_config,
    test_ali_pay_config_by_id,
    test_adyen_config_by_id,
    update_xsolla_config,
    test_pay_pal_config_by_id,
    test_xsolla_config,
    update_wx_pay_config_cert,
    test_wx_pay_config,
    test_ali_pay_config,
    update_xsolla_ui_config,
    update_pay_pal_config,
    test_xsolla_config_by_id,
    query_payment_notifications,
    get_payment_order,
    charge_payment_order,
    list_ext_order_no_by_ext_tx_id,
    simulate_payment_order_notification,
    get_payment_order_charge_status,
    query_payment_orders,
    create_payment_order_by_dedicated,
    sync_payment_orders,
    query_payment_provider_config,
    create_payment_provider_config,
    get_aggregate_payment_providers,
    debug_matched_payment_provider_config,
    get_special_payment_providers,
    update_payment_provider_config,
    delete_payment_provider_config,
    get_payment_tax_config,
    update_payment_tax_config,
    create_user_payment_order,
    refund_user_payment_order,
    refund_payment_order_by_dedicated,
    public_get_payment_accounts,
    public_delete_payment_account,
    public_check_payment_order_paid_status,
    get_payment_tax_value,
    pay,
    get_payment_public_config,
    public_normalize_payment_return_url,
    public_get_payment_methods,
    public_get_unpaid_payment_order,
    public_get_qr_code,
    get_payment_customization,
    public_get_payment_url,
    export_rewards,
    get_reward,
    update_reward,
    delete_reward,
    import_rewards,
    create_reward,
    query_rewards,
    get_reward_by_code,
    get_reward_1,
    query_rewards_1,
    anonymize_subscription,
    recurring_charge_subscription,
    query_subscriptions,
    cancel_subscription,
    get_user_subscription_billing_histories,
    platform_subscribe_subscription,
    grant_days_to_subscription,
    get_user_subscription_activities,
    process_user_subscription_notification,
    get_user_subscription,
    delete_user_subscription,
    query_user_subscriptions,
    check_user_subscription_subscribable_by_item_id,
    public_get_user_subscription,
    public_get_user_subscription_billing_histories,
    public_check_user_subscription_subscribable_by_item_id,
    public_query_user_subscriptions,
    public_subscribe_subscription,
    public_cancel_subscription,
    public_change_subscription_billing_account,
    list_user_wallet_transactions,
    enable_user_wallet,
    debit_user_wallet,
    get_user_wallet,
    check_wallet,
    disable_user_wallet,
    credit_user_wallet,
    pay_with_user_wallet,
    anonymize_wallet,
    query_wallets,
    get_wallet,
    public_get_my_wallet,
    public_list_user_wallet_transactions,
    public_get_wallet,
]
