import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_store_player_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesRequestBody
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesResponseBody
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPlayerAttributesRequestBody
crossplay_enabled: bool
current_platform: str
data: Dict[str, Any]
platforms: List[ModelsUserPlatformInfo]
Definition: List[ModelsUserPlatformInfo]
    name: str
    user_id: str
roles: List[str]
simultaneous_platform: str

Example: '{"crossplayEnabled": false, "currentPlatform": "ToSNCSqo2lsnNb7T", "data": {"fhCz6um6bKq8KQNq": {}, "lIMwRhTczGDJ5icr": {}, "aZr0LwyzUarCfz4n": {}}, "platforms": [{"name": "xsaUyKg5BmT6TFQ2", "userID": "W5l6MTDFUm131ezX"}, {"name": "jhGpCtcExaTTqdlA", "userID": "JYI6rAg0gWKWs6VH"}, {"name": "dmRxsuRVuRP6nQw3", "userID": "brIejbcAc73F391U"}], "roles": ["6pFnt3r0VjMt2DC5", "b54KGg8xnm7HiXUx", "Fa0summcTcrgLf6e"], "simultaneousPlatform": "OPdGK3rjNzaoEsuq"}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
