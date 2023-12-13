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

Example: '{"falseNegative": ["vKFkf2uyZXkrHMDm", "l8sb1WreVXXnfe1r", "4WU0wB47gfWwP8jP"], "falsePositive": ["i8WVvezhlHBi7SBD", "TVeqL35l5t5LDo7f", "QrCEAO5qhMeFDLFj"], "word": "IuLJsVQTUBCXF9K4", "wordType": "Khp7YvkqoAY9KX6d"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
