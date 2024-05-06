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
on_demand: bool
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

Example: '{"active": true, "claimKeys": ["OIEdBWlfm1sqBvnQ", "f0oTCrsPq4wBvjco", "oWmFYP93tkKLlgs9"], "dsHostConfiguration": {"instanceId": "kxDCswaI9fxc2o0E", "instanceType": "V7tzEDRhUZjf2jIc", "serversPerVm": 19}, "imageDeploymentProfile": {"commandLine": "FRCytrITQ4Tx0tSh", "imageId": "pkILgInBkuhmb5kb", "portConfigurations": [{"name": "ljJk2mnehF4CBAJG", "protocol": "WY6nzVwWm0RsK6On"}, {"name": "MnqvSeC6n2JS1Fjy", "protocol": "n0wcoMUF9tiXizX9"}, {"name": "G3wsKZdRNvM50qVx", "protocol": "wwdZGtMhkVHLDKHo"}], "timeout": {"creation": 86, "drain": 23, "session": 32, "unresponsive": 24}}, "name": "UTh2FfQkbmSFWZzV", "onDemand": false, "regions": [{"bufferSize": 43, "maxServerCount": 85, "minServerCount": 46, "region": "LQllVD1yNVn1MLeE"}, {"bufferSize": 45, "maxServerCount": 67, "minServerCount": 11, "region": "HSIwe0FR5yM1lVfV"}, {"bufferSize": 45, "maxServerCount": 51, "minServerCount": 2, "region": "NZh8frh252gPzZ3u"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 63}, "success": {"collect": true, "percentage": 74}}, "logs": {"crashed": {"collect": true, "percentage": 12}, "success": {"collect": false, "percentage": 5}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
