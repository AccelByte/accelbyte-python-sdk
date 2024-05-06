import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo
from accelbyte_py_sdk.api.platform.models import ItemCreate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ItemCreate
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

Example: '{"appId": "GFwtsQNWQgamZ9Sw", "appType": "DLC", "baseAppId": "N5AoNKSY0ZAQAIw8", "boothName": "GwJvlOZnOPDbOjRN", "categoryPath": "ZIZl6mNNH2PavTVo", "clazz": "MDtqREBQGmu1lkT4", "displayOrder": 94, "entitlementType": "DURABLE", "ext": {"zJGX7JpLTr7M6bRX": {}, "EbM0MWfhTie4Q0tB": {}, "N8jbxUgVugDe06bu": {}}, "features": ["Eg5gX0RYxYDBxxOy", "OvAYN3k4oPt5U8th", "5qut7DFbapGcU2ZW"], "flexible": true, "images": [{"as": "5NcKr13Wya23u5Py", "caption": "LUECBLno2MjW4ovT", "height": 50, "imageUrl": "zOiZz90rzrQO51XK", "smallImageUrl": "Sn2pB4RZF6QVCoDM", "width": 45}, {"as": "9flGJ9xcGnBXhO4X", "caption": "fioUMlVptw7GZhvA", "height": 40, "imageUrl": "bHqbhpFa9wFnAhMG", "smallImageUrl": "FUjbIWOarnSZtCiL", "width": 59}, {"as": "onReNEzRhlA2n0XV", "caption": "K9EcLA51J1xz7cIt", "height": 42, "imageUrl": "RHtq65y12daa6Wpc", "smallImageUrl": "YP6BgVHtO50zNHvQ", "width": 8}], "inventoryConfig": {"customAttributes": {"u0GsqveF3B5wRbdL": {}, "iJBzTAFJfHqAYbY0": {}, "IiO2rgD5x79XNcTj": {}}, "serverCustomAttributes": {"7IqohHcDYpmqxx6g": {}, "KYQuQzCQNEW4JWW6": {}, "alyly9hZXKApBgXA": {}}, "slotUsed": 1}, "itemIds": ["ky81CMNlivkJFwH3", "Bs417fJALLHH5fTX", "cpJjGc5FaXp5RpHT"], "itemQty": {"vmUkCUXm4NcHVaH7": 78, "wQBhyVG8uiMkvYvy": 97, "4dcAH1XB2eFgzmpO": 58}, "itemType": "MEDIA", "listable": true, "localizations": {"z3MA21Qwf8xiB4Mx": {"description": "EnHu2Ncovpepj5x4", "localExt": {"JVJkvNBNiEgNuwnQ": {}, "WFhZ9hwtRrE4L6bo": {}, "mIur4ubsngHyhqjd": {}}, "longDescription": "SFj4rSxDMjKHN9PA", "title": "847VQplnefHjl15T"}, "FaNpvTdWj1x2pQ7B": {"description": "3w54rUu3LBPRc8WO", "localExt": {"B7nHq95gDrCo2rnS": {}, "ULyKJp3cqDbrLAMl": {}, "zkTWyhZt4T01HV4m": {}}, "longDescription": "3vYVuZKq6KWkIAfe", "title": "2mZXNQYyAWxpmaCR"}, "Fb6YaYWi72QuaOds": {"description": "DQoaVam3TwuqBP3f", "localExt": {"r5QEnMC4jo3N3m8o": {}, "HheAzB9wUA8Tfl5I": {}, "CcZ6zMB2uyWP5O2h": {}}, "longDescription": "GcDRl0pW0acg9iCH", "title": "WbEdneF89viAVm2w"}}, "lootBoxConfig": {"rewardCount": 13, "rewards": [{"lootBoxItems": [{"count": 34, "duration": 75, "endDate": "1994-12-09T00:00:00Z", "itemId": "fUC1Odn8Ig4oh9x4", "itemSku": "Pr0FTVw0SScGyNnu", "itemType": "sJSDQDFgOUUHqc5S"}, {"count": 74, "duration": 47, "endDate": "1995-03-01T00:00:00Z", "itemId": "4WdeCiki5yTUfu2Y", "itemSku": "qwXKB9q0l7hi2hwS", "itemType": "LhOtxWEWqy9JkEI6"}, {"count": 29, "duration": 28, "endDate": "1987-08-10T00:00:00Z", "itemId": "7f39cTVz08zH44A7", "itemSku": "qDoGKHN6DbWyQ00K", "itemType": "NsvqnsyMLFhcmljl"}], "name": "VvFMH3TVwBo43PVb", "odds": 0.023094894184937598, "type": "PROBABILITY_GROUP", "weight": 84}, {"lootBoxItems": [{"count": 43, "duration": 11, "endDate": "1980-06-12T00:00:00Z", "itemId": "7DRX712JY4FQREMs", "itemSku": "54hnPbsdiT4C4reo", "itemType": "ZBM7P7VHjxy4pdc4"}, {"count": 20, "duration": 92, "endDate": "1975-01-31T00:00:00Z", "itemId": "PDtbsQiJY56PMv5k", "itemSku": "uUQFAC34WerBKPyz", "itemType": "p8citoXsmn0lV8iV"}, {"count": 2, "duration": 26, "endDate": "1975-04-10T00:00:00Z", "itemId": "ltRTYq7uvGnrX4Ln", "itemSku": "wcUOy4RSCWzAisa0", "itemType": "YdAbFavCFSJEBzQD"}], "name": "o8RQwrMOfpeJeSto", "odds": 0.9122786427695655, "type": "REWARD", "weight": 1}, {"lootBoxItems": [{"count": 17, "duration": 39, "endDate": "1990-05-18T00:00:00Z", "itemId": "IQGDziQSftpKu303", "itemSku": "WkWR8Jo8rcYYvt89", "itemType": "fofLs1Djlab7ohun"}, {"count": 4, "duration": 25, "endDate": "1992-07-27T00:00:00Z", "itemId": "bZ0QH5ySqXYhGwhY", "itemSku": "YakwDeE8yG2HX0Np", "itemType": "Vz8CiqyrAY0fkWdu"}, {"count": 80, "duration": 77, "endDate": "1991-05-18T00:00:00Z", "itemId": "mn55PXNAtENfbh8J", "itemSku": "flTrY27haUe3XQHI", "itemType": "JxxHHq8P5z5hvg0H"}], "name": "xJCSBOMWtZFP5Jyc", "odds": 0.9561468233937541, "type": "REWARD", "weight": 47}], "rollFunction": "DEFAULT"}, "maxCount": 37, "maxCountPerUser": 96, "name": "2aO1zo4gwEtsncnj", "optionBoxConfig": {"boxItems": [{"count": 70, "duration": 1, "endDate": "1998-08-07T00:00:00Z", "itemId": "DO5ximqxfF7Ifjji", "itemSku": "eSWDUqXYLGr0Z4E7", "itemType": "Q6uUOZcGLpheqIRH"}, {"count": 92, "duration": 44, "endDate": "1996-07-15T00:00:00Z", "itemId": "CgOTqjSzxmufezzJ", "itemSku": "L6HLqCnTL8E4SMG4", "itemType": "Jqi1bMKEiMHCq5Od"}, {"count": 77, "duration": 70, "endDate": "1996-04-18T00:00:00Z", "itemId": "UGIPIpZBYmU6gbGh", "itemSku": "A5oJB2na0jbL0gjK", "itemType": "8oA9APyzH87HxjzZ"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 60, "fixedTrialCycles": 19, "graceDays": 18}, "regionData": {"ntzwabpymOa52t85": [{"currencyCode": "kY2z6Rt0O506EeoS", "currencyNamespace": "BgKDXOV844X7UsPi", "currencyType": "REAL", "discountAmount": 62, "discountExpireAt": "1978-04-01T00:00:00Z", "discountPercentage": 26, "discountPurchaseAt": "1978-12-08T00:00:00Z", "expireAt": "1995-03-27T00:00:00Z", "price": 94, "purchaseAt": "1978-06-08T00:00:00Z", "trialPrice": 72}, {"currencyCode": "eOBrmwrqD4Vt469g", "currencyNamespace": "2tW4bPA2fikrly7K", "currencyType": "REAL", "discountAmount": 48, "discountExpireAt": "1979-09-02T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1984-07-03T00:00:00Z", "expireAt": "1986-06-07T00:00:00Z", "price": 12, "purchaseAt": "1978-04-15T00:00:00Z", "trialPrice": 16}, {"currencyCode": "wIdROF5k4GbKIQDZ", "currencyNamespace": "2ZGlfVbbYsw7K21b", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1981-01-16T00:00:00Z", "discountPercentage": 39, "discountPurchaseAt": "1979-11-02T00:00:00Z", "expireAt": "1982-04-15T00:00:00Z", "price": 62, "purchaseAt": "1992-01-19T00:00:00Z", "trialPrice": 33}], "goMW3oLc5QM1eVaw": [{"currencyCode": "lAjX8A51Tw4hL7bk", "currencyNamespace": "8bqesOMCQGqa1pFU", "currencyType": "VIRTUAL", "discountAmount": 37, "discountExpireAt": "1994-09-21T00:00:00Z", "discountPercentage": 40, "discountPurchaseAt": "1997-03-17T00:00:00Z", "expireAt": "1972-09-23T00:00:00Z", "price": 46, "purchaseAt": "1989-08-06T00:00:00Z", "trialPrice": 85}, {"currencyCode": "pxs6072zKdzAfEEI", "currencyNamespace": "4DffKL1gWfHNpAlz", "currencyType": "VIRTUAL", "discountAmount": 95, "discountExpireAt": "1976-12-17T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1977-10-15T00:00:00Z", "expireAt": "1980-11-30T00:00:00Z", "price": 57, "purchaseAt": "1979-05-28T00:00:00Z", "trialPrice": 6}, {"currencyCode": "57DQZulz5nb84AlE", "currencyNamespace": "i6oat12CqjupABmo", "currencyType": "VIRTUAL", "discountAmount": 61, "discountExpireAt": "1974-01-25T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1998-03-24T00:00:00Z", "expireAt": "1993-04-02T00:00:00Z", "price": 80, "purchaseAt": "1976-08-18T00:00:00Z", "trialPrice": 57}], "7VW6G3awLyOh29Pv": [{"currencyCode": "9Rhhc1oN9E25pMU3", "currencyNamespace": "daABO6Qt4JeM5wMm", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1975-09-09T00:00:00Z", "discountPercentage": 77, "discountPurchaseAt": "1996-03-30T00:00:00Z", "expireAt": "1975-11-18T00:00:00Z", "price": 38, "purchaseAt": "1976-11-24T00:00:00Z", "trialPrice": 9}, {"currencyCode": "vjL8WRRpuEAepU1r", "currencyNamespace": "F93to4jHrDHtlon0", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1971-07-10T00:00:00Z", "discountPercentage": 90, "discountPurchaseAt": "1977-03-17T00:00:00Z", "expireAt": "1995-04-19T00:00:00Z", "price": 14, "purchaseAt": "1978-01-18T00:00:00Z", "trialPrice": 7}, {"currencyCode": "ogR59jgt6g0bAcak", "currencyNamespace": "57v4ahzVUoFLtLjm", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1985-07-23T00:00:00Z", "discountPercentage": 44, "discountPurchaseAt": "1971-05-18T00:00:00Z", "expireAt": "1999-04-16T00:00:00Z", "price": 11, "purchaseAt": "1998-10-19T00:00:00Z", "trialPrice": 8}]}, "saleConfig": {"currencyCode": "FrZXZrrcMtSaBtfw", "price": 6}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "uE5mGA8Y4zusxtdY", "stackable": true, "status": "INACTIVE", "tags": ["oibiXmDlielwhTye", "SE9QLHaxRigNPAwj", "I8DepSPDJQxO5ox5"], "targetCurrencyCode": "FW5wM2xsTAeoqRPp", "targetNamespace": "BcpqXlaY7z3dwbqn", "thumbnailUrl": "E9w0QmhcPxiqHzFm", "useCount": 93}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
