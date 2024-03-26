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

Example: '{"falseNegative": ["qcOTUbCTnRc3C0od", "MMXC9CvD2Fx8hREy", "GnUzivV085y45E5y"], "falsePositive": ["SCxHLw2ZuZMUlD8P", "dNn72bVxo9e8hYcZ", "qoa0ZBlaGqZaOSOA"], "word": "DIXq2x7QCnv1bGg2", "wordType": "63nTlZVMuXUuNIT8"}'
"""

result, error = admin_profanity_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
