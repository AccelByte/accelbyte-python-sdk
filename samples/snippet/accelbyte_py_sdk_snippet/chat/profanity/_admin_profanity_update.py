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

Example: '{"falseNegative": ["teYuFN9Wnhg53lLQ", "KKraLMbudJFLQWNU", "ypHRNxxNM3rCzvFt"], "falsePositive": ["FkFvxJRWGwGNcDSy", "8kdhS0Xkn2Azj3TE", "i7aQc3PqRfIki56D"], "word": "V5oMWuUZYPEKEL9W", "wordType": "zEa9dSNrrtHrcWE6"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
