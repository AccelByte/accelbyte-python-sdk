import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import create_mock_tickets
from accelbyte_py_sdk.api.matchmaking.models import ModelsCreateMockTicket
from accelbyte_py_sdk.api.matchmaking.models import ModelsMockTicket
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
Definition: ModelsCreateMockTicket
attribute_name: str
count: int
mmr_max: float
mmr_mean: float
mmr_min: float
mmr_std_dev: float

Example: '{"attribute_name": "rEy7SToMS2YaMhjy", "count": 23, "mmrMax": 0.12163140570817865, "mmrMean": 0.6599171701985554, "mmrMin": 0.4717699905783138, "mmrStdDev": 0.8142442609009144}'
"""

result, error = create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
