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

Example: '{"falseNegative": ["beuqujzGzxB2jdEX", "jU1IRIDMqqly5edD", "czmw6uEP9d0EhXOS"], "falsePositive": ["zTY3ToX5JGI3uwc9", "o5XH4irvPPIfGQzc", "HLJonly5CmwRuVQy"], "word": "FWDkRxjBtoEcoK1c", "wordType": "1Ur1S9BwQORBfKLh"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
