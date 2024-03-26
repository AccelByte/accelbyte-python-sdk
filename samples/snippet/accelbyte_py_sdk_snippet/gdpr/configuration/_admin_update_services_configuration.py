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

Example: '{"services": [{"extendConfig": {"appName": "yM8ymdyVtXwhVEPs", "namespace": "zWzVSozadOdvdYbh"}, "id": "rfl7kRp8gvFChaLf", "serviceConfig": {"protocol": "GRPC", "url": "yD4VUkU776YpIF9V"}, "type": "EXTEND"}, {"extendConfig": {"appName": "AGlN2fKTtKOw7pbq", "namespace": "Xe0cwg8Cz4YFamRz"}, "id": "m7R6hcC4cank2mPN", "serviceConfig": {"protocol": "GRPC", "url": "w74K7TWpsDKflIsF"}, "type": "EXTEND"}, {"extendConfig": {"appName": "sz0ijdxxxv9koBBK", "namespace": "BNopSHCcXOaDxnUA"}, "id": "UApyxz7UdvytpU4M", "serviceConfig": {"protocol": "GRPC", "url": "xQIAwEM6Y6cX16sS"}, "type": "EXTEND"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
