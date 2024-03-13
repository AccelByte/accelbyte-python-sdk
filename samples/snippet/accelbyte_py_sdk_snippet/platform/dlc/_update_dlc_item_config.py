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

Example: '{"data": [{"id": "a6oIL3nPAScntkBM", "rewards": [{"currency": {"currencyCode": "tvgkEmTcv5bPBZtE", "namespace": "f0fIqjTikocYkoDZ"}, "item": {"itemId": "zK4sC0UlerXDdza1", "itemSku": "1JOz36yr99YWvFSK", "itemType": "LFzsW48BQcFXAvDW"}, "quantity": 49, "type": "ITEM"}, {"currency": {"currencyCode": "amIU3u3PPqxt3Iwn", "namespace": "oktHyPN4r9ZpKjTl"}, "item": {"itemId": "cdwG1orwlgdeSN4V", "itemSku": "z0eIfr1GtqVV9GjI", "itemType": "VTr2RChWlCkZRpUr"}, "quantity": 92, "type": "ITEM"}, {"currency": {"currencyCode": "GYNql99phbqBqHJX", "namespace": "HMLgxsO6Wc4Bsr3f"}, "item": {"itemId": "SVCAyejkPKmn78ng", "itemSku": "BXpPSA1567oZJVAx", "itemType": "Ucoh3TFr1JRpc4Kr"}, "quantity": 48, "type": "CURRENCY"}]}, {"id": "I70aTahveqTOTrC9", "rewards": [{"currency": {"currencyCode": "8hD9ihueGGgLwfV2", "namespace": "pPLkH2Vk99XlKr9R"}, "item": {"itemId": "zR7EEm8Kf0Y5fA6b", "itemSku": "kj7csFZZLzDp69Zd", "itemType": "U6fpdTPCUdgUg3sc"}, "quantity": 56, "type": "ITEM"}, {"currency": {"currencyCode": "w5CEMNBv6Rp78owr", "namespace": "CdVRodkNTAtdfiJs"}, "item": {"itemId": "9lZ3lJiHxqYoxrK5", "itemSku": "bJuG8PrhcoctOXtW", "itemType": "WHX3aJ1sFg0OWaYy"}, "quantity": 97, "type": "CURRENCY"}, {"currency": {"currencyCode": "2FtExV1BR9Deubzg", "namespace": "cPNtWTuFNnqjgqTb"}, "item": {"itemId": "9mKFmgnekz7Kuqmu", "itemSku": "5HG9UFb9cePbjdtJ", "itemType": "nXatnjqiMtTJFHay"}, "quantity": 60, "type": "CURRENCY"}]}, {"id": "HQa6h4euRLLfSVhM", "rewards": [{"currency": {"currencyCode": "Xj1NpCcQmZckBooh", "namespace": "ksFvKWxZEisFDPHM"}, "item": {"itemId": "EQBzDzkay8cHgiv0", "itemSku": "nQn1oXeocRl282I5", "itemType": "w6Uie8Cv16sfJvmA"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "bdlpmbhgOl9krfo9", "namespace": "D4hjT7iyYkj0Yo2n"}, "item": {"itemId": "Z5CXtI1AONzeV6EQ", "itemSku": "YCvVEO7qFmQumEqB", "itemType": "9sT0lAF3jTn7NunH"}, "quantity": 29, "type": "ITEM"}, {"currency": {"currencyCode": "WpHitoCeAqVr3AV7", "namespace": "pySjj6MuRxCgjinl"}, "item": {"itemId": "4NjaW29eB6e6g81u", "itemSku": "DJ5mNUeY5bFNlQq8", "itemType": "03qtCVetFIDCfuBv"}, "quantity": 40, "type": "ITEM"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
