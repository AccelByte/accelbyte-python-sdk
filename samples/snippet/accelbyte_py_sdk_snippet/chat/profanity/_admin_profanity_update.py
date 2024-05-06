import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_update
from accelbyte_py_sdk.api.chat.models import ModelsDictionary
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryUpdateRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsDictionaryUpdateRequest
false_negative: List[str]
false_positive: List[str]
word: str
word_type: str

Example: '{"falseNegative": ["B80xYFiwXnUL3Tub", "vA6nLan0NzDkdcK6", "NsPIcxEce5UGVNNk"], "falsePositive": ["879OHpSWHkXBzkNX", "wVWhTQNiKBdJhrfP", "DeNLfdoTTEo3CyAq"], "word": "ixe6tJe23x3Srtfp", "wordType": "AKd7g8oaXgryeQAt"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
