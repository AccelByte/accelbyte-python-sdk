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

Example: '{"regionRetryMapping": {"d92ubuKvwg6lx22A": ["LCM8wA8RTi3IhrQP", "yqGHvyoHM34Lx0sU", "lR0XbRf69eoXzARf"], "ufaLESoSyX5R5Zje": ["WblDu1f3pEXbYLpD", "9xo9WdN8jT8uMxJm", "TanfAm7M0yTcVlBB"], "ixtDe88erKPfhCfm": ["sxL0ZgZLrf244kRy", "y9jQzzVZgpUBOyod", "ChEyGKD4j8ZI3zPs"]}, "regionURLMapping": ["VHoiOZOKfiWlZr1E", "FHROurXHFzt1idgA", "coSfo1msqAcLMegF"], "testGameMode": "YDRcWQyV0G27nnUT", "testRegionURLMapping": ["j8NnjWuUSaFFTLOQ", "ewYMeTVenI7Kcgc2", "vYT6zg2rIic8ukXF"], "testTargetUserIDs": ["etW9yvUxNFiflsPe", "F1o9yu7FaFabiDGn", "7eCXAwGm6BrmSwyU"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
