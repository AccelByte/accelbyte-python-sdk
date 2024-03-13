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

Example: '{"allow_version_override": false, "buffer_count": 24, "buffer_percent": 19, "configuration": "OvhOly3U92BIwKHN", "enable_region_overrides": true, "extendable_session": false, "game_version": "8Y4eJczlpKBXRGQl", "max_count": 61, "min_count": 90, "overrides": {"mnF2ZJbM6BgAb2Ga": {"buffer_count": 68, "buffer_percent": 95, "configuration": "vCWUjco29xyVz3t8", "enable_region_overrides": true, "extendable_session": true, "game_version": "yPAWzHQ9ebnxYRwA", "max_count": 29, "min_count": 15, "name": "kyg0CU9FJHllfg09", "region_overrides": {"t0DaiB11vR7QWwn0": {"buffer_count": 18, "buffer_percent": 42, "max_count": 70, "min_count": 43, "name": "CWh5PGl8e7HkjtNj", "unlimited": true, "use_buffer_percent": true}, "pEBEROJj52z9j1bX": {"buffer_count": 6, "buffer_percent": 71, "max_count": 84, "min_count": 10, "name": "hH8INs0XTmHRPoy9", "unlimited": true, "use_buffer_percent": false}, "xYkZAaMXXajWRfCj": {"buffer_count": 75, "buffer_percent": 62, "max_count": 91, "min_count": 61, "name": "bR20CmrmTL4jEBjg", "unlimited": true, "use_buffer_percent": false}}, "regions": ["FhLEsIrIFAAtkGpD", "1TM3ik3Qf20KqBRW", "Yzmgs8NfJR67qQ6i"], "session_timeout": 35, "unlimited": false, "use_buffer_percent": true}, "DNOv28Try3edshzx": {"buffer_count": 93, "buffer_percent": 15, "configuration": "xZfDSvtFEhSpE7Q0", "enable_region_overrides": false, "extendable_session": false, "game_version": "7rKlsBlVH66MReIx", "max_count": 96, "min_count": 23, "name": "uqafiuYpwjrKbvIv", "region_overrides": {"eqZ4VJiESCUGpTxS": {"buffer_count": 1, "buffer_percent": 100, "max_count": 76, "min_count": 82, "name": "5xny3DE8CuSh8cHX", "unlimited": true, "use_buffer_percent": false}, "mRy357lpczo9K1ku": {"buffer_count": 22, "buffer_percent": 10, "max_count": 0, "min_count": 8, "name": "fQ5KWLJOsDUrZXoG", "unlimited": false, "use_buffer_percent": false}, "cJcBOSQV4uab5T3i": {"buffer_count": 16, "buffer_percent": 33, "max_count": 68, "min_count": 31, "name": "kDXZdoJaqwMd4WRE", "unlimited": true, "use_buffer_percent": false}}, "regions": ["PVFnbXUBcOLYziUK", "oOLzo8gq2Y5Z4Lnq", "rNU0OawdbSmImB34"], "session_timeout": 45, "unlimited": true, "use_buffer_percent": true}, "nHoxssmnyyRCMZ9y": {"buffer_count": 1, "buffer_percent": 97, "configuration": "exUqMIG7Be16CPm9", "enable_region_overrides": true, "extendable_session": false, "game_version": "nNdksGqojguxJ3ic", "max_count": 90, "min_count": 59, "name": "6SmDPjDnv0q6vkIc", "region_overrides": {"kAaiF2P5oOGgKIfn": {"buffer_count": 80, "buffer_percent": 93, "max_count": 95, "min_count": 99, "name": "2oVpMjSj4qGYtL4q", "unlimited": true, "use_buffer_percent": false}, "kOAELag80KzTEW1b": {"buffer_count": 40, "buffer_percent": 66, "max_count": 5, "min_count": 26, "name": "K7igUp9SGi5OSg1G", "unlimited": false, "use_buffer_percent": true}, "kgolqg9qxq27FJ8z": {"buffer_count": 43, "buffer_percent": 22, "max_count": 46, "min_count": 33, "name": "vSRKKhjngUonJvOI", "unlimited": false, "use_buffer_percent": true}}, "regions": ["kd8fboPyFhBgOBzQ", "26rungAEH4aoG373", "CZthCaRbpihJVxTB"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"qahYK68OgP7yqYvK": {"buffer_count": 100, "buffer_percent": 99, "max_count": 3, "min_count": 21, "name": "JQbZkG7J5CE4Pu9n", "unlimited": false, "use_buffer_percent": false}, "9mB9tI078TXof1z1": {"buffer_count": 49, "buffer_percent": 80, "max_count": 41, "min_count": 61, "name": "ak2YbTccsjX70tIO", "unlimited": true, "use_buffer_percent": false}, "uatdX4JK2ViSFbLD": {"buffer_count": 36, "buffer_percent": 89, "max_count": 64, "min_count": 35, "name": "WDyvTIudxENRB5Yi", "unlimited": true, "use_buffer_percent": false}}, "regions": ["j6MWteiLxFNExXrP", "uipLkoW3BAZSatd3", "2GkeuAtl2Zkx1Xj3"], "session_timeout": 25, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
