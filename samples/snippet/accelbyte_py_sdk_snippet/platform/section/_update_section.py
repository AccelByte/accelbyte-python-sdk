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

Example: '{"active": false, "displayOrder": 1, "endDate": "1982-04-24T00:00:00Z", "ext": {"YwkSjxZNzomQHc8N": {}, "K8MmfFFsgcdpyeBh": {}, "Bd6o6I73mPZgsAGn": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 59, "itemCount": 77, "rule": "SEQUENCE"}, "items": [{"id": "kJhLvVRyoExZaBwQ", "sku": "IGlNddoBCHNfWoVu"}, {"id": "ntRJi8EsLf6gNXXR", "sku": "BppFCFDFxibm9nJY"}, {"id": "77mLQ6nUW9FAGDNc", "sku": "O8vrI6MikjmbPMBf"}], "localizations": {"BbYFUkYlgAPzb8hT": {"description": "nWGDt5S0h8RdGQKJ", "localExt": {"zCToIT8GNBI2OtIe": {}, "VblOSnWqTNesWutl": {}, "Qg46Zi35ZGA0QCG0": {}}, "longDescription": "ETs0YGavM6H2zFZ4", "title": "L3zHuKAVLj32oF11"}, "A1HYnN31PSFTEtY4": {"description": "oE0uZQnj8qRIaPCB", "localExt": {"AgEEN8NDAcikfKa0": {}, "PRvW3ZTx3zGOmLcl": {}, "iBYzNNLX7QpAOwSE": {}}, "longDescription": "kGVedrpgUvGYzogn", "title": "2lL6q4gKwaRmod4l"}, "ANlY4mXhbZcJgRTw": {"description": "swVHf32Zaa5c5Xsv", "localExt": {"oD9QFNOFQWljEfXE": {}, "ByufRG97QbvZSkTP": {}, "lZvO8pWB68IL29UK": {}}, "longDescription": "SDxWAFknh9psvpYk", "title": "gl0JnrxnjHkmMHap"}}, "name": "zYe9gXxKeadpEIKi", "rotationType": "NONE", "startDate": "1977-04-05T00:00:00Z", "viewId": "TmI1FwV21HDv3Vc3"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
