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

Example: '{"appId": "rPeUbrVwaTRrfnBV", "appType": "SOFTWARE", "baseAppId": "7QM2Rh954DuM21be", "boothName": "BXQuNibrPwN2ssjV", "categoryPath": "GRRoQAFT76zqyLIz", "clazz": "H2YVuX3gozVtoYmz", "displayOrder": 54, "entitlementType": "DURABLE", "ext": {"S8Lped3wGXy5i5aQ": {}, "vjDQU4ud46kLAwj5": {}, "CXt6Y4pDQmcDJatD": {}}, "features": ["Yr80Cn7ncDgxhDsP", "MPx2loSzL5lBleQw", "MKycRfRSnP2hgier"], "flexible": true, "images": [{"as": "scfqdrlAznPX8Y2e", "caption": "d3Ms2vwoxl41AvKP", "height": 79, "imageUrl": "etKK76blJM6p53Al", "smallImageUrl": "BKcji0DiDKgdDTkw", "width": 89}, {"as": "RhefChACMFKGNOex", "caption": "oO0WWRot3QbmwRTE", "height": 66, "imageUrl": "UkWYY1wQnpHCw2vc", "smallImageUrl": "RxokhRNjFZnisYzC", "width": 12}, {"as": "nLgj1uitMGxhq4y3", "caption": "xUXYyfGx6Bd8ziK8", "height": 19, "imageUrl": "MTgxOZeoy9BzU7fV", "smallImageUrl": "8p1FOOfSroeJzICN", "width": 63}], "inventoryConfig": {"customAttributes": {"TvGlCNP6pnzgmKY1": {}, "QQ47Cu3thpgmJ2G9": {}, "ok20LZwo9588X6j3": {}}, "serverCustomAttributes": {"WXy5HwWGcscj0ZlQ": {}, "awfUBTVYSHd000uH": {}, "9gherZppCOELgJBK": {}}, "slotUsed": 86}, "itemIds": ["2pY7z8VjLHOZZODC", "ABc4ifn0WM1l193E", "va1c0KIUeXCcszQt"], "itemQty": {"ccPgClIXpwXZVAUT": 31, "Zq2yunnRKCnieOuR": 6, "Xxzvq2CARW0anVSp": 89}, "itemType": "EXTENSION", "listable": false, "localizations": {"WCwGc4pEMZzT6G4x": {"description": "7P8gsCZYGSSfS1Kp", "localExt": {"jDdqFwZIrcz8pFXj": {}, "Svt7brxOD8EScZhZ": {}, "OdkfUly0tR18ZG1L": {}}, "longDescription": "hcR3wopR09K9lfor", "title": "R47KWpDfcm4R6xuw"}, "pOU3OVuVdY9lNVLk": {"description": "ao1tC2TUvwT2RWFK", "localExt": {"lROeNY86oMuFX6Mn": {}, "vDzL4eCvvK0lghEG": {}, "iUaVp9WxURx3qVwB": {}}, "longDescription": "4W0cJwykHwcStbtm", "title": "HSCAnGQT58k9xlDG"}, "j0QbTzga86SeV75s": {"description": "LeCAkJKRY53KkMA2", "localExt": {"5NQYoJ91YiTdAULw": {}, "ls5mDvIoWBvd1SDZ": {}, "3NG8Nf3Qu4Z1hQg6": {}}, "longDescription": "pR8JFmQWf3Xqe3fB", "title": "CEgZSFu5DUZA1EQ7"}}, "lootBoxConfig": {"rewardCount": 5, "rewards": [{"lootBoxItems": [{"count": 29, "duration": 72, "endDate": "1976-03-24T00:00:00Z", "itemId": "PFC0583B3Nykrl8H", "itemSku": "QqYO8CEnAJiRgfIi", "itemType": "RvRD5xIrdWQAwRpr"}, {"count": 88, "duration": 28, "endDate": "1972-02-14T00:00:00Z", "itemId": "n6fNh29XwoSJFZK6", "itemSku": "J8X8z4HJSDerEsSw", "itemType": "7FayEOHVgxGeDvFE"}, {"count": 60, "duration": 8, "endDate": "1974-09-27T00:00:00Z", "itemId": "tzEXihQBkbZ6xoqi", "itemSku": "u79LTlnUjMBPdDpJ", "itemType": "FXTaPtBaGxgxG6Vg"}], "name": "JXGEV6lyJD9CGegP", "odds": 0.4153812111530415, "type": "REWARD", "weight": 18}, {"lootBoxItems": [{"count": 94, "duration": 91, "endDate": "1980-11-09T00:00:00Z", "itemId": "sDAdVx3SCfO9p6ga", "itemSku": "5cQV8ccPZARfVTTz", "itemType": "hPby9om2LkVaH33P"}, {"count": 6, "duration": 88, "endDate": "1993-10-14T00:00:00Z", "itemId": "aCm04mCGTpAv6mGp", "itemSku": "Wi5x81ejhjVqc8cJ", "itemType": "ysHd81TW3r7WMqEf"}, {"count": 10, "duration": 44, "endDate": "1972-06-10T00:00:00Z", "itemId": "RS0Y3ejoxDmliXGd", "itemSku": "4gMg1gnl94TNtf6F", "itemType": "6xUjrOIdHSeTe5lX"}], "name": "DRLHpvaiWVQsDJlj", "odds": 0.6982619597686354, "type": "PROBABILITY_GROUP", "weight": 92}, {"lootBoxItems": [{"count": 95, "duration": 39, "endDate": "1987-01-09T00:00:00Z", "itemId": "uNGuVQxEnCR8pfcI", "itemSku": "oH28JUrV8VLWC6nD", "itemType": "mLV3cg3WCjXKqznb"}, {"count": 90, "duration": 42, "endDate": "1983-03-17T00:00:00Z", "itemId": "Y2Y2pMtegqAYESMZ", "itemSku": "gBoHyhHq7jHBS7cJ", "itemType": "KdSgT29hMZSetW2r"}, {"count": 88, "duration": 52, "endDate": "1996-12-23T00:00:00Z", "itemId": "xjwNii70d8X6lwTv", "itemSku": "LqPe0AJ8XPLsYNxG", "itemType": "oZgdSOkPbfAHPFRy"}], "name": "kKVpYqI0z5CKXKcl", "odds": 0.24035467089661133, "type": "REWARD_GROUP", "weight": 75}], "rollFunction": "CUSTOM"}, "maxCount": 75, "maxCountPerUser": 94, "name": "dsmVtOefymrJ8BL7", "optionBoxConfig": {"boxItems": [{"count": 40, "duration": 43, "endDate": "1987-11-14T00:00:00Z", "itemId": "ZZNt8ITZYrPF9RVm", "itemSku": "lylrTbNnsZbq1bLT", "itemType": "Z9CilMhw6EtJyKyW"}, {"count": 90, "duration": 16, "endDate": "1974-09-21T00:00:00Z", "itemId": "XTzZjwC1efjJMB0L", "itemSku": "rP4fzQ7HTPXreYKK", "itemType": "S192ClV25pfEiR9P"}, {"count": 54, "duration": 20, "endDate": "1993-04-19T00:00:00Z", "itemId": "24ImsFSJ3WMriaaK", "itemSku": "LgO9gbBTBloZLdlT", "itemType": "L0EhOe8eDkyGc5dJ"}]}, "purchasable": true, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 31, "fixedTrialCycles": 72, "graceDays": 29}, "regionData": {"Akccdm845jKfeRbB": [{"currencyCode": "98SDfDcThQ9kz7TM", "currencyNamespace": "E7qVYkWhJuGdZWnI", "currencyType": "REAL", "discountAmount": 9, "discountExpireAt": "1993-01-29T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1974-04-23T00:00:00Z", "expireAt": "1972-07-18T00:00:00Z", "price": 46, "purchaseAt": "1997-06-05T00:00:00Z", "trialPrice": 20}, {"currencyCode": "WFyJcHw1gpvCzbZ1", "currencyNamespace": "dhMQmFcENSPgt9zK", "currencyType": "VIRTUAL", "discountAmount": 1, "discountExpireAt": "1988-12-13T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1979-03-02T00:00:00Z", "expireAt": "1997-06-15T00:00:00Z", "price": 91, "purchaseAt": "1977-07-26T00:00:00Z", "trialPrice": 52}, {"currencyCode": "ceC6rKzjcJpO7TCZ", "currencyNamespace": "Bkplk4a1aQSEjRlG", "currencyType": "REAL", "discountAmount": 27, "discountExpireAt": "1983-07-28T00:00:00Z", "discountPercentage": 56, "discountPurchaseAt": "1974-12-03T00:00:00Z", "expireAt": "1990-11-04T00:00:00Z", "price": 63, "purchaseAt": "1986-10-12T00:00:00Z", "trialPrice": 84}], "SXlg3jJbuMTeMXCP": [{"currencyCode": "alRNYcmxUeh4YKUb", "currencyNamespace": "jseUOXZzet4bh0rx", "currencyType": "VIRTUAL", "discountAmount": 29, "discountExpireAt": "1971-04-13T00:00:00Z", "discountPercentage": 0, "discountPurchaseAt": "1984-01-23T00:00:00Z", "expireAt": "1987-11-24T00:00:00Z", "price": 95, "purchaseAt": "1999-01-09T00:00:00Z", "trialPrice": 49}, {"currencyCode": "6YnALTJGRz2PAx3g", "currencyNamespace": "WJpOWJHZCdFFFxEf", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1986-06-24T00:00:00Z", "discountPercentage": 4, "discountPurchaseAt": "1971-12-08T00:00:00Z", "expireAt": "1975-03-03T00:00:00Z", "price": 53, "purchaseAt": "1998-09-12T00:00:00Z", "trialPrice": 24}, {"currencyCode": "2s6jZ3as4uGZjGXY", "currencyNamespace": "EVYeXCtJS53AfNe9", "currencyType": "VIRTUAL", "discountAmount": 9, "discountExpireAt": "1975-01-26T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1971-02-07T00:00:00Z", "expireAt": "1995-08-21T00:00:00Z", "price": 81, "purchaseAt": "1997-10-21T00:00:00Z", "trialPrice": 38}], "11w0n9WcKDAF5x5z": [{"currencyCode": "arqSNsuvMe5WkUwZ", "currencyNamespace": "BiYedKxuxjfZ8Cb0", "currencyType": "VIRTUAL", "discountAmount": 53, "discountExpireAt": "1991-06-07T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1971-01-02T00:00:00Z", "expireAt": "1974-10-06T00:00:00Z", "price": 77, "purchaseAt": "1980-02-06T00:00:00Z", "trialPrice": 54}, {"currencyCode": "f8DPzIwYdS3EV8Bo", "currencyNamespace": "iQagtvvrUuZc9fgN", "currencyType": "REAL", "discountAmount": 10, "discountExpireAt": "1976-08-15T00:00:00Z", "discountPercentage": 100, "discountPurchaseAt": "1985-11-03T00:00:00Z", "expireAt": "1988-02-20T00:00:00Z", "price": 57, "purchaseAt": "1973-03-09T00:00:00Z", "trialPrice": 24}, {"currencyCode": "lS6hOJFDbVwdR9Os", "currencyNamespace": "aEIRoE5V5dWrNC6i", "currencyType": "VIRTUAL", "discountAmount": 23, "discountExpireAt": "1994-04-25T00:00:00Z", "discountPercentage": 20, "discountPurchaseAt": "1972-10-29T00:00:00Z", "expireAt": "1973-05-31T00:00:00Z", "price": 86, "purchaseAt": "1985-08-24T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "MWvCjoslu6UWmWPf", "price": 68}, "seasonType": "TIER", "sectionExclusive": false, "sellable": false, "sku": "WexLs5rOjEERdKuD", "stackable": true, "status": "INACTIVE", "tags": ["aTNxPouObsEGu3TB", "dvixKD3lZlMpJzFm", "mxgYyCaSDyqY6CUr"], "targetCurrencyCode": "rj1QkqsjocONiwrz", "targetNamespace": "5E7v8Vf0GPcdXfgW", "thumbnailUrl": "3AyXlNcfw84v6P1O", "useCount": 52}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
