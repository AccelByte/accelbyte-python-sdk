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

Example: '{"falseNegative": ["qYTjLvu99Qm9rqAF", "NOL1NodfvGsoQq2G", "ohIe7HdByE5L4cpr"], "falsePositive": ["QIkWZdoWJrhoxXi9", "kjv5iHVITe21eQwf", "cGATTJHTc8nnm2XF"], "word": "ORp90MMtcqLKqUWK", "wordType": "JFhS2WRfcZajDuqv"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
