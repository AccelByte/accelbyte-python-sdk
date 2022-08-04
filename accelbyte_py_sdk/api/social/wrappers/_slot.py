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

from ..models import ErrorEntity
from ..models import SlotInfo
from ..models import SlotMetadataUpdate

from ..operations.slot import GetSlotData
from ..operations.slot import GetUserNamespaceSlots
from ..operations.slot import PublicCreateUserNamespaceSlot
from ..operations.slot import PublicDeleteUserNamespaceSlot
from ..operations.slot import PublicGetSlotData
from ..operations.slot import PublicGetUserNamespaceSlots
from ..operations.slot import PublicUpdateUserNamespaceSlot
from ..operations.slot import PublicUpdateUserNamespaceSlotMetadata


@same_doc_as(GetSlotData)
def get_slot_data(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSlotData)
async def get_slot_data_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserNamespaceSlots)
def get_user_namespace_slots(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserNamespaceSlots)
async def get_user_namespace_slots_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateUserNamespaceSlot)
def public_create_user_namespace_slot(
    user_id: str,
    checksum: Optional[str] = None,
    custom_attribute: Optional[str] = None,
    file: Optional[Any] = None,
    label: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserNamespaceSlot.create(
        user_id=user_id,
        checksum=checksum,
        custom_attribute=custom_attribute,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateUserNamespaceSlot)
async def public_create_user_namespace_slot_async(
    user_id: str,
    checksum: Optional[str] = None,
    custom_attribute: Optional[str] = None,
    file: Optional[Any] = None,
    label: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserNamespaceSlot.create(
        user_id=user_id,
        checksum=checksum,
        custom_attribute=custom_attribute,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeleteUserNamespaceSlot)
def public_delete_user_namespace_slot(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeleteUserNamespaceSlot.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeleteUserNamespaceSlot)
async def public_delete_user_namespace_slot_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeleteUserNamespaceSlot.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetSlotData)
def public_get_slot_data(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetSlotData)
async def public_get_slot_data_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserNamespaceSlots)
def public_get_user_namespace_slots(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserNamespaceSlots)
async def public_get_user_namespace_slots_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserNamespaceSlot)
def public_update_user_namespace_slot(
    slot_id: str,
    user_id: str,
    checksum: Optional[str] = None,
    custom_attribute: Optional[str] = None,
    file: Optional[Any] = None,
    label: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlot.create(
        slot_id=slot_id,
        user_id=user_id,
        checksum=checksum,
        custom_attribute=custom_attribute,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserNamespaceSlot)
async def public_update_user_namespace_slot_async(
    slot_id: str,
    user_id: str,
    checksum: Optional[str] = None,
    custom_attribute: Optional[str] = None,
    file: Optional[Any] = None,
    label: Optional[str] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlot.create(
        slot_id=slot_id,
        user_id=user_id,
        checksum=checksum,
        custom_attribute=custom_attribute,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateUserNamespaceSlotMetadata)
def public_update_user_namespace_slot_metadata(
    slot_id: str,
    user_id: str,
    body: Optional[SlotMetadataUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlotMetadata.create(
        slot_id=slot_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateUserNamespaceSlotMetadata)
async def public_update_user_namespace_slot_metadata_async(
    slot_id: str,
    user_id: str,
    body: Optional[SlotMetadataUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlotMetadata.create(
        slot_id=slot_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
