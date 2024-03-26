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

Example: '{"regionRetryMapping": {"XR0onoE96IVLNPoa": ["KPzJ6mYzx1PucD3R", "jCGeiAllqedXrRcH", "UraXHCM2qYNbVxde"], "b6lByN0Dpp8qxw97": ["Ad3vIiR2413Be0W6", "18r6jRDcGvy9CYNp", "kN7M5HJLionRdH3d"], "glfRJfFNZWaCfToe": ["xMCIbuHMXwKMIYeY", "wjaNv5MGas3LlZNX", "zTjt50kzIBDmyvDc"]}, "regionURLMapping": ["bmKVLMr30LKsN5SC", "g9GbXTXksc5cHw6H", "wolRrkIyzs9ZwMcD"], "testGameMode": "24bCelxPAFbYtZ4P", "testRegionURLMapping": ["ttnk2BahvxbynV4m", "hXN9pRxd5J03rPoy", "wAoD6uThaAEM2a0T"], "testTargetUserIDs": ["cWqGuqTd3E103XrZ", "ayIDfX8kQWTVmw2x", "v1TzNRBhBLMA4ugP"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
