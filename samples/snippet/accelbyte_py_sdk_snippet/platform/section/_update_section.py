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

Example: '{"active": false, "displayOrder": 78, "endDate": "1976-01-29T00:00:00Z", "ext": {"AHUncF8UuTYQdswc": {}, "Jr0mydkF9dPXQLRX": {}, "CBI05WkUDaqi1D1O": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 74, "itemCount": 3, "rule": "SEQUENCE"}, "items": [{"id": "0E7jFlxcuBBqJSf9", "sku": "2avIym9DEfmiXzxS"}, {"id": "fR3eNV3rLYilpxTZ", "sku": "0l5QC5XOAdoXyt04"}, {"id": "f35xI9ZotQrIKAvO", "sku": "3oW9vIjZ9qHxrXjL"}], "localizations": {"ZW0G8roqo0CLdKJz": {"description": "jjShCyHfK95wdnW6", "localExt": {"GV4vkLCanlYyRXWe": {}, "l7KdqKPMx4uARHM4": {}, "1lG1hMOY5aVjUh7w": {}}, "longDescription": "1MmSRZgJV5PkL003", "title": "EQuXMEXXsOOUI3TA"}, "NYcHFHY3B1aFXCzG": {"description": "8ONm6Vb6UNRpEI6X", "localExt": {"QMCCUk3pGELx3d3m": {}, "XBUcI2j2zs0jRdgE": {}, "ORVJ8jOPwnZejbWu": {}}, "longDescription": "H0TI8KBbYTIEoI1C", "title": "lOmIdLV2CtRlkLcX"}, "vE99QPZuBVPkmZH2": {"description": "1nYaEcPXi4rXEog8", "localExt": {"DLNcPqVYjBD0kwOk": {}, "TLLYlbjPKUwE9Oe1": {}, "a0rxjKDnM6DygIER": {}}, "longDescription": "SETspPGSBBbvV5pV", "title": "ErSL4Ts5fkY5moo3"}}, "name": "AB1B2hTAGkD9YFOT", "rotationType": "CUSTOM", "startDate": "1982-08-03T00:00:00Z", "viewId": "51yyYXmxlk1KwEZE"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
