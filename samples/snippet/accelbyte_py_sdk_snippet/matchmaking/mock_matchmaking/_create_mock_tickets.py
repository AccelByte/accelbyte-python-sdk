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

Example: '{"attribute_name": "HAwTrEP6HbesBl8k", "count": 14, "mmrMax": 0.546655170974945, "mmrMean": 0.5110798608932695, "mmrMin": 0.0016795969001609512, "mmrStdDev": 0.49115456110796907}'
"""

result, error = create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
