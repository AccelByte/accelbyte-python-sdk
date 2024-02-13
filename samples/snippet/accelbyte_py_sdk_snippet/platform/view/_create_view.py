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

Example: '{"displayOrder": 44, "localizations": {"Ld87xOlruJsOi5I7": {"description": "3pSxXb2ktL8KNF15", "localExt": {"ZgljhkPB9keoGI4k": {}, "i05LmMFDwZW1FmsC": {}, "gwo2xONU5H16gl1N": {}}, "longDescription": "sxNafliN77uZxLze", "title": "oH6VJcElDUF4fqWo"}, "BesJxHrC2q9HLiy7": {"description": "KiJWOP3WRzVV7hGx", "localExt": {"BNAuNPeNkobOhq6t": {}, "p21u02eww0LkWzEw": {}, "JR4jgGvc58HN4Gvx": {}}, "longDescription": "jqKtEsFitjJqQdtT", "title": "kA6pDZ6Ltq9X2L92"}, "CfdCV1j7xzn8yKvh": {"description": "2W5u5ixhRfPjJpuT", "localExt": {"Lod6K4jXY77HNAZC": {}, "rYRJgZTtzjFuoS7K": {}, "edMRENLADmh58YJy": {}}, "longDescription": "HvrSPdLs60cFBB0D", "title": "SvKM4CFj6rb1xLec"}}, "name": "Fr1UbfEuFpheJCWN"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
