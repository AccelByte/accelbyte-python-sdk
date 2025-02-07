# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import GrpcServerInfo
from ..models import LootBoxPluginConfigInfo
from ..models import LootBoxPluginConfigUpdate
from ..models import RevocationPluginConfigInfo
from ..models import RevocationPluginConfigUpdate
from ..models import SectionPluginConfigInfo
from ..models import SectionPluginConfigUpdate
from ..models import ServicePluginConfigInfo
from ..models import ServicePluginConfigUpdate
from ..models import ValidationErrorEntity

from ..operations.service_plugin_config import DeleteLootBoxPluginConfig
from ..operations.service_plugin_config import DeleteRevocationPluginConfig
from ..operations.service_plugin_config import DeleteSectionPluginConfig
from ..operations.service_plugin_config import DeleteServicePluginConfig
from ..operations.service_plugin_config import GetLootBoxGrpcInfo
from ..operations.service_plugin_config import GetLootBoxPluginConfig
from ..operations.service_plugin_config import GetRevocationPluginConfig
from ..operations.service_plugin_config import GetSectionPluginConfig
from ..operations.service_plugin_config import GetServicePluginConfig
from ..operations.service_plugin_config import UpdateLootBoxPluginConfig
from ..operations.service_plugin_config import UpdateRevocationPluginConfig
from ..operations.service_plugin_config import UpdateSectionPluginConfig
from ..operations.service_plugin_config import UpdateServicePluginConfig
from ..operations.service_plugin_config import UploadRevocationPluginConfigCert
from ..operations.service_plugin_config import UploadSectionPluginConfigCert
from ..operations.service_plugin_config import UplodLootBoxPluginConfigCert
from ..models import GrpcServerInfoConnectionTypeEnumEnum
from ..models import LootBoxPluginConfigInfoExtendTypeEnum
from ..models import LootBoxPluginConfigUpdateExtendTypeEnum
from ..models import RevocationPluginConfigInfoExtendTypeEnum
from ..models import RevocationPluginConfigUpdateExtendTypeEnum
from ..models import SectionPluginConfigInfoExtendTypeEnum
from ..models import SectionPluginConfigUpdateExtendTypeEnum


@same_doc_as(DeleteLootBoxPluginConfig)
def delete_loot_box_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete lootbox plugin config (deleteLootBoxPluginConfig)

    Delete service plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLootBoxPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLootBoxPluginConfig)
async def delete_loot_box_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete lootbox plugin config (deleteLootBoxPluginConfig)

    Delete service plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLootBoxPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteRevocationPluginConfig)
def delete_revocation_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete revocation plugin config (deleteRevocationPluginConfig)

    Delete service plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRevocationPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRevocationPluginConfig)
async def delete_revocation_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete revocation plugin config (deleteRevocationPluginConfig)

    Delete service plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRevocationPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSectionPluginConfig)
def delete_section_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete section plugin config (deleteSectionPluginConfig)

    Delete section plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSectionPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSectionPluginConfig)
async def delete_section_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete section plugin config (deleteSectionPluginConfig)

    Delete section plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSectionPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteServicePluginConfig)
def delete_service_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete service plugin config (deleteServicePluginConfig)

    Delete service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteServicePluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteServicePluginConfig)
async def delete_service_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete service plugin config (deleteServicePluginConfig)

    Delete service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: DELETE

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteServicePluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLootBoxGrpcInfo)
def get_loot_box_grpc_info(
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get lootbox plugin gRPC info (getLootBoxGrpcInfo)

    Get lootbox plugin gRPC info.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/grpcInfo

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - GrpcServerInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLootBoxGrpcInfo.create(
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLootBoxGrpcInfo)
async def get_loot_box_grpc_info_async(
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get lootbox plugin gRPC info (getLootBoxGrpcInfo)

    Get lootbox plugin gRPC info.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/grpcInfo

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - GrpcServerInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLootBoxGrpcInfo.create(
        force=force,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLootBoxPluginConfig)
def get_loot_box_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get lootbox plugin config (getLootBoxPluginConfig)

    Get lootbox plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLootBoxPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLootBoxPluginConfig)
async def get_loot_box_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get lootbox plugin config (getLootBoxPluginConfig)

    Get lootbox plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLootBoxPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRevocationPluginConfig)
