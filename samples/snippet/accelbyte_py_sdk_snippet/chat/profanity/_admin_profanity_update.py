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

Example: '{"falseNegative": ["EysULKQAqTcutz7C", "fPzMILuAFevXSvsZ", "bYl4GWOLkYU2QoHM"], "falsePositive": ["890JtnSHWBEIWZvB", "rWVtmaOclvclbE4B", "yG4Rwzb4Y9EBFx1i"], "word": "PUHP2bOsZv3eGl4j", "wordType": "9UeZBvZqwHu7HB3T"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
