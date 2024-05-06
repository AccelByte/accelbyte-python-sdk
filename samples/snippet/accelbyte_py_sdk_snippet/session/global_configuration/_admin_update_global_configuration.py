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

Example: '{"regionRetryMapping": {"E8c4ZdqrxEVgwxBQ": ["3aCtEWVwHuI5Iiuq", "DAD5RWVsf6sSyrv4", "G9mZtXVfMXikypTF"], "mFdnvHduGRYQXlDy": ["XEZVJLaPW1MAEwMZ", "tLZuEiJWE4HnML0o", "PEe6U5ZXVk9ZtmR3"], "NQBGX7glzHVUM2SE": ["qB7PRsTpBck0XLGL", "rcCNWAbwgR3nfvZL", "80WIApL6ObyNvbqM"]}, "regionURLMapping": ["6vfNy1iFeaG6D8W3", "v4ynBoiUS5Gw1IvR", "J4qPLxlzv8HGqAZ8"], "testGameMode": "b4k7HJciBc3aphfr", "testRegionURLMapping": ["4IDa9yxZdryt9JAA", "EhDPshhVqVKucr2D", "1SdBMxvQurWtzTqt"], "testTargetUserIDs": ["XtFEYDMdHT9BiEtm", "PQ9hSZY7tBkQ0JOS", "gb8V1Fezj1VUiH7v"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
