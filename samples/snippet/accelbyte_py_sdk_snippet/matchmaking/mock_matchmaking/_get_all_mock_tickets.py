import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_all_mock_tickets
from accelbyte_py_sdk.api.matchmaking.models import ModelsGetMockTicketsResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = get_all_mock_tickets(
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
