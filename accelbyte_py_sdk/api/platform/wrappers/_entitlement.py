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

from ..models import AppEntitlementInfo
from ..models import AppEntitlementPagingSlicedResult
from ..models import BulkOperationResult
from ..models import DistributionReceiverCreate
from ..models import DistributionReceiverInfo
from ..models import EntitlementDecrement
from ..models import EntitlementGrant
from ..models import EntitlementHistoryInfo
from ..models import EntitlementInfo
from ..models import EntitlementPagingSlicedResult
from ..models import EntitlementUpdate
from ..models import ErrorEntity
from ..models import Ownership
from ..models import OwnershipToken
from ..models import StackableEntitlementInfo
from ..models import ValidationErrorEntity

from ..operations.entitlement import ConsumeUserEntitlement
from ..operations.entitlement import CreateUserDistributionReceiver
from ..operations.entitlement import DeleteUserDistributionReceiver
from ..operations.entitlement import DisableUserEntitlement
from ..operations.entitlement import EnableUserEntitlement
from ..operations.entitlement import ExistsAnyUserActiveEntitlement
from ..operations.entitlement import ExistsAnyUserActiveEntitlementByItemIds
from ..operations.entitlement import GetEntitlement
from ..operations.entitlement import GetUserAppEntitlementByAppId
from ..operations.entitlement import GetUserAppEntitlementOwnershipByAppId
from ..operations.entitlement import GetUserDistributionReceivers
from ..operations.entitlement import GetUserEntitlement
from ..operations.entitlement import GetUserEntitlementBySku
from ..operations.entitlement import GetUserEntitlementHistories
from ..operations.entitlement import GetUserEntitlementOwnershipBySku
from ..operations.entitlement import GrantUserEntitlement
from ..operations.entitlement import PublicConsumeUserEntitlement
from ..operations.entitlement import PublicCreateUserDistributionReceiver
from ..operations.entitlement import PublicDeleteUserDistributionReceiver
from ..operations.entitlement import PublicDistributeUserDistribution
from ..operations.entitlement import PublicExistsAnyMyActiveEntitlement
from ..operations.entitlement import PublicExistsAnyUserActiveEntitlement
from ..operations.entitlement import PublicGetEntitlementOwnershipToken
from ..operations.entitlement import PublicGetMyAppEntitlementOwnershipByAppId
from ..operations.entitlement import PublicGetMyEntitlementOwnershipBySku
from ..operations.entitlement import PublicGetUserAppEntitlementByAppId
from ..operations.entitlement import PublicGetUserAppEntitlementOwnershipByAppId
from ..operations.entitlement import PublicGetUserDistributionReceivers
from ..operations.entitlement import PublicGetUserEntitlement
from ..operations.entitlement import PublicGetUserEntitlementBySku
from ..operations.entitlement import PublicGetUserEntitlementOwnershipBySku
from ..operations.entitlement import PublicQueryUserEntitlements
from ..operations.entitlement import PublicQueryUserEntitlementsByAppType
from ..operations.entitlement import PublicUpdateUserDistributionReceiver
from ..operations.entitlement import QueryEntitlements
from ..operations.entitlement import QueryUserEntitlements
from ..operations.entitlement import QueryUserEntitlementsByAppType
from ..operations.entitlement import RevokeUserEntitlement
from ..operations.entitlement import RevokeUserEntitlements
from ..operations.entitlement import UpdateUserDistributionReceiver
from ..operations.entitlement import UpdateUserEntitlement


