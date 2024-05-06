import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import process_user_order_notification
from accelbyte_py_sdk.api.platform.models import TradeNotification

"""
body:
Definition: TradeNotification
additional_data: AdditionalData
Definition: AdditionalData
    card_summary: str
authorised_time: str
chargeback_reversed_time: str
chargeback_time: str
charged_time: str
created_time: str
currency: CurrencySummary
Definition: CurrencySummary
    currency_code: str
    currency_symbol: str
    currency_type: str
    decimals: int
    namespace: str
custom_parameters: Dict[str, Any]
ext_order_no: str
ext_tx_id: str
ext_user_id: str
issued_at: str
metadata: Dict[str, str]
namespace: str
nonce_str: str
payment_method: str
payment_method_fee: int
payment_order_no: str
payment_provider: str
payment_provider_fee: int
payment_station_url: str
price: int
refunded_time: str
sales_tax: int
sandbox: bool
sku: str
status: str
status_reason: str
subscription_id: str
subtotal_price: int
target_namespace: str
target_user_id: str
tax: int
total_price: int
total_tax: int
tx_end_time: str
type_: str
user_id: str
vat: int

Example: '{"additionalData": {"cardSummary": "2nHnQerptQlh6UzO"}, "authorisedTime": "1995-09-26T00:00:00Z", "chargebackReversedTime": "1996-04-02T00:00:00Z", "chargebackTime": "1991-02-10T00:00:00Z", "chargedTime": "1995-04-04T00:00:00Z", "createdTime": "1971-08-19T00:00:00Z", "currency": {"currencyCode": "FKFfb1VD2uz8pyzL", "currencySymbol": "OgF9dwatOdeKEBrZ", "currencyType": "VIRTUAL", "decimals": 52, "namespace": "TDbnfCpF3MfkfIXE"}, "customParameters": {"CXWWVGlwVnQRwJ5i": {}, "Nckmgadl11y5CZIp": {}, "O9kBnoqx2cg8PvfX": {}}, "extOrderNo": "EyGOWr7d8U5hFOy0", "extTxId": "RgutiCcJen8aXSTO", "extUserId": "dcNeWYcgHHf1zXgJ", "issuedAt": "1984-09-04T00:00:00Z", "metadata": {"0LPDfzrHEWYZTkPz": "e39oYbtaHpAlVpyn", "Eo7fjaad0I4pkcua": "56nvvF6LUQvvRC9D", "0sv9qKPJpX1vHV1B": "tkr7iI9dPfTsnlR5"}, "namespace": "KgOXWiUNLPzEfXaP", "nonceStr": "JedV533TLuHoJac8", "paymentMethod": "6rGoeNq70u1MQ4N2", "paymentMethodFee": 38, "paymentOrderNo": "3QbjA0fqVYCAXkym", "paymentProvider": "WALLET", "paymentProviderFee": 82, "paymentStationUrl": "92RvFUwOR9Gw6Z1n", "price": 74, "refundedTime": "1989-04-27T00:00:00Z", "salesTax": 28, "sandbox": true, "sku": "ZoQz9R504WTMvgah", "status": "REFUND_FAILED", "statusReason": "rtiCuxgE8p5nHOnR", "subscriptionId": "QcRkgNrvRiyA81VI", "subtotalPrice": 20, "targetNamespace": "4z9UnaMy7Sw9wwHX", "targetUserId": "c8jmljSMFGAGL6fM", "tax": 78, "totalPrice": 99, "totalTax": 74, "txEndTime": "1971-12-02T00:00:00Z", "type": "DRTyCWtvkVW0gwc8", "userId": "jXW2oEEqIj6Bc563", "vat": 39}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
