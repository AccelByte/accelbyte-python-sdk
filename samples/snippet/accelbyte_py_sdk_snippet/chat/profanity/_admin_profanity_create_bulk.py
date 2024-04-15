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

Example: '{"dictionaries": [{"falseNegative": ["zKCpnmT0szJokygE", "ddpf4ICLFx67loBY", "H7EPhqAHBMzulYoo"], "falsePositive": ["D0D57TYERPiKzjsK", "UjWURKAy0WF31s7f", "K6X4emBTcHCWIlte"], "word": "x8Xs9EtdmU2KjBGY", "wordType": "YsLO596WOKco5yfu"}, {"falseNegative": ["tibVFV4zWcji83Ca", "44cRA7PEgpHLLU81", "C1ylEfx1kxvCEv48"], "falsePositive": ["i0HToJkKeKBQmfk3", "APfDVPuEVfy6c04J", "erppeBuLtI8MoefJ"], "word": "Xz5gY7tZLncWWb9F", "wordType": "K60N19xC1nRLlkgQ"}, {"falseNegative": ["HCVKZE1ZJKS6QoGe", "5h8Vm1FNru1hAuEG", "3HHIJOalpT2tWZ6z"], "falsePositive": ["QQ6iGmPHFMj4R7gq", "u9B8cIsvxAcQxKph", "GqcrfLSsLdSGMk85"], "word": "SzZF3UI93204dGhu", "wordType": "psIuI8K46N1F3ZK1"}]}'
"""

result, error = admin_profanity_create_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
