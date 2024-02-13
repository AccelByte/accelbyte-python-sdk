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

Example: '{"dictionaries": [{"falseNegative": ["QwCWMax22qJkmXoT", "eHU8cJUMIOojWVyL", "csEGegeowhTIxzd3"], "falsePositive": ["LrnGRF76E2iqh36E", "KoxCjpB1dsDEZHe6", "hEXJaFcdSTaLyjHF"], "word": "y3VWnNWOPFmWJqHn", "wordType": "1KDOvXNr96uGYhng"}, {"falseNegative": ["n9jJqIE7HKVIItzR", "w8jkKL3Zg7jdykPd", "Kvuaya1gvrUQA2UE"], "falsePositive": ["up5W4xbb6xvyRa0p", "RWp5kItzIkDDBZGJ", "CYptW19UIvmrj3E3"], "word": "cLc8pLzlxeky8WRH", "wordType": "4Iidz7J2FJKGoKyw"}, {"falseNegative": ["Psx2s2jnLWybf7OS", "DLcGE877RJqt5qer", "T6g30gLn3i8TnvZz"], "falsePositive": ["IZlri2YaDYghvpRO", "yT2YFU3r0dAstm0W", "uYuVRj7frwuEk56c"], "word": "uQw8L6DgTUpysVhj", "wordType": "x9MbgjRtyOSho4gr"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
