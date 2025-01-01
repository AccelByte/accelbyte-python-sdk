# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ..api.inventory.models import ApimodelsAdminUpdateItemReq
from ..api.inventory.models import ApimodelsBulkSaveItemError
from ..api.inventory.models import ApimodelsBulkSaveItemResp
from ..api.inventory.models import ApimodelsChainingOperationReq
from ..api.inventory.models import ApimodelsChainingOperationResp
from ..api.inventory.models import ApimodelsConsumeItem
from ..api.inventory.models import ApimodelsConsumeItemReq
from ..api.inventory.models import ApimodelsCreateIntegrationConfigurationReq
from ..api.inventory.models import ApimodelsCreateInventoryConfigurationReq
from ..api.inventory.models import ApimodelsCreateInventoryReq
from ..api.inventory.models import ApimodelsCreateItem
from ..api.inventory.models import ApimodelsCreateItemTypeReq
from ..api.inventory.models import ApimodelsCreateItemTypeResp
from ..api.inventory.models import ApimodelsCreateTagReq
from ..api.inventory.models import ApimodelsCreateTagResp
from ..api.inventory.models import ApimodelsDeleteInventoryReq
from ..api.inventory.models import ApimodelsErrorResponse
from ..api.inventory.models import ApimodelsIntegrationConfigurationResp
from ..api.inventory.models import ApimodelsInventoryConfig
from ..api.inventory.models import ApimodelsInventoryConfigurationReq
from ..api.inventory.models import ApimodelsInventoryConfigurationResp
from ..api.inventory.models import ApimodelsInventoryResp
from ..api.inventory.models import ApimodelsItemResp
from ..api.inventory.models import ApimodelsListIntegrationConfigurationsResp
from ..api.inventory.models import ApimodelsListInventoryConfigurationsResp
from ..api.inventory.models import ApimodelsListInventoryResp
from ..api.inventory.models import ApimodelsListItemResp
from ..api.inventory.models import ApimodelsListItemTypesResp
from ..api.inventory.models import ApimodelsListTagsResp
from ..api.inventory.models import ApimodelsMoveItemsReq
from ..api.inventory.models import ApimodelsMoveItemsResp
from ..api.inventory.models import ApimodelsOperation
from ..api.inventory.models import ApimodelsPaging
from ..api.inventory.models import ApimodelsPurchaseValidationItemReq
from ..api.inventory.models import ApimodelsPurchaseValidationReq
from ..api.inventory.models import ApimodelsRemoveInventoryItemReq
from ..api.inventory.models import ApimodelsRemoveItem
from ..api.inventory.models import ApimodelsSaveItemReq
from ..api.inventory.models import ApimodelsSaveItemToInventoryReq
from ..api.inventory.models import ApimodelsTradeItem
from ..api.inventory.models import ApimodelsTradeItemResp
from ..api.inventory.models import ApimodelsUpdateIntegrationConfigurationReq
from ..api.inventory.models import ApimodelsUpdateInventoryReq
from ..api.inventory.models import ApimodelsUpdateItem
from ..api.inventory.models import ApimodelsUpdateItemReq
from ..api.inventory.models import ApimodelsUpdateItemResp
from ..api.inventory.models import ApimodelsUpdateStatusIntegrationConfigurationReq


def create_apimodels_admin_update_item_req_example() -> ApimodelsAdminUpdateItemReq:
    instance = ApimodelsAdminUpdateItemReq()
    instance.custom_attributes = {randomize(): randomize()}
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_apimodels_bulk_save_item_error_example() -> ApimodelsBulkSaveItemError:
    instance = ApimodelsBulkSaveItemError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    return instance


def create_apimodels_bulk_save_item_resp_example() -> ApimodelsBulkSaveItemResp:
    instance = ApimodelsBulkSaveItemResp()
    instance.success = randomize("bool")
    instance.error_details = create_apimodels_bulk_save_item_error_example()
    instance.item = create_apimodels_item_resp_example()
    return instance


def create_apimodels_chaining_operation_req_example() -> ApimodelsChainingOperationReq:
    instance = ApimodelsChainingOperationReq()
    instance.message = randomize()
    instance.operations = [create_apimodels_operation_example()]
    instance.request_id = randomize()
    return instance


def create_apimodels_chaining_operation_resp_example() -> (
    ApimodelsChainingOperationResp
):
    instance = ApimodelsChainingOperationResp()
    instance.message = randomize()
    instance.error_details = create_apimodels_error_response_example()
    instance.replayed = randomize("bool")
    instance.request_id = randomize()
    return instance


def create_apimodels_consume_item_example() -> ApimodelsConsumeItem:
    instance = ApimodelsConsumeItem()
    instance.inventory_id = randomize()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.date_range_validation = randomize("bool")
    instance.options = [randomize()]
    return instance


def create_apimodels_consume_item_req_example() -> ApimodelsConsumeItemReq:
    instance = ApimodelsConsumeItemReq()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.options = [randomize()]
    return instance


