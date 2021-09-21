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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
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
def get_slot_data(user_id: str, slot_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSlotData.create(
        user_id=user_id,
        slot_id=slot_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetUserNamespaceSlots)
def get_user_namespace_slots(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicCreateUserNamespaceSlot)
def public_create_user_namespace_slot(user_id: str, custom_attribute: Optional[str] = None, checksum: Optional[str] = None, file: Optional[Any] = None, label: Optional[str] = None, tags: Optional[List[str]] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserNamespaceSlot.create(
        user_id=user_id,
        custom_attribute=custom_attribute,
        checksum=checksum,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicDeleteUserNamespaceSlot)
def public_delete_user_namespace_slot(user_id: str, slot_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeleteUserNamespaceSlot.create(
        user_id=user_id,
        slot_id=slot_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetSlotData)
def public_get_slot_data(user_id: str, slot_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetSlotData.create(
        user_id=user_id,
        slot_id=slot_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetUserNamespaceSlots)
def public_get_user_namespace_slots(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserNamespaceSlots.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicUpdateUserNamespaceSlot)
def public_update_user_namespace_slot(user_id: str, slot_id: str, custom_attribute: Optional[str] = None, checksum: Optional[str] = None, file: Optional[Any] = None, label: Optional[str] = None, tags: Optional[List[str]] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlot.create(
        user_id=user_id,
        slot_id=slot_id,
        custom_attribute=custom_attribute,
        checksum=checksum,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicUpdateUserNamespaceSlotMetadata)
def public_update_user_namespace_slot_metadata(user_id: str, slot_id: str, body: Optional[SlotMetadataUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserNamespaceSlotMetadata.create(
        user_id=user_id,
        slot_id=slot_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)
