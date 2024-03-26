import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_update_global_configuration
from accelbyte_py_sdk.api.session.models import ApimodelsGlobalConfigurationResponse
from accelbyte_py_sdk.api.session.models import ApimodelsPutGlobalConfigurationRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPutGlobalConfigurationRequest
region_retry_mapping: Dict[str, List[str]]
region_url_mapping: List[str]
test_game_mode: str
test_region_url_mapping: List[str]
test_target_user_i_ds: List[str]

Example: '{"regionRetryMapping": {"trbw3YDj7o1AZMAt": ["BrwPkj40RbFpJ7an", "JmcLuf8qVVXOLEgB", "kPW8HDk8NW8FFgAK"], "ZyoAoLeLJ1j7kNwx": ["OJdIA1gmhkJdFhf7", "7jB0zZft6srVvLMm", "03PLMQr9XXsFyhPk"], "xhwPSI8aFB5oYhjU": ["Hf9EggIlm16KkhrA", "zG7pnblWghBbgo8X", "P2PEj2COtM1qgQSU"]}, "regionURLMapping": ["xUuKtxsZZvIyNvBR", "i0sBEJfijRyUxNMa", "TZzKkSqDv4Fo2oEl"], "testGameMode": "PaK1X3vBiMAeftTR", "testRegionURLMapping": ["aZlZOy26l4JZpPqA", "72RE8p8Z0SQ8idzr", "DqQmVsLy1DsVILSs"], "testTargetUserIDs": ["tAxgxtkWjeR4usjr", "LfjQT1AoNUMcQVWZ", "KuS9VfO2VqatNNzQ"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
