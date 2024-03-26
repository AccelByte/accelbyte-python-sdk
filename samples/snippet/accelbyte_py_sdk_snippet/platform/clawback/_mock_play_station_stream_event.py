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

Example: '{"body": {"account": "HVGFTVlFe575sC63", "additionalData": {"entitlement": [{"clientTransaction": [{"amountConsumed": 70, "clientTransactionId": "YR8DmKWaUjXEg2BZ"}, {"amountConsumed": 33, "clientTransactionId": "4ZGIW8kJ7MNCgiz4"}, {"amountConsumed": 79, "clientTransactionId": "e3qyHc73Loi80u8d"}], "entitlementId": "BO14H9YfMSNWxnaT", "usageCount": 42}, {"clientTransaction": [{"amountConsumed": 47, "clientTransactionId": "jpj2ypv4UDBpZgAG"}, {"amountConsumed": 37, "clientTransactionId": "32P6idQr6A9Ck88k"}, {"amountConsumed": 10, "clientTransactionId": "XHDkJxBL2ZNjzPrs"}], "entitlementId": "a19J8N7nd2wE1zdY", "usageCount": 53}, {"clientTransaction": [{"amountConsumed": 83, "clientTransactionId": "HCMvGYum1QxU8qPL"}, {"amountConsumed": 50, "clientTransactionId": "lTUs9WnufOcBvTGK"}, {"amountConsumed": 83, "clientTransactionId": "RH4Ol7rZ4zkL6zp4"}], "entitlementId": "5V4JNSzPLVrotvRg", "usageCount": 38}], "purpose": "uvTtnEo1w0PSdsym"}, "originalTitleName": "ue1CObm2PikUjdiN", "paymentProductSKU": "II2r1424vhmERsv2", "purchaseDate": "mSKN9O44LAqvhblJ", "sourceOrderItemId": "kckG2oQpKwZQ44mw", "titleName": "WI5jEOSEnTss4p6V"}, "eventDomain": "a0x1OBfXqsEjnTmv", "eventSource": "3kQf70CS9hwdjoqX", "eventType": "H0PZbuGctJHItiFV", "eventVersion": 48, "id": "T301lDdpGyuzOYG0", "timestamp": "FYwvm1JUi7yFJIs9"}'
"""

result, error = mock_play_station_stream_event(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
