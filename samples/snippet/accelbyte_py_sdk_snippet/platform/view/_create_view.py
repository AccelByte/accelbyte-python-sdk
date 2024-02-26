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

Example: '{"displayOrder": 18, "localizations": {"DRrIgkK7LltMTYR3": {"description": "5KbGsA8eaUXmQ4J3", "localExt": {"PyMc0EMqRh677Mbo": {}, "i69J4sqv7AbWLE4h": {}, "BOGyYHtcxO9QbDqz": {}}, "longDescription": "p523UyUqWEpO6D7s", "title": "IDdKClrpiip9V7be"}, "wrmTZsoav4AYqgPZ": {"description": "x31hngFoNPTYEqrp", "localExt": {"OJSbWxMscJsxuRxz": {}, "iuMQwDcqCSMR4bN1": {}, "IIVuJK3e8nY1WQ1C": {}}, "longDescription": "78zubD3Ff0anjw5u", "title": "vRdR7XtFFC4bK6Bl"}, "xwmTa8KnwMHefGYW": {"description": "yh2hVmIDzfWrrW7b", "localExt": {"IESDbyk2bxmVlhTs": {}, "iCtEOkREcTciyDiw": {}, "Kmk3zbo972k26ehQ": {}}, "longDescription": "JzK6OC2KxTi2USs5", "title": "l2RnRC6IoCEksox1"}}, "name": "lgaP3XQGouf0oroT"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
