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

Example: '{"falseNegative": ["Z1NxTUJhSUSQ8Fmm", "A9IiTb7NTfFrwmdK", "L7pLyfkWWJcP7Tkp"], "falsePositive": ["GHrdMFOE1aetBknb", "mP2nGESVKrgpMivV", "uqZ6agaySEFbSLzx"], "word": "CdE47fUi29eY1ISC", "wordType": "dr00EqG0oeMEbEdk"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
