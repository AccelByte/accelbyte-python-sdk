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

Example: '{"allow_version_override": false, "buffer_count": 51, "buffer_percent": 6, "configuration": "ZyAOsaSSefMLcA89", "enable_region_overrides": false, "extendable_session": true, "game_version": "yKQK97gjxQlgbzxe", "max_count": 15, "min_count": 47, "overrides": {"TcO0k4Fpa3CGMHW4": {"buffer_count": 23, "buffer_percent": 8, "configuration": "88Xqc7vTzQ7ZAe2S", "enable_region_overrides": false, "extendable_session": false, "game_version": "HfEscjIfmXSsV1wn", "max_count": 77, "min_count": 38, "name": "CgvwKntqHn1VR8dR", "region_overrides": {"IsHxuG58PMx7SO9d": {"buffer_count": 44, "buffer_percent": 65, "max_count": 39, "min_count": 6, "name": "DHx4HKPVNzQOh6EC", "unlimited": false, "use_buffer_percent": false}, "TrsfLbO9mZLiag6R": {"buffer_count": 85, "buffer_percent": 78, "max_count": 86, "min_count": 92, "name": "NQtELDsxt90F5QFf", "unlimited": false, "use_buffer_percent": true}, "rFHsP9bmGaBvWdXY": {"buffer_count": 96, "buffer_percent": 48, "max_count": 89, "min_count": 73, "name": "XKUQr2oBhWmhDiCt", "unlimited": true, "use_buffer_percent": true}}, "regions": ["27SaYhmn2dSR7Yh3", "oe5KYNo1DnQOlCrT", "QSbL7QkYHoHIi3iB"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": false}, "UmU6K12Yo1JHzOMv": {"buffer_count": 27, "buffer_percent": 40, "configuration": "b0gD2vVf7ioBgFqP", "enable_region_overrides": false, "extendable_session": false, "game_version": "cZewMVzfoIijkRdM", "max_count": 59, "min_count": 58, "name": "Pef5LmTVGgjkCHpg", "region_overrides": {"oWYghXvH3PschFa7": {"buffer_count": 19, "buffer_percent": 42, "max_count": 97, "min_count": 49, "name": "GzepIBSG5GEBTmBc", "unlimited": false, "use_buffer_percent": true}, "Ux9ZvrYn5vk6hC9w": {"buffer_count": 66, "buffer_percent": 89, "max_count": 17, "min_count": 39, "name": "UDooPE18N6lgjFlR", "unlimited": true, "use_buffer_percent": true}, "MHQ989wQv2IeddhL": {"buffer_count": 5, "buffer_percent": 98, "max_count": 48, "min_count": 49, "name": "1FF3nG41kTEKkO3z", "unlimited": true, "use_buffer_percent": false}}, "regions": ["zOq99fopJndL4vOt", "R7h7mjWce70BoE3z", "QjcIyycEYOz8Pps8"], "session_timeout": 80, "unlimited": true, "use_buffer_percent": true}, "OPt4Tm9KhVCH9TIM": {"buffer_count": 79, "buffer_percent": 90, "configuration": "yLBuztB8ECgWQSX4", "enable_region_overrides": true, "extendable_session": false, "game_version": "GIL91VTlWyCQWUbg", "max_count": 3, "min_count": 12, "name": "lELyIxj82jvpYOsK", "region_overrides": {"rFiVlfhoxn4kpM9C": {"buffer_count": 42, "buffer_percent": 19, "max_count": 47, "min_count": 61, "name": "S0V6cO8ao2pKL9By", "unlimited": true, "use_buffer_percent": true}, "5Te2bsq2P2UkGPBQ": {"buffer_count": 20, "buffer_percent": 39, "max_count": 76, "min_count": 51, "name": "6hkp2muQ9Fgtlw6H", "unlimited": false, "use_buffer_percent": false}, "G3CivZPNHFqYVD2B": {"buffer_count": 68, "buffer_percent": 5, "max_count": 22, "min_count": 99, "name": "QM3hSFkp0ie5tlHF", "unlimited": false, "use_buffer_percent": true}}, "regions": ["tFfmp5SJYd8DkkvE", "dsdrn66IhDTBJA97", "GsEurbHaCDVsA1qV"], "session_timeout": 7, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"iw8xhC7NdlA7i5S0": {"buffer_count": 43, "buffer_percent": 32, "max_count": 15, "min_count": 81, "name": "DN4Fn4DqMXuv6D4K", "unlimited": true, "use_buffer_percent": false}, "seo1KzV3zPr63NXG": {"buffer_count": 45, "buffer_percent": 18, "max_count": 16, "min_count": 32, "name": "u38F4NIKBL2JSraN", "unlimited": false, "use_buffer_percent": false}, "sIkCbZPRinqEa9dB": {"buffer_count": 86, "buffer_percent": 45, "max_count": 14, "min_count": 1, "name": "uOb88anBfJyy6pxH", "unlimited": true, "use_buffer_percent": false}}, "regions": ["Iwaww91qINk3V01V", "DoHzP7c4mVNjxV6n", "VkvYxpHZ58VEfCh2"], "session_timeout": 48, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
