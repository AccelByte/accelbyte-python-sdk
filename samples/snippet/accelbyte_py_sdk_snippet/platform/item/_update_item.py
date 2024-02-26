import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo
from accelbyte_py_sdk.api.platform.models import ItemUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemUpdate
app_id: str
app_type: str
base_app_id: str
booth_name: str
category_path: str
clazz: str
display_order: int
entitlement_type: str
ext: Dict[str, Any]
features: List[str]
flexible: bool
images: List[Image]
Definition: List[Image]
    as_: str
    caption: str
    height: int
    image_url: str
    small_image_url: str
    width: int
inventory_config: InventoryConfig
Definition: InventoryConfig
    custom_attributes: Dict[str, Any]
    server_custom_attributes: Dict[str, Any]
    slot_used: int
item_ids: List[str]
item_qty: Dict[str, int]
item_type: str
listable: bool
localizations: Dict[str, Localization]
loot_box_config: LootBoxConfig
Definition: LootBoxConfig
    reward_count: int
    rewards: List[LootBoxReward]
    Definition: List[LootBoxReward]
        loot_box_items: List[BoxItem]
        Definition: List[BoxItem]
            count: int
            duration: int
            end_date: str
            item_id: str
            item_sku: str
            item_type: str
        name: str
        odds: float
        type_: str
        weight: int
    roll_function: str
max_count: int
max_count_per_user: int
name: str
option_box_config: OptionBoxConfig
Definition: OptionBoxConfig
    box_items: List[BoxItem]
    Definition: List[BoxItem]
        count: int
        duration: int
        end_date: str
        item_id: str
        item_sku: str
        item_type: str
purchasable: bool
recurring: Recurring
Definition: Recurring
    cycle: str
    fixed_free_days: int
    fixed_trial_cycles: int
    grace_days: int
region_data: Dict[str, List[RegionDataItemDTO]]
sale_config: SaleConfig
Definition: SaleConfig
    currency_code: str
    price: int
season_type: str
section_exclusive: bool
sellable: bool
sku: str
stackable: bool
status: str
tags: List[str]
target_currency_code: str
target_namespace: str
thumbnail_url: str
use_count: int

