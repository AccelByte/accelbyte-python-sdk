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

Example: '{"services": [{"extendConfig": {"appName": "68qZDruGEyzPIhql", "namespace": "rekUXHSZ5r7lecTd"}, "id": "DsYQpxfGbQhGDaH7", "serviceConfig": {"protocol": "GRPC", "url": "LpHCD0yZXlN9Pl2Z"}, "type": "SERVICE"}, {"extendConfig": {"appName": "AIxB87Z2baCi6eIx", "namespace": "0C12FbjISaFlHPDN"}, "id": "eIkf3Hhm6DBkguWn", "serviceConfig": {"protocol": "GRPC", "url": "wkIhmvvJLBkvNIS2"}, "type": "EXTEND"}, {"extendConfig": {"appName": "HHM180pOQy7W2hAa", "namespace": "lymO3axKgrJBs1Kr"}, "id": "M6SEGwud7Sj8UxnE", "serviceConfig": {"protocol": "GRPC", "url": "EGMpkCLachOPAYNX"}, "type": "SERVICE"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
