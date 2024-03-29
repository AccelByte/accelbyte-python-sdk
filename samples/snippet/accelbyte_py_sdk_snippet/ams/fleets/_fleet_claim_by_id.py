import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_claim_by_id
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimReq
from accelbyte_py_sdk.api.ams.models import ApiFleetClaimResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetClaimReq
region: str
session_id: str

Example: '{"region": "C96U5SQhy1FjYiMw", "sessionId": "Uom2iithxwSeO7ky"}'
"""

result, error = fleet_claim_by_id(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
