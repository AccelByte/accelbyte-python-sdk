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

Example: '{"appId": "XYi05GQWoauZbZuS", "appType": "SOFTWARE", "baseAppId": "AwFaU5LQOp0HRfhh", "boothName": "v4cUsw9XD5vl7O9K", "categoryPath": "EIyZ8OotWDro7zup", "clazz": "bleLUGjEjCHPsr3B", "displayOrder": 61, "entitlementType": "DURABLE", "ext": {"iU3bWbEMDnOJrRjN": {}, "e8i9xSk3KzVjaTuA": {}, "q7j5TdVulyijagMS": {}}, "features": ["lXsXCTjnB0FPFjlC", "BbNCJGiddK2ufRsm", "yi87Dp7Jryl84qwG"], "flexible": false, "images": [{"as": "4vya8gXYhydNbrYK", "caption": "4d9C2qzE6GSD6TXB", "height": 91, "imageUrl": "nvRC2Ov2EtjHGkUR", "smallImageUrl": "0VPnijtTqHd7pg99", "width": 25}, {"as": "m4VVmgrwc6Wi2Ua5", "caption": "ZYIUCWIkWcAy74pi", "height": 79, "imageUrl": "4BNBBbgFbZwfpkks", "smallImageUrl": "933X4ekKetRoFLe9", "width": 76}, {"as": "MV1fQiFju53TuG6G", "caption": "ryjzeEqDDzTUPkz3", "height": 16, "imageUrl": "uAbTzWqhqTXeFOum", "smallImageUrl": "ngoSkZzUkyndfGBD", "width": 0}], "inventoryConfig": {"customAttributes": {"g1nrnH61LuuaKh1V": {}, "7VWO0A14RMYKrfZP": {}, "sbEkAbXRNpv4E6aP": {}}, "serverCustomAttributes": {"Mrqdr98EgkkDDEAm": {}, "DHOkCAoJZ6TG6ReU": {}, "2WgEJGveVxBxCZQW": {}}, "slotUsed": 29}, "itemIds": ["o1T0vFo1MCSJo3Kh", "BdG5U8vLM1q7AXAX", "Eg8nT8EFxsKhFvBM"], "itemQty": {"9CBJbU7DN7jsYgMP": 98, "zayWDkzHoi241wJZ": 57, "g91tCp4XalIcoJmp": 88}, "itemType": "LOOTBOX", "listable": true, "localizations": {"an5JugdvcDLsYNWx": {"description": "lpSeZEA2adQifYFS", "localExt": {"fe9g4H7NbapQlDbI": {}, "XfwQeQKkWvjwMWlx": {}, "dqFTI5pG3FUz4fLh": {}}, "longDescription": "bEklXGEoS0YgWB3j", "title": "7mG7bW5jAcmyOyG4"}, "6sCUZNcgH3RGoaaj": {"description": "HrEtlxy7mF024eW1", "localExt": {"lwnG6NGoJOIKDzlA": {}, "RgdtP2oM8Sf4OVVT": {}, "mUzXJHr8gEFhCvhQ": {}}, "longDescription": "09VCGQccLkZ9bq9b", "title": "HirW9OJshcLz0kTY"}, "zZ3AIJtVRnMx3VrE": {"description": "KOFQwqRvjeDcpKqm", "localExt": {"th6AZs7fzx9ItrtC": {}, "hDKZi5gBYGIrryuS": {}, "S33jLErZE4HA21Lf": {}}, "longDescription": "bQ222Dp29RhMm44f", "title": "2DmG4djNGkMCrAfU"}}, "lootBoxConfig": {"rewardCount": 43, "rewards": [{"lootBoxItems": [{"count": 70, "duration": 21, "endDate": "1979-12-07T00:00:00Z", "itemId": "2Py6DWNdPI2uSkhj", "itemSku": "rWpZM4lgE87vTaki", "itemType": "7zEEqJBje6C1ttI7"}, {"count": 60, "duration": 51, "endDate": "1985-10-23T00:00:00Z", "itemId": "tydEksnDOtaZ5fZi", "itemSku": "XPMNTaGUPGJKcIDq", "itemType": "SegwVEn2ztG4q1XC"}, {"count": 60, "duration": 26, "endDate": "1973-09-27T00:00:00Z", "itemId": "whNnwmHFoQB58vSt", "itemSku": "nsbyjTsm10LErXHx", "itemType": "bCZPnJrjcrPj8unZ"}], "name": "muW2aQjzkxxLMQtk", "odds": 0.3703718362016223, "type": "PROBABILITY_GROUP", "weight": 13}, {"lootBoxItems": [{"count": 21, "duration": 67, "endDate": "1999-04-11T00:00:00Z", "itemId": "gRlCWbqRGJUkPjLT", "itemSku": "0RRgzVCmoPz9PMn1", "itemType": "pE2HDzpGcildhR8v"}, {"count": 10, "duration": 35, "endDate": "1977-11-09T00:00:00Z", "itemId": "i7M7oeQc1AbKM60I", "itemSku": "MFTSEwP5rYuTzbSK", "itemType": "ibIcsWW82bPXGTOd"}, {"count": 6, "duration": 14, "endDate": "1986-12-22T00:00:00Z", "itemId": "0ENwkJFHwNZ7JLFW", "itemSku": "CxReOfo0PCAvCLjW", "itemType": "WZw6iU3sIIc2dGsL"}], "name": "2fIWkdlAgsGjUzU9", "odds": 0.7281509766482589, "type": "PROBABILITY_GROUP", "weight": 70}, {"lootBoxItems": [{"count": 58, "duration": 93, "endDate": "1993-08-01T00:00:00Z", "itemId": "20E5Vx1sr4DsDcSB", "itemSku": "TdJdwnNfqum8tTmp", "itemType": "iwimoCZTXVu6sSnU"}, {"count": 86, "duration": 76, "endDate": "1987-12-16T00:00:00Z", "itemId": "asgu6lAtOqQqgdzW", "itemSku": "eD3sLi0BKIy4FciF", "itemType": "WgyudraRbIVDuY6K"}, {"count": 56, "duration": 38, "endDate": "1991-04-28T00:00:00Z", "itemId": "ASdtIaERsZDrIlzB", "itemSku": "4crAOekx3XKE9AT5", "itemType": "FYrcL0L19Eh1iIod"}], "name": "MLHt7yjZjdmp2F3v", "odds": 0.15594711235492675, "type": "REWARD", "weight": 2}], "rollFunction": "CUSTOM"}, "maxCount": 6, "maxCountPerUser": 74, "name": "sojDbedk1SUfZMe8", "optionBoxConfig": {"boxItems": [{"count": 73, "duration": 35, "endDate": "1978-09-11T00:00:00Z", "itemId": "TyMordKtKtwTbUF2", "itemSku": "K5bM6Jlw9Z2CxgwI", "itemType": "Tq6nQ3zVdEudQ4xE"}, {"count": 15, "duration": 67, "endDate": "1978-12-10T00:00:00Z", "itemId": "0I3eiVlUZzc1wcYR", "itemSku": "Bcv3ob5D2XhVXShR", "itemType": "bmVhBgIlo26qVz9P"}, {"count": 59, "duration": 99, "endDate": "1997-07-16T00:00:00Z", "itemId": "BXTY2xEPwPWR2yrw", "itemSku": "onLka7wXaGI54RgA", "itemType": "ONTcXAROckMNFT3q"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 97, "fixedTrialCycles": 96, "graceDays": 11}, "regionData": {"n76rav2ZbSMEp9p2": [{"currencyCode": "uEGVnxZhQ6K5Y1hf", "currencyNamespace": "xUeREF0yh9Udwxu4", "currencyType": "REAL", "discountAmount": 13, "discountExpireAt": "1988-01-26T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1972-01-22T00:00:00Z", "expireAt": "1972-01-12T00:00:00Z", "price": 90, "purchaseAt": "1974-07-11T00:00:00Z", "trialPrice": 31}, {"currencyCode": "Io6JGEdAXnkpm19s", "currencyNamespace": "ULIhVqNUvxPYhrpZ", "currencyType": "REAL", "discountAmount": 68, "discountExpireAt": "1989-09-13T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1991-01-17T00:00:00Z", "expireAt": "1988-02-09T00:00:00Z", "price": 53, "purchaseAt": "1993-11-22T00:00:00Z", "trialPrice": 59}, {"currencyCode": "U3ffY6S8ZlutDGY9", "currencyNamespace": "PJVF7BwEnDgicpQI", "currencyType": "VIRTUAL", "discountAmount": 64, "discountExpireAt": "1990-12-13T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1998-04-05T00:00:00Z", "expireAt": "1997-01-24T00:00:00Z", "price": 15, "purchaseAt": "1988-07-27T00:00:00Z", "trialPrice": 69}], "E5A7453asI8EtcXp": [{"currencyCode": "IJQiAbGj9VIX2gvy", "currencyNamespace": "FJMHiQkwS5yB0tJ4", "currencyType": "REAL", "discountAmount": 35, "discountExpireAt": "1991-04-17T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1994-07-06T00:00:00Z", "expireAt": "1973-09-03T00:00:00Z", "price": 56, "purchaseAt": "1973-12-14T00:00:00Z", "trialPrice": 91}, {"currencyCode": "9BcdjhR6t2Qv28RK", "currencyNamespace": "LH5qMBpaM6kulAOI", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1974-08-18T00:00:00Z", "discountPercentage": 84, "discountPurchaseAt": "1987-04-20T00:00:00Z", "expireAt": "1995-01-12T00:00:00Z", "price": 74, "purchaseAt": "1983-03-05T00:00:00Z", "trialPrice": 68}, {"currencyCode": "TG659O6hknn9IcdR", "currencyNamespace": "0NTlXgANksztAhsK", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1977-12-26T00:00:00Z", "discountPercentage": 17, "discountPurchaseAt": "1998-03-04T00:00:00Z", "expireAt": "1991-08-24T00:00:00Z", "price": 59, "purchaseAt": "1998-08-21T00:00:00Z", "trialPrice": 31}], "jgAi8nNhiUX34UCW": [{"currencyCode": "fpLOXIcfT5jhJqP9", "currencyNamespace": "YMYZEEKaQF7XsfwR", "currencyType": "REAL", "discountAmount": 64, "discountExpireAt": "1980-02-24T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1979-07-27T00:00:00Z", "expireAt": "1973-09-25T00:00:00Z", "price": 15, "purchaseAt": "1990-12-23T00:00:00Z", "trialPrice": 75}, {"currencyCode": "ZeR9tL3dzI0fCgTF", "currencyNamespace": "f1hUg3EmCMcediy3", "currencyType": "REAL", "discountAmount": 100, "discountExpireAt": "1973-07-25T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1987-04-12T00:00:00Z", "expireAt": "1997-05-13T00:00:00Z", "price": 40, "purchaseAt": "1980-09-20T00:00:00Z", "trialPrice": 67}, {"currencyCode": "wK9mmYv1SjQBTGIV", "currencyNamespace": "9ZUFQ9zKpDrZ95Np", "currencyType": "REAL", "discountAmount": 67, "discountExpireAt": "1984-06-16T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1980-03-18T00:00:00Z", "expireAt": "1983-03-29T00:00:00Z", "price": 43, "purchaseAt": "1977-04-23T00:00:00Z", "trialPrice": 21}]}, "saleConfig": {"currencyCode": "XrB4BBBXP3RSoKXF", "price": 29}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "vjlIPk8q4eY3gXaF", "stackable": true, "status": "INACTIVE", "tags": ["yMGbwP79U986KsBO", "2KNOskkbMkyPibQC", "ZE8swQnKcWUU5JpL"], "targetCurrencyCode": "RM1FGyNweCUY19lj", "targetNamespace": "zzHdX1I8FItVRvpW", "thumbnailUrl": "Rv5SeraAdRPmi63s", "useCount": 48}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
