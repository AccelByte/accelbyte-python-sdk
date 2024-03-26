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

Example: '{"appId": "yKZIUI4pFdLthSFe", "appType": "DLC", "baseAppId": "O5Errd8wBVUzzqy1", "boothName": "gWm1aO8PwdbbMzVT", "categoryPath": "hDABs7RyUSDAIzDA", "clazz": "nQlXrK84Ds59XYhS", "displayOrder": 2, "entitlementType": "DURABLE", "ext": {"G2C43uPG8vYp5L8b": {}, "PIpuV29LoLKpRjiQ": {}, "oXnIF69zycpBpFZ4": {}}, "features": ["FJgfcI7r7hKkDsM6", "OBXD4SoI7DyFun44", "fDtgzr4ey5JcYe31"], "flexible": true, "images": [{"as": "UEwXJVs3LtkcJCHz", "caption": "0XYbPUdehi6Sz4wY", "height": 22, "imageUrl": "fwtNYDRDiB5KpgNb", "smallImageUrl": "SAGpcxVZFx1d1XSY", "width": 20}, {"as": "on0RT8aw0SbvTWXQ", "caption": "0mjetCktCHK7GdEG", "height": 40, "imageUrl": "wVoDzESaHUP7KQlp", "smallImageUrl": "foeodKFE5vr9OCiJ", "width": 26}, {"as": "QYKwKmuwpZzwQXoA", "caption": "x50qjqj5fQTZvUmr", "height": 42, "imageUrl": "TDOfCMMtb8AFyoX2", "smallImageUrl": "7Q9L7YTh00rB7F6i", "width": 13}], "inventoryConfig": {"customAttributes": {"phYvfU4xcnSNMa4L": {}, "bah2hHKUBTHJKqPu": {}, "eHiA1Eocu7BbJY1i": {}}, "serverCustomAttributes": {"hEHuqXyjitdUcuWq": {}, "NZMzABBswJREBxJY": {}, "HkdQFZX0TcIKgHmH": {}}, "slotUsed": 84}, "itemIds": ["BV9iEzWZQfj5hcca", "0eohbJuOMHjrI7my", "IDVTsQygs1pKdenX"], "itemQty": {"ZPI5PxluDl63E8nY": 100, "XtcyUM63yiW5aeD6": 85, "1Y5nr9qBGVwXXVJl": 46}, "itemType": "COINS", "listable": false, "localizations": {"3V9D3qh9dQRUy7wX": {"description": "d546QcIjLsg7JcRw", "localExt": {"R84cFrlsVUI2VYLU": {}, "40wC806zjPsGHUAb": {}, "FsNeb1iXpd885Hro": {}}, "longDescription": "8JwidyC417JHBjVY", "title": "E4xmGclF0CKLAFOS"}, "EkDH8flT4OkNa7Tu": {"description": "H80DJGE9eM17Q1lI", "localExt": {"GJKDCs1Ovw7kVI1L": {}, "5bi9onbyRBlVUWBF": {}, "VVVWJwKPXMyO1zn6": {}}, "longDescription": "FuGIrPRilgEfcevp", "title": "7NR5uosHfvdGp6eF"}, "frZmsc2oqa9peeEx": {"description": "fXVnt4Qf7ist0UGW", "localExt": {"xZusoNE3suHTSaMP": {}, "OJOGaiVzeLq7rK5V": {}, "v9QNGh4gkxHQytw9": {}}, "longDescription": "P6Qk7f7rmMgWleMv", "title": "j9zEJkLtwKO52pmc"}}, "lootBoxConfig": {"rewardCount": 23, "rewards": [{"lootBoxItems": [{"count": 53, "duration": 72, "endDate": "1999-05-31T00:00:00Z", "itemId": "3JH8SKoN7548Yh2o", "itemSku": "R5znOdNFrbaJHzbd", "itemType": "62MzMxNSwwTOkLrY"}, {"count": 14, "duration": 79, "endDate": "1998-10-14T00:00:00Z", "itemId": "22xb2st4OV5ipghL", "itemSku": "H42iygqN06dDbbTO", "itemType": "NQ0eK0bDdFB3ACBd"}, {"count": 76, "duration": 36, "endDate": "1977-04-27T00:00:00Z", "itemId": "kVT5rKvN8rlBsToL", "itemSku": "gilRXWERRR1A8geu", "itemType": "cExu04FalILYOsb8"}], "name": "t0dA5EMSCsSt8mIB", "odds": 0.10682676787860557, "type": "PROBABILITY_GROUP", "weight": 37}, {"lootBoxItems": [{"count": 17, "duration": 71, "endDate": "1985-06-30T00:00:00Z", "itemId": "1YK98Hf2ROI06bAU", "itemSku": "Px2AQ02uQJ6RkpwA", "itemType": "lqyAdgHo1YAhZ0RZ"}, {"count": 51, "duration": 44, "endDate": "1998-08-17T00:00:00Z", "itemId": "dOAjCULK9Myq39H2", "itemSku": "SdeAzTnpLnTfLM0D", "itemType": "KsDse36Q0YzC913o"}, {"count": 73, "duration": 98, "endDate": "1996-12-15T00:00:00Z", "itemId": "1OmrETdNYTHIKp6t", "itemSku": "P5JEuL3egj0ZslSx", "itemType": "5Xsdal4GAb2vkilq"}], "name": "Fqj3oXMApNzbCGsq", "odds": 0.7554947546552401, "type": "REWARD", "weight": 42}, {"lootBoxItems": [{"count": 19, "duration": 97, "endDate": "1996-02-05T00:00:00Z", "itemId": "SvffH8G1WaEkJXuf", "itemSku": "4NRogNBP8CgmzSFv", "itemType": "3Axb5qakpDFUxlSP"}, {"count": 1, "duration": 14, "endDate": "1981-12-25T00:00:00Z", "itemId": "EYhysoSGzoGLHUQa", "itemSku": "nnTQ9n7lcua8H3QM", "itemType": "LZM4NP1yG2du8Bcw"}, {"count": 73, "duration": 11, "endDate": "1986-04-20T00:00:00Z", "itemId": "CBing0i4hJliwKJU", "itemSku": "Ij3M5xv9n4k9c9Jt", "itemType": "fPKHByQxLNOjWQ0O"}], "name": "td1MpmB3ShxSA1Q7", "odds": 0.17859345640811153, "type": "PROBABILITY_GROUP", "weight": 59}], "rollFunction": "CUSTOM"}, "maxCount": 58, "maxCountPerUser": 38, "name": "7pwVXovH8wOpCMKQ", "optionBoxConfig": {"boxItems": [{"count": 32, "duration": 73, "endDate": "1991-07-19T00:00:00Z", "itemId": "j8D6EJGIw92sKlRY", "itemSku": "T7RnOWWSWJEdPF1i", "itemType": "za4lQecc64Wvg90w"}, {"count": 41, "duration": 6, "endDate": "1986-07-05T00:00:00Z", "itemId": "zRPduQjYnc8iXM5i", "itemSku": "1tj05Yau5sUnxcW3", "itemType": "E5che7AMDMVpwrCC"}, {"count": 30, "duration": 39, "endDate": "1990-05-14T00:00:00Z", "itemId": "HSJ1wAT4LHkaF8Nz", "itemSku": "a33nAgdjvfCWFp8m", "itemType": "KCSsZxoOwFrY0rqK"}]}, "purchasable": false, "recurring": {"cycle": "WEEKLY", "fixedFreeDays": 92, "fixedTrialCycles": 50, "graceDays": 9}, "regionData": {"8CZtiA0HrElYgNnq": [{"currencyCode": "fbKSCPtYeU2sG7N8", "currencyNamespace": "x11Jwka7EQmSRw9s", "currencyType": "REAL", "discountAmount": 2, "discountExpireAt": "1994-04-23T00:00:00Z", "discountPercentage": 66, "discountPurchaseAt": "1996-01-28T00:00:00Z", "expireAt": "1977-02-24T00:00:00Z", "price": 25, "purchaseAt": "1994-04-22T00:00:00Z", "trialPrice": 91}, {"currencyCode": "5C1b2jBuUw1Fj1hB", "currencyNamespace": "fHAOLPhnzO0ub8jV", "currencyType": "VIRTUAL", "discountAmount": 50, "discountExpireAt": "1989-01-18T00:00:00Z", "discountPercentage": 93, "discountPurchaseAt": "1995-08-07T00:00:00Z", "expireAt": "1983-06-05T00:00:00Z", "price": 38, "purchaseAt": "1998-07-17T00:00:00Z", "trialPrice": 76}, {"currencyCode": "KXYrH8B9IiEWmTK5", "currencyNamespace": "Ooo4NWqMnsYCRKRY", "currencyType": "VIRTUAL", "discountAmount": 10, "discountExpireAt": "1995-02-02T00:00:00Z", "discountPercentage": 10, "discountPurchaseAt": "1981-05-17T00:00:00Z", "expireAt": "1988-06-19T00:00:00Z", "price": 95, "purchaseAt": "1991-09-29T00:00:00Z", "trialPrice": 94}], "PSEHIEiemzXIMHxw": [{"currencyCode": "ImmqkOSTrYs7yL2O", "currencyNamespace": "9YhYmEmR76uT8VGu", "currencyType": "VIRTUAL", "discountAmount": 54, "discountExpireAt": "1994-06-22T00:00:00Z", "discountPercentage": 5, "discountPurchaseAt": "1983-09-12T00:00:00Z", "expireAt": "1995-05-15T00:00:00Z", "price": 87, "purchaseAt": "1985-12-19T00:00:00Z", "trialPrice": 7}, {"currencyCode": "IE0YrnOLFXiM6Vvj", "currencyNamespace": "QrzsLrLiytYyN0KY", "currencyType": "VIRTUAL", "discountAmount": 81, "discountExpireAt": "1996-11-22T00:00:00Z", "discountPercentage": 92, "discountPurchaseAt": "1992-04-21T00:00:00Z", "expireAt": "1983-01-06T00:00:00Z", "price": 73, "purchaseAt": "1974-12-25T00:00:00Z", "trialPrice": 64}, {"currencyCode": "WVgcUb1e5PhBBENJ", "currencyNamespace": "QctpPdV28eRhRPvk", "currencyType": "VIRTUAL", "discountAmount": 70, "discountExpireAt": "1992-10-07T00:00:00Z", "discountPercentage": 80, "discountPurchaseAt": "1992-11-28T00:00:00Z", "expireAt": "1989-12-03T00:00:00Z", "price": 56, "purchaseAt": "1989-04-03T00:00:00Z", "trialPrice": 92}], "Z8U8b7cvARwr7XNh": [{"currencyCode": "abCVOte97AaXfGOY", "currencyNamespace": "6gelqxCu6vIJvVt5", "currencyType": "REAL", "discountAmount": 5, "discountExpireAt": "1999-01-26T00:00:00Z", "discountPercentage": 72, "discountPurchaseAt": "1985-08-14T00:00:00Z", "expireAt": "1982-01-27T00:00:00Z", "price": 40, "purchaseAt": "1995-08-09T00:00:00Z", "trialPrice": 71}, {"currencyCode": "R7WpMAUSb2xiUwXl", "currencyNamespace": "wPjr3AjalK2rFxzI", "currencyType": "VIRTUAL", "discountAmount": 83, "discountExpireAt": "1989-11-07T00:00:00Z", "discountPercentage": 18, "discountPurchaseAt": "1996-01-10T00:00:00Z", "expireAt": "1977-01-17T00:00:00Z", "price": 43, "purchaseAt": "1985-11-11T00:00:00Z", "trialPrice": 45}, {"currencyCode": "DKruTekVrF6nCQU2", "currencyNamespace": "XsKSVGDwp2lFA94o", "currencyType": "REAL", "discountAmount": 63, "discountExpireAt": "1980-02-21T00:00:00Z", "discountPercentage": 6, "discountPurchaseAt": "1983-01-11T00:00:00Z", "expireAt": "1975-04-23T00:00:00Z", "price": 35, "purchaseAt": "1996-01-16T00:00:00Z", "trialPrice": 92}]}, "saleConfig": {"currencyCode": "OPTVGqDATzsiyhIT", "price": 11}, "seasonType": "TIER", "sectionExclusive": false, "sellable": true, "sku": "fAwG7JiXAA10oTrK", "stackable": false, "status": "ACTIVE", "tags": ["TQF4ZEYQiiqyTY6a", "Zxh418tjv7U1bRHM", "BbmwGwaPejI0e1YR"], "targetCurrencyCode": "tMGW9AJARuOlLdBf", "targetNamespace": "u99q32EbcF8blXe2", "thumbnailUrl": "Ksy8k3GGzAq6HCTB", "useCount": 3}'
"""

result, error = create_item(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
