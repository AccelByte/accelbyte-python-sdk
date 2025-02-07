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

from ..models import ModelsCreateConfigRequest
from ..models import ModelsCreateConfigResponse
from ..models import ModelsGetConfigResponse
from ..models import ModelsUpdateConfigRequest
from ..models import ModelsUpdateConfigResponse
from ..models import RestapiErrorResponseV1

from ..operations.third_party import AdminCreateThirdPartyConfig
from ..operations.third_party import AdminDeleteThirdPartyConfig
from ..operations.third_party import AdminGetThirdPartyConfig
from ..operations.third_party import AdminUpdateThirdPartyConfig


@deprecated
@same_doc_as(AdminCreateThirdPartyConfig)
def admin_create_third_party_config(
    body: ModelsCreateConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Third Party Steam Config (adminCreateThirdPartyConfig)

    Create third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: POST

        tags: ["thirdParty"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateConfigResponse (Created)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        409: Conflict - RestapiErrorResponseV1 (Conflict)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateThirdPartyConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminCreateThirdPartyConfig)
async def admin_create_third_party_config_async(
    body: ModelsCreateConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Third Party Steam Config (adminCreateThirdPartyConfig)

    Create third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: POST

        tags: ["thirdParty"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateConfigResponse (Created)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        409: Conflict - RestapiErrorResponseV1 (Conflict)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateThirdPartyConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeleteThirdPartyConfig)
def admin_delete_third_party_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Third Party Steam Config (adminDeleteThirdPartyConfig)

    Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [DELETE]` with scope `social`

    delete third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: DELETE

        tags: ["thirdParty"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - str (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteThirdPartyConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteThirdPartyConfig)
async def admin_delete_third_party_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Third Party Steam Config (adminDeleteThirdPartyConfig)

    Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [DELETE]` with scope `social`

    delete third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: DELETE

        tags: ["thirdParty"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - str (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteThirdPartyConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetThirdPartyConfig)
def admin_get_third_party_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Third Party Steam Config (adminGetThirdPartyConfig)

    Get third party config for specified namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: GET

        tags: ["thirdParty"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetConfigResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetThirdPartyConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetThirdPartyConfig)
async def admin_get_third_party_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Third Party Steam Config (adminGetThirdPartyConfig)

    Get third party config for specified namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: GET

        tags: ["thirdParty"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetConfigResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetThirdPartyConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUpdateThirdPartyConfig)
def admin_update_third_party_config(
    body: ModelsUpdateConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Third Party Steam Config (adminUpdateThirdPartyConfig)

    Update third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: PUT

        tags: ["thirdParty"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateConfigResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateThirdPartyConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateThirdPartyConfig)
async def admin_update_third_party_config_async(
    body: ModelsUpdateConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Third Party Steam Config (adminUpdateThirdPartyConfig)

    Update third party config in a namespace.

    Properties:
        url: /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam

        method: PUT

        tags: ["thirdParty"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateConfigResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateThirdPartyConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
