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

Example: '{"data": [{"id": "YjnKrSQMbr7eV3LW", "rewards": [{"currency": {"currencyCode": "XsE7II8XAOrmpe7i", "namespace": "i0P12L9Txh8fyCUN"}, "item": {"itemId": "UNzmAepK0thubAmJ", "itemSku": "iZEfhYEXyra4ZhwE", "itemType": "Ikmn4IKB1l6vmJWS"}, "quantity": 0, "type": "ITEM"}, {"currency": {"currencyCode": "Y8c8c8FDY8fqZoe4", "namespace": "yiISFWt5nnJWVIZT"}, "item": {"itemId": "UCMrDB45X9eUNf8p", "itemSku": "SW1tG4K2s0jVTJOO", "itemType": "q1qp2rTCIP9AEPkw"}, "quantity": 15, "type": "ITEM"}, {"currency": {"currencyCode": "wySrWGybUR6myaar", "namespace": "eAMLOuImHuDdJuD7"}, "item": {"itemId": "IIUbNqvUKwAvDXFJ", "itemSku": "RWhef3Ba6r7ohdLZ", "itemType": "cpfbcy7pkZMfSh19"}, "quantity": 70, "type": "CURRENCY"}]}, {"id": "tn0tPZYaIeTUMOXj", "rewards": [{"currency": {"currencyCode": "c78130fzI0LOFz5E", "namespace": "ejWhnYH0dAPkoFDa"}, "item": {"itemId": "qUq3zzA9JomE824Z", "itemSku": "3InJlf7ZRcBd2Sh7", "itemType": "GT5P2UPfanei9nyC"}, "quantity": 19, "type": "ITEM"}, {"currency": {"currencyCode": "z4GdqzxDxrXhpqHw", "namespace": "s0Z5UF0QC3XimVLG"}, "item": {"itemId": "6IIgoN22YFKxhSCP", "itemSku": "nKTSf4H0cLkhA72g", "itemType": "7ETidfrxYpAIC0ih"}, "quantity": 10, "type": "CURRENCY"}, {"currency": {"currencyCode": "rDh3KNtHMhLW7iIW", "namespace": "mEygBqkuISVIOPoL"}, "item": {"itemId": "J08Eg7IU52CwSsV7", "itemSku": "S03iGkZQC8ADw0fI", "itemType": "1I1aH5VZ7CLIDOga"}, "quantity": 77, "type": "ITEM"}]}, {"id": "Luy3GKXq1shpwSHT", "rewards": [{"currency": {"currencyCode": "0y1uqLDswy03tz1y", "namespace": "nDHwy5UkUtHcbKQ0"}, "item": {"itemId": "uMdh0vb6EY7QIul7", "itemSku": "bmCBDjFLvBOS8EZW", "itemType": "22cP5q5038d5AJrP"}, "quantity": 65, "type": "CURRENCY"}, {"currency": {"currencyCode": "APAiAJdauqUk1G0R", "namespace": "5I5vJhfxBxC8cH8d"}, "item": {"itemId": "pEgnOXSJHorUr7VN", "itemSku": "rRs5fmEpUZXMPkBA", "itemType": "1JA5e66EThJYnhWa"}, "quantity": 59, "type": "ITEM"}, {"currency": {"currencyCode": "DSiSSIH54tPqzUX0", "namespace": "pIURerjG7cQAQ51O"}, "item": {"itemId": "S0hCJ57RsA7yQwww", "itemSku": "9ZVbvIPRFwZPoe9h", "itemType": "xNE6VefUXdCbDa42"}, "quantity": 60, "type": "ITEM"}]}]}'
"""

result, error = update_dlc_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