def create_apimodels_create_integration_configuration_req_example() -> (
    ApimodelsCreateIntegrationConfigurationReq
):
    instance = ApimodelsCreateIntegrationConfigurationReq()
    instance.service_name = randomize()
    instance.target_inventory_code = randomize()
    instance.map_item_type = [randomize()]
    return instance


def create_apimodels_create_inventory_configuration_req_example() -> (
    ApimodelsCreateInventoryConfigurationReq
):
    instance = ApimodelsCreateInventoryConfigurationReq()
    instance.code = randomize()
    instance.initial_max_slots = randomize("int", min_val=1, max_val=1000)
    instance.max_instances_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_upgrade_slots = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.name = randomize()
    return instance


def create_apimodels_create_inventory_req_example() -> ApimodelsCreateInventoryReq:
    instance = ApimodelsCreateInventoryReq()
    instance.inventory_configuration_code = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_apimodels_create_item_example() -> ApimodelsCreateItem:
    instance = ApimodelsCreateItem()
    instance.custom_attributes = {randomize(): randomize()}
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.slot_used = randomize("int", min_val=1, max_val=1000)
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.to_specific_inventory = randomize("bool")
    instance.type_ = randomize()
    instance.inventory_configuration_code = randomize()
    instance.inventory_id = randomize()
    instance.source = randomize()
    return instance


def create_apimodels_create_item_type_req_example() -> ApimodelsCreateItemTypeReq:
    instance = ApimodelsCreateItemTypeReq()
    instance.name = randomize()
    return instance


def create_apimodels_create_item_type_resp_example() -> ApimodelsCreateItemTypeResp:
    instance = ApimodelsCreateItemTypeResp()
    instance.created_at = randomize("date")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_apimodels_create_tag_req_example() -> ApimodelsCreateTagReq:
    instance = ApimodelsCreateTagReq()
    instance.name = randomize()
    instance.owner = randomize()
    return instance


def create_apimodels_create_tag_resp_example() -> ApimodelsCreateTagResp:
    instance = ApimodelsCreateTagResp()
    instance.created_at = randomize("date")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.owner = randomize()
    return instance


def create_apimodels_delete_inventory_req_example() -> ApimodelsDeleteInventoryReq:
    instance = ApimodelsDeleteInventoryReq()
    instance.message = randomize()
    return instance


def create_apimodels_error_response_example() -> ApimodelsErrorResponse:
    instance = ApimodelsErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_apimodels_integration_configuration_resp_example() -> (
    ApimodelsIntegrationConfigurationResp
):
    instance = ApimodelsIntegrationConfigurationResp()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.item_types = [randomize()]
    instance.namespace = randomize("slug")
    instance.service_name = randomize()
    instance.status = randomize()
    instance.target_inventory_code = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_apimodels_inventory_config_example() -> ApimodelsInventoryConfig:
    instance = ApimodelsInventoryConfig()
    instance.slot_used = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_inventory_configuration_req_example() -> (
    ApimodelsInventoryConfigurationReq
):
    instance = ApimodelsInventoryConfigurationReq()
    instance.code = randomize()
    instance.initial_max_slots = randomize("int", min_val=1, max_val=1000)
    instance.max_instances_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_upgrade_slots = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.name = randomize()
    return instance


def create_apimodels_inventory_configuration_resp_example() -> (
    ApimodelsInventoryConfigurationResp
):
    instance = ApimodelsInventoryConfigurationResp()
    instance.code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.id_ = randomize()
    instance.initial_max_slots = randomize("int", min_val=1, max_val=1000)
    instance.max_instances_per_user = randomize("int", min_val=1, max_val=1000)
    instance.max_upgrade_slots = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_apimodels_inventory_resp_example() -> ApimodelsInventoryResp:
    instance = ApimodelsInventoryResp()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.inventory_configuration_code = randomize()
    instance.inventory_configuration_id = randomize()
    instance.max_slots = randomize("int", min_val=1, max_val=1000)
    instance.max_upgrade_slots = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.updated_at = randomize("date")
    instance.used_count_slots = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    return instance


def create_apimodels_item_resp_example() -> ApimodelsItemResp:
    instance = ApimodelsItemResp()
    instance.created_at = randomize("date")
    instance.custom_attributes = {randomize(): randomize()}
    instance.id_ = randomize()
    instance.inventory_id = randomize()
    instance.item_info = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.slot_used = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.platform_available = randomize("bool")
    return instance


