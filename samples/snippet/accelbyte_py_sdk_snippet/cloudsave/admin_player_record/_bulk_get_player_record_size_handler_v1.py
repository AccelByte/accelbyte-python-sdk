import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import bulk_get_player_record_size_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkGetPlayerRecordSizeResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsBulkUserKeyRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

"""
body:
Definition: ModelsBulkUserKeyRequest
data: List[ModelsUserKeyRequest]
Definition: List[ModelsUserKeyRequest]
    keys: List[str]
    user_id: str

Example: '{"data": [{"keys": ["xuEWG2Eyz9NhZdlz", "xZctMLr0q9aKLNwI", "9xxH23OIJQyx2pPD"], "user_id": "rzMTCMYyP5IV2EeV"}, {"keys": ["2AFcmr15TauEh7M5", "9vw5rnFZvNZw1TvN", "sHTWzcNtwpwGJib2"], "user_id": "nD6fKl2TIE37iKoK"}, {"keys": ["09pGZl4zxTpKbFCo", "TwueizcexKimUxBS", "LlTX6H6w02Pqb4PF"], "user_id": "nW1ZlGoqp89mm1Kc"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
