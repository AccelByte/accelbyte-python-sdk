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

Example: '{"data": [{"id": "vXlXiHPRuXLDeKDZ", "rewards": [{"currency": {"currencyCode": "ckpL8KqG7S8nXjXo", "namespace": "ZZ4JhrTUP9TRUCpJ"}, "item": {"itemId": "tn780Hx2WqfzPDoZ", "itemSku": "4zBMT5pIY4677I5r", "itemType": "gqy1QnobxHn8JqQC"}, "quantity": 75, "type": "ITEM"}, {"currency": {"currencyCode": "QH2FifJQ61ZNIyib", "namespace": "oGsUhF36bK8qtZpe"}, "item": {"itemId": "JH31Nm4ChbkVqtIK", "itemSku": "3IoCQ2n3jFwAINfJ", "itemType": "uTvfYLlSZfYZqfi4"}, "quantity": 44, "type": "CURRENCY"}, {"currency": {"currencyCode": "kG66Fk55weZV7ChA", "namespace": "5qkL4SdIkQRxAue7"}, "item": {"itemId": "IdsgwHwEYoDHCA8E", "itemSku": "dajrr9ng5Y6mRh83", "itemType": "FxNrSi8NeIl0dBxp"}, "quantity": 55, "type": "CURRENCY"}]}, {"id": "AcsYc6ldbTIParuK", "rewards": [{"currency": {"currencyCode": "fhMPe2CanVnST3ho", "namespace": "fJxHXXTlZZZULA9s"}, "item": {"itemId": "RzP9YVdozxPMOZaj", "itemSku": "6yjYOpDoyPbuV2Ah", "itemType": "IiZdg8ZHmApkfYrz"}, "quantity": 93, "type": "CURRENCY"}, {"currency": {"currencyCode": "pt8BFLMJTO0zM3Dg", "namespace": "URun3ZdtrM9Xzslg"}, "item": {"itemId": "GU8e4AiS3v85MSIX", "itemSku": "JzmIRfniRjybDpYo", "itemType": "fGOWCZmQDwGBZ8e9"}, "quantity": 98, "type": "ITEM"}, {"currency": {"currencyCode": "OgiPKUhWdU7uMRX6", "namespace": "oAe3CGAAqe8yafyE"}, "item": {"itemId": "UtSVVGUWYulLOU2B", "itemSku": "r8eHkbLJNhBV1JaX", "itemType": "t7WL9Vxtf9cRdG6e"}, "quantity": 61, "type": "ITEM"}]}, {"id": "eni4DfJ2FnqAXYoq", "rewards": [{"currency": {"currencyCode": "3w7thtwvyhMQAUSH", "namespace": "7sYmgjfcnqTfmjaq"}, "item": {"itemId": "PyhKkd833vC9ccUo", "itemSku": "UeoLHpQSfFdSBX3O", "itemType": "z5fyy8dsPxBAiO3E"}, "quantity": 33, "type": "ITEM"}, {"currency": {"currencyCode": "fagl0wvQ5TzLS33P", "namespace": "xVzjqmF9rVW4oGCQ"}, "item": {"itemId": "WfMnutLLtTT2DfZ9", "itemSku": "6L9fNnCgjZ2ec1ZO", "itemType": "CHnW9EUZH6oqDBzu"}, "quantity": 90, "type": "ITEM"}, {"currency": {"currencyCode": "s8LS0jGD5RCSnDTb", "namespace": "3sbImodAbExvm1Nk"}, "item": {"itemId": "dC09zMFZNcP7eGnr", "itemSku": "SQlmhqTDYqqRQXCR", "itemType": "aT4s6MuR5beLXNCo"}, "quantity": 17, "type": "ITEM"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
