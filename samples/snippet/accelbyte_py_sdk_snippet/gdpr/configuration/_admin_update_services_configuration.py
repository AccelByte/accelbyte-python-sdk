import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import admin_update_services_configuration
from accelbyte_py_sdk.api.gdpr.models import DtoServiceConfigurationUpdateRequest
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: DtoServiceConfigurationUpdateRequest
services: List[DtoServiceConfigurationDTO]
Definition: List[DtoServiceConfigurationDTO]
    extend_config: DtoExtendConfigDTO
    Definition: DtoExtendConfigDTO
        app_name: str
        namespace: str
    id_: str
    service_config: DtoServiceConfigDTO
    Definition: DtoServiceConfigDTO
        protocol: str
        url: str
    type_: str

Example: '{"services": [{"extendConfig": {"appName": "SQWq3luHp7cHo6dC", "namespace": "JsT4lCuppBhfAwpf"}, "id": "hogIu4fLoXLfgkpk", "serviceConfig": {"protocol": "GRPC", "url": "l7o3x3RXv3suoq3C"}, "type": "SERVICE"}, {"extendConfig": {"appName": "6ejKKzLtZLgZj6Yw", "namespace": "6Fj4YANreQ3byTHi"}, "id": "OznoxxLIh0otue37", "serviceConfig": {"protocol": "GRPC", "url": "k88mutkHb42xkywI"}, "type": "SERVICE"}, {"extendConfig": {"appName": "RysycwADOYJ9EiJx", "namespace": "7NUZniphKOLLvZV1"}, "id": "aFqEVoXWzpXXHLtN", "serviceConfig": {"protocol": "GRPC", "url": "OUCY20GLTUBqsyeC"}, "type": "SERVICE"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
