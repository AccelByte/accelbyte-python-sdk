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

Example: '{"active": false, "displayOrder": 35, "endDate": "1983-02-28T00:00:00Z", "ext": {"aO2t54Pw8SzfmHM8": {}, "bGby47cGl3fJwoC0": {}, "NHrLP4sZ9JPzLbQ6": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 43, "itemCount": 51, "rule": "SEQUENCE"}, "items": [{"id": "6g2ZOb1rY1xfnCJH", "sku": "BQFcYVifFUlk4Vyw"}, {"id": "vQTGOHP1mO6ovI84", "sku": "kJjSSAkwE0DpRKKT"}, {"id": "windeLW9EkF0fWE0", "sku": "Jx1CXezt4xafUtYt"}], "localizations": {"mzpnuhLaSVEGS7wm": {"description": "C5lVwhKbEvdDafok", "localExt": {"St7LDusHbqLUBHOL": {}, "NcreL443tWpmOyHD": {}, "qHzc6Edl6zLlbmMV": {}}, "longDescription": "7sQqCgOqFsUGvb40", "title": "WGJ432FNu7veWlWw"}, "lu7baSzyqQPogzEp": {"description": "vj3Z36dYkNbBbLXP", "localExt": {"699EkWDhPsurLZVw": {}, "ZUXQzWiHbWgQBwjY": {}, "DBoTU4wxDYaBcw8s": {}}, "longDescription": "e4K4uaQeSqVB4Ngj", "title": "bo5Me3IpIHjs5dGE"}, "dalaHJRA6nAA7Nk5": {"description": "QkzwTYHE1VBXkJVc", "localExt": {"5L7nhwZtdBYhTyVS": {}, "7dqDSlGzmmMFQkIo": {}, "johsuGbbYQJD6iXH": {}}, "longDescription": "v2TOk4K3giN9tA7I", "title": "TcSb3wki33YEx1SC"}}, "name": "ekOP1kqfikhK6Uwt", "rotationType": "CUSTOM", "startDate": "1975-08-05T00:00:00Z", "viewId": "udJKFUbi6HXepAZD"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
