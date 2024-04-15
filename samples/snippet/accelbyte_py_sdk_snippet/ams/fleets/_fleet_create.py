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

Example: '{"active": false, "claimKeys": ["aOo4FDURYEuCP4LG", "OwwoUzhwp1niyk59", "qf5gGPrAE6R4F9IE"], "dsHostConfiguration": {"instanceId": "uSVbaQ7MG6Q9IP8i", "instanceType": "Ii7cqaTSr32vwoJ3", "serversPerVm": 84}, "imageDeploymentProfile": {"commandLine": "xDiN1LCL2C2z5mVj", "imageId": "BPlU9IXPngxGLieU", "portConfigurations": [{"name": "2QVkKmB1m6L7oYAH", "protocol": "WPijRwsYi9MNNXSn"}, {"name": "vYl4ThHHBPnqJNb1", "protocol": "Dhqa466c0XresCTX"}, {"name": "llZ0nUgpPQqdAtPr", "protocol": "wl2aMabre7NGiuUs"}], "timeout": {"creation": 73, "drain": 46, "session": 88, "unresponsive": 97}}, "name": "AdNNQxOX2xO63Hdj", "onDemand": true, "regions": [{"bufferSize": 51, "maxServerCount": 12, "minServerCount": 59, "region": "Rfqd69TYlAcuWtHb"}, {"bufferSize": 100, "maxServerCount": 64, "minServerCount": 29, "region": "D9iisBJ7EH4qThzm"}, {"bufferSize": 53, "maxServerCount": 30, "minServerCount": 82, "region": "gvE3l656fXQR4Yaf"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 95}, "success": {"collect": true, "percentage": 27}}, "logs": {"crashed": {"collect": false, "percentage": 85}, "success": {"collect": true, "percentage": 36}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
