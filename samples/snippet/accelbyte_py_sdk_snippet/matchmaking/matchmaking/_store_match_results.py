import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import store_match_results
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchResultResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsMatchResultRequest
match_id: str
players: List[ModelsPlayerResultRequest]
Definition: List[ModelsPlayerResultRequest]
    results: List[ModelsResultAttributeRequest]
    Definition: List[ModelsResultAttributeRequest]
        attribute: str
        value: float
    user_id: str

Example: '{"match_id": "5DivCegMe7ZlBidt", "players": [{"results": [{"attribute": "FtPIHNwuixJcwBP4", "value": 0.15097651263646028}, {"attribute": "uL0eeV6MyHRLyvN5", "value": 0.36414160167642506}, {"attribute": "gG56jacE02sThaoP", "value": 0.15968025353027293}], "user_id": "0YO4tXJg6BtdlPT0"}, {"results": [{"attribute": "OjHtZNKedaM8huoJ", "value": 0.9845350758695225}, {"attribute": "vDYxOkUCZqE0DdI0", "value": 0.17675286728960304}, {"attribute": "7bE6eHbEg1T64qzj", "value": 0.198363354607065}], "user_id": "HnU1e1zGfjx2UP8t"}, {"results": [{"attribute": "d8O7hurgbpV8Z9c4", "value": 0.9733915959792458}, {"attribute": "EHSFSnROIm8wZpfo", "value": 0.7727234675169817}, {"attribute": "NUVrzu6pWxKLYEJX", "value": 0.8213425517209757}], "user_id": "7ZVdYxrbW85nb6gM"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
