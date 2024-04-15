import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_reward_condition_record
from accelbyte_py_sdk.api.platform.models import DeleteRewardConditionRequest

"""
body:
Definition: DeleteRewardConditionRequest
condition_name: str
user_id: str

Example: '{"conditionName": "2mTx9cNRMGBtJcKy", "userId": "wTlDiuA1h8q1afY6"}'
"""

result, error = delete_reward_condition_record(
    reward_id=reward_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
