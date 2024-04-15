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

Example: '{"additionalData": {"cardSummary": "3DUHWPMgtaicOmID"}, "authorisedTime": "1971-02-20T00:00:00Z", "chargebackReversedTime": "1971-07-24T00:00:00Z", "chargebackTime": "1988-05-15T00:00:00Z", "chargedTime": "1979-01-01T00:00:00Z", "createdTime": "1978-01-31T00:00:00Z", "currency": {"currencyCode": "gE8BRPI3NFx3WP87", "currencySymbol": "9hPOFtzJKpTQ7NVA", "currencyType": "VIRTUAL", "decimals": 75, "namespace": "M09FWCmKX4yTRSue"}, "customParameters": {"sBZGCLZbM9Z7Cmdd": {}, "fqYL4gizemvh1BIj": {}, "uJz0FJVKwToZC3Nf": {}}, "extOrderNo": "vdw5nKR3C3YbiAxU", "extTxId": "HcZeLOkkVyvRd9ei", "extUserId": "9NOjPX5tZ5LGyJvR", "issuedAt": "1973-09-08T00:00:00Z", "metadata": {"AEk3NoFj3c1Av3KQ": "R2DthxVCL5Le71Ku", "vvrWzvSzDblFqaHC": "UxrcvQph6r7h5f25", "nPAWS7ZQpnFFOcg9": "eE6iIgKDrBrD5fzA"}, "namespace": "p33VbIl1kthu6BrW", "nonceStr": "VmWl2KR5bKvPZStQ", "paymentMethod": "ZZSE6S2BH4xR5rb8", "paymentMethodFee": 3, "paymentOrderNo": "OH5emqgyxoOcirST", "paymentProvider": "WXPAY", "paymentProviderFee": 44, "paymentStationUrl": "nw9ypc3vVk7MyZKn", "price": 46, "refundedTime": "1985-06-22T00:00:00Z", "salesTax": 12, "sandbox": false, "sku": "D9uRqTiv0v6MBnAx", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "pQDbwjWhEmsth1IK", "subscriptionId": "RBFQUoTzzrgSsSU3", "subtotalPrice": 97, "targetNamespace": "26CDHTft8J071ohB", "targetUserId": "1i8zfyV97xI7BkLK", "tax": 14, "totalPrice": 66, "totalTax": 49, "txEndTime": "1971-07-04T00:00:00Z", "type": "mPZgEsGdQqOetxCJ", "userId": "UaflKaV1G0vIQnBB", "vat": 32}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
