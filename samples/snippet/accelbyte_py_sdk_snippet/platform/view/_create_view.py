import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_view
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullViewInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import ViewCreate

"""
body:
Definition: ViewCreate
display_order: int
localizations: Dict[str, Localization]
name: str

Example: '{"displayOrder": 33, "localizations": {"yYqli1B4CaxFeole": {"description": "4lZEFBp9Ca7QY9VD", "localExt": {"uKc5DMT97H1JZ3R9": {}, "3opsP8gMGmneyd7S": {}, "AiBtTtPZU5tLldmg": {}}, "longDescription": "3nXjbtaLSppzqQPk", "title": "eUN1smDJPn9jPbXF"}, "SmpVrNf7hJnXcUOJ": {"description": "Fj39SchBcPRZ1Gaq", "localExt": {"8K7RnEDw8akb7Xr9": {}, "fyXBLWRhJwTx4JQZ": {}, "jWcGXqPtFDDHLRrh": {}}, "longDescription": "VCL5UZ9sIzI5AVgJ", "title": "747NNDqoIuTqnyxB"}, "s0h3tiOfchPQhbIh": {"description": "8BBgnF08O9CQ9w04", "localExt": {"avtQiPO9j6gS09vn": {}, "ahAhzg16omRtjSlk": {}, "CBWFYrtNBVSWjIq0": {}}, "longDescription": "OcoMm2XrzTg5Fxrx", "title": "VWNN17YDdBWlgbeD"}}, "name": "CPAa4HFR0eV84TTm"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
