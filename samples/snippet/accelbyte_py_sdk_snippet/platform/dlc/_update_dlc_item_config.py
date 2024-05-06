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

Example: '{"data": [{"id": "Rg216Uc4eTXWUpjq", "rewards": [{"currency": {"currencyCode": "TJlHj3fprFQYmBa5", "namespace": "nTyVCKRyAHd2Vpz7"}, "item": {"itemId": "q4ZY3KTh8pQSQ9pc", "itemSku": "Yd2sJLhAK9KRTvNW", "itemType": "nJqhEq2aiCAttn1w"}, "quantity": 90, "type": "CURRENCY"}, {"currency": {"currencyCode": "QBiZCGUuUpfr1KzT", "namespace": "soXNajXmvXltt7aJ"}, "item": {"itemId": "vgxOm9uf71vtLehf", "itemSku": "DwHKCGu1BJ2RlUGT", "itemType": "CwUKpoVgpvr1StlC"}, "quantity": 27, "type": "ITEM"}, {"currency": {"currencyCode": "hbH7SBf5jntxv4EW", "namespace": "HfMiPKhMe3lzY60X"}, "item": {"itemId": "nAmUWb4G7o0HMCs1", "itemSku": "0dYc7PUtt5WQRmLP", "itemType": "iQ6attamKJQU1jhI"}, "quantity": 16, "type": "ITEM"}]}, {"id": "lhiI1POPGYiaN0qR", "rewards": [{"currency": {"currencyCode": "2LoFK3ToGO1UuZoz", "namespace": "0nJNa2qga4uWV3cF"}, "item": {"itemId": "GSqwU2mF8r5TA4jK", "itemSku": "ORQVSWfuwepU5y8N", "itemType": "X1HTIBqlWx0Mx1ok"}, "quantity": 60, "type": "CURRENCY"}, {"currency": {"currencyCode": "u4qIGXFBo5nMTYTJ", "namespace": "X2Am16cWhBTOvC9X"}, "item": {"itemId": "qf6sSYnMBjpepsMr", "itemSku": "PztBPrA0ginIQzZ9", "itemType": "MUt95w7BmvcvhwyQ"}, "quantity": 98, "type": "ITEM"}, {"currency": {"currencyCode": "jtX6cGkcj2bozZq1", "namespace": "rNq6HImKGLpNKose"}, "item": {"itemId": "IYIgiOPhKkxMjHAe", "itemSku": "SGpMHydCWSgmYzwa", "itemType": "6ltdT8Yrxy5tIUei"}, "quantity": 7, "type": "ITEM"}]}, {"id": "8vXhGw2tou4fjPwJ", "rewards": [{"currency": {"currencyCode": "Uz2TRn44qMmGN40h", "namespace": "R4PuLTvSH5l1sKxJ"}, "item": {"itemId": "eBwo22XYQiTAW99x", "itemSku": "ekHzTirhdY8o5gNN", "itemType": "sf0Mk8ldgjLoIZ1K"}, "quantity": 40, "type": "CURRENCY"}, {"currency": {"currencyCode": "REhDP5OkIaoDeWOT", "namespace": "pqiAdvrVbZBzkDZw"}, "item": {"itemId": "eT1S5zitkK6KVi3o", "itemSku": "7VQcJiXH5lACZ0Zg", "itemType": "1qYUrHXqTjyg1pi8"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "ArrU9caf9cIWtQU9", "namespace": "CTidMLOMqcaqsNdK"}, "item": {"itemId": "c2hqTR7PuajHcm8C", "itemSku": "rqRwxdhpyvjYVPm7", "itemType": "SUOEI4ZtLJJX9z04"}, "quantity": 53, "type": "CURRENCY"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
