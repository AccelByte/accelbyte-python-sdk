import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_repository
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateRepositoryRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateRepositoryRequest
namespace: str
repository: str

Example: '{"namespace": "UlB1FUdZ2pulway4", "repository": "OH806x2WbwCEKbJl"}'
"""

result, error = create_repository(
    body=body,
    x_additional_headers=x_additional_headers,
)
