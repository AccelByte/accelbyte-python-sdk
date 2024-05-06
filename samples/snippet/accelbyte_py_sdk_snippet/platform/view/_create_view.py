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

Example: '{"displayOrder": 95, "localizations": {"nKal0VsjJxfynzHa": {"description": "qJCvyFCHQBRO5e6l", "localExt": {"uZRSzaIpt1hPSk16": {}, "uZco2ybU0SgknCct": {}, "LAslBB4PoSgwGTfT": {}}, "longDescription": "DVvnTjcUnCteco4R", "title": "4EDvpJTbrlUjqOHH"}, "VEeQdoMz0L1BZRc1": {"description": "1wSm2K4aSzC4NGzC", "localExt": {"5UO0U8e4s6QVlK9y": {}, "uS2g5ouVlIHs88Bv": {}, "QRITjjykbq1s8tMH": {}}, "longDescription": "3FNi24HvZAOE0Brx", "title": "pBBhkyX0Ofp5gxPT"}, "MfdQ2ckifwawcwu9": {"description": "aOHvtc8AG9KnkGj7", "localExt": {"1Mv8iPM2j25H731G": {}, "Sb78oxv0OMxc8l1H": {}, "SYXRh6QgjxmUTJGq": {}}, "longDescription": "AKapXN2VDHjjTrZv", "title": "3I1fj204pJx2nXXM"}}, "name": "pMLRr3hExgmyScwi"}'
"""

result, error = create_view(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
