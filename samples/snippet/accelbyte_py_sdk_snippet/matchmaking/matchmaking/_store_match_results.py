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

Example: '{"match_id": "BqP3NoYWzd4ua10i", "players": [{"results": [{"attribute": "pFoli3EilVmzgCuO", "value": 0.8643425402403792}, {"attribute": "26g8nUzRZzZiQ3UY", "value": 0.21036173839640349}, {"attribute": "D0K8UIMg4Vs4icxz", "value": 0.6314820886995336}], "user_id": "LOR8fzPmvh1R9fZo"}, {"results": [{"attribute": "Z7XqLKaeFWJm6P9X", "value": 0.8041059593393456}, {"attribute": "jMINgPGX8GYF0Kyk", "value": 0.71636832968318}, {"attribute": "Da16tb5B2CrMJQai", "value": 0.2935538274908637}], "user_id": "PMrZtB73clVWi1Ei"}, {"results": [{"attribute": "tYsTvMaohqMU8wOR", "value": 0.31158599280316335}, {"attribute": "tUaN7uHKu3xhjWse", "value": 0.7726851537976517}, {"attribute": "u0q2aQ2ncl9UYi7X", "value": 0.7744259500263043}], "user_id": "ItsKvXeFCsBM9CsI"}]}'
"""

result, error = store_match_results(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
