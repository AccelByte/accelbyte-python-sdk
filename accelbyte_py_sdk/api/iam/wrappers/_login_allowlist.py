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

from ..models import ModelLoginAllowlistRequest
from ..models import ModelLoginAllowlistResponse
from ..models import RestErrorResponse

from ..operations.login_allowlist import AdminGetLoginAllowlistV3
from ..operations.login_allowlist import AdminUpdateLoginAllowlistV3


@same_doc_as(AdminGetLoginAllowlistV3)
def admin_get_login_allowlist_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get login allowlist (AdminGetLoginAllowlistV3)

    This endpoint return login allowlist configuration from specific namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/loginAllowlist

        method: GET

        tags: ["Login Allowlist"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelLoginAllowlistResponse (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetLoginAllowlistV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetLoginAllowlistV3)
async def admin_get_login_allowlist_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get login allowlist (AdminGetLoginAllowlistV3)

    This endpoint return login allowlist configuration from specific namespace.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/loginAllowlist

        method: GET

        tags: ["Login Allowlist"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelLoginAllowlistResponse (Operation succeeded)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetLoginAllowlistV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateLoginAllowlistV3)
def admin_update_login_allowlist_v3(
    body: ModelLoginAllowlistRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update login allowlist (AdminUpdateLoginAllowlistV3)

    This endpoint update login allowlist configuration from specific game namespace.
    roleIds: are list of role that allowed to login
    Note: only accept game namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/loginAllowlist

        method: PUT

        tags: ["Login Allowlist"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLoginAllowlistRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 10240: namespace is not game namespace | 10470: role is empty)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateLoginAllowlistV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateLoginAllowlistV3)
async def admin_update_login_allowlist_v3_async(
    body: ModelLoginAllowlistRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update login allowlist (AdminUpdateLoginAllowlistV3)

    This endpoint update login allowlist configuration from specific game namespace.
    roleIds: are list of role that allowed to login
    Note: only accept game namespace

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/loginAllowlist

        method: PUT

        tags: ["Login Allowlist"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelLoginAllowlistRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body | 10240: namespace is not game namespace | 10470: role is empty)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateLoginAllowlistV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
