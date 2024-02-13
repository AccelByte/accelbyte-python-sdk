import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_loot_box_grpc_info
from accelbyte_py_sdk.api.platform.models import GrpcServerInfo

result, error = get_loot_box_grpc_info(
    force=force,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
