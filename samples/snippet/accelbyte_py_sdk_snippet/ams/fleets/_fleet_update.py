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

Example: '{"active": false, "claimKeys": ["u25PXltrPDXo6UNp", "uoT9k4tg3psDRGT5", "W0Ag2b65NeIS02Io"], "dsHostConfiguration": {"instanceId": "5DFZwaafuNwc9I0i", "instanceType": "1gPNSk8MsCcM1YC0", "serversPerVm": 51}, "imageDeploymentProfile": {"commandLine": "e3SJQ9pP5zyhLB3y", "imageId": "4vkrrrh8iEmq1t7M", "portConfigurations": [{"name": "9cO2z753GwHy3grA", "protocol": "tE2OTRHyJ1ExsUCT"}, {"name": "na340ZyPaX9VTlQl", "protocol": "vWetDZxNd1Jfl8Yp"}, {"name": "klOUe8K6Gx825VWh", "protocol": "xrReg4oqeHvbwWq5"}], "timeout": {"creation": 60, "drain": 19, "session": 49, "unresponsive": 68}}, "name": "hIh0nSb77RL44mw9", "regions": [{"bufferSize": 18, "maxServerCount": 65, "minServerCount": 33, "region": "ivni3MfEypvhX80N"}, {"bufferSize": 74, "maxServerCount": 75, "minServerCount": 89, "region": "VuYCuSpyKWImjriZ"}, {"bufferSize": 87, "maxServerCount": 67, "minServerCount": 33, "region": "OkBInUFLWkOeMa2W"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 71}, "success": {"collect": true, "percentage": 21}}, "logs": {"crashed": {"collect": false, "percentage": 79}, "success": {"collect": false, "percentage": 60}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
