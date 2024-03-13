import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_create
from accelbyte_py_sdk.api.ams.models import ApiFleetCreateResponse
from accelbyte_py_sdk.api.ams.models import ApiFleetParameters
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetParameters
active: bool
claim_keys: List[str]
ds_host_configuration: ApiDSHostConfiguration
Definition: ApiDSHostConfiguration
    instance_id: str
    instance_type: str
    servers_per_vm: int
image_deployment_profile: ApiImageDeploymentProfile
Definition: ApiImageDeploymentProfile
    command_line: str
    image_id: str
    port_configurations: List[ApiPortConfiguration]
    Definition: List[ApiPortConfiguration]
        name: str
        protocol: str
    timeout: ApiTimeout
    Definition: ApiTimeout
        creation: int
        drain: int
        session: int
        unresponsive: int
name: str
regions: List[ApiRegionConfig]
Definition: List[ApiRegionConfig]
    buffer_size: int
    max_server_count: int
    min_server_count: int
    region: str
sampling_rules: ApiFleetArtifactsSampleRules
Definition: ApiFleetArtifactsSampleRules
    coredumps: ApiArtifactTypeSamplingRules
    Definition: ApiArtifactTypeSamplingRules
        crashed: ApiArtifactSamplingRule
        Definition: ApiArtifactSamplingRule
            collect: bool
            percentage: int
        success: ApiArtifactSamplingRule
        Definition: ApiArtifactSamplingRule
            collect: bool
            percentage: int
    logs: ApiArtifactTypeSamplingRules
    Definition: ApiArtifactTypeSamplingRules
        crashed: ApiArtifactSamplingRule
        Definition: ApiArtifactSamplingRule
            collect: bool
            percentage: int
        success: ApiArtifactSamplingRule
        Definition: ApiArtifactSamplingRule
            collect: bool
            percentage: int

Example: '{"active": true, "claimKeys": ["2XjYM28q5gjBvpF3", "ePiWupd2MzG232RQ", "et5UR4k5DecqBmFs"], "dsHostConfiguration": {"instanceId": "tOra3MYJBxF9HePq", "instanceType": "hrbUO9zLvsHOkFh9", "serversPerVm": 74}, "imageDeploymentProfile": {"commandLine": "APECeqnXol2N5dsu", "imageId": "Rrgz6Cygr21pecul", "portConfigurations": [{"name": "JEjEZALUzTmfCiii", "protocol": "h5Ai6W3FDZ0xZwH8"}, {"name": "tn38QLuD6WE6munT", "protocol": "pu4RJZbKwCGoD7dD"}, {"name": "8js3Uj9rj7aap8Av", "protocol": "v9ShvuwKU67jNtJS"}], "timeout": {"creation": 3, "drain": 35, "session": 51, "unresponsive": 64}}, "name": "VwwFMdXJUbQe1ow4", "regions": [{"bufferSize": 29, "maxServerCount": 72, "minServerCount": 71, "region": "f4ceHS3XaCtbVV6c"}, {"bufferSize": 23, "maxServerCount": 19, "minServerCount": 41, "region": "qj4ZKcFEX31pDgVs"}, {"bufferSize": 75, "maxServerCount": 23, "minServerCount": 95, "region": "yYM3WkbNs0VAYZUe"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 43}, "success": {"collect": true, "percentage": 58}}, "logs": {"crashed": {"collect": true, "percentage": 4}, "success": {"collect": false, "percentage": 11}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
