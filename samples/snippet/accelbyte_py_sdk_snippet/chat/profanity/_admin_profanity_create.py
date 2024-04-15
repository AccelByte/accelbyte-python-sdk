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

Example: '{"falseNegative": ["frQFwoq1zR1oUGgd", "oY4NNiCVdBgBDI5O", "3KV0ajo3eaB5Yo1P"], "falsePositive": ["5Z3tsVhJ0mNzNeey", "4MPygMvfeNopTSCL", "v1sMxjRIYy2LimwC"], "word": "re5mXGKFQaQKPRrK", "wordType": "k0eZ7GotpoVxdkl1"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
