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

Example: '{"active": false, "displayOrder": 54, "endDate": "1979-02-15T00:00:00Z", "ext": {"FN0YsPIkhy8pDIS5": {}, "r5XQxEd4r7k7VC3z": {}, "U9miL8sNhIzozaSf": {}}, "fixedPeriodRotationConfig": {"backfillType": "CUSTOM", "duration": 31, "itemCount": 83, "rule": "SEQUENCE"}, "items": [{"id": "tp8ojOxuBMj5iZVN", "sku": "W1Zd6nx4vq6mZGJ4"}, {"id": "3xkpiZWUrWsYGLhH", "sku": "HsQwA7IzCfP0rI1H"}, {"id": "Dk9rfMN5YVuT8COD", "sku": "1N6sYiQpLdDNX7eQ"}], "localizations": {"EsHqkvdyGLPGfZ4Y": {"description": "NhFVjtArWH6nxfYr", "localExt": {"wLbe9TP8iQ5TlmVJ": {}, "s6yz4jVAdQxN1DRC": {}, "l6RD8eERS0bXIJ3U": {}}, "longDescription": "XYy1iKF5hIO3GOrR", "title": "9ZcU3xvI1tPXQxbW"}, "JGLKKQaequ8aemkd": {"description": "Jec8MWrzafZiaWrk", "localExt": {"SoeDhERzCwnkk7HY": {}, "vUFmID8CWGmCc9IO": {}, "3HvvjHwAVbVSR4gw": {}}, "longDescription": "EKWiCsAQM0NOHKq1", "title": "GSX4Aiwu3pgxmkDD"}, "XvmLFH6r2jCts51l": {"description": "BFOMamIvVqq4Ggxe", "localExt": {"8fSSvWgUz2cN1xGr": {}, "hpDAwRHaljXFNigy": {}, "4XJd1jKpMmgMVuKv": {}}, "longDescription": "TTWBV4pXgtzuS3Pe", "title": "14PpXKplJ8Wqhp3P"}}, "name": "8eeVcrv2L54giCaA", "rotationType": "FIXED_PERIOD", "startDate": "1996-11-08T00:00:00Z", "viewId": "58d5GFNkSZcOyffG"}'
"""

result, error = create_section(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
