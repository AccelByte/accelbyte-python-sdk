# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from .utils import randomize

from ..api.ams.models import ApiAMSRegionsResponse
from ..api.ams.models import ApiAccountCreateRequest
from ..api.ams.models import ApiAccountCreateResponse
from ..api.ams.models import ApiAccountLimits
from ..api.ams.models import ApiAccountLinkRequest
from ..api.ams.models import ApiAccountLinkResponse
from ..api.ams.models import ApiAccountLinkTokenResponse
from ..api.ams.models import ApiAccountResponse
from ..api.ams.models import ApiArtifactListResponse
from ..api.ams.models import ApiArtifactResponse
from ..api.ams.models import ApiArtifactSamplingRule
from ..api.ams.models import ApiArtifactTypeSamplingRules
from ..api.ams.models import ApiArtifactURLResponse
from ..api.ams.models import ApiArtifactUsageResponse
from ..api.ams.models import ApiAvailableInstanceTypesResponse
from ..api.ams.models import ApiDSHistoryEvent
from ..api.ams.models import ApiDSHistoryList
from ..api.ams.models import ApiDSHostConfiguration
from ..api.ams.models import ApiFleetArtifactsSampleRules
from ..api.ams.models import ApiFleetClaimByKeysReq
from ..api.ams.models import ApiFleetClaimReq
from ..api.ams.models import ApiFleetClaimResponse
from ..api.ams.models import ApiFleetCreateResponse
from ..api.ams.models import ApiFleetGetResponse
from ..api.ams.models import ApiFleetListItemResponse
from ..api.ams.models import ApiFleetListResponse
from ..api.ams.models import ApiFleetParameters
from ..api.ams.models import ApiFleetRegionalServerCounts
from ..api.ams.models import ApiFleetServerConnectionInfoResponse
from ..api.ams.models import ApiFleetServerHistoryEventResponse
from ..api.ams.models import ApiFleetServerHistoryResponse
from ..api.ams.models import ApiFleetServerInfoResponse
from ..api.ams.models import ApiFleetServersResponse
from ..api.ams.models import ApiImageDeploymentProfile
from ..api.ams.models import ApiImageDetails
from ..api.ams.models import ApiImageList
from ..api.ams.models import ApiImageListItem
from ..api.ams.models import ApiImageUpdate
from ..api.ams.models import ApiInstanceTypeDescriptionResponse
from ..api.ams.models import ApiPagingInfo
from ..api.ams.models import ApiPortConfiguration
from ..api.ams.models import ApiQoSEndpointResponse
from ..api.ams.models import ApiQoSServer
from ..api.ams.models import ApiReferencingFleet
from ..api.ams.models import ApiRegionConfig
from ..api.ams.models import ApiTime
from ..api.ams.models import ApiTimeout
from ..api.ams.models import ApiUpdateServerRequest
from ..api.ams.models import ResponseErrorResponse
from ..api.ams.models import TimeLocation
from ..api.ams.models import TimeZone
from ..api.ams.models import TimeZoneTrans


def create_api_account_create_request_example() -> ApiAccountCreateRequest:
    instance = ApiAccountCreateRequest()
    instance.name = randomize()
    return instance


def create_api_account_create_response_example() -> ApiAccountCreateResponse:
    instance = ApiAccountCreateResponse()
    instance.id_ = randomize()
    instance.limits = create_api_account_limits_example()
    instance.name = randomize()
    instance.namespaces = [randomize()]
    return instance


def create_api_account_limits_example() -> ApiAccountLimits:
    instance = ApiAccountLimits()
    instance.allowed_node_classes = [randomize()]
    instance.allowed_regions = [randomize()]
    instance.fleet_count = randomize("int", min_val=1, max_val=1000)
    instance.fleet_vm_count = randomize("int", min_val=1, max_val=1000)
    instance.image_storage_quota_bytes = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_account_link_request_example() -> ApiAccountLinkRequest:
    instance = ApiAccountLinkRequest()
    instance.token = randomize()
    return instance


def create_api_account_link_response_example() -> ApiAccountLinkResponse:
    instance = ApiAccountLinkResponse()
    instance.id_ = randomize()
    instance.limits = create_api_account_limits_example()
    instance.name = randomize()
    instance.namespaces = [randomize()]
    return instance


def create_api_account_link_token_response_example() -> ApiAccountLinkTokenResponse:
    instance = ApiAccountLinkTokenResponse()
    instance.token = randomize()
    return instance


