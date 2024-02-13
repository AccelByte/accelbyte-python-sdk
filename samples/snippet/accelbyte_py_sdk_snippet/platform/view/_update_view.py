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

Example: '{"displayOrder": 2, "localizations": {"5EXzPXSohJwXau3r": {"description": "dlKxZbwfx2Qd706R", "localExt": {"G7VXz6m6JmUZOSqW": {}, "SiU9xnmQU057iJOW": {}, "oR3Xbz5FHzchciBI": {}}, "longDescription": "eKCJu0Vx6KhWNqPj", "title": "vYisxUBgPB4QMD4p"}, "s3Q7lo9AppGITjbw": {"description": "rM3idl4XxuJw981r", "localExt": {"NhSVV3gbhiZQjpZz": {}, "FHpyfdfXOx4Mlxje": {}, "hNL9qZdWQMKz2Jkd": {}}, "longDescription": "drEedMU6iSqslKL4", "title": "X3PgovYFXlTb7wht"}, "ZDPdtcbbpeGv2neG": {"description": "whIRFwUhEoIuZKjf", "localExt": {"WIAmh1crqXYnew96": {}, "iBuINKu0t7ousm0a": {}, "L6eIjIF4cMhg4MaR": {}}, "longDescription": "QlAIUghXOJLo0arf", "title": "EfF3D2ibqKx4nd6O"}}, "name": "ozdIs5dRpmqoZeVN"}'
"""

result, error = update_view(
    view_id=view_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
