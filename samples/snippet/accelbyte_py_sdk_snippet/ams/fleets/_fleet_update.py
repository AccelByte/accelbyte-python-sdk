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

Example: '{"active": false, "claimKeys": ["tOH2fk6n8UwBqCOT", "R33ZmxNJArevc6jN", "ntpRZH3pkO6oIp0g"], "dsHostConfiguration": {"instanceId": "zvAyGwdRzIy4Llwb", "instanceType": "vOfkuJ3aNiwrMraB", "serversPerVm": 79}, "imageDeploymentProfile": {"commandLine": "U8yaDODuo3WigR2f", "imageId": "pYqpl1iOWLRwYLv2", "portConfigurations": [{"name": "Wxd8gPYb2uBjz0ya", "protocol": "f0RZvWJEf3bVSuTa"}, {"name": "1Y23lsQXsFlRg57G", "protocol": "yPN5vaOtKfdRbcOq"}, {"name": "W350qPn1VLB13MUo", "protocol": "GU5gp1Jmg5YktAZd"}], "timeout": {"creation": 53, "drain": 75, "session": 50, "unresponsive": 88}}, "name": "fd0MKnjJixDEXCRj", "regions": [{"bufferSize": 87, "maxServerCount": 4, "minServerCount": 79, "region": "I9pEEsWKuWhUlw0K"}, {"bufferSize": 6, "maxServerCount": 74, "minServerCount": 20, "region": "KGrzZfdNh89c1WMa"}, {"bufferSize": 69, "maxServerCount": 46, "minServerCount": 64, "region": "w9bvxLJHwkm80u26"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 12}, "success": {"collect": true, "percentage": 48}}, "logs": {"crashed": {"collect": true, "percentage": 42}, "success": {"collect": true, "percentage": 1}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
