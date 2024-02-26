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

Example: '{"body": {"account": "lHfDpX1EEmajGEl2", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 27, "clientTransactionId": "EbFNMcCLi3K8Btup"}, {"amountConsumed": 52, "clientTransactionId": "QGQj5zP7uKkyjfpg"}, {"amountConsumed": 88, "clientTransactionId": "iae76WZjPmu7kwkt"}], "entitlementId": "Vz3OW3uYihVjvkOC", "usageCount": 48}, {"clientTransaction": [{"amountConsumed": 63, "clientTransactionId": "ZOkbDhYH7tYHNytB"}, {"amountConsumed": 39, "clientTransactionId": "tZR1sCQIiSMrJKee"}, {"amountConsumed": 90, "clientTransactionId": "4H49gUnR7RIFScw2"}], "entitlementId": "e6ftsWmeqYEON0aI", "usageCount": 14}, {"clientTransaction": [{"amountConsumed": 14, "clientTransactionId": "DHGsstx5hz5cfkcG"}, {"amountConsumed": 39, "clientTransactionId": "CRWhbzGVJhtmdUWH"}, {"amountConsumed": 31, "clientTransactionId": "K6lHEOf4ZhWuG6JT"}], "entitlementId": "PSOUvXmN8uFOemwi", "usageCount": 63}], "purpose": "3CITiVtYiSxQdH2r"}, "originalTitleName": "SDcB5iKs1BXyh64q", "paymentProductSKU": "DEq9haczcxUiWOuj", "purchaseDate": "RNQJhvEUp4V4ywKh", "sourceOrderItemId": "YUHn8amnscwqp4uY", "titleName": "wUOHjXRK9DW5mzNM"}, "eventDomain": "3d1b25Mcn93Aj7An", "eventSource": "hUhvV8JUKTtjjxDn", "eventType": "IlRvT0Yz5304evKl", "eventVersion": 51, "id": "kdqwB8O7KrZ7owNR", "timestamp": "ajwakx4bjK9OIUyr"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
