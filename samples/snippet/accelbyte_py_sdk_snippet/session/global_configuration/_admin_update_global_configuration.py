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

Example: '{"regionRetryMapping": {"iF4XDgIBl456qipu": ["C6nAQXecSRgrnLUP", "mulKll8kSZFB9sHO", "CcDm9RFmBPzHNZH4"], "4GxLZcGaxCSUs5L0": ["8C0mSOaIttWsrmgP", "Geo3nKR2R1riRnsz", "aEzE59bBGz2jBUuy"], "OTnhsq8yG61XYkC6": ["yu0VHbcLqQd1AeTZ", "xA5urFQ6BZUDzkxr", "dTEYKfUPNPaG6c2y"]}, "regionURLMapping": ["5WWizDp6sokA54Nr", "mEuquloY68xoy9f9", "4mJgmg1pMdLUsVvN"], "testGameMode": "mQjyrTfzawRZS2lf", "testRegionURLMapping": ["WQ1suvTqUZTZ3SsQ", "dAkqfrakRvJFLnbD", "57NE8wBcHURXKnyj"], "testTargetUserIDs": ["xZ5VCODc02R9AAkk", "FbjdgVOr1gYWBuk0", "2n7DVVyJjnbqM7od"]}'
"""

result, error = admin_update_global_configuration(
    body=body,
    x_additional_headers=x_additional_headers,
)
