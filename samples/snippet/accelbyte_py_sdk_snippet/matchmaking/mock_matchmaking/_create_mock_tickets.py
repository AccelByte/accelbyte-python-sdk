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

Example: '{"attribute_name": "RKac5TpQzhsdMHt5", "count": 96, "mmrMax": 0.13677483887617914, "mmrMean": 0.9830592898211318, "mmrMin": 0.1138569068207872, "mmrStdDev": 0.5563652660515022}'
"""

result, error = create_mock_tickets(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
