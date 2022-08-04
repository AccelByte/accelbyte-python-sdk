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

from ..models import ModelsCreateDeploymentOverrideRequest
from ..models import ModelsCreateDeploymentRequest
from ..models import ModelsCreateRegionOverrideRequest
from ..models import ModelsDeploymentWithOverride
from ..models import ModelsListDeploymentResponse
from ..models import ModelsUpdateDeploymentOverrideRequest
from ..models import ModelsUpdateDeploymentRequest
from ..models import ModelsUpdateRegionOverrideRequest
from ..models import ResponseError

from ..operations.deployment_config import CreateDeployment
from ..operations.deployment_config import CreateDeploymentOverride
from ..operations.deployment_config import CreateOverrideRegionOverride
from ..operations.deployment_config import CreateRootRegionOverride
from ..operations.deployment_config import DeleteDeployment
from ..operations.deployment_config import DeleteDeploymentOverride
from ..operations.deployment_config import DeleteOverrideRegionOverride
from ..operations.deployment_config import DeleteRootRegionOverride
from ..operations.deployment_config import GetAllDeployment
from ..operations.deployment_config import GetDeployment
from ..operations.deployment_config import UpdateDeployment
from ..operations.deployment_config import UpdateDeploymentOverride
from ..operations.deployment_config import UpdateOverrideRegionOverride
from ..operations.deployment_config import UpdateRootRegionOverride


@same_doc_as(CreateDeployment)
def create_deployment(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeployment)
async def create_deployment_async(
    body: ModelsCreateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateDeploymentOverride)
def create_deployment_override(
    body: ModelsCreateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeploymentOverride)
async def create_deployment_override_async(
    body: ModelsCreateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateOverrideRegionOverride)
def create_override_region_override(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateOverrideRegionOverride)
async def create_override_region_override_async(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateRootRegionOverride)
def create_root_region_override(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateRootRegionOverride)
async def create_root_region_override_async(
    body: ModelsCreateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeployment)
def delete_deployment(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeployment)
async def delete_deployment_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeploymentOverride)
def delete_deployment_override(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteDeploymentOverride.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeploymentOverride)
async def delete_deployment_override_async(
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteDeploymentOverride.create(
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteOverrideRegionOverride)
def delete_override_region_override(
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteOverrideRegionOverride.create(
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteOverrideRegionOverride)
async def delete_override_region_override_async(
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteOverrideRegionOverride.create(
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteRootRegionOverride)
def delete_root_region_override(
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRootRegionOverride.create(
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRootRegionOverride)
async def delete_root_region_override_async(
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRootRegionOverride.create(
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllDeployment)
def get_all_deployment(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllDeployment.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllDeployment)
async def get_all_deployment_async(
    count: int,
    offset: int,
    name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllDeployment.create(
        count=count,
        offset=offset,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDeployment)
def get_deployment(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDeployment)
async def get_deployment_async(
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetDeployment.create(
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateDeployment)
def update_deployment(
    body: ModelsUpdateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateDeployment)
async def update_deployment_async(
    body: ModelsUpdateDeploymentRequest,
    deployment: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateDeploymentOverride)
def update_deployment_override(
    body: ModelsUpdateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateDeploymentOverride)
async def update_deployment_override_async(
    body: ModelsUpdateDeploymentOverrideRequest,
    deployment: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateDeploymentOverride.create(
        body=body,
        deployment=deployment,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateOverrideRegionOverride)
def update_override_region_override(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateOverrideRegionOverride)
async def update_override_region_override_async(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    version: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateOverrideRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRootRegionOverride)
def update_root_region_override(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRootRegionOverride)
async def update_root_region_override_async(
    body: ModelsUpdateRegionOverrideRequest,
    deployment: str,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateRootRegionOverride.create(
        body=body,
        deployment=deployment,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
