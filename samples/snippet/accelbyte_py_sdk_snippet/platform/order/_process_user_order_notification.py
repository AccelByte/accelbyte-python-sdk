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

Example: '{"additionalData": {"cardSummary": "fmzul2sgCJt4UrjW"}, "authorisedTime": "1981-08-25T00:00:00Z", "chargebackReversedTime": "1996-05-16T00:00:00Z", "chargebackTime": "1993-10-26T00:00:00Z", "chargedTime": "1981-04-30T00:00:00Z", "createdTime": "1973-12-12T00:00:00Z", "currency": {"currencyCode": "E9U6FbYvI28Wrb46", "currencySymbol": "rHfXgUlv7lEqbQgf", "currencyType": "VIRTUAL", "decimals": 94, "namespace": "ERweqqiiDsVhXdnr"}, "customParameters": {"DreRuKNdK3rMetKR": {}, "9YhDhPMtP9Elxdja": {}, "v9zrh2WrGNvpuboH": {}}, "extOrderNo": "dVTKaU5bSkTnLzf9", "extTxId": "MZZH71UHfTHRwJtZ", "extUserId": "8ECFZIKednrL3ldW", "issuedAt": "1972-06-18T00:00:00Z", "metadata": {"8WGvgRWfoJCcMqS2": "cd3OTbaxK0k3nERo", "DyjxB2iuNP2SXQJD": "JsSqBwUJgMlWQMfK", "2rImg9mAZLftaxo4": "Cofb05hEmM10D80t"}, "namespace": "02B2N09v6owTfImz", "nonceStr": "aLN1kCQjVRSE23on", "paymentMethod": "IMSIOo0cZw0r1hNO", "paymentMethodFee": 45, "paymentOrderNo": "FoUUT48OzYvBm2RB", "paymentProvider": "STRIPE", "paymentProviderFee": 81, "paymentStationUrl": "fej4PkLFXUYp5kLG", "price": 23, "refundedTime": "1993-04-05T00:00:00Z", "salesTax": 24, "sandbox": false, "sku": "hxQRWlGpaLIkvqqv", "status": "INIT", "statusReason": "XUItQaUa99YV7Kcf", "subscriptionId": "Dodaix92CbXq86fn", "subtotalPrice": 42, "targetNamespace": "WlVXkBVOe5irvRLz", "targetUserId": "KW6PLLb2rUyumRHo", "tax": 34, "totalPrice": 69, "totalTax": 71, "txEndTime": "1996-06-30T00:00:00Z", "type": "e7mNBsnVe6tipqRW", "userId": "fReyF0i4fYJgA69L", "vat": 53}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
