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

Example: '{"allow_version_override": false, "buffer_count": 22, "buffer_percent": 54, "configuration": "OyyqQgC3SimWWX9p", "enable_region_overrides": true, "extendable_session": true, "game_version": "YOcaIDKTOw92StVh", "max_count": 13, "min_count": 44, "overrides": {"MoYkHd6IuETRYL3A": {"buffer_count": 41, "buffer_percent": 97, "configuration": "9GEhcJ36NBtML6mf", "enable_region_overrides": true, "extendable_session": true, "game_version": "hjvko2IoHwg2fHn1", "max_count": 12, "min_count": 71, "name": "A6UxLIO8LTEOzBwF", "region_overrides": {"jnys1hncYo2KPvPN": {"buffer_count": 83, "buffer_percent": 28, "max_count": 33, "min_count": 1, "name": "h3I0y8qWTJfBfCEt", "unlimited": true, "use_buffer_percent": true}, "RutiJBp8yvC3THsC": {"buffer_count": 82, "buffer_percent": 89, "max_count": 14, "min_count": 80, "name": "oI8Czr9jYQiwz5Eo", "unlimited": true, "use_buffer_percent": true}, "ouGMoXHbcMGpJV42": {"buffer_count": 95, "buffer_percent": 67, "max_count": 100, "min_count": 93, "name": "yukIkUeZ7JoKi2qY", "unlimited": true, "use_buffer_percent": true}}, "regions": ["WtVjmDDRBpcAsL7b", "KiK8qP8uqJgHdwXB", "tOINm8woqDEjB72W"], "session_timeout": 63, "unlimited": true, "use_buffer_percent": false}, "VsHvoGtPq3DwOZii": {"buffer_count": 34, "buffer_percent": 26, "configuration": "5JIlmP9SFl4uWyND", "enable_region_overrides": true, "extendable_session": false, "game_version": "EyMfySs9IgJYbCEc", "max_count": 74, "min_count": 13, "name": "4WvAfp8ms0yEyuqM", "region_overrides": {"AlobTD1M7TL4Gnnr": {"buffer_count": 65, "buffer_percent": 43, "max_count": 99, "min_count": 67, "name": "hmwz7oacWKelTz8l", "unlimited": false, "use_buffer_percent": false}, "12He2fvhWyK716K1": {"buffer_count": 86, "buffer_percent": 69, "max_count": 34, "min_count": 92, "name": "uew6W3ownkamvZgY", "unlimited": false, "use_buffer_percent": true}, "iQdZbroDA1PDUr3M": {"buffer_count": 79, "buffer_percent": 85, "max_count": 28, "min_count": 23, "name": "iFZmqcVfXKLQZFrG", "unlimited": false, "use_buffer_percent": false}}, "regions": ["yiJY9ztrfe0LAGN9", "S56hT0mcCQMZVmdz", "93iUaFDSbQKE2TtF"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": false}, "2TLben6hzfn1jU7Z": {"buffer_count": 98, "buffer_percent": 5, "configuration": "z6qHBIYJaRZdQgMY", "enable_region_overrides": true, "extendable_session": false, "game_version": "bUC5IusDMKW8VEmS", "max_count": 63, "min_count": 47, "name": "adKaQ6Bcls3TBavp", "region_overrides": {"jOXxls098YBUkuKr": {"buffer_count": 86, "buffer_percent": 13, "max_count": 58, "min_count": 56, "name": "RCDNa0jdRGXAboM9", "unlimited": false, "use_buffer_percent": false}, "wjvv9Yf7bwEslhMU": {"buffer_count": 92, "buffer_percent": 78, "max_count": 5, "min_count": 50, "name": "5Isb8Idq7JxzLnF0", "unlimited": false, "use_buffer_percent": true}, "LceYh5YviXNZdSFy": {"buffer_count": 42, "buffer_percent": 60, "max_count": 72, "min_count": 60, "name": "jCvEzyrTHqFXDMnr", "unlimited": false, "use_buffer_percent": false}}, "regions": ["1jQ1HBj9G5aikl8e", "qgIF3rQpILVLVCw7", "dZzlziJc38qJDSCs"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"IR3dMAKDEQsucDsc": {"buffer_count": 72, "buffer_percent": 89, "max_count": 100, "min_count": 87, "name": "g7EUAtP2WWVrBJap", "unlimited": false, "use_buffer_percent": true}, "zSAWIGOIshd0lSvj": {"buffer_count": 42, "buffer_percent": 19, "max_count": 46, "min_count": 24, "name": "10csCx3LPhDbOgNS", "unlimited": true, "use_buffer_percent": false}, "0DrFqcHEMQyjHPOQ": {"buffer_count": 60, "buffer_percent": 32, "max_count": 85, "min_count": 1, "name": "PeWQtzChIr0D3cJu", "unlimited": false, "use_buffer_percent": true}}, "regions": ["LqUW9ZBZ59IGe8aT", "DvNVC6RWRYhGHYoS", "fN3QmQ6yYEFhpCax"], "session_timeout": 37, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
