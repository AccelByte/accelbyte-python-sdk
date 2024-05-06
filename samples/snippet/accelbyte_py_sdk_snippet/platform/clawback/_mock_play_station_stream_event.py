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

Example: '{"body": {"account": "Pbsa1ylBNiJwsDBZ", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 53, "clientTransactionId": "TcW1aHisRQPhaHGv"}, {"amountConsumed": 12, "clientTransactionId": "7YiMivALhajzzYiq"}, {"amountConsumed": 56, "clientTransactionId": "BAd92b72sSwT3p04"}], "entitlementId": "G0HvWwcRflTgS1n8", "usageCount": 99}, {"clientTransaction": [{"amountConsumed": 58, "clientTransactionId": "SOhEYUq1ycN1V80Q"}, {"amountConsumed": 50, "clientTransactionId": "TZIZN34LyaPbQgiS"}, {"amountConsumed": 47, "clientTransactionId": "jdFCvU15uMRPZS3K"}], "entitlementId": "x1Uu9vtsW66sBFta", "usageCount": 97}, {"clientTransaction": [{"amountConsumed": 81, "clientTransactionId": "XTaGmPtBaCqvi4TT"}, {"amountConsumed": 53, "clientTransactionId": "iIWZ7NV2sPighQDb"}, {"amountConsumed": 21, "clientTransactionId": "D0KwQ6ULWSbkNZNQ"}], "entitlementId": "6cr8pH8SkLtHITRJ", "usageCount": 65}], "purpose": "FwsueAcRj2CL16I0"}, "originalTitleName": "dc6wWXVIaA22c6wq", "paymentProductSKU": "TtPjuHIa7WJBHZyt", "purchaseDate": "7PCntV2SXWcpadCn", "sourceOrderItemId": "WIA3IQsVS76sr3Eu", "titleName": "qDy1P4k7UL0C8bmI"}, "eventDomain": "TvXEjk8V9NMEc7F2", "eventSource": "CmhVDH4PI2Kwyrsh", "eventType": "n2oLdh0RSjE9qWBJ", "eventVersion": 93, "id": "nidD8Mr55zo7GcWq", "timestamp": "9GPakHnSGUYydQkm"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
