import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import process_user_subscription_notification
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

Example: '{"additionalData": {"cardSummary": "hiT1GAogujNiBrXQ"}, "authorisedTime": "1986-04-03T00:00:00Z", "chargebackReversedTime": "1971-11-12T00:00:00Z", "chargebackTime": "1975-12-03T00:00:00Z", "chargedTime": "1974-07-31T00:00:00Z", "createdTime": "1988-04-08T00:00:00Z", "currency": {"currencyCode": "pccJnGiNt2LJEArV", "currencySymbol": "UxZ61ylnZzeVAy2j", "currencyType": "REAL", "decimals": 65, "namespace": "Of9BTxwKX4FfjpmC"}, "customParameters": {"Hs72vWlj2bzjUwl4": {}, "UD6IlZs9y6KVuN0Z": {}, "VeOUqPvAh82mcyft": {}}, "extOrderNo": "qEiswhzFkolPGN4f", "extTxId": "YHtjjWf5kjqFOhtA", "extUserId": "7z4eoQIRsxqBcQQx", "issuedAt": "1989-07-30T00:00:00Z", "metadata": {"nbJuUzPMvwHtp5tZ": "fJHxKilCa6ZZvxuw", "JIsvQ3mRbaoThhOm": "DwZ73bejl0bgQAJl", "ifVx65h89XLhuFOy": "MJqTjoRN4POWesoC"}, "namespace": "QR84mklnRE3SvdHD", "nonceStr": "QMoRxzhBC1dDPRSx", "paymentMethod": "kJV8hmzVFOna5sh3", "paymentMethodFee": 67, "paymentOrderNo": "69dq8ODkM7TB7Buj", "paymentProvider": "PAYPAL", "paymentProviderFee": 8, "paymentStationUrl": "AO5RhmsHd6ZqQB01", "price": 74, "refundedTime": "1999-05-20T00:00:00Z", "salesTax": 79, "sandbox": true, "sku": "5mrnq2GPyx9tHWaD", "status": "AUTHORISED", "statusReason": "BEx8WUjaugMKqLLi", "subscriptionId": "mMqCPjKYqH716TGP", "subtotalPrice": 60, "targetNamespace": "ZNjGIFk1XwZVJLrF", "targetUserId": "Gc1bwHdZuqCjDpoA", "tax": 10, "totalPrice": 4, "totalTax": 29, "txEndTime": "1971-06-26T00:00:00Z", "type": "j3oxLkqSTdhlDI0P", "userId": "0iCbch0ka3Kh0lMn", "vat": 48}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
