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

Example: '{"appId": "tPJttEwR5aDRw5Z2", "appType": "DLC", "baseAppId": "QsLsV13f2LxR7nON", "boothName": "JbP9xkCmcIPcGNpR", "categoryPath": "wWHEiyRHNOCBRxug", "clazz": "T0fHOFAhapvjukLr", "displayOrder": 70, "entitlementType": "CONSUMABLE", "ext": {"U5cb6j6od0Ni68Q1": {}, "LKztFIHv09SMQfo5": {}, "8KyBYnQLHVfB7xPS": {}}, "features": ["CnKvB6C18rQsv8X8", "h4wIsOHS0JgEwpQW", "dZ9138OXemTDkfWf"], "flexible": true, "images": [{"as": "kkg8uLMW6bw1kOAx", "caption": "GBXILokK6DmIcW4S", "height": 52, "imageUrl": "MZwPrJ8tJa3cIpHE", "smallImageUrl": "57X4XocTxrEhb6Az", "width": 100}, {"as": "0MBYM5SH24fsPitL", "caption": "vUDkKmb567gGgMAG", "height": 52, "imageUrl": "gIWHfceaBWdt4wDV", "smallImageUrl": "OtmesREQ4RCQSCba", "width": 9}, {"as": "t5Ym5wZ0Brw5Aay3", "caption": "jXKRCGJ7E66XS8ZF", "height": 41, "imageUrl": "vclOtgDK3ctUBIZO", "smallImageUrl": "I4Oo8WztjX8J1nUR", "width": 78}], "inventoryConfig": {"customAttributes": {"Y2MZLSIQV27voIth": {}, "aW59YMJ5d2LqnRW9": {}, "zh44JcoQgvIkMbQx": {}}, "serverCustomAttributes": {"IaEV7zhYatZVmszC": {}, "nx42rEnEW8AprIdb": {}, "LMb9q6Vwh57BpiwT": {}}, "slotUsed": 7}, "itemIds": ["oTJhQoOEmFHTKwSd", "kuogDXsuomJPDmz1", "3M9RxnIAQBhhODZy"], "itemQty": {"4OQlm11XQKb7q6Yo": 59, "MpYUK6643EKrXvtP": 65, "8fQ0VdabSCBRj3XT": 46}, "itemType": "CODE", "listable": false, "localizations": {"ZtIctxIADGnTvrCE": {"description": "rzXYAijC0aM9ZANI", "localExt": {"XKcfcpN1qUNxz9ah": {}, "iB4Ngft6lJk4anxe": {}, "Lwdep79gDO7RBbL5": {}}, "longDescription": "iwVyEAEEe1ZhqjQK", "title": "l7Qm4PuATFo4Ce8N"}, "6SgvLDwBsCr1wh2t": {"description": "AdHHCEg8F1nUatAI", "localExt": {"GzjiRfXmB8QFkmtp": {}, "fCuOXzUu7DvaqXG0": {}, "1OS5NQ8FT3Fl72Dp": {}}, "longDescription": "GiCVDEyG8lBq9anw", "title": "mLCevrPPjOCgGUHo"}, "GAeaXhyJ8Qx3yoMu": {"description": "pIWWb07Ud1zvMPPo", "localExt": {"AYbYfFsNHdvLJVGZ": {}, "j6Iy3Sc1oO5oW8xE": {}, "M86Xrfs6luXLDvFr": {}}, "longDescription": "7DhFjZRmMpONJKKU", "title": "eHed62NaseXUAkrG"}}, "lootBoxConfig": {"rewardCount": 39, "rewards": [{"lootBoxItems": [{"count": 70, "duration": 3, "endDate": "1971-04-29T00:00:00Z", "itemId": "r3N1oqayfm2zgzg8", "itemSku": "48JG6WPt8CBl9u8A", "itemType": "nK2SGJiVUGc9E57S"}, {"count": 77, "duration": 17, "endDate": "1981-03-04T00:00:00Z", "itemId": "1EotyOKdSB8cDYnS", "itemSku": "YqaKA7SYB6U0Kav7", "itemType": "jQxFJqqEkQ6vOTOS"}, {"count": 34, "duration": 37, "endDate": "1971-01-30T00:00:00Z", "itemId": "eTDPdc3XoNTwo89N", "itemSku": "OlqIJ0Deijesed9y", "itemType": "1EEeaB0IfzXidCYF"}], "name": "rxYrhU70wvnOyCAQ", "odds": 0.48788199862445714, "type": "REWARD", "weight": 67}, {"lootBoxItems": [{"count": 60, "duration": 82, "endDate": "1982-11-24T00:00:00Z", "itemId": "My0OEUD2ECvldo54", "itemSku": "EUoSIJPUQ4fpgsBg", "itemType": "088JgstqKklVRxEd"}, {"count": 94, "duration": 19, "endDate": "1997-01-14T00:00:00Z", "itemId": "NQEugmNExGl6ikwX", "itemSku": "iAT3WGUVifIHpe4g", "itemType": "YV21DpBMakPFcNXW"}, {"count": 58, "duration": 27, "endDate": "1995-11-19T00:00:00Z", "itemId": "Yp8Nhzthb83LHIn3", "itemSku": "kkcLVp29Au67auYN", "itemType": "fJWlT4TYJ4WN8vk9"}], "name": "4y2ERdT4xwigiaXW", "odds": 0.4469060792932358, "type": "PROBABILITY_GROUP", "weight": 71}, {"lootBoxItems": [{"count": 87, "duration": 23, "endDate": "1989-04-22T00:00:00Z", "itemId": "z8f24NNptqXGHpIY", "itemSku": "Uzkxy7qp26zVOsGD", "itemType": "VjxMs8elZjIGFXSI"}, {"count": 5, "duration": 52, "endDate": "1992-07-26T00:00:00Z", "itemId": "mT30s16aVdfbYeFr", "itemSku": "w9mWxiFyYAc3mWzM", "itemType": "bUQQ45ugAiHGSPnK"}, {"count": 63, "duration": 53, "endDate": "1985-12-04T00:00:00Z", "itemId": "HwDkIFEAsoyy3WtR", "itemSku": "Q5bAlblKhrAJBnvf", "itemType": "hmKGm8hfN0KNe99r"}], "name": "Zs5yfoPTFSG1NBlo", "odds": 0.6064428977211935, "type": "REWARD_GROUP", "weight": 86}], "rollFunction": "CUSTOM"}, "maxCount": 62, "maxCountPerUser": 13, "name": "dyUvzFPNZ8nSqCF8", "optionBoxConfig": {"boxItems": [{"count": 44, "duration": 19, "endDate": "1987-01-27T00:00:00Z", "itemId": "5y0y29GV3OWj4TKA", "itemSku": "tA7PpW9kB4Sh7VGO", "itemType": "WXjLQjRBPZGxq4zU"}, {"count": 2, "duration": 67, "endDate": "1975-12-20T00:00:00Z", "itemId": "ICcznZ64qyfURFK6", "itemSku": "Qa7Qk0DV8pIEzUVY", "itemType": "bTrNnC6YqQEmXVbQ"}, {"count": 0, "duration": 99, "endDate": "1987-07-07T00:00:00Z", "itemId": "hdOT5PAUs917IDe1", "itemSku": "ZoeNG6ir1oRVYhkg", "itemType": "4rt46FRTCxvbEFcZ"}]}, "purchasable": true, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 37, "fixedTrialCycles": 12, "graceDays": 17}, "regionData": {"pvsLOFvxQXKMdxOK": [{"currencyCode": "1QKQrg4pSfJrBkx2", "currencyNamespace": "LlOX8XhrwgyVPMNT", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1983-02-04T00:00:00Z", "discountPercentage": 29, "discountPurchaseAt": "1973-04-21T00:00:00Z", "expireAt": "1997-05-16T00:00:00Z", "price": 59, "purchaseAt": "1993-09-13T00:00:00Z", "trialPrice": 18}, {"currencyCode": "k5UlOY7kiqeVk9ZR", "currencyNamespace": "PqQvOsRqoNToTlJz", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1983-02-02T00:00:00Z", "discountPercentage": 74, "discountPurchaseAt": "1988-10-22T00:00:00Z", "expireAt": "1978-01-07T00:00:00Z", "price": 39, "purchaseAt": "1997-09-14T00:00:00Z", "trialPrice": 76}, {"currencyCode": "bT3IHH3nMDk4PiW5", "currencyNamespace": "42RpNaSlFGitOE0N", "currencyType": "REAL", "discountAmount": 29, "discountExpireAt": "1982-12-24T00:00:00Z", "discountPercentage": 51, "discountPurchaseAt": "1971-01-31T00:00:00Z", "expireAt": "1984-11-20T00:00:00Z", "price": 60, "purchaseAt": "1978-07-30T00:00:00Z", "trialPrice": 51}], "JntfTVN471eQMEyy": [{"currencyCode": "koO2VAN0Nh1upmvF", "currencyNamespace": "fkLbfON2kgMASJ3L", "currencyType": "REAL", "discountAmount": 70, "discountExpireAt": "1982-01-02T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1978-04-18T00:00:00Z", "expireAt": "1998-02-08T00:00:00Z", "price": 80, "purchaseAt": "1996-11-03T00:00:00Z", "trialPrice": 6}, {"currencyCode": "5Uo1kGq5AosXVxqD", "currencyNamespace": "c2n8fVEw5h997Blr", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1997-08-15T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1985-12-01T00:00:00Z", "expireAt": "1992-12-13T00:00:00Z", "price": 18, "purchaseAt": "1994-04-10T00:00:00Z", "trialPrice": 75}, {"currencyCode": "QwpFqh6mLfRe7rVk", "currencyNamespace": "q4Ds396IXzgcPI8X", "currencyType": "VIRTUAL", "discountAmount": 74, "discountExpireAt": "1985-03-23T00:00:00Z", "discountPercentage": 78, "discountPurchaseAt": "1980-08-26T00:00:00Z", "expireAt": "1986-10-05T00:00:00Z", "price": 24, "purchaseAt": "1982-09-07T00:00:00Z", "trialPrice": 21}], "rskksBMPUojCBKBB": [{"currencyCode": "YLlUaCBJqO6JA5Pi", "currencyNamespace": "Chf5pvPuSUEqqJPb", "currencyType": "VIRTUAL", "discountAmount": 19, "discountExpireAt": "1999-05-12T00:00:00Z", "discountPercentage": 32, "discountPurchaseAt": "1983-08-14T00:00:00Z", "expireAt": "1983-09-02T00:00:00Z", "price": 50, "purchaseAt": "1976-01-09T00:00:00Z", "trialPrice": 43}, {"currencyCode": "fLnM9wckhDBjsP0Y", "currencyNamespace": "WLLF8LjIp8DCQoms", "currencyType": "REAL", "discountAmount": 51, "discountExpireAt": "1987-01-06T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1997-01-17T00:00:00Z", "expireAt": "1992-09-03T00:00:00Z", "price": 56, "purchaseAt": "1984-01-26T00:00:00Z", "trialPrice": 63}, {"currencyCode": "i71Ycf0OcKg3camz", "currencyNamespace": "2jqFzAj99RxFdpvd", "currencyType": "REAL", "discountAmount": 11, "discountExpireAt": "1975-09-22T00:00:00Z", "discountPercentage": 28, "discountPurchaseAt": "1989-01-22T00:00:00Z", "expireAt": "1996-03-26T00:00:00Z", "price": 44, "purchaseAt": "1995-12-06T00:00:00Z", "trialPrice": 9}]}, "saleConfig": {"currencyCode": "R7NG4UXgjgRIbn8f", "price": 44}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "owbnTdx5VxfPi7Kd", "stackable": false, "status": "ACTIVE", "tags": ["MwtseZkhG4FQjj0w", "8OzkgzC4IKENEf9Y", "SuNulrrJu1sprnFP"], "targetCurrencyCode": "61q89ao0s5yqWhCA", "targetNamespace": "cLk28LSjk32A3iIx", "thumbnailUrl": "wFTunxSdOgGI37AD", "useCount": 92}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
