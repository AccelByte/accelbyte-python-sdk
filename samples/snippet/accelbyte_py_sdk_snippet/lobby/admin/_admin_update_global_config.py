import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_global_config
from accelbyte_py_sdk.api.lobby.models import ModelGlobalConfiguration
from accelbyte_py_sdk.api.lobby.models import ModelPutGlobalConfigurationRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelPutGlobalConfigurationRequest
region_retry_mapping: Dict[str, List[str]]
region_url_mapping: List[str]
test_game_mode: str
test_region_url_mapping: List[str]
test_target_user_i_ds: List[str]

Example: '{"regionRetryMapping": {"Cv1ne3NlivHReuiX": ["KRykEwKMa4ofC1vM", "6ry0knDUsKAIw9iu", "UGnqviIqPDjWss7Z"], "wofekZ6SsStZ3wAr": ["5fU7ig5KdpaW7CE0", "tsqV2vZCMS9av8IM", "bflzSHF9d0Au55eF"], "Gf6FNnZplbBNOZOX": ["qAapHoeaHW0uCmZi", "AevwyUhA0IwxuLm7", "H26u2keYPHlxqWe0"]}, "regionURLMapping": ["1JObkiNWs9MIMcED", "5KfALDeoFUz9kG6g", "dpBve41Ystt2w3NN"], "testGameMode": "Z9zfoYJIM6QVoAcz", "testRegionURLMapping": ["8ZklZr1rROkcB6tQ", "LJdo8riDQ1NCFT7s", "6ZNCfySbEH98Shyu"], "testTargetUserIDs": ["PlZbdwizpaaDaX85", "pgU9OBTQFq2Hn5rC", "lz6FSFpXFCdJjBU4"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
