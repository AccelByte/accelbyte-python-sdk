import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_view
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullViewInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import ViewUpdate

"""
body:
Definition: ViewUpdate
display_order: int
localizations: Dict[str, Localization]
name: str

Example: '{"displayOrder": 14, "localizations": {"yLDsyOpzcwlMeRY5": {"description": "xnZYVduFmiQpN8Zw", "localExt": {"mfThblWzZLe14swG": {}, "aIj4dJQJZhfvDHi3": {}, "z4SiH2nxTguSBhMu": {}}, "longDescription": "dLytu5Lb0tjL7XEb", "title": "BQ8Ymp5GF1CFpQ2d"}, "4NkXxHmQMxpR0WB7": {"description": "ZSSUC0Brc8WQSSCT", "localExt": {"J6S5mGnXlesH5VPN": {}, "6rAYY9XUVwixZm3K": {}, "iiMN7XYTMlZ0UP0m": {}}, "longDescription": "CSw0Ss7YFHpcZiwn", "title": "4uk9fsbWBJobARNC"}, "2cwlOHT3be2HWrbf": {"description": "By6EH5pJC86QYQPx", "localExt": {"Awdgz2XthqjqijUT": {}, "EUGeo3RLfre5YXwD": {}, "YLipnakpFpnFcvII": {}}, "longDescription": "2jZDkmHubgCDVxbP", "title": "IxYki9RsFijpUPvS"}}, "name": "qCFMqxzNyjdRKNdz"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
