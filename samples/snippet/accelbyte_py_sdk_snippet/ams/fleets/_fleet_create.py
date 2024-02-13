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

Example: '{"active": false, "claimKeys": ["aoUPqcJJMVOFBBee", "SAlG3umsDIcf571z", "byh16czY67Hm1vbb"], "dsHostConfiguration": {"instanceId": "oF8tNxDWsvRWodkB", "instanceType": "bbFM3XXqGbiKoIh2", "serversPerVm": 31}, "imageDeploymentProfile": {"commandLine": "lPHkTAuuBuFHkRk2", "imageId": "yBw83Jkr08ALgsq7", "portConfigurations": [{"name": "Bn9TlWw3WvyhO6qS", "protocol": "fZcGB1gQDQdtUKKD"}, {"name": "y3xFOXvngPJJC6H8", "protocol": "Uexb6eMx24WLkKUt"}, {"name": "47K8appZ2c8se6T4", "protocol": "W0lyws7X8jNmGm0A"}], "timeout": {"creation": 1, "drain": 44, "session": 15, "unresponsive": 99}}, "name": "TTzVCGcZJC5HlM6p", "regions": [{"bufferSize": 15, "maxServerCount": 13, "minServerCount": 87, "region": "BytiH1BJrdnKWuCs"}, {"bufferSize": 89, "maxServerCount": 4, "minServerCount": 32, "region": "MJCfT9pDcIC7cQWl"}, {"bufferSize": 64, "maxServerCount": 66, "minServerCount": 58, "region": "TZbCaGJs0LkMuKZg"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 4}, "success": {"collect": true, "percentage": 47}}, "logs": {"crashed": {"collect": false, "percentage": 35}, "success": {"collect": false, "percentage": 60}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
