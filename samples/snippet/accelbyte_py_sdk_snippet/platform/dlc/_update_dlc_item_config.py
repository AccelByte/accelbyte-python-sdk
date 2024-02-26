import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_dlc_item_config
from accelbyte_py_sdk.api.platform.models import DLCItemConfigInfo
from accelbyte_py_sdk.api.platform.models import DLCItemConfigUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: DLCItemConfigUpdate
data: List[DLCItem]
Definition: List[DLCItem]
    id_: str
    rewards: List[PlatformReward]
    Definition: List[PlatformReward]
        currency: PlatformRewardCurrency
        Definition: PlatformRewardCurrency
            currency_code: str
            namespace: str
        item: PlatformRewardItem
        Definition: PlatformRewardItem
            item_id: str
            item_sku: str
            item_type: str
        quantity: int
        type_: str

Example: '{"data": [{"id": "P10r9qYRmAdIwnPV", "rewards": [{"currency": {"currencyCode": "wnni6GbiNUw7HjH4", "namespace": "9ZZyM3zY44edXIVZ"}, "item": {"itemId": "pyiwgfsFmqpOTomv", "itemSku": "g9AdV1W4OQea9y1O", "itemType": "LuMmtemWbKgCGUU8"}, "quantity": 52, "type": "ITEM"}, {"currency": {"currencyCode": "nKUSJIeADOKl8G2w", "namespace": "KjW8UbyhUT5Tnwke"}, "item": {"itemId": "OMCLzpP2mxxWFrzQ", "itemSku": "kxKDlTlaGADa1wpE", "itemType": "LcCfvCWHQpIbTx8U"}, "quantity": 71, "type": "ITEM"}, {"currency": {"currencyCode": "Y3CdU4JIiF5isqji", "namespace": "SXYT3S86TqZBYbZM"}, "item": {"itemId": "F0sCGkuf7yLOW7wr", "itemSku": "EAfrkjnO0sJNepHo", "itemType": "nzYQQaHQwsEN9E5m"}, "quantity": 61, "type": "ITEM"}]}, {"id": "eDw7CkOZtXDNWsmt", "rewards": [{"currency": {"currencyCode": "H2SOGbidt1BQ1kDt", "namespace": "QHIo9ex9JR8ZyNq9"}, "item": {"itemId": "jr4hf25oLXvMCaqW", "itemSku": "eQDQVV8MUitaOhRD", "itemType": "iGTSXqidNYW9LZWD"}, "quantity": 79, "type": "CURRENCY"}, {"currency": {"currencyCode": "nuhTQSdnaQVQehFL", "namespace": "XCUx5Lz9fuh11yl1"}, "item": {"itemId": "s3HePl5TQlFJVZPw", "itemSku": "eGD3kVxvF6XTVHvT", "itemType": "o0U2FWFydqGNF0zD"}, "quantity": 76, "type": "CURRENCY"}, {"currency": {"currencyCode": "8be4IvVrcgTSrt3c", "namespace": "sGJWEegeyEmJGYsm"}, "item": {"itemId": "steHL2CuHNoQxeN7", "itemSku": "C0sQFAZbJTztuDZA", "itemType": "09USiJAYktvHxMQ6"}, "quantity": 71, "type": "ITEM"}]}, {"id": "rQBco5s8kVI3vTyW", "rewards": [{"currency": {"currencyCode": "Gvhk98Q5p78KJpD4", "namespace": "r3UFKIBZd1Vx1FXm"}, "item": {"itemId": "81LfhcEJQB3MFS3B", "itemSku": "tPN3lqmEuhpD2hL1", "itemType": "WQBdlwrbeRuuXhao"}, "quantity": 91, "type": "ITEM"}, {"currency": {"currencyCode": "8rLIgjCCWPloeQfq", "namespace": "E1G4L19PDplheFHY"}, "item": {"itemId": "rZS00pHsYg5wGPlt", "itemSku": "oUL9cw7oB6vUOuaV", "itemType": "FlSsmiQY16WSDjda"}, "quantity": 26, "type": "ITEM"}, {"currency": {"currencyCode": "eYumMIdoolAc1ufp", "namespace": "76M5eyQ42pVMtmSf"}, "item": {"itemId": "1uj5Su5ZBqP0rl84", "itemSku": "VJrYocHfuZMLH6Rd", "itemType": "4vS5FFK9n7QLd6hy"}, "quantity": 77, "type": "ITEM"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
