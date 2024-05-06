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

Example: '{"displayOrder": 10, "localizations": {"YIOtj9bI5FG1AQJY": {"description": "nx92jUst4NWtoB5L", "localExt": {"7BkmFI3UanA8kHIl": {}, "FbZm4TGBg6Ytv90X": {}, "GSOm0x8NLVSbYun3": {}}, "longDescription": "5S7kC8OIq6Dous4x", "title": "Wm5zJrWhGgsMFrP1"}, "TqjXJydGqUAjJfOy": {"description": "NXI7w4Mn7orBx16d", "localExt": {"L6LZuwx91V0rGmk0": {}, "INpqqvSsZ5fHYOkw": {}, "4hLKsCDmyoNTbFWo": {}}, "longDescription": "osSfQbLDSVBG8us1", "title": "j7XHOkKPk20xa0ik"}, "ivRJdYudGKZM3gMe": {"description": "wYXfr2o4VvlFuv3J", "localExt": {"SzrLtS834rNb7yh8": {}, "B0faZGpPjmse0eAo": {}, "2yKPTCvpJ2J6lVzU": {}}, "longDescription": "cygyUDXhpoEfZiOT", "title": "sqgLoGfopabPHHTM"}}, "name": "JpuZUy5czESOA7en"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