def create_api_account_response_example() -> ApiAccountResponse:
    instance = ApiAccountResponse()
    instance.id_ = randomize()
    instance.limits = create_api_account_limits_example()
    instance.name = randomize()
    instance.namespaces = [randomize()]
    return instance


def create_api_ams_regions_response_example() -> ApiAMSRegionsResponse:
    instance = ApiAMSRegionsResponse()
    instance.regions = [randomize()]
    return instance


def create_api_artifact_list_response_example() -> ApiArtifactListResponse:
    instance = ApiArtifactListResponse()
    instance.data = [create_api_artifact_response_example()]
    instance.total_data = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_artifact_response_example() -> ApiArtifactResponse:
    instance = ApiArtifactResponse()
    instance.artifact_type = randomize()
    instance.created_on = randomize("date")
    instance.ds_id = randomize()
    instance.expires_on = randomize("date")
    instance.filename = randomize()
    instance.fleet_id = randomize()
    instance.id_ = randomize()
    instance.image_id = randomize()
    instance.namespace = randomize("slug")
    instance.region = randomize()
    instance.size_bytes = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    return instance


def create_api_artifact_sampling_rule_example() -> ApiArtifactSamplingRule:
    instance = ApiArtifactSamplingRule()
    instance.collect = randomize("bool")
    instance.percentage = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_artifact_type_sampling_rules_example() -> ApiArtifactTypeSamplingRules:
    instance = ApiArtifactTypeSamplingRules()
    instance.crashed = create_api_artifact_sampling_rule_example()
    instance.success = create_api_artifact_sampling_rule_example()
    return instance


def create_api_artifact_url_response_example() -> ApiArtifactURLResponse:
    instance = ApiArtifactURLResponse()
    instance.url = randomize("url")
    return instance


def create_api_artifact_usage_response_example() -> ApiArtifactUsageResponse:
    instance = ApiArtifactUsageResponse()
    instance.quota_bytes = randomize("int", min_val=1, max_val=1000)
    instance.remaining_bytes = randomize("int", min_val=1, max_val=1000)
    instance.used_bytes = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_available_instance_types_response_example() -> (
    ApiAvailableInstanceTypesResponse
):
    instance = ApiAvailableInstanceTypesResponse()
    instance.available_instance_types = [
        create_api_instance_type_description_response_example()
    ]
    return instance


def create_api_ds_history_event_example() -> ApiDSHistoryEvent:
    instance = ApiDSHistoryEvent()
    instance.created_at = randomize("date")
    instance.exit_code = randomize("int", min_val=1, max_val=1000)
    instance.ip_address = randomize()
    instance.reason = randomize()
    instance.region = randomize()
    instance.server_id = randomize()
    instance.status = randomize()
    return instance


def create_api_ds_history_list_example() -> ApiDSHistoryList:
    instance = ApiDSHistoryList()
    instance.events = [create_api_ds_history_event_example()]
    instance.paging = create_api_paging_info_example()
    return instance


def create_api_ds_host_configuration_example() -> ApiDSHostConfiguration:
    instance = ApiDSHostConfiguration()
    instance.instance_id = randomize()
    instance.instance_type = randomize()
    instance.servers_per_vm = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_fleet_artifacts_sample_rules_example() -> ApiFleetArtifactsSampleRules:
    instance = ApiFleetArtifactsSampleRules()
    instance.coredumps = create_api_artifact_type_sampling_rules_example()
    instance.logs = create_api_artifact_type_sampling_rules_example()
    return instance


def create_api_fleet_claim_by_keys_req_example() -> ApiFleetClaimByKeysReq:
    instance = ApiFleetClaimByKeysReq()
    instance.claim_keys = [randomize()]
    instance.regions = [randomize()]
    instance.session_id = randomize("uid")
    return instance


def create_api_fleet_claim_req_example() -> ApiFleetClaimReq:
    instance = ApiFleetClaimReq()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    return instance


def create_api_fleet_claim_response_example() -> ApiFleetClaimResponse:
    instance = ApiFleetClaimResponse()
    instance.ip = randomize()
    instance.ports = {}
    instance.region = randomize()
    instance.server_id = randomize()
    return instance


def create_api_fleet_create_response_example() -> ApiFleetCreateResponse:
    instance = ApiFleetCreateResponse()
    instance.id_ = randomize()
    return instance


def create_api_fleet_get_response_example() -> ApiFleetGetResponse:
    instance = ApiFleetGetResponse()
    instance.active = randomize("bool")
    instance.claim_keys = [randomize()]
    instance.ds_host_configuration = create_api_ds_host_configuration_example()
    instance.id_ = randomize()
    instance.image_deployment_profile = create_api_image_deployment_profile_example()
    instance.is_local = randomize("bool")
    instance.name = randomize()
    instance.regions = [create_api_region_config_example()]
    return instance


