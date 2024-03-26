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

Example: '{"additionalData": {"cardSummary": "9qlHUyplSWqgwyHm"}, "authorisedTime": "1979-01-08T00:00:00Z", "chargebackReversedTime": "1993-04-30T00:00:00Z", "chargebackTime": "1977-06-30T00:00:00Z", "chargedTime": "1996-08-12T00:00:00Z", "createdTime": "1981-11-06T00:00:00Z", "currency": {"currencyCode": "fKTFpa22mh6KNJZ1", "currencySymbol": "BVt3WaHzONzg3c14", "currencyType": "VIRTUAL", "decimals": 18, "namespace": "DfETX4TMETkEMfeZ"}, "customParameters": {"y294RYl3IBVQdcyW": {}, "I8h3vU68Npo9nV8W": {}, "oZsGecNRELtAFVdN": {}}, "extOrderNo": "Dw0FMSMbELflyOiW", "extTxId": "Ev1yB1nQHllD7dgV", "extUserId": "elJ39OhkYF6Jb1Vy", "issuedAt": "1980-09-25T00:00:00Z", "metadata": {"uZod7aYXfV6q89ss": "c99K8NxH5lPhAPTV", "p8idrkpElhMo7hn5": "S5QqeE8LYBFtqZn5", "mVbDhFDGU6xFwmTm": "K9kyIZ4Xpa9dOdzn"}, "namespace": "mu1bxr4Gapz5SmzR", "nonceStr": "uXuyJogu0uBJov8e", "paymentMethod": "Eu11ej3qOy2Hu8UP", "paymentMethodFee": 44, "paymentOrderNo": "zC3IBM1xov24c0Cd", "paymentProvider": "WALLET", "paymentProviderFee": 75, "paymentStationUrl": "yg34y2hY60DbPeaL", "price": 32, "refundedTime": "1996-04-27T00:00:00Z", "salesTax": 82, "sandbox": false, "sku": "oXCpGOvMZH6PSY1j", "status": "DELETED", "statusReason": "wh0hvA0OBsO4nNaI", "subscriptionId": "AyxpmxVcjIWVK4hm", "subtotalPrice": 60, "targetNamespace": "EPM0AswVzmtsDFTt", "targetUserId": "EZ1OxCxB4obVJUnJ", "tax": 73, "totalPrice": 39, "totalTax": 5, "txEndTime": "1995-08-07T00:00:00Z", "type": "mHmuUxjUkogUOCOw", "userId": "dz1UTKPccYJWjxX3", "vat": 58}'
"""

result, error = process_user_subscription_notification(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
