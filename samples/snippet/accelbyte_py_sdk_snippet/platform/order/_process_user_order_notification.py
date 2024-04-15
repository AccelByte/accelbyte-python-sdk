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

Example: '{"additionalData": {"cardSummary": "c7ELoBe0nMfLUTZA"}, "authorisedTime": "1984-11-03T00:00:00Z", "chargebackReversedTime": "1974-07-17T00:00:00Z", "chargebackTime": "1981-03-31T00:00:00Z", "chargedTime": "1987-01-02T00:00:00Z", "createdTime": "1988-06-13T00:00:00Z", "currency": {"currencyCode": "vW35omyDY3kZuhK7", "currencySymbol": "3wHdiP4A0qXQ4p5A", "currencyType": "VIRTUAL", "decimals": 42, "namespace": "G7smpCi5Ir0KR93o"}, "customParameters": {"QRIB8JkHqA8zNadE": {}, "yMMfVN6HoaTSwmDP": {}, "gmM1i30z8RmxyT6Y": {}}, "extOrderNo": "pyAInODmDK4trSp7", "extTxId": "jLBOoFqJGhhlEfA5", "extUserId": "DatKMIjgSoMI8GGr", "issuedAt": "1999-10-25T00:00:00Z", "metadata": {"m10zxlcSbPt2bBPX": "8MtDauf3FpRyYbgq", "7UuafEI8jA4n1QXG": "dBvzeICqxx3blChH", "ywnTmMvxECNyrZZZ": "g3SF9Uq89scwFLXq"}, "namespace": "36duKlkexbLJqEmq", "nonceStr": "CbHXQQaHwiGcIZlM", "paymentMethod": "F9Z0OKe2pP9MW2PI", "paymentMethodFee": 26, "paymentOrderNo": "lF7lVHRE0A4PgYLL", "paymentProvider": "WXPAY", "paymentProviderFee": 61, "paymentStationUrl": "DHs6mSZIQBkZjzEh", "price": 27, "refundedTime": "1991-12-12T00:00:00Z", "salesTax": 33, "sandbox": true, "sku": "DrHDxdVqjvUzAAud", "status": "REFUND_FAILED", "statusReason": "GyovJZuhCIg4djro", "subscriptionId": "oRv2jqaqWN0HqZXJ", "subtotalPrice": 31, "targetNamespace": "agxdR04im0xElhiE", "targetUserId": "QeBSO2OI0Da5iHHH", "tax": 68, "totalPrice": 77, "totalTax": 1, "txEndTime": "1988-11-01T00:00:00Z", "type": "n2FPYWIvVtCorFJh", "userId": "Th1c9IPy2d4sPdZI", "vat": 51}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
