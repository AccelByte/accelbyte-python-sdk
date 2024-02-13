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

Example: '{"regionRetryMapping": {"51bmq8pZzlM2zw0q": ["vfh9c5UXlpt4P126", "YU1ZXEizmJ7WOTY7", "e3qVDCe8tjQoLJMO"], "1b3jTDNqZYnikKXu": ["Gr7FP4LoDAX5bV8c", "BO8sO6EZ6azsunIQ", "c61jzztCtpAzqPE7"], "shXFAtpvheAkntao": ["0exdoc5xIjRU7eDu", "x0TIFHChoZNg5J7X", "tDeSG372JwzDXz1j"]}, "regionURLMapping": ["mPHV4sWKWuJYhewY", "EBSYRyLTleTS3820", "gEGRj7j2EmUFEUGn"], "testGameMode": "viWvwkI0nanQIcU6", "testRegionURLMapping": ["EEriwUisCiNWmcD5", "0rIjqjkBbvZIVYMv", "fInoWN7uDCLML7rN"], "testTargetUserIDs": ["EZxkK3jf17Bu05Zp", "U47G3V9IYYHzniac", "64hUUrkk6tbtmx5g"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
