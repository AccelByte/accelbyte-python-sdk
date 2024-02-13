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

Example: '{"body": {"account": "7eAj6NWtZn9pcFdF", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 35, "clientTransactionId": "Pp1qrLvKyUOMXujy"}, {"amountConsumed": 100, "clientTransactionId": "7E6M0616JodxJW03"}, {"amountConsumed": 3, "clientTransactionId": "GiL7jyZWd4XmZ4kk"}], "entitlementId": "LwQUAFq891ZdbUJk", "usageCount": 45}, {"clientTransaction": [{"amountConsumed": 60, "clientTransactionId": "XOPXynjeeO1if5Mz"}, {"amountConsumed": 23, "clientTransactionId": "2AIxPDpQuglYCpxF"}, {"amountConsumed": 10, "clientTransactionId": "0bTbs14wXBlPBJAZ"}], "entitlementId": "4vuVQhb8tXPSje42", "usageCount": 15}, {"clientTransaction": [{"amountConsumed": 11, "clientTransactionId": "BYnph4dqrxNfcog2"}, {"amountConsumed": 17, "clientTransactionId": "7UohLQK08RKD19wT"}, {"amountConsumed": 36, "clientTransactionId": "Id9hof3q2nDtFMX0"}], "entitlementId": "iTMrDIkghOQW0j0E", "usageCount": 35}], "purpose": "7RwUPeaFkNGQoXzK"}, "originalTitleName": "4zFuZbCReirEHWxH", "paymentProductSKU": "FMV1w6Hxc2XZSr84", "purchaseDate": "tIlu1zxN0QQOp8k2", "sourceOrderItemId": "NLYsNMPNfaW4Hxjc", "titleName": "gsUPPRUZlZ9RNuis"}, "eventDomain": "ipGbmiiMMybNq03y", "eventSource": "0A0QJ4ASZ6EzBnn0", "eventType": "nGr2togUoKiQ9iOt", "eventVersion": 24, "id": "ATT7uhpjgOVPZFfG", "timestamp": "xviRos5yiXWhrYv4"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
