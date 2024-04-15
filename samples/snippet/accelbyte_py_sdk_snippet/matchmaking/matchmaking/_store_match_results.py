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

Example: '{"match_id": "F1KeDXIEISaJKymW", "players": [{"results": [{"attribute": "Ax1lVBsOadGIp5vV", "value": 0.29790414028420986}, {"attribute": "x3pA0dSGbC0dSAaE", "value": 0.6480522236483317}, {"attribute": "vL4BqvGCa1eJwFVt", "value": 0.18090237373746654}], "user_id": "AUxF9zqEkjoiE1MN"}, {"results": [{"attribute": "NXDqYFIkypzOpqAr", "value": 0.12578986642791823}, {"attribute": "JlDijsQfvr1VI9qo", "value": 0.13425379512017743}, {"attribute": "A0l55Telr3S6dF3t", "value": 0.07285711707622466}], "user_id": "AQHhvkaq8zVI6kpL"}, {"results": [{"attribute": "uZlRWZleHvOivBt6", "value": 0.9125151580702469}, {"attribute": "hXyCVnXnVo5dV8aw", "value": 0.22386344102979072}, {"attribute": "IHivAcFHhfEoI6J8", "value": 0.1537999859811765}], "user_id": "Y8n3RZToWv7YMBh6"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
