import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_play_station_iap_config
from accelbyte_py_sdk.api.platform.models import PlayStationIAPConfigInfo

result, error = get_play_station_iap_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
