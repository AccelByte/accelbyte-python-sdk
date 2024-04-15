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

Example: '{"allow_version_override": true, "buffer_count": 11, "buffer_percent": 77, "configuration": "tbFd8d9Keoky0O4G", "enable_region_overrides": false, "extendable_session": true, "game_version": "hJf0NiJiAJ2Dayxw", "max_count": 43, "min_count": 52, "overrides": {"LBILqBzanlp1Qn0u": {"buffer_count": 77, "buffer_percent": 56, "configuration": "DQK3bcK8NaQgIZYr", "enable_region_overrides": true, "extendable_session": false, "game_version": "MXF8oa4X6Ijxt9am", "max_count": 72, "min_count": 61, "name": "G6UQKRHQ9hSyAiTD", "region_overrides": {"fNdehKyBQjhJKGWv": {"buffer_count": 33, "buffer_percent": 49, "max_count": 9, "min_count": 0, "name": "ifrr3XS8VrwgyTAx", "unlimited": false, "use_buffer_percent": true}, "pkc2EGdXypbrmGxu": {"buffer_count": 12, "buffer_percent": 71, "max_count": 43, "min_count": 20, "name": "Ycq2xboKW5CG44D8", "unlimited": true, "use_buffer_percent": false}, "rYp1tUOUx66S7ZWa": {"buffer_count": 19, "buffer_percent": 99, "max_count": 47, "min_count": 71, "name": "eBL0SFbB2EZW8av8", "unlimited": true, "use_buffer_percent": false}}, "regions": ["xGvKFKy8uZWgi3cf", "UeHwi2r1KswAgZSh", "pUDWnPuMRlHGK6yk"], "session_timeout": 50, "unlimited": false, "use_buffer_percent": false}, "G3d8zI3uh6iy6x9C": {"buffer_count": 32, "buffer_percent": 67, "configuration": "wTQBjbMCRZ3fiEhT", "enable_region_overrides": false, "extendable_session": true, "game_version": "3jeb62StN4tPF74v", "max_count": 94, "min_count": 35, "name": "pdbHgvirOIz0RCVs", "region_overrides": {"lbsBbpV07grQGXwF": {"buffer_count": 56, "buffer_percent": 72, "max_count": 44, "min_count": 90, "name": "UHbgwMEM5vsuETf0", "unlimited": false, "use_buffer_percent": true}, "fu7DsgyeKeFT0hQ9": {"buffer_count": 26, "buffer_percent": 48, "max_count": 15, "min_count": 70, "name": "YNW0nqb6xlvsphfD", "unlimited": true, "use_buffer_percent": false}, "VqE6OA8rPMYDftqm": {"buffer_count": 93, "buffer_percent": 47, "max_count": 15, "min_count": 100, "name": "P2NCfAKZ7tgsfiJo", "unlimited": true, "use_buffer_percent": false}}, "regions": ["8ry5hAgtoTxVQXhl", "0KrW7xbdID3jQQmu", "goQ3TWeEMy1HQkLY"], "session_timeout": 41, "unlimited": true, "use_buffer_percent": true}, "C4fOub7AWxY5Fx5d": {"buffer_count": 90, "buffer_percent": 0, "configuration": "FhQshPNItC0k2cme", "enable_region_overrides": true, "extendable_session": true, "game_version": "ZablG1uaMZpV2oNF", "max_count": 97, "min_count": 26, "name": "bvtjPbhn9gL0NHoV", "region_overrides": {"mYtzhYF23oI0KbNg": {"buffer_count": 60, "buffer_percent": 95, "max_count": 69, "min_count": 96, "name": "eLmDi1cvmdAWCAqD", "unlimited": true, "use_buffer_percent": true}, "dlHLVCQcMgPrmu23": {"buffer_count": 98, "buffer_percent": 21, "max_count": 72, "min_count": 42, "name": "I67W3xLeHkzdRrNt", "unlimited": true, "use_buffer_percent": true}, "TPxzTv66bF7Rdmms": {"buffer_count": 59, "buffer_percent": 87, "max_count": 26, "min_count": 14, "name": "6ESM4YRwTnyZQSqk", "unlimited": false, "use_buffer_percent": true}}, "regions": ["o8SwQsw9UXmJqhZn", "YMv2lpEVEYpgPnYd", "NkFXt09Gx51axFTv"], "session_timeout": 40, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"x3pzmRYQTtaZtR0s": {"buffer_count": 97, "buffer_percent": 74, "max_count": 11, "min_count": 49, "name": "hqLtCMxRwvKx5x4J", "unlimited": true, "use_buffer_percent": true}, "HCddPQKyuStp5WqT": {"buffer_count": 6, "buffer_percent": 59, "max_count": 50, "min_count": 62, "name": "2MPugCcqpvnXYgqu", "unlimited": false, "use_buffer_percent": false}, "kLqZdkXzvuMvgSsm": {"buffer_count": 14, "buffer_percent": 5, "max_count": 35, "min_count": 81, "name": "5xQ1RnoACfuRSe1K", "unlimited": false, "use_buffer_percent": false}}, "regions": ["HgVRfEdtu1BxpeVA", "CtfwaRuzyqxa90LP", "llVmclKKYqF4HFrm"], "session_timeout": 4, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
