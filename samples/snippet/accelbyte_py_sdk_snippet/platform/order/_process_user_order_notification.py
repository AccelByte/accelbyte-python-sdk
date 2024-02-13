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

Example: '{"additionalData": {"cardSummary": "Gw6cDcqelA10K7nS"}, "authorisedTime": "1981-01-28T00:00:00Z", "chargebackReversedTime": "1990-03-24T00:00:00Z", "chargebackTime": "1982-10-22T00:00:00Z", "chargedTime": "1987-06-25T00:00:00Z", "createdTime": "1987-09-25T00:00:00Z", "currency": {"currencyCode": "ni2WYmwvYmF7EoUZ", "currencySymbol": "0OqNVgzPw7CMvWpS", "currencyType": "REAL", "decimals": 17, "namespace": "TFPc3GnlTtmfoIz4"}, "customParameters": {"lG1QmAF2pN6vCqbx": {}, "YFn74L7H13svfuCe": {}, "5tz5RSy2AdYyalRl": {}}, "extOrderNo": "CpawiPkc8MeRBuX6", "extTxId": "bP68rsaj7qkoS92V", "extUserId": "qxXsCFGAVq6AVDxq", "issuedAt": "1991-01-22T00:00:00Z", "metadata": {"L1ZVhf2FEobLwWdY": "8eJ5qW2qBEXm2aDF", "u5kQVx14jDswnJzz": "GUgd5D5LiZ8Aod1z", "wIJ8qtOvqcy5WIlI": "AX2t5f4oDkXcOJw5"}, "namespace": "ydHCFNfZ4uUNFsQM", "nonceStr": "Kqv567fO2LBTZyxs", "paymentMethod": "OCGz8n6A82xLF5TQ", "paymentMethodFee": 97, "paymentOrderNo": "rStAGkhnsH5Bd16c", "paymentProvider": "XSOLLA", "paymentProviderFee": 81, "paymentStationUrl": "BctQXbcBM78H7JRY", "price": 58, "refundedTime": "1985-09-14T00:00:00Z", "salesTax": 40, "sandbox": true, "sku": "28iX73XMGQSObZX0", "status": "NOTIFICATION_OF_CHARGEBACK", "statusReason": "FTH0wuEFADr2Yk45", "subscriptionId": "TWFZcxp3Ws87qFq0", "subtotalPrice": 86, "targetNamespace": "qcvKzDq4aPWIaIlM", "targetUserId": "axKLBYQpBJ5nsHPb", "tax": 36, "totalPrice": 95, "totalTax": 6, "txEndTime": "1976-05-26T00:00:00Z", "type": "1bQ9ozRhVCbRNCoG", "userId": "isPwgUtymv6EPrpD", "vat": 100}'
"""

result, error = process_user_order_notification(
    order_no=order_no,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
