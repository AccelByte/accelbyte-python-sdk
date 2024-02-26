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

Example: '{"falseNegative": ["UkwxkmIdxQybq6DL", "U9LgtCfsNByZmTFY", "imM6QEAKXdqsASo7"], "falsePositive": ["PJFKokVldg5Fr7Rq", "21yNjm2vlX0MCdU6", "uYu2vTULE4IkoGBj"], "word": "OGK6Y8O3IVJQUWgy", "wordType": "2PdjTHfUZfcdhCV1"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
