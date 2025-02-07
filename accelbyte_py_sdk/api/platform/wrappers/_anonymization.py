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
from ....core import same_doc_as


from ..operations.anonymization import AnonymizeCampaign
from ..operations.anonymization import AnonymizeEntitlement
from ..operations.anonymization import AnonymizeFulfillment
from ..operations.anonymization import AnonymizeIntegration
from ..operations.anonymization import AnonymizeOrder
from ..operations.anonymization import AnonymizePayment
from ..operations.anonymization import AnonymizeRevocation
from ..operations.anonymization import AnonymizeSubscription
from ..operations.anonymization import AnonymizeWallet


@same_doc_as(AnonymizeCampaign)
def anonymize_campaign(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Anonymize campaign (anonymizeCampaign)

    Anonymize campaign. At current it will only anonymize redeem history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/campaign

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeCampaign.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeCampaign)
async def anonymize_campaign_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Anonymize campaign (anonymizeCampaign)

    Anonymize campaign. At current it will only anonymize redeem history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/campaign

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeCampaign.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeEntitlement)
def anonymize_entitlement(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize entitlement (anonymizeEntitlement)

    Anonymize entitlement. At current it will only anonymize entitlement, entitlement history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeEntitlement.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeEntitlement)
async def anonymize_entitlement_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize entitlement (anonymizeEntitlement)

    Anonymize entitlement. At current it will only anonymize entitlement, entitlement history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeEntitlement.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeFulfillment)
def anonymize_fulfillment(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize fulfillment (anonymizeFulfillment)

    Anonymize fulfillment. At current it will only anonymize fulfillment history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeFulfillment.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeFulfillment)
async def anonymize_fulfillment_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize fulfillment (anonymizeFulfillment)

    Anonymize fulfillment. At current it will only anonymize fulfillment history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/fulfillment

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeFulfillment.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeIntegration)
def anonymize_integration(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize integrations (anonymizeIntegration)

    Anonymize integrations. At current it will only anonymize iap histories.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/integrations

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeIntegration.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeIntegration)
async def anonymize_integration_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize integrations (anonymizeIntegration)

    Anonymize integrations. At current it will only anonymize iap histories.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/integrations

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeIntegration.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeOrder)
def anonymize_order(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize order (anonymizeOrder)

    Anonymize order. At current it will only anonymize order, order history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/orders

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeOrder.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeOrder)
async def anonymize_order_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize order (anonymizeOrder)

    Anonymize order. At current it will only anonymize order, order history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/orders

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeOrder.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizePayment)
def anonymize_payment(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize payment (anonymizePayment)

    Anonymize payment. At current it will only anonymize payment order, payment order history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizePayment.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizePayment)
async def anonymize_payment_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize payment (anonymizePayment)

    Anonymize payment. At current it will only anonymize payment order, payment order history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/payment

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizePayment.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeRevocation)
def anonymize_revocation(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize revocation (anonymizeRevocation)

    Anonymize revocation. At current it will only anonymize revocation history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeRevocation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeRevocation)
async def anonymize_revocation_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize revocation (anonymizeRevocation)

    Anonymize revocation. At current it will only anonymize revocation history.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/revocation

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeRevocation.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeSubscription)
def anonymize_subscription(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize subscription (anonymizeSubscription)

    Anonymize subscription. At current it will anonymize subscription, billing history and subscription activity.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeSubscription.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeSubscription)
async def anonymize_subscription_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize subscription (anonymizeSubscription)

    Anonymize subscription. At current it will anonymize subscription, billing history and subscription activity.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeSubscription.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AnonymizeWallet)
def anonymize_wallet(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize wallet (anonymizeWallet)

    Anonymize wallet. At current it will only anonymize wallet, wallet transaction.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/wallets

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeWallet.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AnonymizeWallet)
async def anonymize_wallet_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """anonymize wallet (anonymizeWallet)

    Anonymize wallet. At current it will only anonymize wallet, wallet transaction.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/wallets

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Anonymize successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AnonymizeWallet.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
