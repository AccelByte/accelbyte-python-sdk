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

Example: '{"match_id": "n0znnKkXixvfJ3nP", "players": [{"results": [{"attribute": "zKRV1QXjfKXJXWGa", "value": 0.8629175962444293}, {"attribute": "wcMHzoFRtiYcAURn", "value": 0.8432370977131782}, {"attribute": "hW9SDdy34W6h719T", "value": 0.836116220813859}], "user_id": "PqMhV5Sadom5p0R2"}, {"results": [{"attribute": "1IGsIvkIlZv3JeFI", "value": 0.4409787879862548}, {"attribute": "p9RVvV47Vi56CZ60", "value": 0.027063410935076915}, {"attribute": "sH1WmvaV1PIpzn6g", "value": 0.2400772013157605}], "user_id": "zs6NZScEvrySY51E"}, {"results": [{"attribute": "8pu9mhsuompPNkeK", "value": 0.9835094142501111}, {"attribute": "xAVlgRB9yJB3InFb", "value": 0.058915163344053334}, {"attribute": "s83HVRm2fNOTCUM7", "value": 0.6658146420188776}], "user_id": "1q9Sz9KwdOrqCxLu"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
