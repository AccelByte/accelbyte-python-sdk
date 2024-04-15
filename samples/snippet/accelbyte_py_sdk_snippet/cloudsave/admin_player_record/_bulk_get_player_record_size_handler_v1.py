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

Example: '{"data": [{"keys": ["JS1i9WcTTORXtcB2", "goFBOVRykV0KhVCk", "QQSHzWW5SEs2JxZk"], "user_id": "6dg0SwwDDWuJyAXD"}, {"keys": ["xFAltUd2CLsZiBpv", "OpSDZ9xzvLlwovbv", "0RNEMnpGCcTpcoaD"], "user_id": "mHhYqMNnBq2ZRZiy"}, {"keys": ["g8cHFgqp6EHhjhco", "ey8tcSRQJGbvxgrD", "ngqmatYwXiMvMG7e"], "user_id": "aiHNSEDqqKmUeVPF"}]}'
"""

result, error = bulk_get_player_record_size_handler_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
