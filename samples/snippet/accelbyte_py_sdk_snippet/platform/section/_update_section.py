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

Example: '{"active": false, "displayOrder": 61, "endDate": "1994-01-03T00:00:00Z", "ext": {"xkLgbltfQbsPM8j8": {}, "XRU79ShOzfslq5Q5": {}, "aqBkex1KqWBNbAtO": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 15, "itemCount": 47, "rule": "SEQUENCE"}, "items": [{"id": "6LnrLpq52BWrMT1x", "sku": "3WddMKgPv2aELhq8"}, {"id": "5lDcOtJSL3L2lF35", "sku": "ifLIzLyPN1t0YIn8"}, {"id": "owcSUKMaro5VNkWa", "sku": "Q4yqC9yCDrQW2MPZ"}], "localizations": {"HkuDy356R1pppdLU": {"description": "lqkOP95u8OhXAEY4", "localExt": {"rLc96uMS0A6J71ig": {}, "m2RIF8kTlyocyvGO": {}, "Q6hKYv0w0oGMNyVs": {}}, "longDescription": "k0jT2bdn4oRkiSY7", "title": "uzANF7Ak8P6AzBQi"}, "zbShAPy2aQ9WYRRq": {"description": "9U4I72Aozo1NHodU", "localExt": {"1ixvDisg14RXTnxe": {}, "AHDHSsrHsbK3ZnoO": {}, "tSYdvoAGdcOv4kSP": {}}, "longDescription": "q0mTGKc8TW4Wac6q", "title": "ZGTGQeKVz5Pju03Z"}, "5bT2YCO1sKerDg8Y": {"description": "nYyZuu7Bi5eZ5iCD", "localExt": {"gTK1Bsbsl5PzQePx": {}, "Nd7bgBnsNTOJj1Qu": {}, "id43bVpRbo98uZQM": {}}, "longDescription": "U8zgsPIaWaTdEMgO", "title": "5vr8WRf5s7zoHH5c"}}, "name": "NfDW2R8heBQmTYcR", "rotationType": "FIXED_PERIOD", "startDate": "1975-12-10T00:00:00Z", "viewId": "HLKmVqtYWh7o0XnY"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
