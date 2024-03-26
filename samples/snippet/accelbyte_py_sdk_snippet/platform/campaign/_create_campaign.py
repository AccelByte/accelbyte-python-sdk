import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_campaign
from accelbyte_py_sdk.api.platform.models import CampaignCreate
from accelbyte_py_sdk.api.platform.models import CampaignInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CampaignCreate
description: str
items: List[RedeemableItem]
Definition: List[RedeemableItem]
    extra_subscription_days: int
    item_id: str
    item_name: str
    quantity: int
max_redeem_count_per_campaign_per_user: int
max_redeem_count_per_code: int
max_redeem_count_per_code_per_user: int
max_sale_count: int
name: str
redeem_end: str
redeem_start: str
redeem_type: str
status: str
tags: List[str]
type_: str

Example: '{"description": "n4AQFj8dYvwdiCXD", "items": [{"extraSubscriptionDays": 61, "itemId": "fod7XKPMNvk1W0BF", "itemName": "HrbpgmUnalx3gFb3", "quantity": 88}, {"extraSubscriptionDays": 58, "itemId": "fWerE3NpHwtE6m10", "itemName": "ivQCE2EXtFR9LFpS", "quantity": 8}, {"extraSubscriptionDays": 1, "itemId": "hxo8VzVoq81DB98y", "itemName": "Usz7CgLe3WJvZem0", "quantity": 66}], "maxRedeemCountPerCampaignPerUser": 10, "maxRedeemCountPerCode": 89, "maxRedeemCountPerCodePerUser": 45, "maxSaleCount": 98, "name": "3jNKehEZu95gElus", "redeemEnd": "1999-07-17T00:00:00Z", "redeemStart": "1987-10-03T00:00:00Z", "redeemType": "ITEM", "status": "ACTIVE", "tags": ["FHMaeJstKo0eDmvb", "Gge2PY6kuEoEUGIQ", "WTfwupIppYEJnW4K"], "type": "REDEMPTION"}'
"""

result, error = create_campaign(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
