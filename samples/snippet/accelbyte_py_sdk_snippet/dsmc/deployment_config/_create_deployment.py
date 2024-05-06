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

Example: '{"allow_version_override": false, "buffer_count": 12, "buffer_percent": 37, "configuration": "8KkSAkupe1tWemiA", "enable_region_overrides": false, "extendable_session": false, "game_version": "CwxuBTfcs0akM4VB", "max_count": 20, "min_count": 32, "overrides": {"d2lTeQBAgJTYnDyB": {"buffer_count": 24, "buffer_percent": 48, "configuration": "gT1ylBdnvLsPdfJm", "enable_region_overrides": true, "extendable_session": false, "game_version": "jn8tTakhO8orKeFN", "max_count": 83, "min_count": 46, "name": "vjQEKxg41p9ukHD4", "region_overrides": {"fKy6kCZXRfNNN8er": {"buffer_count": 82, "buffer_percent": 39, "max_count": 64, "min_count": 40, "name": "luDAH8QrmrzjIYXf", "unlimited": false, "use_buffer_percent": false}, "kaJDmvAqZeTjatCl": {"buffer_count": 58, "buffer_percent": 53, "max_count": 73, "min_count": 43, "name": "N87jGkTZYuMgVHln", "unlimited": true, "use_buffer_percent": true}, "GhTn3yUg98JpVzWx": {"buffer_count": 97, "buffer_percent": 63, "max_count": 38, "min_count": 25, "name": "w47NbnPcRginxAtM", "unlimited": false, "use_buffer_percent": true}}, "regions": ["vJsRmPAE4GvOCkwB", "lngQR82JOIyLsHK6", "kbJYwvY0PgglQduB"], "session_timeout": 9, "unlimited": true, "use_buffer_percent": true}, "Iv0JACbOb3JokzsM": {"buffer_count": 44, "buffer_percent": 22, "configuration": "HRgYYNJBz1RZEfCS", "enable_region_overrides": false, "extendable_session": false, "game_version": "BbNEGyxJXfWgs0Os", "max_count": 78, "min_count": 99, "name": "bdd2v0Jrnl8NUD9Z", "region_overrides": {"XRBVzigABZC6LGc6": {"buffer_count": 8, "buffer_percent": 27, "max_count": 88, "min_count": 92, "name": "w22PPGY97MAG6ND2", "unlimited": false, "use_buffer_percent": true}, "JrlrVQUJsExo3JJA": {"buffer_count": 56, "buffer_percent": 35, "max_count": 56, "min_count": 42, "name": "zsR3ms58uJgwdpiP", "unlimited": true, "use_buffer_percent": false}, "TIQNhL1nxMd4R46C": {"buffer_count": 89, "buffer_percent": 84, "max_count": 41, "min_count": 89, "name": "1yzJId2hnSuOf0WW", "unlimited": false, "use_buffer_percent": true}}, "regions": ["OJZHI1FyOGLuhnI0", "Wxvhz6rPgb7FWpjJ", "JSHMTsu5iJGCCS4u"], "session_timeout": 40, "unlimited": true, "use_buffer_percent": false}, "pIkY2cXollD3UGRG": {"buffer_count": 1, "buffer_percent": 70, "configuration": "3CoYiUkMqaY4IaIl", "enable_region_overrides": true, "extendable_session": false, "game_version": "Ys5uC1yK3wz9B35k", "max_count": 36, "min_count": 54, "name": "6JrBKfwgYyaOvvvM", "region_overrides": {"8AlMNBhtDSKV67dm": {"buffer_count": 77, "buffer_percent": 60, "max_count": 32, "min_count": 38, "name": "fPcxzXRtBAgSqp4l", "unlimited": true, "use_buffer_percent": false}, "L3AdSn9OyuSYH5Z0": {"buffer_count": 81, "buffer_percent": 16, "max_count": 56, "min_count": 28, "name": "TefgpmgksJi5v0p7", "unlimited": true, "use_buffer_percent": false}, "GZBWre89zGXTGI2v": {"buffer_count": 52, "buffer_percent": 55, "max_count": 23, "min_count": 5, "name": "vIAmfZWm2W2juU1Q", "unlimited": true, "use_buffer_percent": false}}, "regions": ["6SRlaM9dz0GJGbgF", "Io8KQjx4Y7dWwiqm", "O3ouq0rdkLV229w2"], "session_timeout": 74, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"tPd2vlyDruKd9uRH": {"buffer_count": 56, "buffer_percent": 64, "max_count": 18, "min_count": 88, "name": "lSMCXGBBwNftx0Zx", "unlimited": true, "use_buffer_percent": true}, "U91snzBQsowm3uqc": {"buffer_count": 10, "buffer_percent": 80, "max_count": 14, "min_count": 35, "name": "pLrnXSLFg75GHUJT", "unlimited": true, "use_buffer_percent": true}, "9DxcVZwtYCzAOz1b": {"buffer_count": 41, "buffer_percent": 74, "max_count": 37, "min_count": 18, "name": "pBZFR8gETtrhefuo", "unlimited": false, "use_buffer_percent": true}}, "regions": ["5MkFfYWyHSFY5ViL", "vBXQDsd1vAYgk6qw", "hPpAna1wcicdPu1N"], "session_timeout": 57, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
