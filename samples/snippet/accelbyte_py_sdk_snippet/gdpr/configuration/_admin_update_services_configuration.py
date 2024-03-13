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

Example: '{"services": [{"extendConfig": {"appName": "pmOfW6QJV3j4bIcG", "namespace": "poTChCeUUgQgQMpw"}, "id": "WVBkd1QDTpTCBaPI", "serviceConfig": {"protocol": "GRPC", "url": "JFdphReWMXjuaPxi"}, "type": "EXTEND"}, {"extendConfig": {"appName": "pZcI8b7BCNuDdxWy", "namespace": "6xaQzeRB6I2rNhkg"}, "id": "fm546gmv5Z7WWpYF", "serviceConfig": {"protocol": "GRPC", "url": "u6XVV8CKOwrj3O0o"}, "type": "EXTEND"}, {"extendConfig": {"appName": "vajoDR2dQ94SqrMR", "namespace": "BLsrE1PB7RC3upkk"}, "id": "CY6R1ICi9rGl2sYo", "serviceConfig": {"protocol": "GRPC", "url": "QHVugWLZNdNhOIx4"}, "type": "EXTEND"}]}'
"""

result, error = admin_update_services_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
