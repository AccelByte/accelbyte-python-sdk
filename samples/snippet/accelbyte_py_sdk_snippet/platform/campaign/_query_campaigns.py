import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_campaigns
from accelbyte_py_sdk.api.platform.models import CampaignPagingSlicedResult

result, error = query_campaigns(
    limit=limit,
    name=name,
    offset=offset,
    tag=tag,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
