import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_deployment
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateDeploymentRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateDeploymentRequest
allow_version_override: bool
buffer_count: int
buffer_percent: int
configuration: str
enable_region_overrides: bool
extendable_session: bool
game_version: str
max_count: int
min_count: int
overrides: Dict[str, ModelsDeploymentConfigOverride]
region_overrides: Dict[str, ModelsPodCountConfigOverride]
regions: List[str]
session_timeout: int
unlimited: bool
use_buffer_percent: bool

Example: '{"allow_version_override": true, "buffer_count": 48, "buffer_percent": 85, "configuration": "Ixq2ginyCCzGtBVc", "enable_region_overrides": true, "extendable_session": true, "game_version": "r9peIP5ePKouIOC2", "max_count": 86, "min_count": 27, "overrides": {"HPmhs1vwu0rGq6uX": {"buffer_count": 23, "buffer_percent": 5, "configuration": "nocWANFU1HeFkL3f", "enable_region_overrides": true, "extendable_session": false, "game_version": "TB4Szg4cOwlg4Fqh", "max_count": 39, "min_count": 21, "name": "P7iGCpAezO79gg5R", "region_overrides": {"3BB9t8uaf6NvWZx3": {"buffer_count": 57, "buffer_percent": 60, "max_count": 4, "min_count": 97, "name": "NCyfDEvwYcL1L9cp", "unlimited": false, "use_buffer_percent": true}, "mr5bVHbldZkpEscD": {"buffer_count": 77, "buffer_percent": 1, "max_count": 49, "min_count": 47, "name": "YmcPF4C1cHYOjriO", "unlimited": true, "use_buffer_percent": true}, "BVbW5T5TS6VVkwgO": {"buffer_count": 15, "buffer_percent": 61, "max_count": 9, "min_count": 77, "name": "eL32eQfEcX4Jpp6J", "unlimited": false, "use_buffer_percent": true}}, "regions": ["upuuXJ4N0uO1hDDR", "8r57WFvWDzw0B6eU", "y8mtJvPXs2DBZ89u"], "session_timeout": 76, "unlimited": false, "use_buffer_percent": true}, "EifdJV6qvTvc0fZ8": {"buffer_count": 30, "buffer_percent": 10, "configuration": "0qrQ62m6gelMfSP2", "enable_region_overrides": true, "extendable_session": true, "game_version": "8dJNNVhHVfVZlerX", "max_count": 12, "min_count": 11, "name": "o1nVwei6lvxLQ06z", "region_overrides": {"MATeagYeWka3y2XE": {"buffer_count": 22, "buffer_percent": 56, "max_count": 90, "min_count": 32, "name": "wmxKBdqx1kK7vtHT", "unlimited": true, "use_buffer_percent": true}, "7LTuT1S14yAeNV9s": {"buffer_count": 56, "buffer_percent": 28, "max_count": 10, "min_count": 35, "name": "F1o4myr5iPyxeRg9", "unlimited": true, "use_buffer_percent": true}, "bVnnVFx6RMqa054N": {"buffer_count": 19, "buffer_percent": 81, "max_count": 13, "min_count": 32, "name": "AZlFBGqnlanhX83O", "unlimited": true, "use_buffer_percent": false}}, "regions": ["2Q1kA4CFiW3M8n4k", "HseeCh7o9NfIV7NA", "0rbizdhdEIRddS5D"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}, "hNZdfsYpYOdK1osL": {"buffer_count": 24, "buffer_percent": 97, "configuration": "InXiIHtkVDE6b3NA", "enable_region_overrides": false, "extendable_session": true, "game_version": "AbOPKdOKcolTDDZ1", "max_count": 46, "min_count": 39, "name": "LUibKoxqWQXiIKYr", "region_overrides": {"N0VAqKyegtGMUvTj": {"buffer_count": 97, "buffer_percent": 36, "max_count": 28, "min_count": 35, "name": "JRdg8ceKOPnEy0vl", "unlimited": true, "use_buffer_percent": false}, "yNXiszVSSqfcLvQQ": {"buffer_count": 14, "buffer_percent": 7, "max_count": 75, "min_count": 65, "name": "dg1vi8ibHkzw51OT", "unlimited": false, "use_buffer_percent": true}, "6AUTOGuUjY50iCRf": {"buffer_count": 22, "buffer_percent": 98, "max_count": 99, "min_count": 69, "name": "wsO4Ew8PYVqnGmSc", "unlimited": false, "use_buffer_percent": true}}, "regions": ["KMsnznXIBpTqVfZR", "kNjftTkjYX2VabSv", "hmzOPAJ2BksDF279"], "session_timeout": 86, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"gYhdsVkrqMl2APox": {"buffer_count": 98, "buffer_percent": 21, "max_count": 9, "min_count": 71, "name": "ghiJbWdvXCKhtWIa", "unlimited": false, "use_buffer_percent": false}, "YeeV9p26tXH2NZVi": {"buffer_count": 36, "buffer_percent": 27, "max_count": 16, "min_count": 14, "name": "CWWMu9ftyb4EQyJ1", "unlimited": false, "use_buffer_percent": false}, "j1P7YNpSI95GeXiO": {"buffer_count": 93, "buffer_percent": 3, "max_count": 73, "min_count": 5, "name": "hxdFNdZs5VDweyAU", "unlimited": false, "use_buffer_percent": false}}, "regions": ["M9aENpEC2r7UDoui", "PXceS4Nhv8VonyXK", "DNcWFvGa2Wk2y0eM"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
