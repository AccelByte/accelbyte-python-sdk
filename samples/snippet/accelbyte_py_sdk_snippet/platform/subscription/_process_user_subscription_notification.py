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

Example: '{"additionalData": {"cardSummary": "XMHN8Bh4nzlVRHn7"}, "authorisedTime": "1974-04-19T00:00:00Z", "chargebackReversedTime": "1993-03-30T00:00:00Z", "chargebackTime": "1990-07-15T00:00:00Z", "chargedTime": "1999-04-30T00:00:00Z", "createdTime": "1985-03-11T00:00:00Z", "currency": {"currencyCode": "1DLjVVjJ5iPGRjDc", "currencySymbol": "816BH9IGicX0xjCc", "currencyType": "VIRTUAL", "decimals": 75, "namespace": "BO377WxT42IfH6Bw"}, "customParameters": {"ByqR1VuPuCElWQW0": {}, "9kx3wQTiN6Yy3P0a": {}, "yJG98Y0gWoC2llSO": {}}, "extOrderNo": "oyxhoiTUDSDQbVng", "extTxId": "OS0MnsptxgV3Mf5i", "extUserId": "UeE3pzYkETNK29Rd", "issuedAt": "1987-05-05T00:00:00Z", "metadata": {"acBs4GiN4kElqEB9": "efUqL4DDP2gNaLoI", "WDGkUZ7uty2Rv36V": "sOgIzjikNbDATNxL", "V4yWG59Rpi8eaAHH": "q6ahtZNftuwcJzWX"}, "namespace": "uFo3Zxy48WCHXrfc", "nonceStr": "i9DtzV37EZs8b3M2", "paymentMethod": "iLMIJgd66gy3Py3L", "paymentMethodFee": 58, "paymentOrderNo": "pIfvPAnmdSbK5CA0", "paymentProvider": "PAYPAL", "paymentProviderFee": 80, "paymentStationUrl": "iPp2vnfriAcGxxL4", "price": 35, "refundedTime": "1989-03-15T00:00:00Z", "salesTax": 44, "sandbox": false, "sku": "8RqkJXOJhJSi1iHh", "status": "CHARGEBACK", "statusReason": "KkTG2uvCFx5ZROU0", "subscriptionId": "3Yzf9ZoNCQX3mJBV", "subtotalPrice": 52, "targetNamespace": "Lg9zIOPemMbmSDEE", "targetUserId": "CawgftR7CWk2AnSV", "tax": 56, "totalPrice": 82, "totalTax": 97, "txEndTime": "1981-11-02T00:00:00Z", "type": "aFckA9YARdTKWphj", "userId": "DOrvG6WpE8sP6gf1", "vat": 45}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
