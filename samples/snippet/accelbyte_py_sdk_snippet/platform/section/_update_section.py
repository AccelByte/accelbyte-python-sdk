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

Example: '{"active": true, "displayOrder": 58, "endDate": "1985-10-30T00:00:00Z", "ext": {"9FcB1LTeWoq0CUaH": {}, "rpR5hlZuzJSDD0GO": {}, "NrgyxjtKJqyZnNQb": {}}, "fixedPeriodRotationConfig": {"backfillType": "NONE", "duration": 46, "itemCount": 16, "rule": "SEQUENCE"}, "items": [{"id": "PUurWgY3JffjoPn7", "sku": "YDuLdMRSL7l1JEKM"}, {"id": "cQEcYeexDeDGHgN7", "sku": "aQcuCmWso0OmJTDL"}, {"id": "Fux01DnXwjjuDh7k", "sku": "yTAfjIVV2mCORLx7"}], "localizations": {"IgmIZMNsyMRZ7klB": {"description": "RtXCWoWjatAy8zpn", "localExt": {"pTVMNZI1zrEC26QH": {}, "0U5EyqCKGmTEKU8t": {}, "usDbYrXrobAydCof": {}}, "longDescription": "7j4tqZK9Oo08XvIn", "title": "l3hRi78dbIOQtg0O"}, "dRVkvEuSvPEQlVu3": {"description": "Nva3S4vgFWDCbFKK", "localExt": {"1kpzloO1MMiY4CZl": {}, "c57KuMJoUk1QMVNQ": {}, "x9IOS3DEuz18CUsR": {}}, "longDescription": "p6zu6vUC0uK5tBte", "title": "6r37EwneKaTPIlct"}, "XstTqip1OqqeuEAg": {"description": "4Id3aR8RgSICtsFl", "localExt": {"IfNMEe8xFInnmKOA": {}, "fULn1NUQNJyzCiaE": {}, "yQq3QfywKiMLtrYI": {}}, "longDescription": "tilAnr7Oe4M22s4a", "title": "HzZVx9l65BmnY77N"}}, "name": "62hZqepsdb2WOZ2i", "rotationType": "CUSTOM", "startDate": "1988-04-15T00:00:00Z", "viewId": "vjkyNyUFyaoUeDBk"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
