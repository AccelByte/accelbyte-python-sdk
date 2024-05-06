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

Example: '{"dictionaries": [{"falseNegative": ["BvW9NyLfVCGQkhG4", "Z6jYWTPIupjCPGwZ", "cpGrtFgkhdOUr2LP"], "falsePositive": ["DkqVGyC9qCuShz6X", "Q54BkH9ott282a5V", "gWthR99Gj6Foeh58"], "word": "ZkMTvao9oovaoE8n", "wordType": "ETb7q5HZxaQoCrUy"}, {"falseNegative": ["DSGI2IitHDPQNSwn", "5Hxgw6CYtxzg8mnO", "s2rCmsTMvigVTqqo"], "falsePositive": ["Ms9u3mkMgtO7qDQo", "IFcLAeftLkrZzftn", "y2bSjY7LJLWxP2Ut"], "word": "iU93pe7Ve2RVjtuS", "wordType": "1YrgiYX5Z5PdQ7sk"}, {"falseNegative": ["kBxuSsgINHeO8kwW", "2qxx6xeK82Oo3LOm", "dPJrbnrNRq2o9Etk"], "falsePositive": ["COuhkSTpkGOzMkJK", "JGpxdi1OrT2U6stu", "SyBroDiC7Yxy5Fos"], "word": "EpxOKEjlOaUg9Jvf", "wordType": "FQ2y9HOMfIi8ehFu"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
