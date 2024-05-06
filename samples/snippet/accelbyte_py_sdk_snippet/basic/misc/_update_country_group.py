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

Example: '{"countries": [{"code": "JQFu04x1zR0577Mc", "name": "bFwPZf4sLOwFCEGk"}, {"code": "zSH8s9pTf1EcuSFE", "name": "PxsQI0p1B2w52jnW"}, {"code": "c6xJCpRCLsDEEOJC", "name": "jU7hukCxg4gRMbTi"}], "countryGroupName": "OtI8GBmZS4v3x7lx"}'
"""

result, error = update_country_group(
    country_group_code=country_group_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
