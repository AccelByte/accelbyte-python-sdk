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

from ..models import ApiAccountCreateRequest
from ..models import ApiAccountCreateResponse
from ..models import ApiAccountLinkRequest
from ..models import ApiAccountLinkResponse
from ..models import ApiAccountLinkTokenResponse
from ..models import ApiAccountResponse
from ..models import ResponseErrorResponse

from ..operations.account import AccountGet
from ..operations.account import AdminAccountCreate
from ..operations.account import AdminAccountGet
from ..operations.account import AdminAccountLink
from ..operations.account import AdminAccountLinkTokenGet


@same_doc_as(AccountGet)
def account_get(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the account associated with the namespace (AccountGet)

    Required Permission: NAMESPACE:{namespace}:AMS:ACCOUNT [READ]

    Properties:
        url: /ams/v1/namespaces/{namespace}/account

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AccountGet.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AccountGet)
async def account_get_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the account associated with the namespace (AccountGet)

    Required Permission: NAMESPACE:{namespace}:AMS:ACCOUNT [READ]

    Properties:
        url: /ams/v1/namespaces/{namespace}/account

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AccountGet.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAccountCreate)
def admin_account_create(
    body: ApiAccountCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new AMS account (AdminAccountCreate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account

        method: POST

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAccountCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiAccountCreateResponse (account Created)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountCreate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAccountCreate)
async def admin_account_create_async(
    body: ApiAccountCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create a new AMS account (AdminAccountCreate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account

        method: POST

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAccountCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiAccountCreateResponse (account Created)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountCreate.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAccountGet)
def admin_account_get(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the account associated with the namespace (AdminAccountGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountGet.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAccountGet)
async def admin_account_get_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the account associated with the namespace (AdminAccountGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountGet.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAccountLink)
def admin_account_link(
    body: ApiAccountLinkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """link an account to a namespace (AdminAccountLink)

    This route will attempt to register the account to namespace linkage in AMS and requires a valid account link token. This route fails if an account is already linked

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account/link

        method: POST

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAccountLinkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiAccountLinkResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountLink.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAccountLink)
async def admin_account_link_async(
    body: ApiAccountLinkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """link an account to a namespace (AdminAccountLink)

    This route will attempt to register the account to namespace linkage in AMS and requires a valid account link token. This route fails if an account is already linked

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account/link

        method: POST

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAccountLinkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiAccountLinkResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountLink.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAccountLinkTokenGet)
def admin_account_link_token_get(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a link to account token (AdminAccountLinkTokenGet)

    The link token returned can be used to connect another namespace to the account in which the provided namespace is linked. This route fails if there is no account linked to the specified namespace.

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account/link

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountLinkTokenResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountLinkTokenGet.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAccountLinkTokenGet)
async def admin_account_link_token_get_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a link to account token (AdminAccountLinkTokenGet)

    The link token returned can be used to connect another namespace to the account in which the provided namespace is linked. This route fails if there is no account linked to the specified namespace.

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/account/link

        method: GET

        tags: ["Account"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAccountLinkTokenResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (account not linked)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAccountLinkTokenGet.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
