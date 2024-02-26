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

Example: '{"active": false, "displayOrder": 74, "endDate": "1984-07-15T00:00:00Z", "ext": {"tN0RueNepchYOF7W": {}, "99jZm58GDn0Agzex": {}, "KkQT83YpC7zmB3HT": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 31, "itemCount": 69, "rule": "SEQUENCE"}, "items": [{"id": "7f2YHYf6D0M5fpEY", "sku": "fqWBImQuUpKaPx6X"}, {"id": "yIBPuENVvr3jfMQs", "sku": "jd2gdQlm7KCA9yL3"}, {"id": "bIoIUngwfE6Ozrpv", "sku": "RbG3Yqoml2BxD8oM"}], "localizations": {"quHd7FFWYsbJm039": {"description": "gZ2k6QRAOKX5hKzs", "localExt": {"AniBnqEcYM3E7ORy": {}, "QAFqvkqjfxaZ5jDr": {}, "siOEPWaea5cIESOS": {}}, "longDescription": "totXTKc6SngnBIOW", "title": "AoSznZupAjvWTC3R"}, "yK0v0XKw5xRnj52J": {"description": "BWLRQ1cr1u20qkyl", "localExt": {"c0JZEaPUh24b1ORN": {}, "bdPr3lzDucWZUGcs": {}, "2xQvb1dgTiF0l0cf": {}}, "longDescription": "yNml7yXwEEZpg4mQ", "title": "VbFhzDO7EaPcbvTq"}, "AtaB3wJI8ue4gNri": {"description": "m5RVWTR7zlnfGoeH", "localExt": {"2rdExxlh7RSuQHFx": {}, "ExmVdg5NnGh9YZ0y": {}, "Stnd81ojL2eD6WzK": {}}, "longDescription": "hTYQugcKS0upiBUy", "title": "MkXodH0D9s7D4c2S"}}, "name": "QaYglGjvER33vvnp", "rotationType": "CUSTOM", "startDate": "1976-03-28T00:00:00Z", "viewId": "tChXzotczw8xYE6S"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
