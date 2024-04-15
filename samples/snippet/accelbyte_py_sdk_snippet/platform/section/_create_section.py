import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_section
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullSectionInfo
from accelbyte_py_sdk.api.platform.models import SectionCreate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: SectionCreate
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

Example: '{"active": false, "displayOrder": 54, "endDate": "1989-10-10T00:00:00Z", "ext": {"zfBOzzLTin8ZGqbw": {}, "En4NhWen9aoIHII0": {}, "epXfnrPqIxULKYfw": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 59, "itemCount": 67, "rule": "SEQUENCE"}, "items": [{"id": "Soe0mpp40Y2q67lV", "sku": "y10YVZJHrUzI1l2e"}, {"id": "miN4AP2eJqE00Eq7", "sku": "Mp0x9iAWfExZ5SU9"}, {"id": "my4PC6oYJTWsA1Jf", "sku": "UvH56js5aqVrKZxj"}], "localizations": {"qenknj8fUyJsnYWm": {"description": "TlvpG6oJJgYVHmPo", "localExt": {"gSknqprewxMLMiZl": {}, "aDvg6yRJ0hUz5hj0": {}, "CWAssPRhrbHC22Wn": {}}, "longDescription": "aWOtqAAFGNEVTJYT", "title": "uwNEqCIz4cOWpcXI"}, "hWaKp8tBx4v0QAlk": {"description": "cEOhwPxGheu6vVul", "localExt": {"uKBEh3Izbve4PYfh": {}, "TLJYEquv4kiSlhDe": {}, "rN52mrIcOCTiNksY": {}}, "longDescription": "i6d2k1GV9VfznrQb", "title": "2JQ0IHy8UIQfDz1i"}, "V4rIMuY0YyT9HWbs": {"description": "h5RNXLm0ZDSCFKGu", "localExt": {"eICurujGVXUVXId3": {}, "I9yJpc1RJHw1JchQ": {}, "gDW3drNkzsqvsU2u": {}}, "longDescription": "mQ7tvGTw8SfQfwOu", "title": "Y1fT3F46BmroEXre"}}, "name": "vA7vvTdA6DS3aaNC", "rotationType": "FIXED_PERIOD", "startDate": "1994-02-14T00:00:00Z", "viewId": "xXIFUCBGGqD2nePm"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
