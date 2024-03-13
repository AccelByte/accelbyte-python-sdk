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

Example: '{"allow_version_override": false, "buffer_count": 34, "buffer_percent": 22, "configuration": "vmhqpdRviOnE4dN8", "enable_region_overrides": false, "extendable_session": true, "game_version": "UTYIjAYWBv19mjBp", "max_count": 28, "min_count": 52, "overrides": {"ud6ZqVVbQCE14rJR": {"buffer_count": 76, "buffer_percent": 90, "configuration": "XhnOLbD5Xe8sYpj3", "enable_region_overrides": false, "extendable_session": false, "game_version": "fZtqUJVpbPsnHUwB", "max_count": 20, "min_count": 56, "name": "XzRQaXkstChataJf", "region_overrides": {"zJ6yeUCdtsj1TwSX": {"buffer_count": 93, "buffer_percent": 26, "max_count": 56, "min_count": 67, "name": "Ccr7IainMO8K2Mnt", "unlimited": false, "use_buffer_percent": true}, "NUOt68xSV53IFqy7": {"buffer_count": 29, "buffer_percent": 58, "max_count": 8, "min_count": 87, "name": "gGCJMb0AzNXYj4X2", "unlimited": false, "use_buffer_percent": false}, "UrQ8LAtby0Clzn8A": {"buffer_count": 54, "buffer_percent": 36, "max_count": 44, "min_count": 39, "name": "elZgyU81PwJcqSJl", "unlimited": false, "use_buffer_percent": false}}, "regions": ["Jg9nsE0uImKeOi3E", "OImBEs62tkHhF62X", "iEv9sSGGFE77yoxp"], "session_timeout": 39, "unlimited": false, "use_buffer_percent": true}, "DnAwYxKlqHKzzlsk": {"buffer_count": 57, "buffer_percent": 36, "configuration": "0T4neg6t3f5hQGhF", "enable_region_overrides": false, "extendable_session": false, "game_version": "NaD6eXdDvL9zRqCs", "max_count": 75, "min_count": 55, "name": "gXaliNTqkj5ImjQ7", "region_overrides": {"xRKNNXHb5I87c3Co": {"buffer_count": 65, "buffer_percent": 67, "max_count": 75, "min_count": 88, "name": "OiSlEZBBulUnsptD", "unlimited": false, "use_buffer_percent": false}, "d74WHhl5ToHuf4IT": {"buffer_count": 91, "buffer_percent": 89, "max_count": 0, "min_count": 54, "name": "8JSLrN9Pm7t924IP", "unlimited": false, "use_buffer_percent": false}, "GOhvfVHLvN0HR0Kp": {"buffer_count": 91, "buffer_percent": 54, "max_count": 37, "min_count": 31, "name": "iYVGBgGyaw6cN0Fe", "unlimited": false, "use_buffer_percent": false}}, "regions": ["prQBy0M4Lkqj90A1", "ZW1QNsJeMKJMQeBB", "UExPq4vyalE6XM8R"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": false}, "epxSWz0sWq35EFO7": {"buffer_count": 17, "buffer_percent": 75, "configuration": "FB3o28eQHznc2NsA", "enable_region_overrides": false, "extendable_session": true, "game_version": "n8X6Q4VPVDOAXW95", "max_count": 93, "min_count": 56, "name": "uSE5rojfmF4Omu43", "region_overrides": {"uu1NzmbbiM6yDhDw": {"buffer_count": 35, "buffer_percent": 42, "max_count": 33, "min_count": 53, "name": "lyqWGoGNM8jT72NB", "unlimited": false, "use_buffer_percent": false}, "ru7UzYWfTv0ovFN0": {"buffer_count": 8, "buffer_percent": 100, "max_count": 18, "min_count": 61, "name": "affKaTkIgrpP4frK", "unlimited": false, "use_buffer_percent": true}, "qcnBboULXBOa19VP": {"buffer_count": 27, "buffer_percent": 45, "max_count": 20, "min_count": 62, "name": "CoN97hw0ra7sy4g0", "unlimited": false, "use_buffer_percent": true}}, "regions": ["CX3YEYiFL8ELnWTR", "sDRrLWPu0rYF1kUX", "IS9ma6C6nNqt7uzx"], "session_timeout": 68, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"dW3G8X1cx6Uzjzlz": {"buffer_count": 50, "buffer_percent": 9, "max_count": 90, "min_count": 70, "name": "FIZuP9f65NTbYzSY", "unlimited": true, "use_buffer_percent": true}, "FAMNqj5rfYqNYLAk": {"buffer_count": 77, "buffer_percent": 71, "max_count": 66, "min_count": 10, "name": "gStfbPisPWpnHEp0", "unlimited": false, "use_buffer_percent": false}, "fdbs1bheGCBiGnsk": {"buffer_count": 63, "buffer_percent": 1, "max_count": 70, "min_count": 20, "name": "kT8O1hbbnUEFuWRn", "unlimited": true, "use_buffer_percent": true}}, "regions": ["7bv9nvaIvZ04Kcx7", "lL7vfrdmb6nwavyQ", "fSTXXfIGdldE5biO"], "session_timeout": 46, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = create_deployment_client(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
