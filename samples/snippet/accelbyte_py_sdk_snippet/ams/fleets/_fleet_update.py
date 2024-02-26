import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_update
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

Example: '{"active": true, "claimKeys": ["DZb67LbezGx5KdK4", "URFJCuk18c3aL8rM", "0KufNOymcQUZ2DfY"], "dsHostConfiguration": {"instanceId": "E1gOQHPJGtPUWqXg", "instanceType": "XLkL8Ak7ffT4HE16", "serversPerVm": 82}, "imageDeploymentProfile": {"commandLine": "8tjQUzL9p9Fp9gBJ", "imageId": "dG1ZOFMc7lPq1pVj", "portConfigurations": [{"name": "3zHjm7c7hAZBOEBi", "protocol": "A2tOPyfaJCFC8vvM"}, {"name": "4ynilieQrMAsKadx", "protocol": "e65MbovOVNOqNEOd"}, {"name": "2sd2vvg4hy0LB97P", "protocol": "Eb1c6sjgA8KyHJW4"}], "timeout": {"creation": 96, "drain": 96, "session": 55, "unresponsive": 29}}, "name": "XeFDs0fJr1cZll05", "regions": [{"bufferSize": 19, "maxServerCount": 73, "minServerCount": 100, "region": "AgJlwnr7B649s6Wo"}, {"bufferSize": 58, "maxServerCount": 16, "minServerCount": 61, "region": "HJQFq8AHqhtB20di"}, {"bufferSize": 65, "maxServerCount": 61, "minServerCount": 97, "region": "helXgW20fkIYVTda"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 34}, "success": {"collect": true, "percentage": 5}}, "logs": {"crashed": {"collect": false, "percentage": 99}, "success": {"collect": false, "percentage": 58}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
