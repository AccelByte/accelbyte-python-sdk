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

Example: '{"allow_version_override": false, "buffer_count": 58, "buffer_percent": 62, "configuration": "ZcD1WsJ96EzXefj4", "enable_region_overrides": false, "extendable_session": false, "game_version": "mdY5vJtVJodclYrK", "max_count": 44, "min_count": 55, "overrides": {"DSFkwcEdEP27bN6i": {"buffer_count": 26, "buffer_percent": 41, "configuration": "hxlUQgjFyr6el83M", "enable_region_overrides": false, "extendable_session": true, "game_version": "5S7mlDdO1OIjsWuh", "max_count": 40, "min_count": 53, "name": "6JZaEEoU8CJlyZGh", "region_overrides": {"40NfnsGMuT4LiO7o": {"buffer_count": 50, "buffer_percent": 18, "max_count": 2, "min_count": 72, "name": "kzInKaGFc9oVfXnB", "unlimited": true, "use_buffer_percent": true}, "XrrOOYXo0kx9YUnE": {"buffer_count": 76, "buffer_percent": 61, "max_count": 89, "min_count": 48, "name": "1ckG3j8brwLW1uAy", "unlimited": false, "use_buffer_percent": true}, "y9zlWmVaESzSzSCo": {"buffer_count": 84, "buffer_percent": 18, "max_count": 40, "min_count": 8, "name": "EVqGH6RWGhRHdifB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["138mnxmfSoJxepcn", "Fnoq2NDE9XeZ6rly", "JCaYfk1l3K0VnP0d"], "session_timeout": 11, "unlimited": true, "use_buffer_percent": true}, "pJlFzI6x0hsgXSKY": {"buffer_count": 13, "buffer_percent": 36, "configuration": "UIeNRkXughcPcRl1", "enable_region_overrides": false, "extendable_session": true, "game_version": "Q7wiataDv6wHXLih", "max_count": 96, "min_count": 56, "name": "xVdYMIeDGHxHHrRd", "region_overrides": {"GxNp7gSIwkT2c4Xx": {"buffer_count": 70, "buffer_percent": 46, "max_count": 70, "min_count": 63, "name": "KaUtNABojlRtv7gX", "unlimited": false, "use_buffer_percent": false}, "ie0JOGEL8fSEbaOS": {"buffer_count": 83, "buffer_percent": 29, "max_count": 90, "min_count": 51, "name": "VHqQo7hizHT24TTK", "unlimited": false, "use_buffer_percent": true}, "yX6f86t6VxBmqqLV": {"buffer_count": 40, "buffer_percent": 24, "max_count": 58, "min_count": 15, "name": "GlHcsgYtfvLVuCCO", "unlimited": true, "use_buffer_percent": false}}, "regions": ["tSfpmgr2TplmNbTt", "EgJwXrKFx34JL4Ic", "YMLTrYqTxjvD59xh"], "session_timeout": 17, "unlimited": false, "use_buffer_percent": false}, "t0UCm5CtRQBwSQxb": {"buffer_count": 16, "buffer_percent": 67, "configuration": "W3aGobEzEe50APhP", "enable_region_overrides": false, "extendable_session": false, "game_version": "YNo0t0lSrKhNB8uB", "max_count": 64, "min_count": 24, "name": "KnTHTuQJU8WYIw0j", "region_overrides": {"f4ayrFNAKEpUPXMu": {"buffer_count": 79, "buffer_percent": 88, "max_count": 3, "min_count": 64, "name": "IE27D68aLpeSoJqt", "unlimited": false, "use_buffer_percent": false}, "m1eBCmRPDrh5uXMZ": {"buffer_count": 79, "buffer_percent": 84, "max_count": 36, "min_count": 30, "name": "oKmC82yNIIlbuIkl", "unlimited": false, "use_buffer_percent": false}, "acmRZt7W04cH2XW5": {"buffer_count": 57, "buffer_percent": 97, "max_count": 46, "min_count": 59, "name": "9rCgpcx4C0lCosmw", "unlimited": true, "use_buffer_percent": false}}, "regions": ["YgLt9VsGb9fBCXmR", "rnBMNA98MYATiM0y", "8pOMiaGrAB4qdS03"], "session_timeout": 93, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"Bze6UmYWlht913tQ": {"buffer_count": 66, "buffer_percent": 55, "max_count": 26, "min_count": 92, "name": "yMOMb8bGD4CDBOho", "unlimited": false, "use_buffer_percent": true}, "nqUYJSwWXgp5wTLO": {"buffer_count": 30, "buffer_percent": 39, "max_count": 46, "min_count": 94, "name": "dFabGIDpjAhzUHic", "unlimited": false, "use_buffer_percent": true}, "3FNfYZM1JVncC7He": {"buffer_count": 73, "buffer_percent": 54, "max_count": 55, "min_count": 21, "name": "p8xlKFa6W3bWkNsB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["eLWHF3pH4P0df2si", "SKc11q25i96PU7K7", "hbCdbzVeUXILjr1r"], "session_timeout": 55, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
