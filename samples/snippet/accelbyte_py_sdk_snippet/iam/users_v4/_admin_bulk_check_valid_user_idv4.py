import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_check_valid_user_idv4
from accelbyte_py_sdk.api.iam.models import ModelCheckValidUserIDRequestV4
from accelbyte_py_sdk.api.iam.models import ModelListValidUserIDResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelCheckValidUserIDRequestV4
user_ids: List[str]

Example: '{"userIds": ["aeml5o7kOdZklfc0", "AQLbasSdHabxiwLZ", "hQM2YkCZVgX5Ma5K"]}'
"""

result, error = admin_bulk_check_valid_user_idv4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
