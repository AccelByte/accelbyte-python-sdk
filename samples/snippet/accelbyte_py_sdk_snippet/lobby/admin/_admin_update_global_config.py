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

Example: '{"regionRetryMapping": {"cjMvOroTecGtGIDc": ["mxrMSR0FpZrRq54O", "ch7UUcCoeiZ00tt0", "nYfS7EYNaydvKEAA"], "rGKzybFE3NhwhwmU": ["Q3HU59O27saNhBUH", "tANHlypE8mhgDxCr", "KqJzB7Id0FV2wNqc"], "flK4TeYEWjCFmVsf": ["PshR5A2v39QtFclJ", "DEDKMiPXUfoyfD7R", "sGUIKb3R24TpTNOI"]}, "regionURLMapping": ["sIhqmzB9OVLQ7xQ5", "giKb99VJEtKladvd", "e0FJPM5doCw803d9"], "testGameMode": "jb0zUCcY3Ldq6oZ6", "testRegionURLMapping": ["HUtPmtlyhaJAdUwJ", "2vHFnPRcUZJA6vUG", "C34pSSqZm6KzvBl7"], "testTargetUserIDs": ["FTQD6WtBoI11HrJu", "FLh96pytfRdqxpUP", "XPjKZdo9AHaOLERo"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