def create_api_fleet_list_item_response_example() -> ApiFleetListItemResponse:
    instance = ApiFleetListItemResponse()
    instance.counts = [create_api_fleet_regional_server_counts_example()]
    instance.id_ = randomize()
    instance.image = randomize()
    instance.is_local = randomize("bool")
    instance.name = randomize()
    instance.regions = [randomize()]
    return instance


def create_api_fleet_list_response_example() -> ApiFleetListResponse:
    instance = ApiFleetListResponse()
    instance.fleets = [create_api_fleet_list_item_response_example()]
    return instance


def create_api_fleet_parameters_example() -> ApiFleetParameters:
    instance = ApiFleetParameters()
    instance.active = randomize("bool")
    instance.ds_host_configuration = create_api_ds_host_configuration_example()
    instance.image_deployment_profile = create_api_image_deployment_profile_example()
    instance.name = randomize()
    instance.regions = [create_api_region_config_example()]
    instance.claim_keys = [randomize()]
    instance.sampling_rules = create_api_fleet_artifacts_sample_rules_example()
    return instance


def create_api_fleet_regional_server_counts_example() -> ApiFleetRegionalServerCounts:
    instance = ApiFleetRegionalServerCounts()
    instance.claimed_server_count = randomize("int", min_val=1, max_val=1000)
    instance.ready_server_count = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.running_vm_count = randomize("int", min_val=1, max_val=1000)
    instance.target_ds_count = randomize("int", min_val=1, max_val=1000)
    instance.target_vm_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_fleet_server_connection_info_response_example() -> (
    ApiFleetServerConnectionInfoResponse
):
    instance = ApiFleetServerConnectionInfoResponse()
    instance.expires_at = create_api_time_example()
    instance.host = randomize()
    instance.logstream_port = randomize("int", min_val=1, max_val=1000)
    instance.secret = randomize()
    return instance


def create_api_fleet_server_history_event_response_example() -> (
    ApiFleetServerHistoryEventResponse
):
    instance = ApiFleetServerHistoryEventResponse()
    instance.created_at = randomize("date")
    instance.exit_code = randomize("int", min_val=1, max_val=1000)
    instance.fleet_id = randomize()
    instance.new_state = randomize()
    instance.old_state = randomize()
    instance.reason = randomize()
    instance.server_id = randomize()
    return instance


def create_api_fleet_server_history_response_example() -> ApiFleetServerHistoryResponse:
    instance = ApiFleetServerHistoryResponse()
    instance.events = [create_api_fleet_server_history_event_response_example()]
    return instance


def create_api_fleet_server_info_response_example() -> ApiFleetServerInfoResponse:
    instance = ApiFleetServerInfoResponse()
    instance.created_at = randomize("date")
    instance.fleet_id = randomize()
    instance.fleet_name = randomize()
    instance.image_cmd = randomize()
    instance.image_id = randomize()
    instance.instance_type = randomize()
    instance.ip_address = randomize()
    instance.port_configuration = [create_api_port_configuration_example()]
    instance.ports = {}
    instance.region = randomize()
    instance.server_id = randomize()
    instance.session_id = randomize("uid")
    instance.status = randomize()
    return instance


def create_api_fleet_servers_response_example() -> ApiFleetServersResponse:
    instance = ApiFleetServersResponse()
    instance.regions = [create_api_fleet_regional_server_counts_example()]
    instance.servers = [create_api_fleet_server_info_response_example()]
    return instance


def create_api_image_deployment_profile_example() -> ApiImageDeploymentProfile:
    instance = ApiImageDeploymentProfile()
    instance.command_line = randomize()
    instance.image_id = randomize()
    instance.port_configurations = [create_api_port_configuration_example()]
    instance.timeout = create_api_timeout_example()
    return instance


def create_api_image_details_example() -> ApiImageDetails:
    instance = ApiImageDetails()
    instance.created_at = randomize("date")
    instance.executable = randomize()
    instance.id_ = randomize()
    instance.is_protected = randomize("bool")
    instance.name = randomize()
    instance.referencing_fleets = [create_api_referencing_fleet_example()]
    instance.size_in_byte = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.uploaded_at = randomize("date")
    instance.uploaded_by = randomize()
    return instance


def create_api_image_list_example() -> ApiImageList:
    instance = ApiImageList()
    instance.images = [create_api_image_list_item_example()]
    return instance


