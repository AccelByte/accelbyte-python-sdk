import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_deployment_client
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

Example: '{"allow_version_override": true, "buffer_count": 75, "buffer_percent": 57, "configuration": "NOfMydCmfzbZrvmv", "enable_region_overrides": false, "extendable_session": false, "game_version": "Lzpmmp5fZlgni4J3", "max_count": 63, "min_count": 21, "overrides": {"x6lhUMvJrpGMB4ml": {"buffer_count": 65, "buffer_percent": 33, "configuration": "IFtEEJNSIvdB8uy0", "enable_region_overrides": true, "extendable_session": true, "game_version": "Hm8sh6lfoZVV63cF", "max_count": 77, "min_count": 53, "name": "uGymurhcFmV6ZJpZ", "region_overrides": {"2b2ZMoD6vU9RMAeO": {"buffer_count": 74, "buffer_percent": 16, "max_count": 91, "min_count": 95, "name": "7j8S3h4gy4HVxzUv", "unlimited": true, "use_buffer_percent": false}, "VVGiPWoV4SDwOYOC": {"buffer_count": 22, "buffer_percent": 58, "max_count": 37, "min_count": 37, "name": "r4tkX3YYPfs4ScTv", "unlimited": true, "use_buffer_percent": false}, "JptDZ1Gkgo08YQPp": {"buffer_count": 97, "buffer_percent": 37, "max_count": 37, "min_count": 62, "name": "5hH8czJR9iM1N0yw", "unlimited": true, "use_buffer_percent": true}}, "regions": ["FA3ILWjqFeVl2MoF", "6xu1iUQ1txgqpL3y", "8scpgHANgYOgSS2k"], "session_timeout": 27, "unlimited": true, "use_buffer_percent": false}, "t5qow4fj8pLFnjS3": {"buffer_count": 90, "buffer_percent": 51, "configuration": "BH2A4Khhilil25L8", "enable_region_overrides": false, "extendable_session": true, "game_version": "RrS4AzoobTNZNhqj", "max_count": 23, "min_count": 34, "name": "nd4f3IiFZ5ui7BZN", "region_overrides": {"Cjx65Z2LA5qgy7Yx": {"buffer_count": 96, "buffer_percent": 63, "max_count": 13, "min_count": 66, "name": "zViUSfOMiiGanIYA", "unlimited": true, "use_buffer_percent": true}, "QHjspveZRbbMTJ1n": {"buffer_count": 85, "buffer_percent": 41, "max_count": 48, "min_count": 36, "name": "KCxTPh4MJ90oYc34", "unlimited": false, "use_buffer_percent": true}, "1S2qWshMr8qE6lvG": {"buffer_count": 18, "buffer_percent": 20, "max_count": 99, "min_count": 77, "name": "chLqITB1ut6GQO1A", "unlimited": false, "use_buffer_percent": false}}, "regions": ["qbyCkVF6FdmzcnDV", "9ctvfmVCwF6DBmYS", "cNIYJOPHMR9iULL7"], "session_timeout": 67, "unlimited": false, "use_buffer_percent": true}, "UqQgkV4FWQDzrf2C": {"buffer_count": 53, "buffer_percent": 52, "configuration": "eSUDMN2lzfvaxC7q", "enable_region_overrides": false, "extendable_session": false, "game_version": "vTApGU2QZ5XpcpgW", "max_count": 9, "min_count": 70, "name": "GYQ5VXGJus8JFmzJ", "region_overrides": {"WawhYX7x4JwVeXRL": {"buffer_count": 28, "buffer_percent": 71, "max_count": 100, "min_count": 91, "name": "tYNxohm557u0R9b0", "unlimited": true, "use_buffer_percent": false}, "b9P9YaH2sg3Bl0Sv": {"buffer_count": 10, "buffer_percent": 20, "max_count": 49, "min_count": 32, "name": "9u7J23dopFocqb3o", "unlimited": true, "use_buffer_percent": false}, "KBRtw3Gpi5QaN49b": {"buffer_count": 67, "buffer_percent": 5, "max_count": 38, "min_count": 63, "name": "RHediDUQVYIMuX3e", "unlimited": true, "use_buffer_percent": true}}, "regions": ["N7mtPLlJTQyLx98v", "rz08xmhYyatZcNZS", "X6VJFZCqhz4mr7EM"], "session_timeout": 36, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"UrFRYM8aIy7SnTOi": {"buffer_count": 51, "buffer_percent": 65, "max_count": 97, "min_count": 0, "name": "rbh6uMov7EelNPCT", "unlimited": false, "use_buffer_percent": true}, "rCLwLn2OijXFCGm7": {"buffer_count": 92, "buffer_percent": 39, "max_count": 66, "min_count": 8, "name": "JKuiw11eBtPPY6CF", "unlimited": false, "use_buffer_percent": false}, "l9ULpUspHu6jNr0D": {"buffer_count": 26, "buffer_percent": 26, "max_count": 36, "min_count": 56, "name": "1irQ0oAZht4ce4Dw", "unlimited": true, "use_buffer_percent": true}}, "regions": ["2yWx16IHdh8y9VPw", "YfqCV8unxqqJRRCN", "JdiBCNIYnGfDH8qf"], "session_timeout": 90, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
