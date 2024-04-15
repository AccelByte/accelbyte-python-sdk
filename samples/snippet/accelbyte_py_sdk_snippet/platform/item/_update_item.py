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

Example: '{"appId": "yHIaIVUNzw7T5iIc", "appType": "GAME", "baseAppId": "Og3iBW4rYbxr71xz", "boothName": "JJJoYnMkH5OuUaic", "categoryPath": "OpAhoksFHZWTTw68", "clazz": "2B2Jk50IbxT0CH7T", "displayOrder": 57, "entitlementType": "CONSUMABLE", "ext": {"Leob5lEquGb5UzP2": {}, "g3NgwW2mxEsCIH9e": {}, "fuCjGAe349D6IIRZ": {}}, "features": ["WKOLlMSKnC76x1V9", "hI3e7LEeHWzq6QSy", "IMnryaMs9GOMlqZn"], "flexible": true, "images": [{"as": "wVQzD3CHIp5OLZYz", "caption": "TrllhyK36YrEuRXp", "height": 83, "imageUrl": "wP3kpTjDqeawpQFj", "smallImageUrl": "dfDkBqDY31sKwjiI", "width": 68}, {"as": "863dH61dqW4kEuTB", "caption": "0wprZ8xILEa3w8i6", "height": 35, "imageUrl": "d1wwXslsop4TC5r9", "smallImageUrl": "Bp2vDkIkGoE46QKx", "width": 79}, {"as": "8zL6Lx2RtvAzMESR", "caption": "oT8lbu40wHpq62CN", "height": 62, "imageUrl": "qD1EzQjbhDldC4VM", "smallImageUrl": "RWgXlLagRVlFffNd", "width": 55}], "inventoryConfig": {"customAttributes": {"8be1kqMB5Ly7Rg0k": {}, "IzDnARHeAJUJKsJR": {}, "JOqqM0FquFNvz7Y2": {}}, "serverCustomAttributes": {"gCpPAP6VFZ20TRpy": {}, "axnJQXHbjbkFxII4": {}, "G362cXmlpwgyweM7": {}}, "slotUsed": 81}, "itemIds": ["McySF54Jh81dHptn", "hBpDjCih7HDUWbb0", "Ma0HQT7G3jzm8fSY"], "itemQty": {"sW5owimOMj8JGIcl": 98, "roX1OjzcTHb9qpZV": 85, "EKRoZTMGXEVdk45q": 93}, "itemType": "EXTENSION", "listable": true, "localizations": {"YSltJpn6FM9oqqMy": {"description": "5t2sgrRr0RUHDkXV", "localExt": {"us1qYT0W5oXjT365": {}, "jtpQy1DdWAvBS9Gm": {}, "EEwsgstJXteB04og": {}}, "longDescription": "gP7FgJdYDGlRX9tr", "title": "OXnpQRuUFbVahuxE"}, "JMO8RWlVKtAk0U4w": {"description": "vCZ1obGrKyhQ3MvH", "localExt": {"ZdJToy1BtYoSowjx": {}, "D4kx3dignb7suN3L": {}, "US7PcTmvGA5mCY6a": {}}, "longDescription": "zAUuf9zCMtfDIfgq", "title": "RCPICA1HybU0vjr2"}, "5ZRwkNWs4ikv5ELu": {"description": "FTebFhGpf2iwBuoE", "localExt": {"w0g2FhVbl0aKCIbN": {}, "WksywyAL91hh7oZ1": {}, "VCon99N0Csvd3a1v": {}}, "longDescription": "UvULdQMjnPeqMLPt", "title": "lPWjVKhYbNKPW4kG"}}, "lootBoxConfig": {"rewardCount": 27, "rewards": [{"lootBoxItems": [{"count": 1, "duration": 7, "endDate": "1990-08-13T00:00:00Z", "itemId": "Fsvdu4tnyPKgyLci", "itemSku": "qmUb0e5MSgdpg926", "itemType": "3KFShb3ftbYkhUPh"}, {"count": 51, "duration": 80, "endDate": "1993-07-25T00:00:00Z", "itemId": "l3dcKi3oBoHrd2ry", "itemSku": "kOEccXreGCOa2rmR", "itemType": "reNOXyP0uEzpNdp0"}, {"count": 7, "duration": 63, "endDate": "1990-01-31T00:00:00Z", "itemId": "2lb94IifUc1z8SMo", "itemSku": "CbGbSGdT9Ajw90f2", "itemType": "QH4HQ8eLAWhqWePE"}], "name": "MyfnLAixuljNrOaW", "odds": 0.17403469961806017, "type": "PROBABILITY_GROUP", "weight": 67}, {"lootBoxItems": [{"count": 46, "duration": 68, "endDate": "1973-06-05T00:00:00Z", "itemId": "0KcYhvXdqVOckILo", "itemSku": "CadGJGFhfUGwr90M", "itemType": "2zKQIo8enUbwVZSr"}, {"count": 95, "duration": 81, "endDate": "1974-02-03T00:00:00Z", "itemId": "r9EWGZhUE0nZHrEo", "itemSku": "g4pbVEyuQsEQ6UPN", "itemType": "Wgoa6CT51YRq4OHC"}, {"count": 10, "duration": 70, "endDate": "1991-05-11T00:00:00Z", "itemId": "VcYWb0hmzqjQ5yXz", "itemSku": "oC1SYPDjF5qEGsUP", "itemType": "1A2q5RRZfR85yloU"}], "name": "06VYSxj2uD9tWLH4", "odds": 0.8303683614850292, "type": "REWARD", "weight": 73}, {"lootBoxItems": [{"count": 41, "duration": 19, "endDate": "1990-08-23T00:00:00Z", "itemId": "GTidlwPlcz5S8pVN", "itemSku": "nNzBt8zEsEi3VeqZ", "itemType": "6SSxA020ysOLxYri"}, {"count": 20, "duration": 52, "endDate": "1993-11-13T00:00:00Z", "itemId": "sAq6xXaUWTBE1zQ0", "itemSku": "5a2SIo2STMTpdBO1", "itemType": "e7X6loP65ocG1nN6"}, {"count": 6, "duration": 27, "endDate": "1985-02-22T00:00:00Z", "itemId": "XdoXvMKp6HEJeD9d", "itemSku": "porti2sgLAOIshbH", "itemType": "SsGl348nUqqgniWS"}], "name": "4YebW8UbtdxGc6S9", "odds": 0.7518512696751899, "type": "PROBABILITY_GROUP", "weight": 97}], "rollFunction": "CUSTOM"}, "maxCount": 40, "maxCountPerUser": 8, "name": "4AF9MsFo3qvtm76C", "optionBoxConfig": {"boxItems": [{"count": 45, "duration": 85, "endDate": "1982-04-11T00:00:00Z", "itemId": "ofMXAgbguXrE9saG", "itemSku": "748w7KdUBPULQiQd", "itemType": "6oJSgBHNP8iHclCf"}, {"count": 30, "duration": 21, "endDate": "1986-05-25T00:00:00Z", "itemId": "kggWKfi79w0kPmwR", "itemSku": "nfaHJJcO3zqt3e4j", "itemType": "dKavubz2TidjwvA4"}, {"count": 27, "duration": 22, "endDate": "1984-07-19T00:00:00Z", "itemId": "Kysi0vdD3gbs69wj", "itemSku": "d8MMe5xPdUxWgLGC", "itemType": "eKDgRNutHFO14pk1"}]}, "purchasable": false, "recurring": {"cycle": "QUARTERLY", "fixedFreeDays": 62, "fixedTrialCycles": 23, "graceDays": 35}, "regionData": {"XDge9MTJGWjvEQ6N": [{"currencyCode": "CSs4YJVlrLtyZixn", "currencyNamespace": "fOJy6WAuxY71v4KR", "currencyType": "REAL", "discountAmount": 50, "discountExpireAt": "1986-04-09T00:00:00Z", "discountPercentage": 85, "discountPurchaseAt": "1997-09-06T00:00:00Z", "expireAt": "1985-07-29T00:00:00Z", "price": 58, "purchaseAt": "1974-07-01T00:00:00Z", "trialPrice": 69}, {"currencyCode": "SN2EecC962F09Svh", "currencyNamespace": "BuzD0xczW5vgTnsH", "currencyType": "VIRTUAL", "discountAmount": 44, "discountExpireAt": "1974-02-26T00:00:00Z", "discountPercentage": 81, "discountPurchaseAt": "1984-10-19T00:00:00Z", "expireAt": "1978-11-04T00:00:00Z", "price": 89, "purchaseAt": "1997-03-14T00:00:00Z", "trialPrice": 58}, {"currencyCode": "pu0MXG0RRtza0ZAA", "currencyNamespace": "Wxq0dh5XNzaJpHi4", "currencyType": "REAL", "discountAmount": 78, "discountExpireAt": "1992-08-23T00:00:00Z", "discountPercentage": 54, "discountPurchaseAt": "1987-06-15T00:00:00Z", "expireAt": "1980-11-06T00:00:00Z", "price": 15, "purchaseAt": "1996-05-29T00:00:00Z", "trialPrice": 91}], "ZWqWMMyRyEtKrQWi": [{"currencyCode": "rMM43awE1tPEwV9s", "currencyNamespace": "YdkVhDIh1uP5pgcT", "currencyType": "REAL", "discountAmount": 98, "discountExpireAt": "1976-07-13T00:00:00Z", "discountPercentage": 12, "discountPurchaseAt": "1972-04-04T00:00:00Z", "expireAt": "1995-08-25T00:00:00Z", "price": 16, "purchaseAt": "1999-07-30T00:00:00Z", "trialPrice": 26}, {"currencyCode": "Uq4Jzg5CUfgiAniH", "currencyNamespace": "zZ3JOva7V04LdItA", "currencyType": "REAL", "discountAmount": 22, "discountExpireAt": "1974-04-04T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1974-12-25T00:00:00Z", "expireAt": "1982-12-16T00:00:00Z", "price": 31, "purchaseAt": "1982-09-18T00:00:00Z", "trialPrice": 71}, {"currencyCode": "TKQ4wvWhZe5i9Xxb", "currencyNamespace": "QKuHpgcSrDY8GrQT", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1981-09-18T00:00:00Z", "discountPercentage": 7, "discountPurchaseAt": "1999-01-03T00:00:00Z", "expireAt": "1978-04-14T00:00:00Z", "price": 60, "purchaseAt": "1982-06-04T00:00:00Z", "trialPrice": 51}], "tYfrlH3BFBSdGdkf": [{"currencyCode": "Xp8VyiJMDcVWgaID", "currencyNamespace": "TZwDWZqRl2eDEH6A", "currencyType": "REAL", "discountAmount": 97, "discountExpireAt": "1986-10-09T00:00:00Z", "discountPercentage": 55, "discountPurchaseAt": "1994-05-19T00:00:00Z", "expireAt": "1984-05-03T00:00:00Z", "price": 60, "purchaseAt": "1977-12-18T00:00:00Z", "trialPrice": 62}, {"currencyCode": "CoQ77eW2cJ5sNjfB", "currencyNamespace": "wF1BOeLKuy4kWfdV", "currencyType": "VIRTUAL", "discountAmount": 41, "discountExpireAt": "1979-12-17T00:00:00Z", "discountPercentage": 38, "discountPurchaseAt": "1996-11-01T00:00:00Z", "expireAt": "1990-08-22T00:00:00Z", "price": 61, "purchaseAt": "1995-12-01T00:00:00Z", "trialPrice": 66}, {"currencyCode": "0BicPStFha6zZB0z", "currencyNamespace": "KIt1OisbVbnCPXDU", "currencyType": "VIRTUAL", "discountAmount": 12, "discountExpireAt": "1981-09-27T00:00:00Z", "discountPercentage": 46, "discountPurchaseAt": "1980-10-27T00:00:00Z", "expireAt": "1995-10-29T00:00:00Z", "price": 56, "purchaseAt": "1972-10-16T00:00:00Z", "trialPrice": 56}]}, "saleConfig": {"currencyCode": "9iaKxdfO2fa69r7d", "price": 55}, "seasonType": "TIER", "sectionExclusive": true, "sellable": true, "sku": "9J8mMfFUSBwizLGY", "stackable": true, "status": "ACTIVE", "tags": ["qGCUH27s6C8KS5JO", "6kOIYCyeumOFwRTB", "487c3Y2RnYvaJcHx"], "targetCurrencyCode": "QNIU4ZvRYPWLQBhv", "targetNamespace": "IJVIeBOh8ehhRMzX", "thumbnailUrl": "w7IM6zYm2SOFrzh5", "useCount": 4}'
"""

result, error = update_item(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
