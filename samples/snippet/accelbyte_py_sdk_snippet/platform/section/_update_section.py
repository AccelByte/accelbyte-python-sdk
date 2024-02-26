import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_section
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullSectionInfo
from accelbyte_py_sdk.api.platform.models import SectionUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: SectionUpdate
active: bool
display_order: int
end_date: str
ext: Dict[str, Any]
fixed_period_rotation_config: FixedPeriodRotationConfig
Definition: FixedPeriodRotationConfig
    backfill_type: str
    duration: int
    item_count: int
    rule: str
items: List[SectionItem]
Definition: List[SectionItem]
    id_: str
    sku: str
localizations: Dict[str, Localization]
name: str
rotation_type: str
start_date: str
view_id: str

Example: '{"active": false, "displayOrder": 76, "endDate": "1985-10-05T00:00:00Z", "ext": {"BrondOlSlGIp8bF7": {}, "d91bxVkEuVN5NR9L": {}, "r6N37dRXJD5vi81z": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 67, "itemCount": 73, "rule": "SEQUENCE"}, "items": [{"id": "lEmWkstVwnPKnjlD", "sku": "tzk5LhEuUGUOIBmG"}, {"id": "kVBSAHpuWDhrM225", "sku": "R8jFVP8oHfTacOAD"}, {"id": "OHWm2V4zkIeTimP2", "sku": "JiTs8OUMiqBEu9FX"}], "localizations": {"GNl2IxQav6ZKVSaN": {"description": "1HImuUcxt1y1ESN1", "localExt": {"c53wSysVGBL8RYkD": {}, "9ZPjJMe3LIRjyOnN": {}, "CornG8yI4liVCJLN": {}}, "longDescription": "QtP3f7a8gtyq6Kly", "title": "Dz6YNWtw5VQhxnG4"}, "VSETwAsWZldxsFX9": {"description": "VarLd4knXOW1kkcb", "localExt": {"4BipOqOajqEPBuz9": {}, "6hChBDUhC6rCQvLP": {}, "OFe1n0r0otFseqHY": {}}, "longDescription": "Csjx3QcBiLjrEUZV", "title": "ArPro7AFCK5UlSU6"}, "0imIhCJ7PPmV0ktE": {"description": "yEf4D026WtwwQ6qM", "localExt": {"HiWFJFMnfXMpT91x": {}, "HW36mORffcGB5tk8": {}, "5JaMdZlqOspwPKcs": {}}, "longDescription": "E5zPKfmYP31FjxnW", "title": "hIhl5uTHLQFCt4FP"}}, "name": "ndXBrJ97kKVSjcup", "rotationType": "NONE", "startDate": "1993-07-11T00:00:00Z", "viewId": "kUDQc3wEW8jY182J"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