def create_apimodels_list_integration_configurations_resp_example() -> (
    ApimodelsListIntegrationConfigurationsResp
):
    instance = ApimodelsListIntegrationConfigurationsResp()
    instance.data = [create_apimodels_integration_configuration_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_list_inventory_configurations_resp_example() -> (
    ApimodelsListInventoryConfigurationsResp
):
    instance = ApimodelsListInventoryConfigurationsResp()
    instance.data = [create_apimodels_inventory_configuration_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_list_inventory_resp_example() -> ApimodelsListInventoryResp:
    instance = ApimodelsListInventoryResp()
    instance.data = [create_apimodels_inventory_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_list_item_resp_example() -> ApimodelsListItemResp:
    instance = ApimodelsListItemResp()
    instance.data = [create_apimodels_item_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_list_item_types_resp_example() -> ApimodelsListItemTypesResp:
    instance = ApimodelsListItemTypesResp()
    instance.data = [create_apimodels_create_item_type_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_list_tags_resp_example() -> ApimodelsListTagsResp:
    instance = ApimodelsListTagsResp()
    instance.data = [create_apimodels_create_tag_resp_example()]
    instance.paging = create_apimodels_paging_example()
    return instance


def create_apimodels_move_items_req_example() -> ApimodelsMoveItemsReq:
    instance = ApimodelsMoveItemsReq()
    instance.items = [create_apimodels_trade_item_example()]
    instance.src_inventory_id = randomize()
    return instance


def create_apimodels_move_items_resp_example() -> ApimodelsMoveItemsResp:
    instance = ApimodelsMoveItemsResp()
    instance.created_at = randomize("date")
    instance.dst_inventory_id = randomize()
    instance.items = [create_apimodels_trade_item_resp_example()]
    instance.namespace = randomize("slug")
    instance.src_inventory_id = randomize()
    return instance


def create_apimodels_operation_example() -> ApimodelsOperation:
    instance = ApimodelsOperation()
    instance.consume_items = [create_apimodels_consume_item_example()]
    instance.create_items = [create_apimodels_create_item_example()]
    instance.remove_items = [create_apimodels_remove_item_example()]
    instance.target_user_id = randomize()
    instance.update_items = [create_apimodels_update_item_example()]
    return instance


def create_apimodels_paging_example() -> ApimodelsPaging:
    instance = ApimodelsPaging()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_apimodels_purchase_validation_item_req_example() -> (
    ApimodelsPurchaseValidationItemReq
):
    instance = ApimodelsPurchaseValidationItemReq()
    instance.bundled_qty = randomize("int", min_val=1, max_val=1000)
    instance.entitlement_type = randomize()
    instance.inventory_config = create_apimodels_inventory_config_example()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.sku = randomize("slug")
    instance.stackable = randomize("bool")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_purchase_validation_req_example() -> (
    ApimodelsPurchaseValidationReq
):
    instance = ApimodelsPurchaseValidationReq()
    instance.item_id = randomize()
    instance.item_type = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.sku = randomize("slug")
    instance.entitlement_type = randomize()
    instance.inventory_config = create_apimodels_inventory_config_example()
    instance.items = [create_apimodels_purchase_validation_item_req_example()]
    instance.stackable = randomize("bool")
    instance.use_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_remove_inventory_item_req_example() -> (
    ApimodelsRemoveInventoryItemReq
):
    instance = ApimodelsRemoveInventoryItemReq()
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    return instance


def create_apimodels_remove_item_example() -> ApimodelsRemoveItem:
    instance = ApimodelsRemoveItem()
    instance.inventory_id = randomize()
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    return instance


def create_apimodels_save_item_req_example() -> ApimodelsSaveItemReq:
    instance = ApimodelsSaveItemReq()
    instance.custom_attributes = {randomize(): randomize()}
    instance.inventory_configuration_code = randomize()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.slot_used = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_apimodels_save_item_to_inventory_req_example() -> (
    ApimodelsSaveItemToInventoryReq
):
    instance = ApimodelsSaveItemToInventoryReq()
    instance.custom_attributes = {randomize(): randomize()}
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.slot_used = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_apimodels_trade_item_example() -> ApimodelsTradeItem:
    instance = ApimodelsTradeItem()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    return instance


def create_apimodels_trade_item_resp_example() -> ApimodelsTradeItemResp:
    instance = ApimodelsTradeItemResp()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    return instance


def create_apimodels_update_integration_configuration_req_example() -> (
    ApimodelsUpdateIntegrationConfigurationReq
):
    instance = ApimodelsUpdateIntegrationConfigurationReq()
    instance.service_name = randomize()
    instance.target_inventory_code = randomize()
    instance.map_item_type = [randomize()]
    return instance


def create_apimodels_update_inventory_req_example() -> ApimodelsUpdateInventoryReq:
    instance = ApimodelsUpdateInventoryReq()
    instance.inc_max_slots = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodels_update_item_example() -> ApimodelsUpdateItem:
    instance = ApimodelsUpdateItem()
    instance.custom_attributes = {randomize(): randomize()}
    instance.inventory_id = randomize()
    instance.server_custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_apimodels_update_item_req_example() -> ApimodelsUpdateItemReq:
    instance = ApimodelsUpdateItemReq()
    instance.custom_attributes = {randomize(): randomize()}
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.tags = [randomize()]
    return instance


def create_apimodels_update_item_resp_example() -> ApimodelsUpdateItemResp:
    instance = ApimodelsUpdateItemResp()
    instance.slot_id = randomize()
    instance.source_item_id = randomize()
    instance.success = randomize("bool")
    instance.error_details = create_apimodels_error_response_example()
    return instance


def create_apimodels_update_status_integration_configuration_req_example() -> (
    ApimodelsUpdateStatusIntegrationConfigurationReq
):
    instance = ApimodelsUpdateStatusIntegrationConfigurationReq()
    instance.status = randomize()
    return instance
