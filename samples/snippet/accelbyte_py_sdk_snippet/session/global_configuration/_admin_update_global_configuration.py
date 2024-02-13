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

Example: '{"regionRetryMapping": {"aCW57tWNEmdVWIWI": ["5yEdBCfxwGptgS5N", "5UA8ljgPAU4r74Su", "YAfuZt0yASjbOrmF"], "WR3zRcRNox9C748J": ["mSaDKWgPqzr1GP7u", "YmZCkeIubqZPkY0n", "srve6ijb09ZRGHsx"], "dGvzDNsst243kfTI": ["QfTYPiBEIQyDQriB", "QEL6UnKTD21V3d7o", "WjzJcOHNX9wsJvOd"]}, "regionURLMapping": ["AH2J5dXMkdGLAv2L", "GRwBdXyWFRJMhwMR", "AT2VihjPEJurleXN"], "testGameMode": "22g5DX3Xvnmoo5Fb", "testRegionURLMapping": ["revTwHzDUGL7FylH", "RUrg6O8Ku7Tc0JXo", "YS6JZ0hXMfSxRY16"], "testTargetUserIDs": ["vDeOTsOShILCZzIr", "xA4etDjhMAvQNsv5", "lW2jKtzvdCWz6owP"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
