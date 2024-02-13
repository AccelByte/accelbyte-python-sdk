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

Example: '{"services": [{"extendConfig": {"appName": "3XB6Klb46PYy3ekU", "namespace": "KchhES32ZiryO6C7"}, "id": "e8LI8hzpQt32X0iV", "serviceConfig": {"protocol": "GRPC", "url": "u8uGMEhfUMEEPHbY"}, "type": "SERVICE"}, {"extendConfig": {"appName": "3sLplNO7x31VMdIt", "namespace": "mlGWEeF1z6eVXw0F"}, "id": "4IoFOK7j9kdKpF7q", "serviceConfig": {"protocol": "GRPC", "url": "4pkEKPh0zVKoVf4z"}, "type": "EXTEND"}, {"extendConfig": {"appName": "Atdfs4irKxDqkkhs", "namespace": "RwkUtzMo7eIvMduC"}, "id": "v9FxswfyFAtxCyNf", "serviceConfig": {"protocol": "GRPC", "url": "ph4cQL4EZB3VqRDJ"}, "type": "SERVICE"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
