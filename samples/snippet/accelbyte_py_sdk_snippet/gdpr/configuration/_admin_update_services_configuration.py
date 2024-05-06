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

Example: '{"services": [{"extendConfig": {"appName": "WeAuSIXa2i1GA7hT", "namespace": "kCu8ZZQR34XrVTmr"}, "id": "hlkUFMsfORz3o3og", "serviceConfig": {"protocol": "GRPC", "url": "OQazBYMeZOWuPF9V"}, "type": "EXTEND"}, {"extendConfig": {"appName": "AyYbxbehDZ9uUCMd", "namespace": "a9FJQI76bcYx2wBS"}, "id": "vaE5GZwnzt1NPHKd", "serviceConfig": {"protocol": "GRPC", "url": "Qx3GCciDJqimePRq"}, "type": "SERVICE"}, {"extendConfig": {"appName": "rdgetL9DeueGVqgY", "namespace": "I5KtY2EGMuruo51r"}, "id": "TewrGaOqcPvDs3Zf", "serviceConfig": {"protocol": "GRPC", "url": "MjJtK2uyTbdOyiSa"}, "type": "SERVICE"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
