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

Example: '{"falseNegative": ["hU92JhcQH9jmn2aE", "tzP6ZXuELcn64ED7", "6gncX86vMd5l19DN"], "falsePositive": ["Ex7E8gm64bUVp5Zg", "P5h2z6fs8dzwfR7V", "iWy1KLVCyQpa3m61"], "word": "LrPO5KWLkd23XpfB", "wordType": "i45Bq7JW4GHmTkFY"}'
"""

result, error = admin_profanity_update(
    body=body,
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
