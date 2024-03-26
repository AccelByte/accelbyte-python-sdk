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

Example: '{"additionalData": {"cardSummary": "qQzMjbG0DwKxsoy7"}, "authorisedTime": "1972-02-22T00:00:00Z", "chargebackReversedTime": "1977-09-08T00:00:00Z", "chargebackTime": "1999-05-25T00:00:00Z", "chargedTime": "1988-03-26T00:00:00Z", "createdTime": "1980-03-02T00:00:00Z", "currency": {"currencyCode": "RQht3UIhdxIrdkwz", "currencySymbol": "0t0N6F9gMhuwQIek", "currencyType": "VIRTUAL", "decimals": 94, "namespace": "MoxQ3qgq75bHPfzi"}, "customParameters": {"TMO2mxwta7lqjrVg": {}, "BF0FchCAbAd1yiBt": {}, "RsAGJykwOAFeLsYt": {}}, "extOrderNo": "RA3UEdTyU8msRUX4", "extTxId": "ihaSZvtcHWBPfA5Q", "extUserId": "YHBpqvvvE5DDzzI4", "issuedAt": "1986-12-05T00:00:00Z", "metadata": {"A3O5R7lcSqrHEA0v": "XI3veDxhk47KDzBp", "7FmvmuORkun59xOu": "BwZL5ltS859oNDaq", "s61diacUilD2BCrx": "Dw2ZMeKWAj3KQh80"}, "namespace": "9R23VQwokdLQf66K", "nonceStr": "3LZseBHsCOxhjxw1", "paymentMethod": "R6njf6vnmh5TgPww", "paymentMethodFee": 9, "paymentOrderNo": "AGkvRxaAy0cKyDKZ", "paymentProvider": "WALLET", "paymentProviderFee": 86, "paymentStationUrl": "EEJA0tT4tcH3M2iY", "price": 80, "refundedTime": "1983-11-14T00:00:00Z", "salesTax": 39, "sandbox": false, "sku": "LRpEErKBxWXCjmx4", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "9pbxXZDR4IxAuJPi", "subscriptionId": "tIsk49B2mdqa3UG5", "subtotalPrice": 77, "targetNamespace": "z5hHQudn6tWAsK7z", "targetUserId": "WQbEPcjoh7JtUhb3", "tax": 96, "totalPrice": 58, "totalTax": 74, "txEndTime": "1992-12-02T00:00:00Z", "type": "H1XdRG3AjlJHF8DO", "userId": "ZsuCVJQbSANZNa9k", "vat": 43}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