def get_revocation_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get revocation plugin config (getRevocationPluginConfig)

    Get revocation plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRevocationPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRevocationPluginConfig)
async def get_revocation_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get revocation plugin config (getRevocationPluginConfig)

    Get revocation plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRevocationPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSectionPluginConfig)
def get_section_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get section plugin config (getSectionPluginConfig)

    Get section plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSectionPluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSectionPluginConfig)
async def get_section_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get section plugin config (getSectionPluginConfig)

    Get section plugin config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSectionPluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetServicePluginConfig)
def get_service_plugin_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get service plugin config (getServicePluginConfig)

    Get service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServicePluginConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetServicePluginConfig)
async def get_service_plugin_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get service plugin config (getServicePluginConfig)

    Get service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: GET

        tags: ["ServicePluginConfig"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServicePluginConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLootBoxPluginConfig)
def update_loot_box_plugin_config(
    body: LootBoxPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update lootbox plugin config (updateLootBoxPluginConfig)

    Update lootbox plugin config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LootBoxPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLootBoxPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLootBoxPluginConfig)
async def update_loot_box_plugin_config_async(
    body: LootBoxPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update lootbox plugin config (updateLootBoxPluginConfig)

    Update lootbox plugin config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LootBoxPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLootBoxPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRevocationPluginConfig)
def update_revocation_plugin_config(
    body: RevocationPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update revocation plugin config (updateRevocationPluginConfig)

    Update revocation plugin config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRevocationPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRevocationPluginConfig)
async def update_revocation_plugin_config_async(
    body: RevocationPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update revocation plugin config (updateRevocationPluginConfig)

    Update revocation plugin config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RevocationPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRevocationPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSectionPluginConfig)
def update_section_plugin_config(
    body: SectionPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update section plugin config (updateSectionPluginConfig)

    Update section config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SectionPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSectionPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSectionPluginConfig)
async def update_section_plugin_config_async(
    body: SectionPluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update section plugin config (updateSectionPluginConfig)

    Update section config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SectionPluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSectionPluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateServicePluginConfig)
def update_service_plugin_config(
    body: ServicePluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update service plugin config service (updateServicePluginConfig)

    Update catalog config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ServicePluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateServicePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateServicePluginConfig)
async def update_service_plugin_config_async(
    body: ServicePluginConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update service plugin config service (updateServicePluginConfig)

    Update catalog config. Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/configs/servicePlugin

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ServicePluginConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ServicePluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateServicePluginConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadRevocationPluginConfigCert)
def upload_revocation_plugin_config_cert(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload revocation plugin custom config tls cert (uploadRevocationPluginConfigCert)

    Upload revocation plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadRevocationPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadRevocationPluginConfigCert)
async def upload_revocation_plugin_config_cert_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload revocation plugin custom config tls cert (uploadRevocationPluginConfigCert)

    Upload revocation plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/revocation/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RevocationPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadRevocationPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadSectionPluginConfigCert)
def upload_section_plugin_config_cert(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload section plugin custom config tls cert (uploadSectionPluginConfigCert)

    Upload section plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadSectionPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadSectionPluginConfigCert)
async def upload_section_plugin_config_cert_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload section plugin custom config tls cert (uploadSectionPluginConfigCert)

    Upload section plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SectionPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadSectionPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UplodLootBoxPluginConfigCert)
def uplod_loot_box_plugin_config_cert(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload lootbox plugin custom config tls cert (uplodLootBoxPluginConfigCert)

    Upload lootbox plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UplodLootBoxPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UplodLootBoxPluginConfigCert)
async def uplod_loot_box_plugin_config_cert_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload lootbox plugin custom config tls cert (uplodLootBoxPluginConfigCert)

    Upload lootbox plugin custom config tls cert.Other detail info:

      * Returns : updated service plugin config

    Properties:
        url: /platform/admin/namespaces/{namespace}/catalog/plugins/lootbox/customConfig/cert

        method: PUT

        tags: ["ServicePluginConfig"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - LootBoxPluginConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UplodLootBoxPluginConfigCert.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
