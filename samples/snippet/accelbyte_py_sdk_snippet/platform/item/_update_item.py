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

Example: '{"appId": "MqU4O0XSTW5lXMkZ", "appType": "DEMO", "baseAppId": "wX4K9GLZU2sM10Rb", "boothName": "x7sXnjnEtbbwPGHn", "categoryPath": "SZQEwUyCCzE7Yhn7", "clazz": "LPEKDClGqxLRblO1", "displayOrder": 86, "entitlementType": "DURABLE", "ext": {"6T1srkAuAotvG8dV": {}, "EQXAoFfbILRvcQ1Q": {}, "k66ywyREsPTXENOp": {}}, "features": ["XRcu6hwa9kXguUZQ", "pn8Yux8Ciqi2I6gW", "fKlCjLxHz905soWs"], "flexible": true, "images": [{"as": "FLhVsYRW0zewxkyx", "caption": "Or5bWLw5Oijlpioi", "height": 20, "imageUrl": "YS6rpO0URgBvTuCf", "smallImageUrl": "8d3EbFjg80Kdp0BU", "width": 31}, {"as": "4lwaRDQS2WALOnmi", "caption": "ow5JTzT1kApsj5Hs", "height": 87, "imageUrl": "iUTDQJhSNz7k8dO3", "smallImageUrl": "UMcbnMyZ6l5hJ8go", "width": 49}, {"as": "Ac1CtlcmaSfpas7I", "caption": "wPd9pQKOwTBiLzdM", "height": 92, "imageUrl": "SzWal2wMTffSls3h", "smallImageUrl": "TAaec0XcpVektJnd", "width": 43}], "inventoryConfig": {"customAttributes": {"gOnE6ZbJHiP5fjDN": {}, "y8EPRzQo45ElGzrs": {}, "vU2DDM76L8RqOmCn": {}}, "serverCustomAttributes": {"9JzxmvfXKnE0ZqUs": {}, "uE9WYPVumAqO4jgO": {}, "kKgHocdmG5Ektjz9": {}}, "slotUsed": 42}, "itemIds": ["NKxV79ttLzc2oIDq", "vQKqY7jgYsEYy8G3", "rYZhwrGi5y2uQ6L0"], "itemQty": {"XJwjsodNbEODXw7r": 79, "QdXecvzsjOM9oipa": 78, "CGoU3jFSF9c8hO2R": 68}, "itemType": "COINS", "listable": true, "localizations": {"m1Am0HiQ1fXk6au0": {"description": "Rr9cjE0nQzbId5sY", "localExt": {"4sdCNkIXOIeSjnZL": {}, "uzYRnnHnMNFjiUnT": {}, "j6ur7lZkLPS2UQZI": {}}, "longDescription": "PSnXQDYnnNks3Rye", "title": "M9YtadlMFh6RwCS0"}, "hIwS1aQNXTujZ8nQ": {"description": "0lKKsIrU9qCZGFWt", "localExt": {"VAlbmsITxdVSkiXp": {}, "DlYfs7EWXzJbtddx": {}, "8XKk35MX1kuaoi1Q": {}}, "longDescription": "I1PR5IpnS5tMb62s", "title": "V1eScDB5xztIdrg2"}, "70vIyh7boU7V9cK8": {"description": "vbgSPHWGxbjkBse4", "localExt": {"fGvtvyC6UvsCCtDr": {}, "fiuEEgoNB8eKIPzk": {}, "cRlGE1KVBcMBfOkh": {}}, "longDescription": "qJy4gUWelytJWLb7", "title": "yxoicslZUIQxUhEm"}}, "lootBoxConfig": {"rewardCount": 57, "rewards": [{"lootBoxItems": [{"count": 86, "duration": 35, "endDate": "1997-10-15T00:00:00Z", "itemId": "Zh7Eekc9fw9PwHMp", "itemSku": "2oWKwTATTTxXp7ii", "itemType": "eqlI6OXbsL7t04rw"}, {"count": 58, "duration": 94, "endDate": "1977-08-07T00:00:00Z", "itemId": "b1811pVsfzVbYPKs", "itemSku": "vGheiXM8puZXmKtv", "itemType": "3vlbQNjszIjIqQjo"}, {"count": 91, "duration": 83, "endDate": "1979-10-09T00:00:00Z", "itemId": "9y7d3x30iZWINtx3", "itemSku": "qLTsa3bFVXVXBYea", "itemType": "hsX3nmciQ9XXvddu"}], "name": "84e2ew6KxSEwUiNF", "odds": 0.2131124621543271, "type": "REWARD_GROUP", "weight": 49}, {"lootBoxItems": [{"count": 55, "duration": 85, "endDate": "1991-06-17T00:00:00Z", "itemId": "ZfzSL7P9hm9TwNrc", "itemSku": "xKUmj9JrjTOgg99M", "itemType": "pPW17R0QZmtvvmyA"}, {"count": 94, "duration": 47, "endDate": "1997-08-01T00:00:00Z", "itemId": "MIN2HGgoXzTHMhkb", "itemSku": "fVFiOHzzUEeF1Xkq", "itemType": "KyOHagSuK9hNuVTp"}, {"count": 9, "duration": 16, "endDate": "1987-06-05T00:00:00Z", "itemId": "exJnnHQUb09xWgbl", "itemSku": "roFqvgGEvk8k9rfC", "itemType": "G25WR1nF2BgBnP2J"}], "name": "xSoS3g8JSsF9Ulw8", "odds": 0.22909302412509158, "type": "REWARD", "weight": 92}, {"lootBoxItems": [{"count": 80, "duration": 27, "endDate": "1974-07-11T00:00:00Z", "itemId": "6OairGBffURUDxJv", "itemSku": "ZDYc0zUU2hbuorQj", "itemType": "msFz1aXAI3PNuj8Y"}, {"count": 70, "duration": 21, "endDate": "1986-04-01T00:00:00Z", "itemId": "XWgXwnIf4KoDutqS", "itemSku": "XNMyOUzcKssSIu63", "itemType": "MOLDS6kb6oBZhLRc"}, {"count": 55, "duration": 59, "endDate": "1976-01-31T00:00:00Z", "itemId": "o7CWkOcXQpcUPBmj", "itemSku": "5Sb7P5JcnSUPwOTr", "itemType": "gcCgfwNSkuvDNx9p"}], "name": "pBLchBZ6htUAwOKy", "odds": 0.49010219244856146, "type": "REWARD", "weight": 96}], "rollFunction": "CUSTOM"}, "maxCount": 64, "maxCountPerUser": 100, "name": "hv7jvmrQkIPgJVxW", "optionBoxConfig": {"boxItems": [{"count": 13, "duration": 24, "endDate": "1982-07-14T00:00:00Z", "itemId": "2uc14CHcFVBXwzCS", "itemSku": "QZgQcCdMb3HLfa5P", "itemType": "IgcBUb5RMukDv7VX"}, {"count": 15, "duration": 15, "endDate": "1972-03-17T00:00:00Z", "itemId": "8CAtiBqAMOcXXttj", "itemSku": "LeRBYSONXLPY37aS", "itemType": "Fn2fVMnBzGluVJxz"}, {"count": 87, "duration": 99, "endDate": "1977-07-10T00:00:00Z", "itemId": "ezOc8XwYMIMJjKf8", "itemSku": "xGD0mDRsNOArSFrv", "itemType": "VC9MzkFKLv8OtTGp"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 40, "fixedTrialCycles": 42, "graceDays": 0}, "regionData": {"gO6Td4IiRIIuYjCz": [{"currencyCode": "XtupxvSTFNzH31rR", "currencyNamespace": "hcjLKE4V56EinZm0", "currencyType": "REAL", "discountAmount": 74, "discountExpireAt": "1998-09-27T00:00:00Z", "discountPercentage": 64, "discountPurchaseAt": "1998-07-26T00:00:00Z", "expireAt": "1999-01-13T00:00:00Z", "price": 99, "purchaseAt": "1972-10-31T00:00:00Z", "trialPrice": 60}, {"currencyCode": "v3GsCz5C8gwSHlJg", "currencyNamespace": "Sk8yddn2kFOK5cbB", "currencyType": "REAL", "discountAmount": 71, "discountExpireAt": "1977-02-19T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1995-11-26T00:00:00Z", "expireAt": "1992-05-22T00:00:00Z", "price": 73, "purchaseAt": "1990-03-22T00:00:00Z", "trialPrice": 90}, {"currencyCode": "4OjzaGM9kpfiGMjB", "currencyNamespace": "T09TUNV47crPg0eK", "currencyType": "VIRTUAL", "discountAmount": 86, "discountExpireAt": "1979-01-05T00:00:00Z", "discountPercentage": 37, "discountPurchaseAt": "1982-12-16T00:00:00Z", "expireAt": "1989-04-24T00:00:00Z", "price": 71, "purchaseAt": "1983-03-03T00:00:00Z", "trialPrice": 48}], "7ZlJXOVlBcP8XHU3": [{"currencyCode": "qacrDr08NgRVtYuk", "currencyNamespace": "4MlkUTMFLM5qJ8uV", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1994-03-11T00:00:00Z", "discountPercentage": 41, "discountPurchaseAt": "1973-08-29T00:00:00Z", "expireAt": "1981-12-02T00:00:00Z", "price": 43, "purchaseAt": "1974-09-30T00:00:00Z", "trialPrice": 39}, {"currencyCode": "7zjFASD6kQA8smWZ", "currencyNamespace": "Uq82q8fcThOFhKHS", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1985-06-09T00:00:00Z", "discountPercentage": 71, "discountPurchaseAt": "1989-03-29T00:00:00Z", "expireAt": "1988-07-12T00:00:00Z", "price": 44, "purchaseAt": "1996-02-06T00:00:00Z", "trialPrice": 71}, {"currencyCode": "apzkKgR2vLGtkWyG", "currencyNamespace": "i2Mr46kQxi0Yju3p", "currencyType": "VIRTUAL", "discountAmount": 75, "discountExpireAt": "1971-01-18T00:00:00Z", "discountPercentage": 63, "discountPurchaseAt": "1994-10-10T00:00:00Z", "expireAt": "1973-11-24T00:00:00Z", "price": 43, "purchaseAt": "1972-12-26T00:00:00Z", "trialPrice": 60}], "LvRhvXisKKy78NTd": [{"currencyCode": "q4vHoX8mQTZ3EotH", "currencyNamespace": "HuuFo0sFbYiouHSC", "currencyType": "REAL", "discountAmount": 21, "discountExpireAt": "1993-07-29T00:00:00Z", "discountPercentage": 98, "discountPurchaseAt": "1990-02-22T00:00:00Z", "expireAt": "1992-10-03T00:00:00Z", "price": 88, "purchaseAt": "1979-04-25T00:00:00Z", "trialPrice": 85}, {"currencyCode": "WKaWetqSd83eELkl", "currencyNamespace": "kcBEE0AtaOZhGdC9", "currencyType": "VIRTUAL", "discountAmount": 91, "discountExpireAt": "1999-02-10T00:00:00Z", "discountPercentage": 68, "discountPurchaseAt": "1978-07-26T00:00:00Z", "expireAt": "1992-02-22T00:00:00Z", "price": 50, "purchaseAt": "1997-06-14T00:00:00Z", "trialPrice": 36}, {"currencyCode": "e9oGRY5ERTl1Qv6L", "currencyNamespace": "Fj0zLL4fplAsfK4K", "currencyType": "REAL", "discountAmount": 82, "discountExpireAt": "1997-10-02T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1988-06-04T00:00:00Z", "expireAt": "1980-05-04T00:00:00Z", "price": 90, "purchaseAt": "1998-06-17T00:00:00Z", "trialPrice": 69}]}, "saleConfig": {"currencyCode": "iO2aQNCEY7x1yCTB", "price": 86}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "1OlW0G4Hz5bS8d5a", "stackable": false, "status": "ACTIVE", "tags": ["s5astsVX1wyAozXC", "9bXF6CwDYI3zgHD6", "BCBqQPbIoeYcyP64"], "targetCurrencyCode": "xc7r1pycOrRy0BDu", "targetNamespace": "vXPFXgTvFf4PTxcK", "thumbnailUrl": "ZA22cxljxmRn6gtU", "useCount": 1}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
