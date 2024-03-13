import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_create
from accelbyte_py_sdk.api.chat.models import ModelsDictionary
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryInsertRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsDictionaryInsertRequest
false_negative: List[str]
false_positive: List[str]
word: str
word_type: str

Example: '{"falseNegative": ["1vxQRorOFSQYfxn0", "JybePSeowFpNLwvu", "c7DMrknKopAnzUdT"], "falsePositive": ["A5WKzjGhw28uTECY", "6Cvh48QwbQ2CBCGq", "4FuYfykIVTF8I3yn"], "word": "RCrbEeWZbeipnK2j", "wordType": "T4YPBj3jnTkdxTLX"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
