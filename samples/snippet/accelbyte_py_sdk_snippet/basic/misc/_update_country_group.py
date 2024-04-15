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

Example: '{"countries": [{"code": "vfacE4JjtNKnpuVq", "name": "gxAu3bvu8bD7L1J8"}, {"code": "EuTkCzgsC1kqo3tT", "name": "LIGj72W0eYOY9d1j"}, {"code": "UOOxGTQRVHnCD8TK", "name": "rnnjC8doLH5N0VdX"}], "countryGroupName": "ym8jFeP2hkTXUQ0S"}'
"""

result, error = update_country_group(
    country_group_code=country_group_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
