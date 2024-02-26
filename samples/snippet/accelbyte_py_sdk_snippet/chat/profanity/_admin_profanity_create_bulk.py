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

Example: '{"dictionaries": [{"falseNegative": ["VRGEkpFxSpr3D3FH", "k7GSSwt55PaRkZDU", "V4MwwnTZWn105gQm"], "falsePositive": ["DvkEu2WstVEiwntE", "7bWB55DLR8drrf7u", "edOOQg9beKUQO6eq"], "word": "FCv1Y9GplgrVTnyX", "wordType": "guW4lOyeIXe5odxg"}, {"falseNegative": ["r6xJKtgWTYZyw5v3", "ef7BRSeyTU7m1cIu", "xaxv7I0tY3KNxmVw"], "falsePositive": ["C1KFkX1bWWtTw6bX", "4JEgj6WMw9WzuOaH", "MS8Z8J55kKSxs3Ly"], "word": "0z8SZEepsBDkMQTV", "wordType": "mwFiF0NReup6M8Rj"}, {"falseNegative": ["w7Ikio66oEKP05CU", "my9iYkxJruwS7cNJ", "7quWo7SvY5CjBpcz"], "falsePositive": ["yzEE4FPaDOu5bzuf", "rq5DsbRCeqCo7god", "9zqkRrhgku8bUsEc"], "word": "Fv4MSmhRMNVuqrlt", "wordType": "ZQ61WaUEeSE8oYkH"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
