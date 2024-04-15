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

Example: '{"displayOrder": 77, "localizations": {"71cv4ACL66bCz6a4": {"description": "GECDCKWovyb7PzK2", "localExt": {"Nga03lhGVld0n6IH": {}, "nyaJQTkm30wCnZ46": {}, "PhZQ64gcji4P2KFy": {}}, "longDescription": "reUHMuAChuFyIotd", "title": "vnO7DJYPSPoIC8bC"}, "pNkNnqhkK9rk524R": {"description": "bkXeFNmAV5DfDV0h", "localExt": {"6na7iugnJQjR7IBa": {}, "ODUnUxPnQbpE8Rsu": {}, "4a5C0pvu2HOPz32Q": {}}, "longDescription": "mxN6UyID5OFHbWTW", "title": "MCrMkaAsrIq3P2Qd"}, "h8IkpHQKd96Hpunf": {"description": "flTM6qWOmaYw8wa0", "localExt": {"fBJzUpM61COb7A5r": {}, "aDe4CpeuW3GItCnV": {}, "JqtOOF1uBhLwGr28": {}}, "longDescription": "iyJMfzUeTvDUyJsC", "title": "UYRcOja0PPva4JZP"}}, "name": "NHGeMY8yd7vaGEUF"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
