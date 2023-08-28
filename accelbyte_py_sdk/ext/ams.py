# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander (1.0.1)

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

from ..api.ams.models import ApiAccountCreateRequest
from ..api.ams.models import ApiAccountCreateResponse
from ..api.ams.models import ApiAccountLinkRequest
from ..api.ams.models import ApiAccountLinkResponse
from ..api.ams.models import ApiAccountLinkTokenResponse
from ..api.ams.models import ApiAccountResponse
from ..api.ams.models import ApiAvailableInstanceTypesResponse
from ..api.ams.models import ApiDSHistoryEvent
from ..api.ams.models import ApiDSHistoryList
from ..api.ams.models import ApiDSHostConfiguration
from ..api.ams.models import ApiFleetClaimByKeysReq
from ..api.ams.models import ApiFleetClaimReq
from ..api.ams.models import ApiFleetClaimResponse
from ..api.ams.models import ApiFleetCreateResponse
from ..api.ams.models import ApiFleetGetResponse
from ..api.ams.models import ApiFleetListItemResponse
from ..api.ams.models import ApiFleetListResponse
from ..api.ams.models import ApiFleetParameters
from ..api.ams.models import ApiFleetRegionalServerCounts
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
from ..api.ams.models import ApiReferencingFleet
from ..api.ams.models import ApiRegionConfig
from ..api.ams.models import ApiRegionsResponse
from ..api.ams.models import ApiTimeout
from ..api.ams.models import ResponseErrorResponse


def create_api_account_create_request_example() -> ApiAccountCreateRequest:
    instance = ApiAccountCreateRequest()
    instance.name = randomize()
    return instance


def create_api_account_create_response_example() -> ApiAccountCreateResponse:
    instance = ApiAccountCreateResponse()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespaces = [randomize()]
    return instance


def create_api_account_link_request_example() -> ApiAccountLinkRequest:
    instance = ApiAccountLinkRequest()
    instance.token = randomize()
    return instance


def create_api_account_link_response_example() -> ApiAccountLinkResponse:
    instance = ApiAccountLinkResponse()
    instance.id_ = randomize()
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
    instance.name = randomize()
    instance.namespaces = [randomize()]
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
    instance.game_session = randomize()
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


def create_api_fleet_claim_by_keys_req_example() -> ApiFleetClaimByKeysReq:
    instance = ApiFleetClaimByKeysReq()
    instance.claim_keys = [randomize()]
    instance.regions = [randomize()]
    return instance


def create_api_fleet_claim_req_example() -> ApiFleetClaimReq:
    instance = ApiFleetClaimReq()
    instance.region = randomize()
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
    instance.name = randomize()
    instance.regions = [create_api_region_config_example()]
    return instance


def create_api_fleet_list_item_response_example() -> ApiFleetListItemResponse:
    instance = ApiFleetListItemResponse()
    instance.active_ds = randomize("int", min_val=1, max_val=1000)
    instance.claimed_ds = randomize("int", min_val=1, max_val=1000)
    instance.counts = [create_api_fleet_regional_server_counts_example()]
    instance.id_ = randomize()
    instance.image = randomize()
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


def create_api_regions_response_example() -> ApiRegionsResponse:
    instance = ApiRegionsResponse()
    instance.regions = [randomize()]
    return instance


def create_api_timeout_example() -> ApiTimeout:
    instance = ApiTimeout()
    instance.creation = randomize("int", min_val=1, max_val=1000)
    instance.drain = randomize("int", min_val=1, max_val=1000)
    instance.session = randomize("int", min_val=1, max_val=1000)
    instance.unresponsive = randomize("int", min_val=1, max_val=1000)
    return instance


def create_response_error_response_example() -> ResponseErrorResponse:
    instance = ResponseErrorResponse()
    instance.error_message = randomize()
    instance.trace_id = randomize()
    return instance
