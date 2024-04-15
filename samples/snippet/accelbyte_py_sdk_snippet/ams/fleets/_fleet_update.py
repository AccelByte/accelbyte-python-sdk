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

Example: '{"active": true, "claimKeys": ["A6JomESiGpnRxRPB", "ebxXLayDW9FyC3hy", "d5mYJUh4vVErtqDu"], "dsHostConfiguration": {"instanceId": "hkVq3gWgbZiK4yVW", "instanceType": "xDWixFazraoX6V5g", "serversPerVm": 9}, "imageDeploymentProfile": {"commandLine": "vxdC95aovHziOCAg", "imageId": "tCCcEvMyCY2kICKH", "portConfigurations": [{"name": "9tDd3T2T63nDBht0", "protocol": "AaL9eH8UKjsrR60Y"}, {"name": "iCGLdLFmEKGumN0D", "protocol": "j8Yto8ZobFBrmu0X"}, {"name": "UwO7wnec2VPduLLd", "protocol": "vvjAQTYGo8w6GmPf"}], "timeout": {"creation": 72, "drain": 97, "session": 94, "unresponsive": 52}}, "name": "5g7CuWRntP2S5Ne5", "onDemand": true, "regions": [{"bufferSize": 26, "maxServerCount": 73, "minServerCount": 71, "region": "mEZ5xFpVc9nrxiok"}, {"bufferSize": 95, "maxServerCount": 72, "minServerCount": 51, "region": "tKNGFarIQDQNc9hX"}, {"bufferSize": 45, "maxServerCount": 43, "minServerCount": 57, "region": "pEK4QJIrMKUnfxA6"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 48}, "success": {"collect": false, "percentage": 58}}, "logs": {"crashed": {"collect": false, "percentage": 13}, "success": {"collect": false, "percentage": 85}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
