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

Example: '{"additionalData": {"cardSummary": "OmxBRmN8H9fPnVDt"}, "authorisedTime": "1975-02-06T00:00:00Z", "chargebackReversedTime": "1977-02-08T00:00:00Z", "chargebackTime": "1986-01-10T00:00:00Z", "chargedTime": "1975-09-07T00:00:00Z", "createdTime": "1997-10-21T00:00:00Z", "currency": {"currencyCode": "jJc8YfmyHumB5Wu2", "currencySymbol": "haHS8MVOZU58adC5", "currencyType": "REAL", "decimals": 70, "namespace": "uZAuSe3WfmZFnvDX"}, "customParameters": {"Z6yMJ1CZAXSWjumn": {}, "ZG6OQRAdmTxHJ535": {}, "NNWYLCgeokpW6GHF": {}}, "extOrderNo": "BuUHF4AkSUaS6Mo7", "extTxId": "jwRk6eYarSYUyBs6", "extUserId": "00zjLYdJUupFmPwI", "issuedAt": "1986-10-13T00:00:00Z", "metadata": {"kqhXPvIZ6yBMRLy4": "cbg1TM5eqOVEqmr1", "oQaI2YJfIQWmQbYS": "nAVduVmrcla68j0b", "RmcSYWLM5xXgAevK": "jBqujN9iH4erWA8I"}, "namespace": "5Eh4cQMGbGu3ehvb", "nonceStr": "0SsnAR6qj1rA3ZVn", "paymentMethod": "eMkYVDdtNNY9bCEv", "paymentMethodFee": 92, "paymentOrderNo": "Q5aB7RQZb03xKuQd", "paymentProvider": "STRIPE", "paymentProviderFee": 62, "paymentStationUrl": "3TunD1XGu2WCBrPg", "price": 61, "refundedTime": "1997-06-20T00:00:00Z", "salesTax": 91, "sandbox": true, "sku": "KhNcyt3Mj0A6fnkI", "status": "REFUND_FAILED", "statusReason": "LuYxSDYFC1GlrQeI", "subscriptionId": "qDRWEv1T1AC9aLZ4", "subtotalPrice": 77, "targetNamespace": "U6Mbfne4lhFYUMpP", "targetUserId": "m4RP1HzG2INDtlDb", "tax": 65, "totalPrice": 32, "totalTax": 43, "txEndTime": "1984-10-10T00:00:00Z", "type": "ps3fSOZdiUYwtvR0", "userId": "CCNMNhLap65vQe14", "vat": 49}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
