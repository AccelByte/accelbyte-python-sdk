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

Example: '{"body": {"account": "X1GiwHjhQ9cmhY2I", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 78, "clientTransactionId": "psr7M7ebizQYyBvg"}, {"amountConsumed": 91, "clientTransactionId": "Y6SGEAnhhUDxPsSK"}, {"amountConsumed": 30, "clientTransactionId": "YEQEUvUELyZnMe0X"}], "entitlementId": "IYPf08seOOKy95VC", "usageCount": 3}, {"clientTransaction": [{"amountConsumed": 69, "clientTransactionId": "jKYt944JzTHSRBLF"}, {"amountConsumed": 33, "clientTransactionId": "jC6m8gprtCDrOe8F"}, {"amountConsumed": 25, "clientTransactionId": "l1yyTci63PsPOj24"}], "entitlementId": "yrHJTFMvGYNfJsVQ", "usageCount": 39}, {"clientTransaction": [{"amountConsumed": 99, "clientTransactionId": "z8qm7I5JnFstNdVw"}, {"amountConsumed": 5, "clientTransactionId": "G8T2Qsqw7e5uUbNX"}, {"amountConsumed": 36, "clientTransactionId": "ePQtLbLLJ7v3p7BC"}], "entitlementId": "puYQlfWfuXMHApTp", "usageCount": 82}], "purpose": "7Uyk3kP2a3WWfpkk"}, "originalTitleName": "IOVeYzu7W8zpWZuN", "paymentProductSKU": "HCIYN2OpXrH1n4ta", "purchaseDate": "vNsZFJOGr4TCRuw8", "sourceOrderItemId": "0K5qPRCSlGApqD28", "titleName": "U89Iq2hMHQ0q8HGY"}, "eventDomain": "bpglYhW2y4vm5wZq", "eventSource": "KmishVfgqG517SOw", "eventType": "nDLfczp4RQjbT5pg", "eventVersion": 49, "id": "aB4dcA38GQbNAnP4", "timestamp": "2YG5QFtnNuSARAb2"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
