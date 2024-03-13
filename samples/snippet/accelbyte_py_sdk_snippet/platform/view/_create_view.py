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

Example: '{"displayOrder": 77, "localizations": {"RNurBTsLHTSJMiiv": {"description": "762jgoJlZe99fHqP", "localExt": {"voGdnQ065t0AHnDe": {}, "oeKbw39m7OHLAVDP": {}, "gKf7Rzl9QqjrfIE9": {}}, "longDescription": "eIXMSOzAW7YYqQur", "title": "tp3wBKUVOazACCTL"}, "12DqKEuUoJMjzXfE": {"description": "PiCBcJMNiXtuu7Sl", "localExt": {"4l1hkPAMeD4wLYbt": {}, "MT7gXC3pKWyaE6l2": {}, "gO0GO8eI9SDiP1xR": {}}, "longDescription": "mjLI9FLz7wEtFuXz", "title": "yyU6jc7Jz0J5JCjo"}, "b9QfWiN4PzCvoGeU": {"description": "B7bxzqBEgUECyhns", "localExt": {"MPN4fZw98TZO3S1Y": {}, "FWhTlronu49URmjF": {}, "ScbaRbOpcte9lmah": {}}, "longDescription": "Vn6PapLQF3mQUrkx", "title": "XeTLdWj7zKQFn1v9"}}, "name": "Bttnfds5pdOUmKt4"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
