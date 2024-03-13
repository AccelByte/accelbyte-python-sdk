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

Example: '{"active": true, "displayOrder": 40, "endDate": "1974-11-14T00:00:00Z", "ext": {"YqAaOEtsNorY3tES": {}, "dyREWPAqEJLs0qUI": {}, "a8Z8lqYg8FqTSvZd": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 78, "itemCount": 52, "rule": "SEQUENCE"}, "items": [{"id": "LbTyP3uvmZFgOMBj", "sku": "jIxyfoN3fBd2A8ru"}, {"id": "zE1efsDPCXYnR7xC", "sku": "CLGL1Aj3IaQHoepA"}, {"id": "pPnUKl2xlvJuifHB", "sku": "nEI7smTPmS2SZmOo"}], "localizations": {"KVbk36kGiXuEHaPs": {"description": "aNf5WPRiLLZ7vP1d", "localExt": {"ucimY3fe7Z1IvjK4": {}, "S0MarMAiz7OApsyd": {}, "7cxshaLr7V5DgJhs": {}}, "longDescription": "Bw1vUl1iKHAfyXpD", "title": "a2qrKokQwU5i3AEK"}, "mwb8JQkNEfQRgdjZ": {"description": "5jXkXcsvINIARWWw", "localExt": {"hD53xSVbpJEx4A3Z": {}, "LsU5aYqBUk8sUUeY": {}, "hIjQ1R4Gk6WULNFZ": {}}, "longDescription": "eZsarvOCz3F7bqB2", "title": "aP3wLs47gETZeGVp"}, "fn5X73Qhk8wiik3s": {"description": "nzrdrO4mLHEIWf0p", "localExt": {"Kgxx0hPNnhywrV9z": {}, "jUx1d7nwUVkT9vKm": {}, "UmtC577ZgyOauod1": {}}, "longDescription": "y1OWxNBnMVXtc14h", "title": "6ibB26JpKz79ykw4"}}, "name": "Hc0QiobMXNwmjSpj", "rotationType": "CUSTOM", "startDate": "1977-12-23T00:00:00Z", "viewId": "Dwy1CndqyLFthAdo"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
