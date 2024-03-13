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

Example: '{"additionalData": {"cardSummary": "7kgf4XAPz8HmdMIC"}, "authorisedTime": "1994-10-12T00:00:00Z", "chargebackReversedTime": "1981-04-11T00:00:00Z", "chargebackTime": "1992-08-07T00:00:00Z", "chargedTime": "1980-01-08T00:00:00Z", "createdTime": "1971-12-11T00:00:00Z", "currency": {"currencyCode": "YqnkTTXvlLjVUvBz", "currencySymbol": "tyFvYvWvexzUldOv", "currencyType": "REAL", "decimals": 42, "namespace": "AyNXfDfUg0kHbZx9"}, "customParameters": {"q1VOK8Y3FFMEQDeE": {}, "UcokWpwhhJksz02j": {}, "MoqKMQJ7HZqGHT09": {}}, "extOrderNo": "FJ5ExbDsR7G9klWP", "extTxId": "fUaCXgY1tosmbIU4", "extUserId": "kti3LYFEOTWbZKHr", "issuedAt": "1989-07-23T00:00:00Z", "metadata": {"yMwRPE8gNS4LNp1A": "WndmhsASVDouGSzS", "ozeZVp9uByYdmKj1": "OuoquyiMPYVxahq4", "jNB7hLKajvWIpYlC": "GmSqofn2fx1bJB7L"}, "namespace": "6B2MfE0METMHYV7A", "nonceStr": "ODB3sUqhLBiyb4p9", "paymentMethod": "CnjIYKCPgJbtarmI", "paymentMethodFee": 71, "paymentOrderNo": "wMfph1UfrAGEQsh7", "paymentProvider": "PAYPAL", "paymentProviderFee": 79, "paymentStationUrl": "NeRLDBYtGyJyVWkC", "price": 19, "refundedTime": "1986-07-10T00:00:00Z", "salesTax": 23, "sandbox": true, "sku": "0USNZiLPY2w3GS1J", "status": "AUTHORISE_FAILED", "statusReason": "2LMX9lLlofbKJGVf", "subscriptionId": "RF3sfkF0dBPdcOWk", "subtotalPrice": 9, "targetNamespace": "73ZrkWmIgsN0BGhF", "targetUserId": "0sku659npZMVcBrn", "tax": 44, "totalPrice": 96, "totalTax": 10, "txEndTime": "1974-04-21T00:00:00Z", "type": "0CkZrkPcr0ZJa6RD", "userId": "Syqn9iPBcyUnzwCw", "vat": 41}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
