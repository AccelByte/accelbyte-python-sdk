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

Example: '{"attribute_name": "T7s19cinCxiiy7Gi", "count": 77, "mmrMax": 0.5725965306835286, "mmrMean": 0.6318161899611664, "mmrMin": 0.46576630364107774, "mmrStdDev": 0.17317147041987058}'
"""

result, error = create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
