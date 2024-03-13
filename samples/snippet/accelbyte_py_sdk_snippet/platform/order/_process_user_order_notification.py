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

Example: '{"additionalData": {"cardSummary": "Nh7hJUZc1YK048OQ"}, "authorisedTime": "1993-05-25T00:00:00Z", "chargebackReversedTime": "1978-09-17T00:00:00Z", "chargebackTime": "1992-12-02T00:00:00Z", "chargedTime": "1996-04-23T00:00:00Z", "createdTime": "1998-07-24T00:00:00Z", "currency": {"currencyCode": "6ri6SkK5evB2lWMT", "currencySymbol": "kw38Mz9mUtC1zm9W", "currencyType": "REAL", "decimals": 26, "namespace": "5wY9gNNKfSRnE26y"}, "customParameters": {"F09jtNqZsceiIP5Z": {}, "USI81BlbkEyyW93Z": {}, "l5mtzI9oZHcTCsdn": {}}, "extOrderNo": "BNvvoi54OrNDuAkD", "extTxId": "QgqcH5Cgmxq0Sbw9", "extUserId": "yXh8cuVbXUWfZdz9", "issuedAt": "1981-07-28T00:00:00Z", "metadata": {"yUHXATAd5z961goI": "5NeQKVy6KoVJJi0b", "SefD4Dy1Odbvk23B": "nE9mCjbOp2moVNyS", "T5AJjuWZHMvXxs3t": "fzfNACpDpr5c1lsa"}, "namespace": "rxcDbLaQ9HDSXPMD", "nonceStr": "gNjHPOi890o2PlC4", "paymentMethod": "IO0BcwWEWAefazO4", "paymentMethodFee": 38, "paymentOrderNo": "vfBT6CgbhSTRPtXk", "paymentProvider": "ALIPAY", "paymentProviderFee": 11, "paymentStationUrl": "WGU2RyKdrWqiDBb7", "price": 14, "refundedTime": "1995-02-21T00:00:00Z", "salesTax": 33, "sandbox": false, "sku": "SoktyznJRxOwUfTL", "status": "CHARGEBACK", "statusReason": "SWEhKbWoKeXNVvFg", "subscriptionId": "Yt4zGl49NwLVE5Q3", "subtotalPrice": 59, "targetNamespace": "vrOQ4uBNk2XvbSyd", "targetUserId": "Fsc1umwmsHDKoaQi", "tax": 74, "totalPrice": 66, "totalTax": 100, "txEndTime": "1989-09-25T00:00:00Z", "type": "uJq1zJrjFGw3eGsc", "userId": "pM24SFicIXZ3SAH5", "vat": 29}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
