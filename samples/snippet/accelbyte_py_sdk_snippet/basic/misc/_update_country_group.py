import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_country_group
from accelbyte_py_sdk.api.basic.models import CountryGroupObject
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UpdateCountryGroupRequest
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UpdateCountryGroupRequest
countries: List[CountryObject]
Definition: List[CountryObject]
    code: str
    name: str
country_group_name: str

Example: '{"countries": [{"code": "7NeeKa07f0hUiZ3d", "name": "TlFq7uWANNle7Gnp"}, {"code": "63a0sz0xtU5pUOuP", "name": "0FKk6c9JgWz0VcZ3"}, {"code": "vnvfe6UOGTFsRpJ7", "name": "5Ej3hJF01nnNjR2y"}], "countryGroupName": "8sKjEHxCPC0ovD2V"}'
"""

result, error = update_country_group(
    country_group_code=country_group_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
