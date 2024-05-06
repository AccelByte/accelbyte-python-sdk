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

Example: '{"allow_version_override": true, "buffer_count": 1, "buffer_percent": 91, "configuration": "LbR3EV8Od6ZNihe0", "enable_region_overrides": false, "extendable_session": false, "game_version": "0xRzsq99j6GCQkIc", "max_count": 7, "min_count": 8, "overrides": {"azqEDbIckCevjBab": {"buffer_count": 16, "buffer_percent": 52, "configuration": "su9ezpOK67cdjAo1", "enable_region_overrides": true, "extendable_session": false, "game_version": "2Iw5kl4mzO9jymJ6", "max_count": 39, "min_count": 85, "name": "cwGvGqEnZFvyW0mU", "region_overrides": {"OAWb1C5PjhMYR8pQ": {"buffer_count": 41, "buffer_percent": 63, "max_count": 13, "min_count": 22, "name": "Wdyrhg3y2IrgDStJ", "unlimited": true, "use_buffer_percent": true}, "c0OvQvKSRpi8AEVA": {"buffer_count": 83, "buffer_percent": 22, "max_count": 46, "min_count": 49, "name": "UIiLCIrjVnKTs6yV", "unlimited": false, "use_buffer_percent": false}, "f1qethjnpjuxH1q1": {"buffer_count": 35, "buffer_percent": 33, "max_count": 95, "min_count": 36, "name": "7XfYJ60UpPrYOtGZ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["RbXyjfz9hm8iqX2D", "EUr1TFtADr4cA1ev", "5H1fsU58IlSlq5Is"], "session_timeout": 42, "unlimited": false, "use_buffer_percent": false}, "xnJOJqBdvLS3YjUh": {"buffer_count": 57, "buffer_percent": 54, "configuration": "aJZR2hCA3TtO0Aec", "enable_region_overrides": false, "extendable_session": true, "game_version": "Dip5l4yf7Mj6IFmb", "max_count": 89, "min_count": 47, "name": "As7p1n4ywZCkujL3", "region_overrides": {"m8xYy8Z7XMOPZc9c": {"buffer_count": 27, "buffer_percent": 83, "max_count": 0, "min_count": 14, "name": "E8qZ2xtQllBTLFGE", "unlimited": true, "use_buffer_percent": false}, "2L6T41HzwYE3NXRO": {"buffer_count": 56, "buffer_percent": 91, "max_count": 10, "min_count": 60, "name": "n6JvKkcVXardGH1j", "unlimited": false, "use_buffer_percent": true}, "D3jReXoqWEXDvWqf": {"buffer_count": 40, "buffer_percent": 30, "max_count": 1, "min_count": 97, "name": "l3BmXZHuQavsNDvX", "unlimited": false, "use_buffer_percent": true}}, "regions": ["fqEfhz3LNv8V6O1v", "K3ZYbLcd7eCNRiWH", "Z1oMkORi8uZyoLGH"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": true}, "hmrxWK7VUtiC9gdt": {"buffer_count": 62, "buffer_percent": 55, "configuration": "Me0nGSVfvyGLa45m", "enable_region_overrides": false, "extendable_session": true, "game_version": "sVJOzeFn204zWdyW", "max_count": 76, "min_count": 50, "name": "eDsm0QbfEyXEEbVf", "region_overrides": {"kGR9utXtY02ODuyt": {"buffer_count": 20, "buffer_percent": 34, "max_count": 17, "min_count": 96, "name": "j2x8DWIb447JRgAN", "unlimited": true, "use_buffer_percent": false}, "SnXsp2g9kfIvMP28": {"buffer_count": 6, "buffer_percent": 13, "max_count": 56, "min_count": 99, "name": "3gV9UuvPzkDZqMDj", "unlimited": false, "use_buffer_percent": false}, "M3THCLb2RocfX3ij": {"buffer_count": 11, "buffer_percent": 56, "max_count": 100, "min_count": 10, "name": "69EUpssQkbb8aNK3", "unlimited": true, "use_buffer_percent": false}}, "regions": ["dv8qMxzT0bcGyFQH", "BwWPL7rvyRff6z19", "GvGkHXNLnsPsDSlw"], "session_timeout": 89, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"z6EkXPI4pQ7Z1n4G": {"buffer_count": 36, "buffer_percent": 64, "max_count": 84, "min_count": 7, "name": "cpcog9ts2a3SMRt5", "unlimited": false, "use_buffer_percent": true}, "YepNkSoDIvBDjH8M": {"buffer_count": 51, "buffer_percent": 65, "max_count": 14, "min_count": 83, "name": "rBek5kMEN8p4K4mi", "unlimited": false, "use_buffer_percent": true}, "tVqXSZKn29aDE60n": {"buffer_count": 75, "buffer_percent": 63, "max_count": 69, "min_count": 42, "name": "GBuY32GRDsYUhrSR", "unlimited": false, "use_buffer_percent": true}}, "regions": ["PuUQ6cOocitP9Wd8", "MERVLnz2IJ5l4Y7y", "5KDxVH0DlfxKjCqq"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
