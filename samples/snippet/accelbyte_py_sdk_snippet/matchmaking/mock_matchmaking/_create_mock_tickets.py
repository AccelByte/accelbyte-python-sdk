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

Example: '{"attribute_name": "dF9AsY0V0NCkgbgb", "count": 2, "mmrMax": 0.32003231808742416, "mmrMean": 0.24735164378904806, "mmrMin": 0.5269820040848485, "mmrStdDev": 0.9318064181755085}'
"""

result, error = create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
