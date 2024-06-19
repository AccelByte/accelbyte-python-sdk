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

from ..models import Ownership
from ..models import PlatformOwnership
from ..models import PsnEntitlementOwnershipRequest
from ..models import XblEntitlementOwnershipRequest

from ..operations.platform import GetPsnEntitlementOwnership
from ..operations.platform import GetXboxEntitlementOwnership


@same_doc_as(GetPsnEntitlementOwnership)
def get_psn_entitlement_ownership(
    entitlement_label: str,
    body: Optional[PsnEntitlementOwnershipRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user psn entitlement ownership by entitlement label (getPsnEntitlementOwnership)

    Get user psn entitlement ownership by entitlement label.

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership

        method: POST

        tags: ["Platform"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PsnEntitlementOwnershipRequest in body

        entitlement_label: (entitlementLabel) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Ownership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPsnEntitlementOwnership.create(
        entitlement_label=entitlement_label,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPsnEntitlementOwnership)
async def get_psn_entitlement_ownership_async(
    entitlement_label: str,
    body: Optional[PsnEntitlementOwnershipRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user psn entitlement ownership by entitlement label (getPsnEntitlementOwnership)

    Get user psn entitlement ownership by entitlement label.

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership

        method: POST

        tags: ["Platform"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PsnEntitlementOwnershipRequest in body

        entitlement_label: (entitlementLabel) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Ownership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPsnEntitlementOwnership.create(
        entitlement_label=entitlement_label,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetXboxEntitlementOwnership)
def get_xbox_entitlement_ownership(
    product_sku: str,
    body: Optional[XblEntitlementOwnershipRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Xbox entitlement ownership by product sku. (getXboxEntitlementOwnership)

    Get Xbox entitlement ownership by product sku.

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership

        method: POST

        tags: ["Platform"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblEntitlementOwnershipRequest in body

        namespace: (namespace) REQUIRED str in path

        product_sku: (productSku) REQUIRED str in path

    Responses:
        200: OK - PlatformOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetXboxEntitlementOwnership.create(
        product_sku=product_sku,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetXboxEntitlementOwnership)
async def get_xbox_entitlement_ownership_async(
    product_sku: str,
    body: Optional[XblEntitlementOwnershipRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Xbox entitlement ownership by product sku. (getXboxEntitlementOwnership)

    Get Xbox entitlement ownership by product sku.

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership

        method: POST

        tags: ["Platform"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblEntitlementOwnershipRequest in body

        namespace: (namespace) REQUIRED str in path

        product_sku: (productSku) REQUIRED str in path

    Responses:
        200: OK - PlatformOwnership (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetXboxEntitlementOwnership.create(
        product_sku=product_sku,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