@same_doc_as(ConsumeUserEntitlement)
def consume_user_entitlement(user_id: str, entitlement_id: str, body: Optional[EntitlementDecrement] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ConsumeUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateUserDistributionReceiver)
def create_user_distribution_receiver(user_id: str, ext_user_id: str, body: Optional[DistributionReceiverCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteUserDistributionReceiver)
def delete_user_distribution_receiver(user_id: str, ext_user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DisableUserEntitlement)
def disable_user_entitlement(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(EnableUserEntitlement)
def enable_user_entitlement(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ExistsAnyUserActiveEntitlement)
def exists_any_user_active_entitlement(user_id: str, item_ids: Optional[List[str]] = None, app_ids: Optional[List[str]] = None, skus: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        item_ids=item_ids,
        app_ids=app_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ExistsAnyUserActiveEntitlementByItemIds)
def exists_any_user_active_entitlement_by_item_ids(user_id: str, item_ids: List[str], namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExistsAnyUserActiveEntitlementByItemIds.create(
        user_id=user_id,
        item_ids=item_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetEntitlement)
def get_entitlement(entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEntitlement.create(
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserAppEntitlementByAppId)
def get_user_app_entitlement_by_app_id(user_id: str, app_id: str, active_only: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementByAppId.create(
        user_id=user_id,
        app_id=app_id,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserAppEntitlementOwnershipByAppId)
def get_user_app_entitlement_ownership_by_app_id(user_id: str, app_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserAppEntitlementOwnershipByAppId.create(
        user_id=user_id,
        app_id=app_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserDistributionReceivers)
def get_user_distribution_receivers(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserDistributionReceivers.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserEntitlement)
def get_user_entitlement(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserEntitlementBySku)
def get_user_entitlement_by_sku(user_id: str, sku: str, entitlement_clazz: Optional[str] = None, active_only: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementBySku.create(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserEntitlementHistories)
def get_user_entitlement_histories(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementHistories.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetUserEntitlementOwnershipBySku)
def get_user_entitlement_ownership_by_sku(user_id: str, sku: str, entitlement_clazz: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEntitlementOwnershipBySku.create(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GrantUserEntitlement)
def grant_user_entitlement(user_id: str, body: Optional[List[EntitlementGrant]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GrantUserEntitlement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicConsumeUserEntitlement)
def public_consume_user_entitlement(user_id: str, entitlement_id: str, body: Optional[EntitlementDecrement] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicConsumeUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicCreateUserDistributionReceiver)
def public_create_user_distribution_receiver(user_id: str, ext_user_id: str, body: Optional[DistributionReceiverCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicCreateUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDeleteUserDistributionReceiver)
def public_delete_user_distribution_receiver(user_id: str, ext_user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeleteUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicDistributeUserDistribution)
def public_distribute_user_distribution(user_id: str, entitlement_id: str, target_namespace: str, ext_user_id: str, quantity: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDistributeUserDistribution.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        target_namespace=target_namespace,
        ext_user_id=ext_user_id,
        quantity=quantity,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicExistsAnyMyActiveEntitlement)
def public_exists_any_my_active_entitlement(item_ids: Optional[List[str]] = None, app_ids: Optional[List[str]] = None, skus: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyMyActiveEntitlement.create(
        item_ids=item_ids,
        app_ids=app_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicExistsAnyUserActiveEntitlement)
def public_exists_any_user_active_entitlement(user_id: str, item_ids: Optional[List[str]] = None, app_ids: Optional[List[str]] = None, skus: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicExistsAnyUserActiveEntitlement.create(
        user_id=user_id,
        item_ids=item_ids,
        app_ids=app_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetEntitlementOwnershipToken)
def public_get_entitlement_ownership_token(item_ids: Optional[List[str]] = None, app_ids: Optional[List[str]] = None, skus: Optional[List[str]] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetEntitlementOwnershipToken.create(
        item_ids=item_ids,
        app_ids=app_ids,
        skus=skus,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetMyAppEntitlementOwnershipByAppId)
def public_get_my_app_entitlement_ownership_by_app_id(app_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyAppEntitlementOwnershipByAppId.create(
        app_id=app_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetMyEntitlementOwnershipBySku)
def public_get_my_entitlement_ownership_by_sku(sku: str, entitlement_clazz: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyEntitlementOwnershipBySku.create(
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserAppEntitlementByAppId)
def public_get_user_app_entitlement_by_app_id(user_id: str, app_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementByAppId.create(
        user_id=user_id,
        app_id=app_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserAppEntitlementOwnershipByAppId)
def public_get_user_app_entitlement_ownership_by_app_id(user_id: str, app_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserAppEntitlementOwnershipByAppId.create(
        user_id=user_id,
        app_id=app_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserDistributionReceivers)
def public_get_user_distribution_receivers(user_id: str, target_namespace: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserDistributionReceivers.create(
        user_id=user_id,
        target_namespace=target_namespace,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserEntitlement)
def public_get_user_entitlement(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserEntitlementBySku)
def public_get_user_entitlement_by_sku(user_id: str, sku: str, entitlement_clazz: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementBySku.create(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetUserEntitlementOwnershipBySku)
def public_get_user_entitlement_ownership_by_sku(user_id: str, sku: str, entitlement_clazz: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserEntitlementOwnershipBySku.create(
        user_id=user_id,
        sku=sku,
        entitlement_clazz=entitlement_clazz,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryUserEntitlements)
def public_query_user_entitlements(user_id: str, entitlement_clazz: Optional[str] = None, app_type: Optional[str] = None, entitlement_name: Optional[str] = None, item_id: Optional[List[str]] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlements.create(
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        app_type=app_type,
        entitlement_name=entitlement_name,
        item_id=item_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicQueryUserEntitlementsByAppType)
def public_query_user_entitlements_by_app_type(user_id: str, app_type: str, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryUserEntitlementsByAppType.create(
        user_id=user_id,
        app_type=app_type,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicUpdateUserDistributionReceiver)
def public_update_user_distribution_receiver(user_id: str, ext_user_id: str, body: Optional[DistributionReceiverCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicUpdateUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryEntitlements)
def query_entitlements(user_id: Optional[str] = None, entitlement_clazz: Optional[str] = None, app_type: Optional[str] = None, entitlement_name: Optional[str] = None, item_id: Optional[List[str]] = None, active_only: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEntitlements.create(
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        app_type=app_type,
        entitlement_name=entitlement_name,
        item_id=item_id,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUserEntitlements)
def query_user_entitlements(user_id: str, entitlement_clazz: Optional[str] = None, app_type: Optional[str] = None, entitlement_name: Optional[str] = None, item_id: Optional[List[str]] = None, active_only: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlements.create(
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        app_type=app_type,
        entitlement_name=entitlement_name,
        item_id=item_id,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUserEntitlementsByAppType)
def query_user_entitlements_by_app_type(user_id: str, app_type: str, active_only: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserEntitlementsByAppType.create(
        user_id=user_id,
        app_type=app_type,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RevokeUserEntitlement)
def revoke_user_entitlement(user_id: str, entitlement_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RevokeUserEntitlements)
def revoke_user_entitlements(user_id: str, entitlement_ids: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserEntitlements.create(
        user_id=user_id,
        entitlement_ids=entitlement_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserDistributionReceiver)
def update_user_distribution_receiver(user_id: str, ext_user_id: str, body: Optional[DistributionReceiverCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserDistributionReceiver.create(
        user_id=user_id,
        ext_user_id=ext_user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateUserEntitlement)
def update_user_entitlement(user_id: str, entitlement_id: str, body: Optional[EntitlementUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateUserEntitlement.create(
        user_id=user_id,
        entitlement_id=entitlement_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
