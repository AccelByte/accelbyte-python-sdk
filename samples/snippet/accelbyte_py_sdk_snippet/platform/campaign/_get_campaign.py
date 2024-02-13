import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_campaign
from accelbyte_py_sdk.api.platform.models import CampaignInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_campaign(
    campaign_id=campaign_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
