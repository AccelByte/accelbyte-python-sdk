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

Example: '{"appId": "8h92QcoCjloIyP6J", "appType": "SOFTWARE", "baseAppId": "H3Ga2T9CoaKH7yyG", "boothName": "6kmXc4ga3M6AWsQP", "categoryPath": "Xtj9n8bm5IuwxdeO", "clazz": "pMFj0UNAi3xhtmWe", "displayOrder": 82, "entitlementType": "CONSUMABLE", "ext": {"6I2KF4O7ZSEx636V": {}, "6QWsioEzr7mLq22C": {}, "J1NcWzrD9RSP3me2": {}}, "features": ["1y9gCOenSTdPsSBM", "cVx08rxhpmQhaz0O", "7PZ2E2dVD1iw6JzZ"], "flexible": false, "images": [{"as": "t9RapRo8yD5kQ5vR", "caption": "jOY7ovKkwOi04wRP", "height": 71, "imageUrl": "XD8qcxvLha9Gyqe8", "smallImageUrl": "IplgNrtMNC3jIfAy", "width": 71}, {"as": "PGY1pkBeHYx0QYyJ", "caption": "4X7CRfWYHWPSEDiN", "height": 61, "imageUrl": "suMCDOcP52KiXfg1", "smallImageUrl": "Kdg9FzV4RkBXflLr", "width": 6}, {"as": "2aHn8EKKOJWph6eg", "caption": "CEH5clAe2rlksE4r", "height": 60, "imageUrl": "K9KEGQqbyKYM25OK", "smallImageUrl": "fgv0ey5IbATChdKs", "width": 53}], "inventoryConfig": {"customAttributes": {"S6DWZahCrsi8uLtS": {}, "yWLZcnmtUbg0FwOx": {}, "ECVa99KexZ2BVP7J": {}}, "serverCustomAttributes": {"eBJaTvqPY7s8Uolw": {}, "kFTMrzoWqDYlrPjK": {}, "Eb0vhmU61yB2ly0S": {}}, "slotUsed": 72}, "itemIds": ["S879HOGVtNfxWSW4", "hllP2aax5mV4l0Gi", "sNQgMW6tih9tUcrz"], "itemQty": {"YvTJFT3oH9hkMblt": 79, "QGhWMicYjqZi71Rl": 44, "9yzULiXwwLLDN6T8": 60}, "itemType": "BUNDLE", "listable": false, "localizations": {"8QfucnDX55CICMwi": {"description": "gIfJnUkgCfpGbTJG", "localExt": {"31BLotHVyOTEB1E4": {}, "U4JfczZmVkLrwHkG": {}, "xUodzN5Edj8q6nRV": {}}, "longDescription": "7AqVvHpHpaQ07Xxl", "title": "wiMAprxxStSFofVF"}, "6uFK1H0xpMSdJ2Fy": {"description": "q6FBjCbmjRVROQz1", "localExt": {"eyVv8xOCsypfDfyb": {}, "wOoujJcOjtAWnlrv": {}, "LlAYFImQtMAt9eMP": {}}, "longDescription": "lSeK0YcONfPGJJ9N", "title": "119brvpG7eRAKCTj"}, "m13m6OJmTWbNSz0f": {"description": "RDZwOKhYn6mG70MJ", "localExt": {"lN7dzHPZzfgbMxCz": {}, "63AR82JMGTpGjmTG": {}, "jlpyGLpR0PfIOmMn": {}}, "longDescription": "u6Wxuzx16W22omhW", "title": "XhSpVfmBedyKjbr8"}}, "lootBoxConfig": {"rewardCount": 50, "rewards": [{"lootBoxItems": [{"count": 19, "duration": 36, "endDate": "1991-12-19T00:00:00Z", "itemId": "WE89HVbm0UW9ldWh", "itemSku": "BbQxfjShz468nx1H", "itemType": "RUvXyyJmPmulQnnV"}, {"count": 27, "duration": 53, "endDate": "1973-01-31T00:00:00Z", "itemId": "6q8IJrKLeiLWBNB9", "itemSku": "XDe7rvA88YMAPRWf", "itemType": "BA02n2Ee0S6kDlhz"}, {"count": 50, "duration": 42, "endDate": "1977-06-03T00:00:00Z", "itemId": "btqm9XUYAsTZ3raZ", "itemSku": "FSJbxQwpXCWXRMsr", "itemType": "63HGQwldCxbGm0DH"}], "name": "Bmu9q28TrI0Eajx7", "odds": 0.3242954184206718, "type": "REWARD", "weight": 25}, {"lootBoxItems": [{"count": 53, "duration": 80, "endDate": "1995-03-05T00:00:00Z", "itemId": "WgZMmGdYYZZ3mh90", "itemSku": "iKi7AyTOa7cCBPNO", "itemType": "w3cmpetEGzz93UNK"}, {"count": 61, "duration": 39, "endDate": "1977-01-08T00:00:00Z", "itemId": "uyGj3qUylgudYZSj", "itemSku": "CRgoHZqrtoI0Vw3G", "itemType": "ilHjBpkzZv5ZwY06"}, {"count": 59, "duration": 58, "endDate": "1979-09-20T00:00:00Z", "itemId": "9OPA2IDirwLDua1H", "itemSku": "8gxpY9UJnjH3ZwWA", "itemType": "lcgPmqqwDylAt9WJ"}], "name": "nk3lYsGhzNvw2eaY", "odds": 0.6214636849380283, "type": "PROBABILITY_GROUP", "weight": 29}, {"lootBoxItems": [{"count": 59, "duration": 26, "endDate": "1994-05-05T00:00:00Z", "itemId": "P9YEi0cumtHKfptj", "itemSku": "947aulZRjsLhm7r4", "itemType": "rj8zcrjUeyoDcZPo"}, {"count": 16, "duration": 5, "endDate": "1980-01-09T00:00:00Z", "itemId": "MPxceqDURkAfnygN", "itemSku": "7NabPMBzFxaoRDbN", "itemType": "XWig6bd8BYJqpzrx"}, {"count": 19, "duration": 92, "endDate": "1977-04-26T00:00:00Z", "itemId": "HxflygjqnbrdLssx", "itemSku": "gptH6ASqb2DCarx9", "itemType": "77s1haqENkQkNmyS"}], "name": "VoVa3mzDLr512rs4", "odds": 0.20810645640542924, "type": "PROBABILITY_GROUP", "weight": 81}], "rollFunction": "DEFAULT"}, "maxCount": 14, "maxCountPerUser": 70, "name": "i4xNXr5BpvosMvwT", "optionBoxConfig": {"boxItems": [{"count": 99, "duration": 6, "endDate": "1982-08-02T00:00:00Z", "itemId": "qSUNMibgrnS7WRhV", "itemSku": "CaAYG2KMxGII4oGE", "itemType": "vU023hlhDGEqYjSR"}, {"count": 79, "duration": 8, "endDate": "1977-07-12T00:00:00Z", "itemId": "s9a2J1KLWNo8ZJr3", "itemSku": "X30pKtBnCLfk28bi", "itemType": "raoiwJwNsFERAd8R"}, {"count": 1, "duration": 47, "endDate": "1976-09-07T00:00:00Z", "itemId": "vJeY1xya1lmBFUKs", "itemSku": "8KAXOfgpBBdxkfWq", "itemType": "wN4GzpxmKcmrYLU2"}]}, "purchasable": true, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 82, "fixedTrialCycles": 56, "graceDays": 29}, "regionData": {"SBFmEAO36p4VmkVo": [{"currencyCode": "0QINiBHmSjH6eqkK", "currencyNamespace": "g0eo8ZxDOux5Q2fN", "currencyType": "VIRTUAL", "discountAmount": 2, "discountExpireAt": "1998-12-13T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1979-06-01T00:00:00Z", "expireAt": "1987-10-18T00:00:00Z", "price": 50, "purchaseAt": "1980-09-01T00:00:00Z", "trialPrice": 94}, {"currencyCode": "3l1DaxAei6ZbkGv9", "currencyNamespace": "AcY2lvTOXeAGE5ec", "currencyType": "REAL", "discountAmount": 4, "discountExpireAt": "1983-10-06T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1991-12-20T00:00:00Z", "expireAt": "1988-12-08T00:00:00Z", "price": 45, "purchaseAt": "1978-04-04T00:00:00Z", "trialPrice": 60}, {"currencyCode": "KKq1Vd409gQMBCBb", "currencyNamespace": "Sdy8hoGsVY6Yk1GN", "currencyType": "REAL", "discountAmount": 53, "discountExpireAt": "1976-04-05T00:00:00Z", "discountPercentage": 75, "discountPurchaseAt": "1985-01-25T00:00:00Z", "expireAt": "1984-12-31T00:00:00Z", "price": 55, "purchaseAt": "1979-05-17T00:00:00Z", "trialPrice": 52}], "thEjcpFKD3CH1SHv": [{"currencyCode": "dwdkRGZWrlhB42HA", "currencyNamespace": "MM3OPwmOjU7BFf8M", "currencyType": "VIRTUAL", "discountAmount": 72, "discountExpireAt": "1994-05-11T00:00:00Z", "discountPercentage": 91, "discountPurchaseAt": "1999-06-08T00:00:00Z", "expireAt": "1977-04-12T00:00:00Z", "price": 3, "purchaseAt": "1996-02-22T00:00:00Z", "trialPrice": 38}, {"currencyCode": "g1Ea0PZ7QsNrRlPU", "currencyNamespace": "o1gXtMgI6dGNNhpM", "currencyType": "REAL", "discountAmount": 14, "discountExpireAt": "1992-06-11T00:00:00Z", "discountPercentage": 36, "discountPurchaseAt": "1997-03-06T00:00:00Z", "expireAt": "1981-08-22T00:00:00Z", "price": 81, "purchaseAt": "1998-12-08T00:00:00Z", "trialPrice": 94}, {"currencyCode": "AKU9j1tVgQtgvjyN", "currencyNamespace": "v1V0vuxHDHNGv1S8", "currencyType": "REAL", "discountAmount": 7, "discountExpireAt": "1982-04-20T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1998-09-03T00:00:00Z", "expireAt": "1973-07-13T00:00:00Z", "price": 68, "purchaseAt": "1982-04-13T00:00:00Z", "trialPrice": 76}], "ZHQqxowsIINT46YS": [{"currencyCode": "GtbMFI1GAbzuoEg2", "currencyNamespace": "Gm1ZKYTnltZK14n8", "currencyType": "REAL", "discountAmount": 91, "discountExpireAt": "1974-12-01T00:00:00Z", "discountPercentage": 87, "discountPurchaseAt": "1980-04-12T00:00:00Z", "expireAt": "1971-09-22T00:00:00Z", "price": 21, "purchaseAt": "1981-07-18T00:00:00Z", "trialPrice": 20}, {"currencyCode": "SPylYAbX8za5XxB2", "currencyNamespace": "k9J6veygF4Z6v5g4", "currencyType": "REAL", "discountAmount": 36, "discountExpireAt": "1999-06-18T00:00:00Z", "discountPercentage": 94, "discountPurchaseAt": "1976-06-23T00:00:00Z", "expireAt": "1989-11-15T00:00:00Z", "price": 0, "purchaseAt": "1979-02-26T00:00:00Z", "trialPrice": 56}, {"currencyCode": "pISIBJs5nPw1h4pe", "currencyNamespace": "RL18cQCHrOEXb76J", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1981-08-03T00:00:00Z", "discountPercentage": 43, "discountPurchaseAt": "1988-08-28T00:00:00Z", "expireAt": "1978-10-26T00:00:00Z", "price": 78, "purchaseAt": "1994-07-21T00:00:00Z", "trialPrice": 58}]}, "saleConfig": {"currencyCode": "cuUOdnILd72GAKCP", "price": 95}, "seasonType": "PASS", "sectionExclusive": true, "sellable": false, "sku": "hRGEmfEM7w6lDO9O", "stackable": true, "status": "INACTIVE", "tags": ["lV4ODmTiqFwe0BzT", "8Ni8tJSifZbCTGxV", "t3HvQIXoczo6Jqrs"], "targetCurrencyCode": "bPArnPVUnwOo4UgT", "targetNamespace": "FnL9EQCrCVOMnCXx", "thumbnailUrl": "UH2gzlA04BqmkJXY", "useCount": 59}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
