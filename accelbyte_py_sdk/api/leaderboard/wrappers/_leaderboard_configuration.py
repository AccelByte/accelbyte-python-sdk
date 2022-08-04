# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
from ....core import same_doc_as

from ..models import ModelsDeleteBulkLeaderboardsReq
from ..models import ModelsDeleteBulkLeaderboardsResp
from ..models import ModelsGetAllLeaderboardConfigsPublicResp
from ..models import ModelsGetAllLeaderboardConfigsResp
from ..models import ModelsGetLeaderboardConfigResp
from ..models import ModelsLeaderboardConfigReq
from ..models import ModelsUpdateLeaderboardConfigReq
from ..models import ResponseErrorResponse
from ..models import V2GetAllLeaderboardConfigsPublicResp

from ..operations.leaderboard_configuration import CreateLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import (
    CreateLeaderboardConfigurationPublicV1,
)
from ..operations.leaderboard_configuration import (
    DeleteBulkLeaderboardConfigurationAdminV1,
)
from ..operations.leaderboard_configuration import DeleteLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsPublicV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsPublicV2
from ..operations.leaderboard_configuration import UpdateLeaderboardConfigurationAdminV1


@same_doc_as(CreateLeaderboardConfigurationAdminV1)
def create_leaderboard_configuration_admin_v1(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLeaderboardConfigurationAdminV1)
async def create_leaderboard_configuration_admin_v1_async(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateLeaderboardConfigurationPublicV1)
def create_leaderboard_configuration_public_v1(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateLeaderboardConfigurationPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLeaderboardConfigurationPublicV1)
async def create_leaderboard_configuration_public_v1_async(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateLeaderboardConfigurationPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV1)
def delete_bulk_leaderboard_configuration_admin_v1(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV1)
async def delete_bulk_leaderboard_configuration_admin_v1_async(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteLeaderboardConfigurationAdminV1)
def delete_leaderboard_configuration_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLeaderboardConfigurationAdminV1)
async def delete_leaderboard_configuration_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationAdminV1)
def get_leaderboard_configuration_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationAdminV1)
async def get_leaderboard_configuration_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsAdminV1)
def get_leaderboard_configurations_admin_v1(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsAdminV1)
async def get_leaderboard_configurations_admin_v1_async(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsPublicV1)
def get_leaderboard_configurations_public_v1(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsPublicV1)
async def get_leaderboard_configurations_public_v1_async(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsPublicV2)
def get_leaderboard_configurations_public_v2(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsPublicV2)
async def get_leaderboard_configurations_public_v2_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLeaderboardConfigurationAdminV1)
def update_leaderboard_configuration_admin_v1(
    body: ModelsUpdateLeaderboardConfigReq,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLeaderboardConfigurationAdminV1)
async def update_leaderboard_configuration_admin_v1_async(
    body: ModelsUpdateLeaderboardConfigReq,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
