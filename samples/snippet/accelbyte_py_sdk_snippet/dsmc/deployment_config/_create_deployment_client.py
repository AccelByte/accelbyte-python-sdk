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

Example: '{"allow_version_override": true, "buffer_count": 84, "buffer_percent": 19, "configuration": "tAS5PeMMSPiIPCwG", "enable_region_overrides": false, "extendable_session": true, "game_version": "wtsFQvtHedCn2pAC", "max_count": 79, "min_count": 71, "overrides": {"dwR9iXgg4OPc9z8t": {"buffer_count": 38, "buffer_percent": 96, "configuration": "UGPyyoYaEeUdlkr0", "enable_region_overrides": false, "extendable_session": true, "game_version": "5sjRzrKuJELUskja", "max_count": 88, "min_count": 6, "name": "49u5LeftcnJimAzy", "region_overrides": {"VOPO0FLjp5z778Dn": {"buffer_count": 76, "buffer_percent": 0, "max_count": 29, "min_count": 27, "name": "ccLK7OcJAQb1W2gQ", "unlimited": false, "use_buffer_percent": false}, "pe74mYTgkTbyD6OF": {"buffer_count": 54, "buffer_percent": 100, "max_count": 8, "min_count": 83, "name": "3icvy8o3KIFgvhKV", "unlimited": false, "use_buffer_percent": false}, "9Sz3y4twAEth8zRJ": {"buffer_count": 15, "buffer_percent": 59, "max_count": 57, "min_count": 76, "name": "gvoiH6rh8vWsfts7", "unlimited": true, "use_buffer_percent": true}}, "regions": ["jMfr7WCPA57gdJ61", "clmPTcSideRERl6B", "pxMHkcidi6P57g27"], "session_timeout": 2, "unlimited": false, "use_buffer_percent": true}, "m4uZHYUAFLyIHG1t": {"buffer_count": 83, "buffer_percent": 6, "configuration": "P96DOJsPCXhgXr8a", "enable_region_overrides": false, "extendable_session": true, "game_version": "kvyKlDnogxFJQ6Ti", "max_count": 51, "min_count": 57, "name": "uDnnBFqg3EFPUTix", "region_overrides": {"Z7zge4wxypVznbEb": {"buffer_count": 27, "buffer_percent": 67, "max_count": 39, "min_count": 90, "name": "HLXY8aLbv15wzhzF", "unlimited": true, "use_buffer_percent": false}, "ElAv1bwHXkgSgY1B": {"buffer_count": 67, "buffer_percent": 11, "max_count": 89, "min_count": 7, "name": "m6FlTCuhGy9Z64Ia", "unlimited": false, "use_buffer_percent": true}, "fpeQgG3MmM1H4fHA": {"buffer_count": 37, "buffer_percent": 82, "max_count": 29, "min_count": 81, "name": "36k2QJTxh1dsceGR", "unlimited": false, "use_buffer_percent": false}}, "regions": ["LdHMH6NMwX5R5yIy", "8JD49223ZKEnacHL", "mStc0YWmeZ0FegJz"], "session_timeout": 33, "unlimited": false, "use_buffer_percent": true}, "3dqqPcdxFOLDI1bN": {"buffer_count": 13, "buffer_percent": 77, "configuration": "PcHS72Hnu3uOw35w", "enable_region_overrides": true, "extendable_session": false, "game_version": "fwm08JTg2oE3obZd", "max_count": 13, "min_count": 50, "name": "iz6Csf0kDzOsrMz8", "region_overrides": {"uMbCSYq5negqdLlx": {"buffer_count": 23, "buffer_percent": 90, "max_count": 42, "min_count": 64, "name": "H2kVggtEJqX4MbO5", "unlimited": true, "use_buffer_percent": false}, "3wg1UP3QbPRJ5CIM": {"buffer_count": 2, "buffer_percent": 24, "max_count": 17, "min_count": 58, "name": "mpDr41sM5gqO8syR", "unlimited": true, "use_buffer_percent": false}, "zLHxFUW7H8wKkWOA": {"buffer_count": 41, "buffer_percent": 34, "max_count": 18, "min_count": 30, "name": "GTl8qXzHFc84t64N", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SH3LFbvHlpG65ciP", "1I0NeMQXm8TZIcyu", "ryUXB5NhBKD7SLxm"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"unIjEFNFA1RfT96C": {"buffer_count": 98, "buffer_percent": 98, "max_count": 49, "min_count": 23, "name": "a1mGra9Kl7CrAi7c", "unlimited": false, "use_buffer_percent": true}, "RPMlSBo91apq7W3k": {"buffer_count": 27, "buffer_percent": 35, "max_count": 27, "min_count": 74, "name": "kciaV2yHcNllA1Zt", "unlimited": false, "use_buffer_percent": false}, "rRdqlmtnm5Ch4dGT": {"buffer_count": 17, "buffer_percent": 97, "max_count": 91, "min_count": 93, "name": "3LAekG4p46wAzNn0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["IMkrhM5hE3DsWTAF", "cxBr9ASibpNeTisl", "3kZbocheXJVmCelQ"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
