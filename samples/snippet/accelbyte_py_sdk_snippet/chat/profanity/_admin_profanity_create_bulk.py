import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_create_bulk
from accelbyte_py_sdk.api.chat.models import ModelsDictionary
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryInsertBulkRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsDictionaryInsertBulkRequest
dictionaries: List[ModelsDictionaryInsertRequest]
Definition: List[ModelsDictionaryInsertRequest]
    false_negative: List[str]
    false_positive: List[str]
    word: str
    word_type: str

Example: '{"dictionaries": [{"falseNegative": ["tjgNOQdmHL7u9tys", "XrR8ZqTNPKjn2xkQ", "Iy3zXVOkyO3t1nbr"], "falsePositive": ["uqPGySJIQ5kGAAuh", "1XBQrZTRA4sT4auy", "slFNUiECTDZRj6Al"], "word": "WyKGdVlFfVW0TUhX", "wordType": "lnPnl0z3nbXJNAZY"}, {"falseNegative": ["oJCUH7Z2Afxecch6", "werwCARINe8ckcIx", "PoGfDmqwuR8nk4nA"], "falsePositive": ["Ea7ItB26nOzRaKaF", "qxgEgwMzt3eVcSah", "VOj8nrSzOaAcWFzR"], "word": "ugvmQcEoPqre7JPc", "wordType": "iUrXbmzjN1GJ5D3N"}, {"falseNegative": ["UoGcNrp1isDNpl26", "uwxOaJdEJTSZwA9A", "pxPWTd46mEeS5dnw"], "falsePositive": ["V6TYDQd3JNfLSO5F", "OVMukhzuK4wfpEwp", "Hd7DhBK5288i3IbZ"], "word": "CqSzzscPQXDJDy1j", "wordType": "NckDpJ8YJ9QA2bw4"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