Example: '{"appId": "fEAutXcYvtoLrVpX", "appType": "SOFTWARE", "baseAppId": "7P9sWDi0hyAuWY4J", "boothName": "ctzBo7rX7HtPkOMm", "categoryPath": "jJ5WAJqF7S1bfalW", "clazz": "aM3SR63zv5hwMd9V", "displayOrder": 3, "entitlementType": "DURABLE", "ext": {"Djak5JpMLqq9RRdS": {}, "425on1BbefZc6Qeu": {}, "Mq9h6WE9KxOZg87P": {}}, "features": ["cV8pqaGZtJcPlUOz", "pTakwAEfa9fZmGOb", "GAAP6trHkDsVpDOv"], "flexible": true, "images": [{"as": "i1btpboyAdqlj7Om", "caption": "eCcaTfQYcr6p5gyV", "height": 82, "imageUrl": "KSd7PjzstjQ9YGld", "smallImageUrl": "oL52SG2sb0zGIk0W", "width": 18}, {"as": "xLitghXRNBC3NoH8", "caption": "1GZ0JXfO6rF0UywJ", "height": 74, "imageUrl": "VCnM7MnvMAGyaDA6", "smallImageUrl": "zXS3ktmqTt3PpRuD", "width": 53}, {"as": "UobmjMJWETKezGUI", "caption": "xXX4ZUh1X38OPWch", "height": 67, "imageUrl": "SEcuZvqyRVwPFsLO", "smallImageUrl": "Psz5ZaI87PvET5g3", "width": 40}], "inventoryConfig": {"customAttributes": {"Sx3jzx6SoTQCBU9l": {}, "hbPC6hsI9BYY802l": {}, "l3WL0bgRfDQT5kM6": {}}, "serverCustomAttributes": {"sMamvLN0tNZE39Tx": {}, "dKEKIxv4hzk83Hmt": {}, "93GMDuspHUAVfLQv": {}}, "slotUsed": 30}, "itemIds": ["C9xP0PByyMTgmKNV", "O6jbu3Dvzsl9frK4", "NpOIi5EQBwXzScAO"], "itemQty": {"Jke0qlucmG3gZtYC": 89, "TyoWdLD45eZepxLO": 66, "J0NZfw1lojvRrryW": 94}, "itemType": "LOOTBOX", "listable": false, "localizations": {"xJfHGoktanpFwNoj": {"description": "uHb6ZhvZ2Xos4RGR", "localExt": {"IpWHACl9LklJYLy6": {}, "rnQxLELJ3y89Tq3x": {}, "u9gcuhGZRDjehJyN": {}}, "longDescription": "12VxeEKdd1YE3zMF", "title": "hyOsfZ78imS2NnP4"}, "4rgZEn16NTD0R3mQ": {"description": "QS7EGZTW0LjKatil", "localExt": {"EOyXNxz4PcTGGYdf": {}, "gsDYfYBM3JDuqRTA": {}, "0MkqWIaqjs9ko1jw": {}}, "longDescription": "nxPTmypNDoT8fDjb", "title": "RTetHeoigWuKBm6o"}, "Tf7uG37n7byDFAQt": {"description": "jrKtsHKeXs1WYoHM", "localExt": {"mYngVxrW3O1C6krE": {}, "ZsXMS7m8le8lYLsV": {}, "0gI8O8cpAWit2dN6": {}}, "longDescription": "UwQLSI4miY2ETTG3", "title": "5tB3KlTyLdR1IMBH"}}, "lootBoxConfig": {"rewardCount": 30, "rewards": [{"lootBoxItems": [{"count": 86, "duration": 80, "endDate": "1992-12-01T00:00:00Z", "itemId": "h4ZnGcDA7IUVsphc", "itemSku": "C3uLlXCImH7iXzjt", "itemType": "QB0GcvrFD4PuWRdE"}, {"count": 22, "duration": 21, "endDate": "1995-01-17T00:00:00Z", "itemId": "ZcIaK993rI5ympNU", "itemSku": "gXViHdavfgM5lF7k", "itemType": "3GietPNDJCbNmuDH"}, {"count": 94, "duration": 11, "endDate": "1985-02-16T00:00:00Z", "itemId": "tbBwT0YMw8GJfw24", "itemSku": "zEZVluSGKuEPHru7", "itemType": "J8RbMWA1Ng7AURmP"}], "name": "QigiUXuAlm36mQLG", "odds": 0.5201850250679522, "type": "PROBABILITY_GROUP", "weight": 7}, {"lootBoxItems": [{"count": 80, "duration": 94, "endDate": "1981-12-26T00:00:00Z", "itemId": "W9FaLQ4kcT6XlLi6", "itemSku": "2vSCafslcWGqvIRW", "itemType": "atfKK8t28Wbwt4QR"}, {"count": 39, "duration": 100, "endDate": "1982-03-14T00:00:00Z", "itemId": "UpQPZLEDAholwaNB", "itemSku": "xjiZtAiWLTZEGH4k", "itemType": "f1hgdbrGmkaZjl9U"}, {"count": 28, "duration": 84, "endDate": "1979-05-20T00:00:00Z", "itemId": "MKrbE3CkRzskNwqU", "itemSku": "M0kozpUK2sBAaX3Z", "itemType": "meyG34B5k5B6D0Gn"}], "name": "K5CEpFMa9n94kLTe", "odds": 0.6277386182314962, "type": "REWARD_GROUP", "weight": 85}, {"lootBoxItems": [{"count": 51, "duration": 56, "endDate": "1996-04-19T00:00:00Z", "itemId": "095TrmoEsnBYUiqP", "itemSku": "KwlhNYAf6WIxf81N", "itemType": "O0KZGQonU5Xbtb48"}, {"count": 89, "duration": 7, "endDate": "1996-03-11T00:00:00Z", "itemId": "3SHbfBDNf9LoV0TK", "itemSku": "tv2H7vvExqXWZCXA", "itemType": "aaG0MU8iTKBgje3k"}, {"count": 62, "duration": 30, "endDate": "1998-11-05T00:00:00Z", "itemId": "wK1IuWYzKm4d0u1E", "itemSku": "k2fU6Vm2dWJWBQiF", "itemType": "WIjjXEIIui0ETXV6"}], "name": "3a0qceV51UIAL63j", "odds": 0.12390715996870638, "type": "REWARD", "weight": 75}], "rollFunction": "CUSTOM"}, "maxCount": 62, "maxCountPerUser": 23, "name": "eBDQKVwi56V3sKOH", "optionBoxConfig": {"boxItems": [{"count": 26, "duration": 42, "endDate": "1974-10-25T00:00:00Z", "itemId": "xJRxmaPkIrBt4Eyk", "itemSku": "oDbXOppEBD19bMao", "itemType": "uaTIBtZfF0WumYWB"}, {"count": 92, "duration": 24, "endDate": "1985-07-25T00:00:00Z", "itemId": "bXTErBUAJHOgI0zL", "itemSku": "kGGUU0nrZ2BJC6ol", "itemType": "adclu6Aob8XhFpni"}, {"count": 85, "duration": 41, "endDate": "1993-03-27T00:00:00Z", "itemId": "tEQucfnvduzFvQIv", "itemSku": "1GZSGzp628EWuLnQ", "itemType": "f6ocrGuknpdKbTDd"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 99, "fixedTrialCycles": 20, "graceDays": 30}, "regionData": {"LCPApyxrOi4aMY3Q": [{"currencyCode": "Z5yyqmVlmQ4wW5fW", "currencyNamespace": "ZtmR3JF9N2FpfjGu", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1991-10-18T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1983-01-20T00:00:00Z", "expireAt": "1987-07-09T00:00:00Z", "price": 28, "purchaseAt": "1986-06-21T00:00:00Z", "trialPrice": 19}, {"currencyCode": "MzqNfuyTjab4C7z5", "currencyNamespace": "JcqKvkTXoWWKeJr4", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1996-12-31T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1996-11-05T00:00:00Z", "expireAt": "1973-03-10T00:00:00Z", "price": 6, "purchaseAt": "1989-08-14T00:00:00Z", "trialPrice": 56}, {"currencyCode": "H2RhUrtq8DRimRF6", "currencyNamespace": "ldD7eTOPk8SEGLry", "currencyType": "REAL", "discountAmount": 43, "discountExpireAt": "1979-06-02T00:00:00Z", "discountPercentage": 21, "discountPurchaseAt": "1984-09-03T00:00:00Z", "expireAt": "1996-07-21T00:00:00Z", "price": 69, "purchaseAt": "1977-05-04T00:00:00Z", "trialPrice": 88}], "OuEEWAtxVBILOBq8": [{"currencyCode": "bZ3oeEPL7OFk7VwT", "currencyNamespace": "j19316bZ4XajGeSJ", "currencyType": "REAL", "discountAmount": 73, "discountExpireAt": "1989-04-25T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1988-07-07T00:00:00Z", "expireAt": "1971-01-03T00:00:00Z", "price": 68, "purchaseAt": "1973-10-04T00:00:00Z", "trialPrice": 80}, {"currencyCode": "xqPXDXlupHE1uq23", "currencyNamespace": "efl4NiH7lpPlYwsA", "currencyType": "VIRTUAL", "discountAmount": 58, "discountExpireAt": "1971-01-29T00:00:00Z", "discountPercentage": 42, "discountPurchaseAt": "1987-08-31T00:00:00Z", "expireAt": "1978-06-25T00:00:00Z", "price": 88, "purchaseAt": "1983-04-21T00:00:00Z", "trialPrice": 65}, {"currencyCode": "OvsFYLAfzDN2dlzk", "currencyNamespace": "N0FTDkKAAd6I0zHo", "currencyType": "VIRTUAL", "discountAmount": 49, "discountExpireAt": "1995-02-25T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1983-05-08T00:00:00Z", "expireAt": "1973-01-20T00:00:00Z", "price": 41, "purchaseAt": "1992-03-14T00:00:00Z", "trialPrice": 80}], "nND1QY8rQxJidrdk": [{"currencyCode": "UUAcN51SvyIPU9jw", "currencyNamespace": "DeKu3ZgD1fJz9Zsy", "currencyType": "REAL", "discountAmount": 58, "discountExpireAt": "1989-04-16T00:00:00Z", "discountPercentage": 47, "discountPurchaseAt": "1997-08-04T00:00:00Z", "expireAt": "1982-01-18T00:00:00Z", "price": 66, "purchaseAt": "1988-10-31T00:00:00Z", "trialPrice": 3}, {"currencyCode": "3LCzE4XClokOiwH1", "currencyNamespace": "nB67fc4MJ6v2TEN1", "currencyType": "VIRTUAL", "discountAmount": 63, "discountExpireAt": "1977-05-25T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1982-11-28T00:00:00Z", "expireAt": "1972-12-12T00:00:00Z", "price": 26, "purchaseAt": "1974-06-24T00:00:00Z", "trialPrice": 86}, {"currencyCode": "zoxwNvqv3qfNyzac", "currencyNamespace": "URERyiHsPjGqXcDS", "currencyType": "VIRTUAL", "discountAmount": 25, "discountExpireAt": "1989-01-17T00:00:00Z", "discountPercentage": 89, "discountPurchaseAt": "1979-09-14T00:00:00Z", "expireAt": "1972-02-16T00:00:00Z", "price": 43, "purchaseAt": "1994-12-05T00:00:00Z", "trialPrice": 9}]}, "saleConfig": {"currencyCode": "UobziLvSDJCQ7CXD", "price": 85}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "VtDAxmjzTNJaX7VM", "stackable": true, "status": "INACTIVE", "tags": ["2T0YlfjkG8g7BbpF", "UDIOKUVXqtdLezo6", "zizyB49ACMMlCVxW"], "targetCurrencyCode": "6MgV7jYe3Wl6TP6F", "targetNamespace": "cAcVF8mhDi6C6m1a", "thumbnailUrl": "Ap8EtEIe8PsJfkNq", "useCount": 41}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
