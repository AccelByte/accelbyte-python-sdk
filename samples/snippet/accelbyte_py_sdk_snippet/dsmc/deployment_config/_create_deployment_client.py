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

Example: '{"allow_version_override": true, "buffer_count": 3, "buffer_percent": 97, "configuration": "MyqeoGHc5ypiCdJn", "enable_region_overrides": false, "extendable_session": false, "game_version": "VjoOGKWAB8JvXcut", "max_count": 5, "min_count": 74, "overrides": {"079RjhpwQ8a66Nnv": {"buffer_count": 64, "buffer_percent": 26, "configuration": "kiStFjHCqH3cX4Zw", "enable_region_overrides": false, "extendable_session": true, "game_version": "wkL8YJX2nyf746au", "max_count": 26, "min_count": 80, "name": "Ri64PeN8FzEhdtLY", "region_overrides": {"eWmXRDDuwAhbT9Q6": {"buffer_count": 1, "buffer_percent": 82, "max_count": 18, "min_count": 72, "name": "PqhwGgt7HEZxVCg2", "unlimited": false, "use_buffer_percent": false}, "goAdoKWWQwTBsPJ3": {"buffer_count": 6, "buffer_percent": 42, "max_count": 49, "min_count": 97, "name": "xKyXIdErpvIBXzrY", "unlimited": false, "use_buffer_percent": false}, "i4egKKNCkTlmKRW5": {"buffer_count": 23, "buffer_percent": 43, "max_count": 32, "min_count": 29, "name": "90kyhb4fNOMbAIZY", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Yaf2U3YjwDCLps6U", "zhEAsWL07mmwU8u6", "RXSYonPBAjtMYiNs"], "session_timeout": 24, "unlimited": true, "use_buffer_percent": false}, "wj94tZENxAcx90PI": {"buffer_count": 49, "buffer_percent": 73, "configuration": "kIvK9BhBVJ3lWCJA", "enable_region_overrides": true, "extendable_session": true, "game_version": "vQmdhsB9uX7nCD3T", "max_count": 93, "min_count": 96, "name": "2fIpDSZBfzh1hl6P", "region_overrides": {"ydCk76E9KiPnsTC7": {"buffer_count": 54, "buffer_percent": 62, "max_count": 35, "min_count": 8, "name": "ykeiG3VIhUo95bbl", "unlimited": true, "use_buffer_percent": true}, "8hfKZkcgsvoL7IRc": {"buffer_count": 72, "buffer_percent": 73, "max_count": 67, "min_count": 71, "name": "okzJp9UblSTYQ0yv", "unlimited": false, "use_buffer_percent": true}, "Ace03GYvVvD2Corm": {"buffer_count": 52, "buffer_percent": 57, "max_count": 63, "min_count": 94, "name": "EW1VxvBA4vjK0pBC", "unlimited": true, "use_buffer_percent": false}}, "regions": ["T4Y8BL79MuKpFLk7", "xEtt8uGCEcglp25e", "LasGuzanqnP27gY4"], "session_timeout": 85, "unlimited": true, "use_buffer_percent": false}, "8fcKqaj0PhDQ17Rb": {"buffer_count": 91, "buffer_percent": 64, "configuration": "q06EoEQFGMg1EQIG", "enable_region_overrides": true, "extendable_session": true, "game_version": "Q6nQBWHv1DEpFoGG", "max_count": 1, "min_count": 44, "name": "gGSDxfRuVpioggfj", "region_overrides": {"pfJzffWLExuGabFC": {"buffer_count": 84, "buffer_percent": 31, "max_count": 60, "min_count": 92, "name": "AKZwaMuThc268cVA", "unlimited": true, "use_buffer_percent": true}, "M4RSF16JhSzIUJqf": {"buffer_count": 90, "buffer_percent": 26, "max_count": 27, "min_count": 99, "name": "tJtSy6LuMYE4Zt61", "unlimited": false, "use_buffer_percent": false}, "n4rg1dm72d076Aoa": {"buffer_count": 54, "buffer_percent": 12, "max_count": 3, "min_count": 78, "name": "6I5tUYFptE0OxcLi", "unlimited": true, "use_buffer_percent": false}}, "regions": ["qVDB6yCKRzUdSuyt", "93fdPWyh2gq7alCb", "CBfj0o04JYXoS8G4"], "session_timeout": 29, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"TeISXY8Jw4efpg2Q": {"buffer_count": 80, "buffer_percent": 100, "max_count": 90, "min_count": 87, "name": "mcDdJnDko8YC5BuH", "unlimited": false, "use_buffer_percent": true}, "jOjj9ytHTsTCOHQM": {"buffer_count": 78, "buffer_percent": 83, "max_count": 80, "min_count": 85, "name": "2WvNaHZghJdZloRN", "unlimited": false, "use_buffer_percent": true}, "98lIcOHZYaWQGnnV": {"buffer_count": 4, "buffer_percent": 46, "max_count": 43, "min_count": 59, "name": "9qpS7L23grXj7D2b", "unlimited": true, "use_buffer_percent": false}}, "regions": ["ZzPbmofA2G90kPLt", "NzkIS6WYZNfJhLtS", "abQQVnnjT7MZWYcs"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
