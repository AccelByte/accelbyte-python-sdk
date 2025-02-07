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


@deprecated
@same_doc_as(GetSlotData)
def get_slot_data(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slot data (getSlotData)

    ## The endpoint is going to be deprecated


    Get slot data.
    Other detail info:

      *  Returns : slot data

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/octet-stream"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetSlotData)
async def get_slot_data_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slot data (getSlotData)

    ## The endpoint is going to be deprecated


    Get slot data.
    Other detail info:

      *  Returns : slot data

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/octet-stream"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
@same_doc_as(GetUserNamespaceSlots)
def get_user_namespace_slots(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns list of slots for given user (getUserNamespaceSlots)

    ## The endpoint is going to be deprecated


    Get slots for a given user.
    Other detail info:

      *  Returns : list of slots

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/slots

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[SlotInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserNamespaceSlots)
async def get_user_namespace_slots_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns list of slots for given user (getUserNamespaceSlots)

    ## The endpoint is going to be deprecated


    Get slots for a given user.
    Other detail info:

      *  Returns : list of slots

    Properties:
        url: /social/admin/namespaces/{namespace}/users/{userId}/slots

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[SlotInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
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
    """Creates a slot (publicCreateUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Creates a slot.
    Other detail info:

      *  Returns : created slot info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots

        method: POST

        tags: ["Slot"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        checksum: (checksum) OPTIONAL str in form_data

        custom_attribute: (customAttribute) OPTIONAL str in form_data

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        label: (label) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        201: Created - (Successful create of a slot)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        409: Conflict - ErrorEntity (12171: User [{userId}] exceed max slot count [{maxCount}] in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
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
    """Creates a slot (publicCreateUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Creates a slot.
    Other detail info:

      *  Returns : created slot info

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots

        method: POST

        tags: ["Slot"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        checksum: (checksum) OPTIONAL str in form_data

        custom_attribute: (customAttribute) OPTIONAL str in form_data

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        label: (label) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        201: Created - (Successful create of a slot)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        409: Conflict - ErrorEntity (12171: User [{userId}] exceed max slot count [{maxCount}] in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
@same_doc_as(PublicDeleteUserNamespaceSlot)
def public_delete_user_namespace_slot(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes the slot (publicDeleteUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Deletes the slot.
    Other detail info:

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: DELETE

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of a slot)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteUserNamespaceSlot.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicDeleteUserNamespaceSlot)
async def public_delete_user_namespace_slot_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes the slot (publicDeleteUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Deletes the slot.
    Other detail info:

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: DELETE

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful delete of a slot)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
@same_doc_as(PublicGetSlotData)
def public_get_slot_data(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slot data (publicGetSlotData)

    ## The endpoint is going to be deprecated


    Get slot data.
    Other detail info:

      *  Returns : slot data

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/octet-stream"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetSlotData.create(
        slot_id=slot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetSlotData)
async def public_get_slot_data_async(
    slot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slot data (publicGetSlotData)

    ## The endpoint is going to be deprecated


    Get slot data.
    Other detail info:

      *  Returns : slot data

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/octet-stream"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - Any (Successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
@same_doc_as(PublicGetUserNamespaceSlots)
def public_get_user_namespace_slots(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slots for given user (publicGetUserNamespaceSlots)

    ## The endpoint is going to be deprecated


    Get list of slots for a given user in namespace.
    Other detail info:

      *  Returns : list of slots

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[SlotInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetUserNamespaceSlots)
async def public_get_user_namespace_slots_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Returns slots for given user (publicGetUserNamespaceSlots)

    ## The endpoint is going to be deprecated


    Get list of slots for a given user in namespace.
    Other detail info:

      *  Returns : list of slots

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots

        method: GET

        tags: ["Slot"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[SlotInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
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
    """Updates a slot (publicUpdateUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Updates a slot.
    Other detail info:

      *  Returns : updated slot

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: PUT

        tags: ["Slot"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        checksum: (checksum) OPTIONAL str in form_data

        custom_attribute: (customAttribute) OPTIONAL str in form_data

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        label: (label) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - SlotInfo (successful operation)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
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
    """Updates a slot (publicUpdateUserNamespaceSlot)

    ## The endpoint is going to be deprecated


    Updates a slot.
    Other detail info:

      *  Returns : updated slot

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: PUT

        tags: ["Slot"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        checksum: (checksum) OPTIONAL str in form_data

        custom_attribute: (customAttribute) OPTIONAL str in form_data

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        label: (label) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - SlotInfo (successful operation)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@deprecated
@same_doc_as(PublicUpdateUserNamespaceSlotMetadata)
def public_update_user_namespace_slot_metadata(
    slot_id: str,
    user_id: str,
    body: Optional[SlotMetadataUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates the slot metadata (publicUpdateUserNamespaceSlotMetadata)

    ## The endpoint is going to be deprecated


    Updates the slot metadata.
    Other detail info:

      *  Returns : updated slot

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata

        method: PUT

        tags: ["Slot"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotMetadataUpdate in body

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SlotInfo (successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlotMetadata.create(
        slot_id=slot_id,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicUpdateUserNamespaceSlotMetadata)
async def public_update_user_namespace_slot_metadata_async(
    slot_id: str,
    user_id: str,
    body: Optional[SlotMetadataUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Updates the slot metadata (publicUpdateUserNamespaceSlotMetadata)

    ## The endpoint is going to be deprecated


    Updates the slot metadata.
    Other detail info:

      *  Returns : updated slot

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata

        method: PUT

        tags: ["Slot"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SlotMetadataUpdate in body

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SlotInfo (successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
