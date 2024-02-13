import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import download

result, error = download(
    campaign_id=campaign_id,
    batch_no=batch_no,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
