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

Example: '{"appId": "VjBusLGFyMG9hLIc", "appType": "DLC", "baseAppId": "pRM7JJ8Nm4UeE9Ya", "boothName": "agzo0u5E2JZXg7m6", "categoryPath": "4m8LuwbB34CWOSMj", "clazz": "jcmmE9g1SqrlCdJA", "displayOrder": 14, "entitlementType": "CONSUMABLE", "ext": {"bvvlp3qZziLHCzWx": {}, "TxCwBUBHbMQzAXnP": {}, "CYJQ0E4leifbMRwG": {}}, "features": ["vaqX6RNp74FRdBMV", "7MJ91hg2IwinLciK", "FdWbirPxUJwfVtA3"], "flexible": true, "images": [{"as": "eXBiHtPrjoUg9dj6", "caption": "CwVL0gecMujSyMRn", "height": 82, "imageUrl": "Dk1rOrFrywKP2YJK", "smallImageUrl": "eMy5xAGN09siOEkD", "width": 6}, {"as": "OISWFjvLPT4rkiAR", "caption": "HuvKfpHM4eoPMnpm", "height": 56, "imageUrl": "ciJrlgBbKQLc0Wwj", "smallImageUrl": "lmFYUi8oMVHNTCdk", "width": 31}, {"as": "DtFLADXDRO5L1sGP", "caption": "6T8ZOnTogFFsR5MR", "height": 72, "imageUrl": "zg6ji8slsKr6CNkW", "smallImageUrl": "7xTFbSeW144vEmni", "width": 47}], "inventoryConfig": {"customAttributes": {"tCRJPHtVkPgihSFd": {}, "fC3kdQDwBVi9yVc1": {}, "Mff5ZBZWzC9MGiDr": {}}, "serverCustomAttributes": {"KWYjXpsqnqqsdfoZ": {}, "PqQHko74Bp44nzzj": {}, "Ez45xON2li4CnQP1": {}}, "slotUsed": 19}, "itemIds": ["mRuLFV0VbbdDTvty", "QhRfCSainK0c06A8", "thDnsaP1T9rf5Spw"], "itemQty": {"V1AFnOSzMcn5ve6j": 15, "LfgsISHtxPgvPgmd": 66, "PRn2sx7d5pcVO83A": 59}, "itemType": "APP", "listable": true, "localizations": {"gembTsnsEDD3Aick": {"description": "b870xTDMEfwaMxbR", "localExt": {"RQA7knC7AVzfP1BE": {}, "mllmClYnDpwK7Xo3": {}, "58rpSC3g9kOEsTwC": {}}, "longDescription": "oYLkpOBcp1ePQwzP", "title": "VYqywJyIJwCj5bMm"}, "Sp5A35LQjyww3Qqn": {"description": "ziENs5yJXP9XJEg6", "localExt": {"zsMo1NIcjvzpivLA": {}, "c7DvQ4BN1psdI3hI": {}, "bDkdr9v5rXbu7ehh": {}}, "longDescription": "UgtlJpTYt2JlPqnb", "title": "ZbiURomQy4QgMueb"}, "1qoEaUWxjSiQjxfq": {"description": "TBHMoKGshh1xiQoC", "localExt": {"bEYaexXHlgUEwpEo": {}, "7ZwcKTqdMqqvT32g": {}, "eLZsX3CLH8c8IQ3c": {}}, "longDescription": "Jq2F2FoDXZ0XrSFd", "title": "HnfkJC57NphkqWdb"}}, "lootBoxConfig": {"rewardCount": 28, "rewards": [{"lootBoxItems": [{"count": 31, "duration": 45, "endDate": "1987-11-24T00:00:00Z", "itemId": "AxSJ2KcQEvE9UBvU", "itemSku": "Fd0P1idYhs8UpsZp", "itemType": "VvZ07ZoOQdVjVGta"}, {"count": 46, "duration": 83, "endDate": "1983-11-17T00:00:00Z", "itemId": "zXBSiYsc2gPFNaK8", "itemSku": "AzEdS3jlvGcnKDNn", "itemType": "GL3rsa6cF1uyofC2"}, {"count": 22, "duration": 57, "endDate": "1994-09-11T00:00:00Z", "itemId": "sTcql3UBl6j0VyhH", "itemSku": "nwt0cZYF6KwKEA1i", "itemType": "XFVMrL6y8h8pUtVQ"}], "name": "5aZDHUrjqgne3pTw", "odds": 0.3376941668706528, "type": "REWARD", "weight": 63}, {"lootBoxItems": [{"count": 6, "duration": 1, "endDate": "1974-10-02T00:00:00Z", "itemId": "UepljnqVPY7OKsiL", "itemSku": "DXjuiYf2t8Wks7G9", "itemType": "Bv46QBNJa1nUvM1f"}, {"count": 14, "duration": 58, "endDate": "1995-10-29T00:00:00Z", "itemId": "5ft1EgZKtOgdlc21", "itemSku": "YCTELErAEbGagP2p", "itemType": "lXZnmnFxyHkVR8KI"}, {"count": 34, "duration": 16, "endDate": "1988-10-07T00:00:00Z", "itemId": "jwPMmGotTe363yw5", "itemSku": "4UEtCygB3ZeZz9cF", "itemType": "DkFCGPQkZIFfOh9F"}], "name": "0tU65RADSSB8MwXB", "odds": 0.8645129072974049, "type": "PROBABILITY_GROUP", "weight": 68}, {"lootBoxItems": [{"count": 32, "duration": 64, "endDate": "1997-08-23T00:00:00Z", "itemId": "3rO8bMmavYMd2XIP", "itemSku": "bz1MqKM3Raj5ZRMe", "itemType": "2jVnd8P5lXFiCJla"}, {"count": 86, "duration": 7, "endDate": "1984-12-20T00:00:00Z", "itemId": "nt5XOvWqx5ASaFeY", "itemSku": "mT9Owomea1tACNtr", "itemType": "Omgg7F6xYX7d0jCu"}, {"count": 52, "duration": 6, "endDate": "1992-10-11T00:00:00Z", "itemId": "ogAO5DsCMEtf2aet", "itemSku": "fFoOiiqgsMdWV72d", "itemType": "GN5Mc02ikfF7whe8"}], "name": "AI9OcTUDfjXOa7M5", "odds": 0.11088638015872054, "type": "REWARD_GROUP", "weight": 59}], "rollFunction": "CUSTOM"}, "maxCount": 53, "maxCountPerUser": 62, "name": "oXqYssAG8q74qU72", "optionBoxConfig": {"boxItems": [{"count": 36, "duration": 62, "endDate": "1992-02-08T00:00:00Z", "itemId": "Lq691stTKpK2pTLt", "itemSku": "89gsTrmRCuaURFVE", "itemType": "ok0pULkv838Wi1tL"}, {"count": 18, "duration": 17, "endDate": "1999-06-03T00:00:00Z", "itemId": "x4sMTMwbyl6EVVui", "itemSku": "76RppC8rbldYhGHK", "itemType": "0RKnKervudYEBgle"}, {"count": 82, "duration": 53, "endDate": "1977-05-22T00:00:00Z", "itemId": "r5Hp4ZCd3By0zwim", "itemSku": "08M6Sl9IQPBYDdJN", "itemType": "mSsk0oAsvj49O7MF"}]}, "purchasable": false, "recurring": {"cycle": "YEARLY", "fixedFreeDays": 44, "fixedTrialCycles": 5, "graceDays": 91}, "regionData": {"YHL6ni2vpTyy9e94": [{"currencyCode": "GH8y3PbsfvXPiDZy", "currencyNamespace": "UQD8ISRSrbXbUTJd", "currencyType": "VIRTUAL", "discountAmount": 84, "discountExpireAt": "1986-07-05T00:00:00Z", "discountPercentage": 99, "discountPurchaseAt": "1998-08-22T00:00:00Z", "expireAt": "1987-10-04T00:00:00Z", "price": 58, "purchaseAt": "1977-03-22T00:00:00Z", "trialPrice": 68}, {"currencyCode": "CDFnA7J0dIrQQQmZ", "currencyNamespace": "KLMYT0MAMcYBKdvV", "currencyType": "REAL", "discountAmount": 24, "discountExpireAt": "1994-08-15T00:00:00Z", "discountPercentage": 14, "discountPurchaseAt": "1994-02-15T00:00:00Z", "expireAt": "1987-11-28T00:00:00Z", "price": 23, "purchaseAt": "1978-06-23T00:00:00Z", "trialPrice": 27}, {"currencyCode": "knWPXyF0MrTkFb4i", "currencyNamespace": "x96T0ACiY1G2pTZe", "currencyType": "REAL", "discountAmount": 57, "discountExpireAt": "1971-09-09T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1989-03-27T00:00:00Z", "expireAt": "1981-02-03T00:00:00Z", "price": 21, "purchaseAt": "1978-05-30T00:00:00Z", "trialPrice": 38}], "MpOfQQM90OhqdIAh": [{"currencyCode": "Enh4HR3whQ3700XB", "currencyNamespace": "pvIU7pkfvXKfZ95b", "currencyType": "VIRTUAL", "discountAmount": 43, "discountExpireAt": "1998-07-26T00:00:00Z", "discountPercentage": 65, "discountPurchaseAt": "1995-01-16T00:00:00Z", "expireAt": "1997-08-28T00:00:00Z", "price": 60, "purchaseAt": "1995-02-26T00:00:00Z", "trialPrice": 17}, {"currencyCode": "DA5tqLIvHZ7uX0OL", "currencyNamespace": "A1UxXdz90SgCJfxJ", "currencyType": "VIRTUAL", "discountAmount": 67, "discountExpireAt": "1976-11-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1999-07-19T00:00:00Z", "expireAt": "1974-03-06T00:00:00Z", "price": 14, "purchaseAt": "1981-11-21T00:00:00Z", "trialPrice": 44}, {"currencyCode": "tEWA3YR5oDHaZG9K", "currencyNamespace": "e1a9vIm6wQzAZb2t", "currencyType": "REAL", "discountAmount": 75, "discountExpireAt": "1978-12-01T00:00:00Z", "discountPercentage": 8, "discountPurchaseAt": "1996-10-31T00:00:00Z", "expireAt": "1977-09-04T00:00:00Z", "price": 75, "purchaseAt": "1974-10-25T00:00:00Z", "trialPrice": 78}], "hX7UzShVmhZOJGXs": [{"currencyCode": "1HZF3J6mp1nXSYtR", "currencyNamespace": "kz8IQKr2arroopNz", "currencyType": "REAL", "discountAmount": 49, "discountExpireAt": "1992-10-26T00:00:00Z", "discountPercentage": 61, "discountPurchaseAt": "1984-04-04T00:00:00Z", "expireAt": "1996-04-29T00:00:00Z", "price": 90, "purchaseAt": "1980-01-14T00:00:00Z", "trialPrice": 56}, {"currencyCode": "Czapm1f3evhrCdN8", "currencyNamespace": "jGlD8KFvMKp5fK49", "currencyType": "VIRTUAL", "discountAmount": 99, "discountExpireAt": "1971-05-24T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1983-09-25T00:00:00Z", "expireAt": "1997-06-24T00:00:00Z", "price": 5, "purchaseAt": "1972-01-15T00:00:00Z", "trialPrice": 42}, {"currencyCode": "UbEikPireprpSBaH", "currencyNamespace": "i4Uu4Hef64HevaX2", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1974-08-25T00:00:00Z", "discountPercentage": 82, "discountPurchaseAt": "1981-10-20T00:00:00Z", "expireAt": "1986-10-03T00:00:00Z", "price": 29, "purchaseAt": "1996-03-12T00:00:00Z", "trialPrice": 100}]}, "saleConfig": {"currencyCode": "bLLGXk8uVCPVXrNh", "price": 71}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "3bbtkupBVYds9OZa", "stackable": true, "status": "ACTIVE", "tags": ["qDD4LRKp4Ek1fxAV", "q75jtB1kKB2Gjre2", "EtGb5HQYIar1XJRh"], "targetCurrencyCode": "4vhhwYh5YguJZJ55", "targetNamespace": "kNLMaVrI3jRouNwt", "thumbnailUrl": "bP4lazTEAZanPqAL", "useCount": 85}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
