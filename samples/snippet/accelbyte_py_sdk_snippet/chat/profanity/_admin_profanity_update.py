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

Example: '{"falseNegative": ["iQ6l9xZK5HersUhW", "ugviYUxpoYeQei4Y", "ThC1LR2EhOENqawN"], "falsePositive": ["WqWotiMMRfwGlSid", "vrOoAuiwLlRKBFv9", "cDwdvr6BDtRC4DEW"], "word": "ZHk6hVBqORvZaS3B", "wordType": "4l6HNAQL0ktqLWLe"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
