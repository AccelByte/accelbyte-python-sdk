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

Example: '{"regionRetryMapping": {"SgrFwYdPaVIC926T": ["QjWEqNhQGREJCgDd", "rMQXd8GTBCprFjyO", "gOR1Z9iLuIdgZGkF"], "KlnEXC1spmpVB7VJ": ["4G214KTtPMkbUR73", "W4WkLG3MmtDj4TLZ", "TTZE4p17R7nr0QIr"], "pMZGztOuFV9GgJ3N": ["aC5PY9oi86fRJUdl", "CN5RbQpyv6nmhoE1", "AQEFFX0uw1CbKMEM"]}, "regionURLMapping": ["NKdPuR0BnY0ZvnRQ", "nYEYt16UZLhuJyWJ", "HjTdrgWIEDknPx07"], "testGameMode": "4jlenqWMrsmktXXJ", "testRegionURLMapping": ["VlCVCDaRKy1CsvKs", "qL3TH6Xt9fwEAmk1", "uUoAxFEYtg4x7z54"], "testTargetUserIDs": ["VFwQDDnueREJgSuW", "0tkfGkWG5uglNerj", "FY5NKEHDiWcVsVdj"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
