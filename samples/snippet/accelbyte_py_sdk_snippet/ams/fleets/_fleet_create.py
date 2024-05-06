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

Example: '{"active": true, "claimKeys": ["vhZZEOXBulBXFWhe", "FvksjpgaW4mSpwqf", "NU7pcCK4nhQcyCTW"], "dsHostConfiguration": {"instanceId": "ZEsJbVWnVvx9buXe", "instanceType": "HNp762fwox20adze", "serversPerVm": 52}, "imageDeploymentProfile": {"commandLine": "mnfQXH4URwRJB0jf", "imageId": "IBc1h6sWXKoWkD0P", "portConfigurations": [{"name": "2roKZmE5pjZA6k88", "protocol": "bUo2eO3eQGnrx5AJ"}, {"name": "Zs6vij2DTPERdgXs", "protocol": "oudSbeOcz8SamQxU"}, {"name": "fHWw8T02oE9lHiDZ", "protocol": "CAoiVkLYsBziptIL"}], "timeout": {"creation": 21, "drain": 89, "session": 50, "unresponsive": 24}}, "name": "zN9d4nEJNQZBYLKH", "onDemand": true, "regions": [{"bufferSize": 61, "maxServerCount": 69, "minServerCount": 41, "region": "MP9J3Zo2dN2H4teD"}, {"bufferSize": 8, "maxServerCount": 1, "minServerCount": 73, "region": "EqJxyb4KwbMK1rO0"}, {"bufferSize": 57, "maxServerCount": 78, "minServerCount": 87, "region": "JuBOMvXaLvLNXegr"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 55}, "success": {"collect": true, "percentage": 65}}, "logs": {"crashed": {"collect": true, "percentage": 25}, "success": {"collect": false, "percentage": 10}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
