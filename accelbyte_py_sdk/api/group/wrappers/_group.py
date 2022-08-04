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

from ..models import ModelsGetGroupsListResponseV1
from ..models import ModelsGroupResponseV1
from ..models import ModelsPublicCreateNewGroupRequestV1
from ..models import ModelsUpdateGroupCustomAttributesRequestV1
from ..models import ModelsUpdateGroupCustomRuleRequestV1
from ..models import ModelsUpdateGroupPredefinedRuleRequestV1
from ..models import ModelsUpdateGroupRequestV1
from ..models import ResponseErrorResponse

from ..operations.group import CreateNewGroupPublicV1
from ..operations.group import DeleteGroupAdminV1
from ..operations.group import DeleteGroupPredefinedRulePublicV1
from ..operations.group import DeleteGroupPublicV1
from ..operations.group import GetGroupListAdminV1
from ..operations.group import GetGroupListPublicV1
from ..operations.group import GetSingleGroupAdminV1
from ..operations.group import GetSingleGroupPublicV1
from ..operations.group import UpdateGroupCustomAttributesPublicV1
from ..operations.group import UpdateGroupCustomRulePublicV1
from ..operations.group import UpdateGroupPredefinedRulePublicV1
from ..operations.group import UpdatePatchSingleGroupPublicV1
from ..operations.group import UpdateSingleGroupV1


@same_doc_as(CreateNewGroupPublicV1)
def create_new_group_public_v1(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateNewGroupPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNewGroupPublicV1)
async def create_new_group_public_v1_async(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateNewGroupPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupAdminV1)
def delete_group_admin_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupAdminV1)
async def delete_group_admin_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPredefinedRulePublicV1)
def delete_group_predefined_rule_public_v1(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPredefinedRulePublicV1)
async def delete_group_predefined_rule_public_v1_async(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPublicV1)
def delete_group_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPublicV1)
async def delete_group_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupListAdminV1)
def get_group_list_admin_v1(
    configuration_code: Optional[str] = None,
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
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
    request = GetGroupListAdminV1.create(
        configuration_code=configuration_code,
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupListAdminV1)
async def get_group_list_admin_v1_async(
    configuration_code: Optional[str] = None,
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
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
    request = GetGroupListAdminV1.create(
        configuration_code=configuration_code,
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupListPublicV1)
def get_group_list_public_v1(
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
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
    request = GetGroupListPublicV1.create(
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupListPublicV1)
async def get_group_list_public_v1_async(
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
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
    request = GetGroupListPublicV1.create(
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleGroupAdminV1)
def get_single_group_admin_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSingleGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleGroupAdminV1)
async def get_single_group_admin_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSingleGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleGroupPublicV1)
def get_single_group_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSingleGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleGroupPublicV1)
async def get_single_group_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSingleGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomAttributesPublicV1)
def update_group_custom_attributes_public_v1(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomAttributesPublicV1)
async def update_group_custom_attributes_public_v1_async(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomRulePublicV1)
def update_group_custom_rule_public_v1(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomRulePublicV1)
async def update_group_custom_rule_public_v1_async(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupPredefinedRulePublicV1)
def update_group_predefined_rule_public_v1(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupPredefinedRulePublicV1)
async def update_group_predefined_rule_public_v1_async(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePatchSingleGroupPublicV1)
def update_patch_single_group_public_v1(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePatchSingleGroupPublicV1)
async def update_patch_single_group_public_v1_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSingleGroupV1)
def update_single_group_v1(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSingleGroupV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSingleGroupV1)
async def update_single_group_v1_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSingleGroupV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
