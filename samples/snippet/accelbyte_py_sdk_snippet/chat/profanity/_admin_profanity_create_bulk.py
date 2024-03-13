import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_create_bulk
from accelbyte_py_sdk.api.chat.models import ModelsDictionary
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryInsertBulkRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsDictionaryInsertBulkRequest
dictionaries: List[ModelsDictionaryInsertRequest]
Definition: List[ModelsDictionaryInsertRequest]
    false_negative: List[str]
    false_positive: List[str]
    word: str
    word_type: str

Example: '{"dictionaries": [{"falseNegative": ["dDcXJbLzwP5MDNMI", "3SqcDqusDwtoLshz", "Xr2DMWtjTdDnytM3"], "falsePositive": ["6tzG7zdIwxaQj9rU", "yyWsDJ91TCT0MYEn", "xoUV4x0zeXJm382a"], "word": "lCgNq19r1plKog9P", "wordType": "4WV5USP5Ym5eElCs"}, {"falseNegative": ["pcfgIVLY2GKIRaYn", "vJndm4a3gHcYQz9C", "qVtjSA4kDk7JM0cw"], "falsePositive": ["dFhJcFi585O59ws0", "I5rrBrheOEzqvUmP", "Md2o18FanfruPj7B"], "word": "aseqDaRVzvQHL8zp", "wordType": "Siuls7gGk3Qg2j7e"}, {"falseNegative": ["O3femXeoYdLAmA9T", "dH7KB7WqSMdGFXio", "5fpGhF6uZE9mnOGf"], "falsePositive": ["t9D1pfkRaxeZ3Yi4", "BwLF4XelWJkCHKHK", "9LJ55E9ebEwoXsN4"], "word": "pzSGZA8hrsqOQjOX", "wordType": "5BSqR5iXhq5fT8Fu"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
