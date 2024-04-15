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

Example: '{"regionRetryMapping": {"5fLs122QEjbUnKfF": ["BwJSOcOercx9idRk", "IwjYlRuudxWWwBqq", "NuXnU4ug70PY02zk"], "hkda3QVToiV7HLVN": ["tIabR4hVpYxp9uFr", "qhq81omDdwAWeXol", "LGh38x177TWAZmxd"], "abaepFXVC22Wi8ow": ["Zdgkievfo6Td9C3v", "wQtjnl3eZPyhlvOr", "F7ac16UBDp2BAPzg"]}, "regionURLMapping": ["qm0ipEKQkSDVRkhr", "vzpba6NnzQNUHtD5", "2Fb70PJwhZJbf88j"], "testGameMode": "sBx3jqdTkdpIFKZj", "testRegionURLMapping": ["yoibWmorvwjqrj2q", "EjRwkGWnoBzfMwG2", "A5i3nHEDWh6tNKZn"], "testTargetUserIDs": ["SWhnBvuFzJfBEmGH", "LFYE8CqlO3TyXY0Q", "u3rPKdBxon2EwgWm"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
