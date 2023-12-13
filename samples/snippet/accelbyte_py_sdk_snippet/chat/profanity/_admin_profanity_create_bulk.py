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

Example: '{"dictionaries": [{"falseNegative": ["FLedWT50GMa4p0rw", "r7BDfJsHQ3I9aFR9", "yL1rF2WC7PBo3U1a"], "falsePositive": ["AX2BMHBlO4PfruYE", "n0MC93AfO0qVXPM7", "47lDcgw6c0lVKv8r"], "word": "Fbw2dZSrvVdTlGYy", "wordType": "oZLjhgfumwizr2Pe"}, {"falseNegative": ["xr7xAtlGhSCzqjrb", "SXZaOil1AUzNP7HI", "J3l7PsXy4CAJN4SX"], "falsePositive": ["Q1zp86OaLu1DQ3T1", "T8kQ7e24h4ksOUnB", "kTzLQjUmhMcIrVG6"], "word": "YGWg3nb6lC5QBaRr", "wordType": "aZZPdy5h01MnbeDA"}, {"falseNegative": ["VY9Ab1AIv5NBA8hR", "T6rd4n7wcMVbIUcY", "5C8aVbF921AB2MBT"], "falsePositive": ["p4ZuJGVSBK0eC6M6", "utuoxPBr18HBBpJQ", "zf26Y0kTXtzoMNTj"], "word": "rcY6vMDeXo2q22oJ", "wordType": "uwxx2TNwTYbUhepN"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
