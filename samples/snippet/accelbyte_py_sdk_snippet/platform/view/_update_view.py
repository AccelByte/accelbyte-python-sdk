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

Example: '{"displayOrder": 19, "localizations": {"42z1DJleqNeY6bOB": {"description": "0iOE1GImk55tAnQU", "localExt": {"3We8827urzZcQcWz": {}, "4MbrbLmxeNsLdnzN": {}, "gybRpZkAmjcmT8aW": {}}, "longDescription": "m3AvFyU3i9Zfj4de", "title": "SewUe45UX4drKbKc"}, "LhWVEk5umcyYvy3s": {"description": "70mqjcF4akqaovvh", "localExt": {"NlNkjQjmDWcmGVd6": {}, "yIPxhQ6GJBWXrcyX": {}, "lJgcCIomggowuiAz": {}}, "longDescription": "2E8bz16bDfOF0fLI", "title": "fgem9TGKU3yn9VD4"}, "ZypNv2xajkaXEbgV": {"description": "4SkBIhCLCszUt81i", "localExt": {"cImWbYPQUDvenVrG": {}, "OeWdPukIzxkplSUM": {}, "Iv9gtvAYIxloiCpU": {}}, "longDescription": "HSzn7sOsyuX3uNmV", "title": "qTOmbj0iuCiCsnba"}}, "name": "ORNI2YCBNq3ifkby"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
