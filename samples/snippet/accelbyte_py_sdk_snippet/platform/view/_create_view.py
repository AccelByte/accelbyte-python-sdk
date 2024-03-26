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

Example: '{"displayOrder": 65, "localizations": {"Tpxm8gCIVhKZOF5U": {"description": "sb0AgnvbvXw2GcGf", "localExt": {"hrkZlW1MccG3wEou": {}, "yV4EKTr1vMFlizoP": {}, "PkneX3xDhjDxRENz": {}}, "longDescription": "m0ro4AFHwuiZUpVZ", "title": "IYOQtnmucxmX6AhY"}, "cEMtz2Os0V5EGcqL": {"description": "kmJfPUP2wBO97WjO", "localExt": {"2YOxeU3UjOai9It5": {}, "GwRE1UweHjnCoM1b": {}, "4yWK4kbk9D5WT2oI": {}}, "longDescription": "Zj8lvQyBEmQuMqdQ", "title": "k0gVEk4NF4H8A6OK"}, "Ha5UVxX0ypwWyom5": {"description": "kG66cLUVJERk8r7W", "localExt": {"xigNIBxlGREm7oim": {}, "tD9pD2tytuUnHoCX": {}, "SbggmL1pZsd4q2ft": {}}, "longDescription": "uupqcDtjIawwSVWT", "title": "7baSq2M6wFJqqnU6"}}, "name": "ITjpJY37uGGP8CNG"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
