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

Example: '{"active": false, "displayOrder": 25, "endDate": "1975-05-14T00:00:00Z", "ext": {"3XKeJt6zOUlHPXiZ": {}, "IzKPwMqWNq24ZBau": {}, "yIULiGD0dLCuT0QO": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 81, "itemCount": 32, "rule": "SEQUENCE"}, "items": [{"id": "tPToYJYpEX19k546", "sku": "0bjxOarDbEToQSWS"}, {"id": "XO1GKfO8XUCZtder", "sku": "PAe6vJ9eMxqus9BU"}, {"id": "X4WcrDW5htML4w0v", "sku": "ihIJeAoJfzVWCFmT"}], "localizations": {"t9KzGES4RkYUhx2n": {"description": "yhuifgM7kfpd93k4", "localExt": {"lwu1XxyMklJWggfL": {}, "fTwZvL8FPyNRMTvT": {}, "14nIdelXpqvDfcwH": {}}, "longDescription": "cFTgDW79zS78K1QG", "title": "LebeprmxLJmRhzXW"}, "QkmmSJUOrULjIONz": {"description": "H47w3xmwtbcQQywa", "localExt": {"rDn6b56xypAKMq8U": {}, "or3xZ7g4iT7Dr4gI": {}, "Ezk3Oup6emPFvdWV": {}}, "longDescription": "YeX8osXSNm8brn91", "title": "1eBTTxTNZNxAWMW4"}, "BSGosM8xA190tPW2": {"description": "2eGJbB2bQBOpVLWP", "localExt": {"hoW5s44hthqKRMKp": {}, "3HZ6Uy3OhiWuBDJF": {}, "NgUAm1yz53Tpo38n": {}}, "longDescription": "8nIzzzrke3wrqy6N", "title": "wRaYNwJaGoG7Bns6"}}, "name": "w8XPzqHLxAiT8exY", "rotationType": "NONE", "startDate": "1998-02-06T00:00:00Z", "viewId": "2c3RmvyDmXb2TtVI"}'
"""

result, error = update_section(
    section_id=section_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
