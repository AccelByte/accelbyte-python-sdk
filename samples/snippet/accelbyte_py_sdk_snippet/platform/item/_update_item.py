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

Example: '{"appId": "gIa3dym239VV9mSn", "appType": "GAME", "baseAppId": "CTeMQKR541TR2XJD", "boothName": "FOFnpk0smKR7H895", "categoryPath": "bwm8FfbjgmPT9BgR", "clazz": "nus3vD0n0ej7DtTu", "displayOrder": 22, "entitlementType": "DURABLE", "ext": {"7m1B5dfYNzlosQUj": {}, "PMUGztsgBRo1YSRc": {}, "R516Wv5tJLxybk3M": {}}, "features": ["HfgDAwbvaRA6bMSp", "EoG6ud8IgyOn8KVi", "dZIFGHvJe5MjraHY"], "flexible": false, "images": [{"as": "VzMCuvR0U6E5UAj0", "caption": "pQvnUxXdaSzvBFW8", "height": 74, "imageUrl": "D5JaFzP2HHOj0shx", "smallImageUrl": "x55tTlGnKeWEnV6y", "width": 86}, {"as": "qlpRpXYMSeF0Lxk1", "caption": "LggO2e4x3laxQxqe", "height": 31, "imageUrl": "0MhIV0zE9G4A4B6T", "smallImageUrl": "bLANvdOCrLFDF4aS", "width": 84}, {"as": "yqHSWA4Ag68ydLXk", "caption": "X266UufdJY3SgxlW", "height": 22, "imageUrl": "mkYsVGpMzN5IRUBX", "smallImageUrl": "XZ8bia7WpcA9W8Ch", "width": 97}], "inventoryConfig": {"customAttributes": {"YkpxXUyLvo2cC6a5": {}, "GIAHUcQzpHeSXLXK": {}, "6XRUrGW9hAIvkgoO": {}}, "serverCustomAttributes": {"OGMTfHw9uW8gx66n": {}, "O9aZRr1xjtNPLRoW": {}, "QTOIBQiwxf0ZmBGw": {}}, "slotUsed": 72}, "itemIds": ["DmqwHisQTqH36CtO", "prCbVNBG7fDn2zN4", "YFV34Gf0gYE88Z49"], "itemQty": {"jUbNmKv6vsD4fq0v": 15, "zQckTWZbO2yoy47Y": 32, "vqbDglwtVMcQCkyn": 20}, "itemType": "CODE", "listable": false, "localizations": {"o6r2gatPLr5Zwu7k": {"description": "rhr5l8Rfr0FIxAZK", "localExt": {"S2kaWRMY8afSBtgn": {}, "OIADv59tHzJ70xFO": {}, "TAztzXMDxm7xFkG9": {}}, "longDescription": "IKGuBP33P8t0wjzC", "title": "gAmkqgXGOptDagkw"}, "338qc22SPuo0ewAP": {"description": "lmcb9SvbKD4yrct0", "localExt": {"DKKR1vyrn2RZpz53": {}, "2ACGAMy6TTghhVr5": {}, "yttJqrWnlShGhIbC": {}}, "longDescription": "wCe3KqwYujNvyGOf", "title": "ZUwdmcjgqy8oNvEz"}, "KVL3yFmnuAD7T0Rz": {"description": "4yU1wj02C5Pm24hB", "localExt": {"KU3xY12u2r7QYXZP": {}, "6yD036UZKE9M7bXt": {}, "55VM3Ktkm8m2Wrvu": {}}, "longDescription": "U2eZFB12XKVrHAva", "title": "N7ZlDDCXdoDksn5g"}}, "lootBoxConfig": {"rewardCount": 25, "rewards": [{"lootBoxItems": [{"count": 54, "duration": 78, "endDate": "1994-01-28T00:00:00Z", "itemId": "BLPXNaYT085WoFfr", "itemSku": "HBA7C45HBRI4ysn2", "itemType": "FkOGLoJt6ozktIsX"}, {"count": 31, "duration": 89, "endDate": "1973-08-24T00:00:00Z", "itemId": "d5THie4XCeuqBSF8", "itemSku": "RXY5UNBPovI6UBOB", "itemType": "KVEPYaWYrRAvYCJi"}, {"count": 70, "duration": 44, "endDate": "1987-04-22T00:00:00Z", "itemId": "g2u3vxmGRyYHPRgf", "itemSku": "H5FBe5uwI6cDJB01", "itemType": "m72vBnMeGfwcnWwD"}], "name": "Nmg82UvQmdvnm1lt", "odds": 0.5584604913354091, "type": "PROBABILITY_GROUP", "weight": 26}, {"lootBoxItems": [{"count": 87, "duration": 56, "endDate": "1976-08-26T00:00:00Z", "itemId": "fNLV1Bi50WJYX1A5", "itemSku": "ViqWIzolixCowFzy", "itemType": "6jG0YK5jYHmPv7ii"}, {"count": 86, "duration": 74, "endDate": "1991-10-12T00:00:00Z", "itemId": "tKFxYLEBuDnS9PjD", "itemSku": "178UmmrNZlw7UvY7", "itemType": "K9hjsnAbY3yf2oc5"}, {"count": 81, "duration": 29, "endDate": "1974-08-22T00:00:00Z", "itemId": "cbqJP1tlEwmFy75v", "itemSku": "Yxtj0Q2e5x6Vd0En", "itemType": "NF2a2YaN5FA5IULo"}], "name": "AgpFpVMCGrZWUYhF", "odds": 0.7685002812632507, "type": "PROBABILITY_GROUP", "weight": 59}, {"lootBoxItems": [{"count": 6, "duration": 14, "endDate": "1985-12-29T00:00:00Z", "itemId": "JIZbVwWHRnZMjpSx", "itemSku": "zp0jXbcz9gcIglTm", "itemType": "2Rme7TaEOW2SR2uS"}, {"count": 4, "duration": 82, "endDate": "1983-02-14T00:00:00Z", "itemId": "1iPQwzRoITbA99kn", "itemSku": "EoBxxBhyUJjxBS6U", "itemType": "cIlxLHtCaUIxhodU"}, {"count": 50, "duration": 5, "endDate": "1992-10-17T00:00:00Z", "itemId": "v9wV9C23D1EqEbqn", "itemSku": "5VKpRT3GzgK809WN", "itemType": "PLSVRuZYEb6Z5PJv"}], "name": "Xpu6DaW9KA5MkTfA", "odds": 0.9728365453669228, "type": "REWARD_GROUP", "weight": 65}], "rollFunction": "DEFAULT"}, "maxCount": 26, "maxCountPerUser": 55, "name": "Tpy0XXAHEkLLsc75", "optionBoxConfig": {"boxItems": [{"count": 92, "duration": 21, "endDate": "1989-09-22T00:00:00Z", "itemId": "3BAVZgmwxrAjUIcq", "itemSku": "AFxZQK6L6LzWcuSQ", "itemType": "RNjx9d0aQNcJbKPK"}, {"count": 97, "duration": 73, "endDate": "1982-11-05T00:00:00Z", "itemId": "4X2FC6uWu3yUwLdp", "itemSku": "iuoVq4F4a2jvwPQP", "itemType": "edXmOfdcqgUvZIRF"}, {"count": 26, "duration": 35, "endDate": "1977-09-10T00:00:00Z", "itemId": "hEwf2lv6tXPlAKss", "itemSku": "7kbEfs4tXgcO4wcz", "itemType": "y7PJl11trKkqqhtI"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 24, "fixedTrialCycles": 78, "graceDays": 78}, "regionData": {"GjPKYgYDqONcqyw5": [{"currencyCode": "jaTuSt6uOApWgr7a", "currencyNamespace": "dEnmZ3MfjDid2Hmp", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1981-09-01T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1985-09-04T00:00:00Z", "expireAt": "1997-10-27T00:00:00Z", "price": 86, "purchaseAt": "1990-11-29T00:00:00Z", "trialPrice": 70}, {"currencyCode": "gStann11IWz1jIP9", "currencyNamespace": "QM8NQ1LcAb82jW7t", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1983-05-25T00:00:00Z", "discountPercentage": 24, "discountPurchaseAt": "1985-08-12T00:00:00Z", "expireAt": "1990-04-16T00:00:00Z", "price": 77, "purchaseAt": "1983-02-14T00:00:00Z", "trialPrice": 36}, {"currencyCode": "zDufixFfgonpvHSs", "currencyNamespace": "feXUtamog5keMF5s", "currencyType": "REAL", "discountAmount": 83, "discountExpireAt": "1990-02-06T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1990-07-14T00:00:00Z", "expireAt": "1974-09-13T00:00:00Z", "price": 87, "purchaseAt": "1993-05-14T00:00:00Z", "trialPrice": 29}], "mFlzxd7ZrCrS0a5z": [{"currencyCode": "RNxTwhiPsJQQCCm7", "currencyNamespace": "qeSrdlUWdxEC3EWh", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1990-07-22T00:00:00Z", "discountPercentage": 70, "discountPurchaseAt": "1993-05-09T00:00:00Z", "expireAt": "1977-03-10T00:00:00Z", "price": 27, "purchaseAt": "1988-08-06T00:00:00Z", "trialPrice": 24}, {"currencyCode": "2wJF1PHL269tTUpx", "currencyNamespace": "Y0J7mLS4Ycjz564X", "currencyType": "VIRTUAL", "discountAmount": 0, "discountExpireAt": "1985-08-14T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1998-06-11T00:00:00Z", "expireAt": "1981-02-27T00:00:00Z", "price": 47, "purchaseAt": "1977-12-24T00:00:00Z", "trialPrice": 19}, {"currencyCode": "A9YIvXPumLZhI1EJ", "currencyNamespace": "Dq91jA620YLSrQ9I", "currencyType": "VIRTUAL", "discountAmount": 94, "discountExpireAt": "1982-12-29T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1973-04-15T00:00:00Z", "expireAt": "1982-11-09T00:00:00Z", "price": 60, "purchaseAt": "1984-12-19T00:00:00Z", "trialPrice": 81}], "lyklZtCcRxAXVFlB": [{"currencyCode": "6Yr9yJx0Wlz2Ijx9", "currencyNamespace": "gjEelm1EeDL24tFm", "currencyType": "VIRTUAL", "discountAmount": 26, "discountExpireAt": "1980-03-04T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1985-08-06T00:00:00Z", "expireAt": "1999-04-09T00:00:00Z", "price": 99, "purchaseAt": "1981-08-02T00:00:00Z", "trialPrice": 87}, {"currencyCode": "v3o2XmMuZm1z7MOc", "currencyNamespace": "fItDe8anjOs6aQtD", "currencyType": "VIRTUAL", "discountAmount": 89, "discountExpireAt": "1979-02-13T00:00:00Z", "discountPercentage": 48, "discountPurchaseAt": "1982-02-27T00:00:00Z", "expireAt": "1976-06-03T00:00:00Z", "price": 79, "purchaseAt": "1996-09-01T00:00:00Z", "trialPrice": 93}, {"currencyCode": "a5Uofa9Z5qpWYFUd", "currencyNamespace": "omxUMgBiuDn49UtW", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1985-09-18T00:00:00Z", "discountPercentage": 13, "discountPurchaseAt": "1996-08-09T00:00:00Z", "expireAt": "1976-08-01T00:00:00Z", "price": 15, "purchaseAt": "1996-08-07T00:00:00Z", "trialPrice": 65}]}, "saleConfig": {"currencyCode": "KvtH6TP6DcYev5NE", "price": 47}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "wy9mb5XTsg41P1uY", "stackable": true, "status": "INACTIVE", "tags": ["5EbKou3L9A0SlePG", "5tOAf46xXOUxJWg1", "LTP385TGNBTPpcMJ"], "targetCurrencyCode": "0iYszZtJNPpoe3ud", "targetNamespace": "s8wVypdRlQMeVrjN", "thumbnailUrl": "AYZRhUjY3lrkvP8R", "useCount": 45}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
