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

Example: '{"appId": "XFO7hYv3l7GTALdU", "appType": "GAME", "baseAppId": "Lk5hSL8pT8Kd2PYu", "boothName": "lbD32ZtW5rodmmfY", "categoryPath": "7XBOaqkr7pOBWTkB", "clazz": "ACD1lvjBb6P1QLAm", "displayOrder": 8, "entitlementType": "CONSUMABLE", "ext": {"yFt6rVpJotqUgHKU": {}, "Aaul1XMX5qECzrpk": {}, "dmCU86u0UE2dvEp3": {}}, "features": ["YYVYTusSuXcAXVWw", "OrwqMGW9PAkjmxGE", "kaWVyrM8fPd7VIjq"], "flexible": true, "images": [{"as": "AOxjLIZn75o6rqcW", "caption": "UekSg1gp3VKhLvv7", "height": 10, "imageUrl": "nxv79ewDYfn05GQJ", "smallImageUrl": "J6pcWJloRGBPP99i", "width": 19}, {"as": "tRHQcHVPkzPny5Bu", "caption": "aOhxI2VMO0RPp5UO", "height": 71, "imageUrl": "llSi1BfPraphOLMz", "smallImageUrl": "sg7WnQEOay6Hgugx", "width": 7}, {"as": "UxLBCA0z1p82I7Ot", "caption": "rq09jIJmNEB3snsn", "height": 21, "imageUrl": "1PxdUfMTjXYgzYs1", "smallImageUrl": "VJpy54DyylKtdzSH", "width": 91}], "inventoryConfig": {"customAttributes": {"YtxGpxwuLvp6YThs": {}, "U5F8a52YJ8KYt495": {}, "4I7pUVIkmJAdkplc": {}}, "serverCustomAttributes": {"3tYcFwfvfcVkrGoH": {}, "VTRZZ0jCznHUP48Z": {}, "QeWNKOHYSmZeLsFl": {}}, "slotUsed": 18}, "itemIds": ["v7mRF4lC1rtjf04t", "fAi9N6cduJD0VhTi", "w7ctcDWvLjAKB6PG"], "itemQty": {"6S1P6dBtddGiWNH8": 0, "vD7XCX7Upqsj8Bm5": 53, "nnxphy9d28pv62g9": 2}, "itemType": "CODE", "listable": true, "localizations": {"w7MItn7zShwXY7BC": {"description": "8JpMendvhvMZ9HSE", "localExt": {"a0L5jWoKFTd8h1AC": {}, "KgNGCH3N7ejy05pp": {}, "GSqRWbOn8GYJ1RT7": {}}, "longDescription": "L11HbpWcSutmGbFT", "title": "85fXHU5zKyIZFG67"}, "fkIvh1FUe9Eeedfn": {"description": "MbyiG12qhcdsCbn0", "localExt": {"VViB9xPtgU77UoF8": {}, "QAaZw86p48qYGVIW": {}, "V7Lm6GrmpFA6O9E7": {}}, "longDescription": "V7Vb8tFs9BY1Inm1", "title": "JrUXNDiZ5CqhRsgc"}, "qVtzIuPpViBnGbR9": {"description": "ERlxBB9OiNRVkf5S", "localExt": {"A0744MGQmU9EV29C": {}, "KJKOLSGYEZShLUYF": {}, "UJY4QwNsdpVnafLq": {}}, "longDescription": "gDhvuypQJc8QiHEg", "title": "zreYKJB11yGZgcGr"}}, "lootBoxConfig": {"rewardCount": 29, "rewards": [{"lootBoxItems": [{"count": 18, "duration": 74, "endDate": "1972-06-01T00:00:00Z", "itemId": "P6nOcrWXmGemQSFf", "itemSku": "Dwf2NYWyQP9sIIkb", "itemType": "9jlBOWMXozzjGAs0"}, {"count": 21, "duration": 24, "endDate": "1972-08-23T00:00:00Z", "itemId": "xYBuixWaJ6TiLsfR", "itemSku": "ToaZ0XV9kzjGTswT", "itemType": "x5umUWvbha8MKYcj"}, {"count": 17, "duration": 84, "endDate": "1991-12-20T00:00:00Z", "itemId": "YTyepRGbwhrHbhaD", "itemSku": "nqo7NCkPzpZoGjAA", "itemType": "9rhigLiyACr3pXP0"}], "name": "IJ9dYMgxYlGTDPes", "odds": 0.13533446322994425, "type": "PROBABILITY_GROUP", "weight": 35}, {"lootBoxItems": [{"count": 59, "duration": 1, "endDate": "1982-05-28T00:00:00Z", "itemId": "uEY0lT6S9YjWkfiV", "itemSku": "pXht0dualaNitHnQ", "itemType": "AIR1ZuN9vdkMVEso"}, {"count": 17, "duration": 45, "endDate": "1972-02-18T00:00:00Z", "itemId": "1zTxyITWcDeaPSDA", "itemSku": "HlGSE9Cn8GLB5o8g", "itemType": "X8r49TKCuo0wa8iY"}, {"count": 50, "duration": 100, "endDate": "1977-05-30T00:00:00Z", "itemId": "Hf2KTSKrGpeLg61u", "itemSku": "sFSL0WUrg3t3YHKO", "itemType": "w4setPTGqtTpOoIZ"}], "name": "h8ztLtH5qBQCwc8U", "odds": 0.461937044478137, "type": "REWARD", "weight": 75}, {"lootBoxItems": [{"count": 17, "duration": 69, "endDate": "1974-08-10T00:00:00Z", "itemId": "aZOQXQ0XHvlKLjyu", "itemSku": "4pl74opd427eYPuN", "itemType": "B6CqAzSTs1P4GhoT"}, {"count": 89, "duration": 81, "endDate": "1974-09-27T00:00:00Z", "itemId": "Hh5ILF7IQ8G99vFU", "itemSku": "vPTPDQ7Y8o2ylSuD", "itemType": "WNxUomaHg2Zsc3to"}, {"count": 98, "duration": 16, "endDate": "1985-04-10T00:00:00Z", "itemId": "P4TL8wCyr8ioSItT", "itemSku": "bzhTMGFda6XUifez", "itemType": "OTEleIvyuX2DfhqP"}], "name": "Gc0YO6FVAjCfeX2D", "odds": 0.5461354055962463, "type": "PROBABILITY_GROUP", "weight": 45}], "rollFunction": "DEFAULT"}, "maxCount": 33, "maxCountPerUser": 67, "name": "UAJx4eLdAIXf4ZGg", "optionBoxConfig": {"boxItems": [{"count": 88, "duration": 35, "endDate": "1981-01-08T00:00:00Z", "itemId": "uebIC0Q03en4ZV1c", "itemSku": "odd4BkLaYgfgWNZ6", "itemType": "3ATzF4vRbC9JAnc6"}, {"count": 83, "duration": 41, "endDate": "1992-04-01T00:00:00Z", "itemId": "OKagS7kU6BtgehK4", "itemSku": "tgg7YyNksQbDZ1Kz", "itemType": "Z0ZtnS9J0RTMO5mj"}, {"count": 56, "duration": 76, "endDate": "1979-09-05T00:00:00Z", "itemId": "fSZm0B4aGUEMcWED", "itemSku": "aB25f2x1RdzW7mle", "itemType": "R30gMB1AOALgET4w"}]}, "purchasable": false, "recurring": {"cycle": "MONTHLY", "fixedFreeDays": 46, "fixedTrialCycles": 51, "graceDays": 50}, "regionData": {"08eOgdaQPCy8INnV": [{"currencyCode": "2imOmJ5lZLQSuSxD", "currencyNamespace": "yr3IXUq8lMI3FrfO", "currencyType": "REAL", "discountAmount": 59, "discountExpireAt": "1998-02-01T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1999-02-19T00:00:00Z", "expireAt": "1978-08-15T00:00:00Z", "price": 50, "purchaseAt": "1971-09-13T00:00:00Z", "trialPrice": 70}, {"currencyCode": "PgSq0mx4FTHaD9Ct", "currencyNamespace": "EyU2OelB1EzNCAhe", "currencyType": "VIRTUAL", "discountAmount": 38, "discountExpireAt": "1999-11-13T00:00:00Z", "discountPercentage": 33, "discountPurchaseAt": "1984-06-02T00:00:00Z", "expireAt": "1995-08-07T00:00:00Z", "price": 76, "purchaseAt": "1994-01-14T00:00:00Z", "trialPrice": 33}, {"currencyCode": "BGuXrfjOzB9jyDoA", "currencyNamespace": "7C1Y6Tm3faepXJlu", "currencyType": "VIRTUAL", "discountAmount": 18, "discountExpireAt": "1979-09-04T00:00:00Z", "discountPercentage": 96, "discountPurchaseAt": "1985-08-31T00:00:00Z", "expireAt": "1990-05-31T00:00:00Z", "price": 76, "purchaseAt": "1992-07-20T00:00:00Z", "trialPrice": 65}], "Y9XP0hFaceWkhvRV": [{"currencyCode": "QMT2LMvTUTcR7ZzY", "currencyNamespace": "PF7QrWc3jMoynOQH", "currencyType": "REAL", "discountAmount": 54, "discountExpireAt": "1979-04-22T00:00:00Z", "discountPercentage": 73, "discountPurchaseAt": "1972-03-26T00:00:00Z", "expireAt": "1991-07-02T00:00:00Z", "price": 96, "purchaseAt": "1974-12-24T00:00:00Z", "trialPrice": 11}, {"currencyCode": "RTUJerRlxMsTCi7u", "currencyNamespace": "IdL8GtsdosBukh0S", "currencyType": "REAL", "discountAmount": 92, "discountExpireAt": "1978-06-01T00:00:00Z", "discountPercentage": 2, "discountPurchaseAt": "1997-07-06T00:00:00Z", "expireAt": "1972-06-08T00:00:00Z", "price": 14, "purchaseAt": "1981-02-06T00:00:00Z", "trialPrice": 75}, {"currencyCode": "aKxtyxrOFHCRlFU5", "currencyNamespace": "dh1sSgSDp7Mq1Q6J", "currencyType": "VIRTUAL", "discountAmount": 82, "discountExpireAt": "1974-10-09T00:00:00Z", "discountPercentage": 62, "discountPurchaseAt": "1990-11-29T00:00:00Z", "expireAt": "1974-06-06T00:00:00Z", "price": 100, "purchaseAt": "1982-08-18T00:00:00Z", "trialPrice": 67}], "SojIQNRlyMjvyYj5": [{"currencyCode": "pxppXocqHe0Ob9Mq", "currencyNamespace": "83NghF1AyIJEjmzt", "currencyType": "REAL", "discountAmount": 33, "discountExpireAt": "1975-03-10T00:00:00Z", "discountPercentage": 59, "discountPurchaseAt": "1987-02-15T00:00:00Z", "expireAt": "1982-07-12T00:00:00Z", "price": 26, "purchaseAt": "1991-10-13T00:00:00Z", "trialPrice": 61}, {"currencyCode": "vZtUF6eHybXljRaV", "currencyNamespace": "w14DBUu9BkXmgX7s", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1979-01-01T00:00:00Z", "discountPercentage": 22, "discountPurchaseAt": "1975-04-17T00:00:00Z", "expireAt": "1972-05-31T00:00:00Z", "price": 39, "purchaseAt": "1974-10-11T00:00:00Z", "trialPrice": 11}, {"currencyCode": "nFVuBYtwBkYotxt9", "currencyNamespace": "jEbqNqM450foHlrs", "currencyType": "VIRTUAL", "discountAmount": 31, "discountExpireAt": "1988-05-07T00:00:00Z", "discountPercentage": 86, "discountPurchaseAt": "1981-03-15T00:00:00Z", "expireAt": "1981-03-26T00:00:00Z", "price": 24, "purchaseAt": "1996-06-05T00:00:00Z", "trialPrice": 67}]}, "saleConfig": {"currencyCode": "yc4nXMJA0EfGNhCL", "price": 77}, "seasonType": "PASS", "sectionExclusive": false, "sellable": true, "sku": "EmOMUf5pTqC7FJk0", "stackable": true, "status": "ACTIVE", "tags": ["f2oB58B3jWqZtiXu", "sIXZHEZbgsT6Mg7m", "C5kISVp4gB3qyTh2"], "targetCurrencyCode": "MckldWXq1aJvfPmV", "targetNamespace": "9P39QzgMJjFXKBfV", "thumbnailUrl": "bZVvAbyiCAcyKlN5", "useCount": 25}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
