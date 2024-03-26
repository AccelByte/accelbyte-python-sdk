import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import bulk_debit
from accelbyte_py_sdk.api.platform.models import BulkDebitRequest
from accelbyte_py_sdk.api.platform.models import BulkDebitResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: List[BulkDebitRequest]
currency_code: str
request: DebitByCurrencyCodeRequest
Definition: DebitByCurrencyCodeRequest
    allow_overdraft: bool
    amount: int
    balance_origin: str
    balance_source: str
    metadata: Dict[str, Any]
    reason: str
user_ids: List[str]

Example: '[{"currencyCode": "Vnleycoh4Cmzrx9W", "request": {"allowOverdraft": true, "amount": 23, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"N2aOelwHillkuNi5": {}, "Oi8NMLsSIvlMRzvA": {}, "dUmf9vaY75EWSBVY": {}}, "reason": "NrPrvDQLDHKbbVYX"}, "userIds": ["6wioFnW9b1WgczCM", "ah2pBWCpQozTZkaw", "vDUigz49apO7qMgU"]}, {"currencyCode": "tOkrdU6gmO2Ow02p", "request": {"allowOverdraft": true, "amount": 50, "balanceOrigin": "System", "balanceSource": "DLC_REVOCATION", "metadata": {"YsqLdNxVwNZrtRX3": {}, "Mdu6hJUZE0e2ukqL": {}, "fxGXdHTsApBuQC38": {}}, "reason": "IcOekXttT7BKs2KL"}, "userIds": ["PTSvQ1nx87g2lpCd", "0nuiu55Q8CMo5rW9", "FgofZSofVMDgFCBO"]}, {"currencyCode": "hmcSx6aKxsXfAf7b", "request": {"allowOverdraft": false, "amount": 48, "balanceOrigin": "Nintendo", "balanceSource": "DLC_REVOCATION", "metadata": {"4uQhoi9ms5HOKJft": {}, "UNqEPWBfsdpT4KGn": {}, "i1wLMpLfARdgyy4g": {}}, "reason": "rPswsFNS8woCdGsS"}, "userIds": ["3h57J704mrj1Of7S", "teO7CnSyMRbfVkLc", "j6lFLBTQQqxvbjmb"]}]'
"""

result, error = bulk_debit(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
