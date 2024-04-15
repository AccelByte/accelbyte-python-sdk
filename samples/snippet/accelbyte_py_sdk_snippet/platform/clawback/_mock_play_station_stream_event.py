import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import mock_play_station_stream_event
from accelbyte_py_sdk.api.platform.models import ClawbackInfo
from accelbyte_py_sdk.api.platform.models import StreamEvent

"""
body:
Definition: StreamEvent
body: StreamEventBody
Definition: StreamEventBody
    account: str
    additional_data: EventAdditionalData
    Definition: EventAdditionalData
        entitlement: List[AdditionalDataEntitlement]
        Definition: List[AdditionalDataEntitlement]
            client_transaction: List[ClientTransaction]
            Definition: List[ClientTransaction]
                amount_consumed: int
                client_transaction_id: str
            entitlement_id: str
            usage_count: int
        purpose: str
    original_title_name: str
    payment_product_sku: str
    purchase_date: str
    source_order_item_id: str
    title_name: str
event_domain: str
event_source: str
event_type: str
event_version: int
id_: str
timestamp: str

Example: '{"body": {"account": "6QQ7e8Get232TdwZ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 15, "clientTransactionId": "zTaZx7rZy4yKvr5v"}, {"amountConsumed": 53, "clientTransactionId": "uQjo7tdWwyRoWnzx"}, {"amountConsumed": 51, "clientTransactionId": "zachqRAj7Y5BlJ1O"}], "entitlementId": "HY4ckhFmDvepUxUv", "usageCount": 83}, {"clientTransaction": [{"amountConsumed": 93, "clientTransactionId": "4KIMRqnzQGCy3HXP"}, {"amountConsumed": 54, "clientTransactionId": "zPq7lbPiQiuSbW5i"}, {"amountConsumed": 61, "clientTransactionId": "O6fjdgvu5UZGZTnJ"}], "entitlementId": "QDwFNiQzwn6UrS20", "usageCount": 43}, {"clientTransaction": [{"amountConsumed": 60, "clientTransactionId": "86b9ISRaDBPpvm6D"}, {"amountConsumed": 39, "clientTransactionId": "2FFcwr7gWqnitnJ0"}, {"amountConsumed": 100, "clientTransactionId": "sP4T3CJRy88vYj1m"}], "entitlementId": "CYzoVerk427OmkpK", "usageCount": 76}], "purpose": "ZoPo03GRY4u5hy6Q"}, "originalTitleName": "xaAdAwDmoiu1lTh4", "paymentProductSKU": "9CyzFx0eNlcLtAgY", "purchaseDate": "Rqxfmjp56p2EA3W2", "sourceOrderItemId": "4GGRdiDCWqmeFg02", "titleName": "puhSjVMuxUc4S9Zt"}, "eventDomain": "HuBWJeWLMvo64CCu", "eventSource": "sb2p5LBJEVLSddab", "eventType": "BIoPNHTyqx3fa6L5", "eventVersion": 28, "id": "XxA1S4LQW3HY0V5z", "timestamp": "1FcPPykD2GH1AiqQ"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
