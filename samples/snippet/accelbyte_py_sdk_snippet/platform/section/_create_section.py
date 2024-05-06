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

Example: '{"active": false, "displayOrder": 32, "endDate": "1981-05-16T00:00:00Z", "ext": {"jDhpbSJoZnK8dLBS": {}, "QvlA7U29Xjv7LO3e": {}, "NH4cv7Bus0XA4tvD": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 85, "itemCount": 14, "rule": "SEQUENCE"}, "items": [{"id": "UhCkeT0ngrgNc6Mi", "sku": "jr4yUOLvC41MMI5Y"}, {"id": "xU3kuOTG0mNIcWmP", "sku": "wn7tBlKifMw0KUAu"}, {"id": "uDpW0eoiT8t7OjS1", "sku": "AmyTFFmZyx0igkMh"}], "localizations": {"2Dt9JKOWf8nXcyRR": {"description": "akJ2ZZXiIHTUsbg2", "localExt": {"9hDsxepRZt3N3PJH": {}, "VXWRQ6mMirJSrgod": {}, "0SxkVMX0fyuAyC0V": {}}, "longDescription": "VnAl8BB8hw1Q3zaX", "title": "TyMNlGVknuqIZJTX"}, "Vi2FYY9DZqntuKY0": {"description": "ibxandehWGQcxhis", "localExt": {"zXyQb1YLwBusLlnY": {}, "8Eo2UyA82UZbZ7J8": {}, "n9XU74Q8IhkmcCP8": {}}, "longDescription": "jvC7Uh7k1VHz6IVq", "title": "0blHSiviIJzkttFe"}, "E7PA9sbP73U3KrVH": {"description": "0QDa0D8JpdCO9mkR", "localExt": {"F4EkdmdsI5Rq5Vlz": {}, "rS3HaZSxYGCmLSiW": {}, "6ZN0fmAauVf0qu3y": {}}, "longDescription": "6e08bjSJrEkTUQCZ", "title": "itbn6hbBv0BEG1mF"}}, "name": "4KL5GbL8se2IDCz2", "rotationType": "FIXED_PERIOD", "startDate": "1991-02-10T00:00:00Z", "viewId": "4Mu9QNMFBrsu81j6"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
