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

Example: '{"falseNegative": ["dRfAkk2ISydaiWCJ", "au9F7XcooUaX5qd8", "KOAkC968cdjSyFV0"], "falsePositive": ["rxni26xwVX85a7cX", "s9r42OLX9shhfTyU", "6tnMO2IFVOLNAp9M"], "word": "28dJg8oipTMiBIpm", "wordType": "az4bIqvAHSvPpbQR"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