def create_api_image_list_item_example() -> ApiImageListItem:
    instance = ApiImageListItem()
    instance.created_at = randomize("date")
    instance.executable = randomize()
    instance.id_ = randomize()
    instance.is_protected = randomize("bool")
    instance.name = randomize()
    instance.referencing_fleets = randomize("int", min_val=1, max_val=1000)
    instance.size_in_byte = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.uploaded_at = randomize("date")
    instance.uploaded_by = randomize()
    return instance


def create_api_image_update_example() -> ApiImageUpdate:
    instance = ApiImageUpdate()
    instance.added_tags = [randomize()]
    instance.is_protected = randomize("bool")
    instance.name = randomize()
    instance.removed_tags = [randomize()]
    return instance


def create_api_instance_type_description_response_example() -> (
    ApiInstanceTypeDescriptionResponse
):
    instance = ApiInstanceTypeDescriptionResponse()
    instance.description = randomize()
    instance.id_ = randomize()
    instance.memory_gi_b = randomize("int", min_val=1, max_val=1000)
    instance.min_speed = randomize()
    instance.name = randomize()
    instance.virtual_cpu = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_paging_info_example() -> ApiPagingInfo:
    instance = ApiPagingInfo()
    instance.current_page = randomize("int", min_val=1, max_val=1000)
    instance.has_next = randomize("bool")
    instance.has_pages = randomize("bool")
    instance.has_prev = randomize("bool")
    instance.next_ = randomize()
    instance.page_nums = [randomize("int", min_val=1, max_val=1000)]
    instance.previous = randomize()
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_port_configuration_example() -> ApiPortConfiguration:
    instance = ApiPortConfiguration()
    instance.name = randomize()
    instance.protocol = randomize()
    return instance


def create_api_qo_s_endpoint_response_example() -> ApiQoSEndpointResponse:
    instance = ApiQoSEndpointResponse()
    instance.servers = [create_api_qo_s_server_example()]
    return instance


def create_api_qo_s_server_example() -> ApiQoSServer:
    instance = ApiQoSServer()
    instance.alias = randomize()
    instance.ip = randomize()
    instance.last_update = randomize("date")
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.status = randomize()
    return instance


def create_api_referencing_fleet_example() -> ApiReferencingFleet:
    instance = ApiReferencingFleet()
    instance.environment = randomize()
    instance.fleet_id = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_api_region_config_example() -> ApiRegionConfig:
    instance = ApiRegionConfig()
    instance.buffer_size = randomize("int", min_val=1, max_val=1000)
    instance.max_server_count = randomize("int", min_val=1, max_val=1000)
    instance.min_server_count = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    return instance


def create_api_time_example() -> ApiTime:
    instance = ApiTime()
    instance.ext = randomize("int", min_val=1, max_val=1000)
    instance.loc = create_time_location_example()
    instance.wall = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_timeout_example() -> ApiTimeout:
    instance = ApiTimeout()
    instance.creation = randomize("int", min_val=1, max_val=1000)
    instance.drain = randomize("int", min_val=1, max_val=1000)
    instance.session = randomize("int", min_val=1, max_val=1000)
    instance.unresponsive = randomize("int", min_val=1, max_val=1000)
    return instance


def create_api_update_server_request_example() -> ApiUpdateServerRequest:
    instance = ApiUpdateServerRequest()
    instance.status = randomize()
    return instance


def create_response_error_response_example() -> ResponseErrorResponse:
    instance = ResponseErrorResponse()
    instance.error_message = randomize()
    instance.error_type = randomize()
    instance.trace_id = randomize()
    return instance


def create_time_location_example() -> TimeLocation:
    instance = TimeLocation()
    instance.cache_end = randomize("int", min_val=1, max_val=1000)
    instance.cache_start = randomize("int", min_val=1, max_val=1000)
    instance.cache_zone = create_time_zone_example()
    instance.extend = randomize()
    instance.name = randomize()
    instance.tx = [create_time_zone_trans_example()]
    instance.zone = [create_time_zone_example()]
    return instance


def create_time_zone_example() -> TimeZone:
    instance = TimeZone()
    instance.is_dst = randomize("bool")
    instance.name = randomize()
    instance.offset = randomize("int", min_val=1, max_val=1000)
    return instance


def create_time_zone_trans_example() -> TimeZoneTrans:
    instance = TimeZoneTrans()
    instance.index = randomize("int", min_val=1, max_val=1000)
    instance.isstd = randomize("bool")
    instance.isutc = randomize("bool")
    instance.when = randomize("int", min_val=1, max_val=1000)
    return instance
