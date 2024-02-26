import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_global_config
from accelbyte_py_sdk.api.lobby.models import ModelGlobalConfiguration
from accelbyte_py_sdk.api.lobby.models import ModelPutGlobalConfigurationRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelPutGlobalConfigurationRequest
region_retry_mapping: Dict[str, List[str]]
region_url_mapping: List[str]
test_game_mode: str
test_region_url_mapping: List[str]
test_target_user_i_ds: List[str]

Example: '{"regionRetryMapping": {"SpbSDfRkMmOOMjqg": ["XpG4DzNpdsNZCcrp", "p5hwJINh8J8A43CU", "xBSxW01gCwBhjmRj"], "vExyGF4jSzqZteSF": ["OUDXplMPruxQmDrk", "JBpPxPRUHr8l8gi7", "b2GFqDPHw371cwxf"], "gbF45xRZ7WO9QdGH": ["NQRp1uM6pg0fbU4l", "GOhnzJtmZ0NRAkty", "GKfmxiThHzrRNIKP"]}, "regionURLMapping": ["GnpuAiXQInKHeutK", "vLTkiS3lQFz64qas", "xoBGAF5FpWG5BQSv"], "testGameMode": "ZMUUB0bvHwk4nG9o", "testRegionURLMapping": ["MU0NrNNOiqapJ5zy", "tjMXkq3kg7nXRm4q", "qc4OwTtunrDWRlkb"], "testTargetUserIDs": ["6VoHvaREFWgTHrYe", "FlrYHukr8deZmtp1", "Aoyn3qF75MTIk5b0"]}'
"""

result, error = admin_update_global_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
