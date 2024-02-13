import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_campaign_dynamic
from accelbyte_py_sdk.api.platform.models import CampaignDynamicInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_campaign_dynamic(
    campaign_id=campaign_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
