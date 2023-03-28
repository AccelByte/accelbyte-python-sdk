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

from ..models import ApimodelsConfigurationTemplateResponse
from ..models import ApimodelsConfigurationTemplatesResponse
from ..models import ApimodelsCreateConfigurationTemplateRequest
from ..models import ApimodelsUpdateConfigurationTemplateRequest
from ..models import ModelsDSMConfigRecord
from ..models import ResponseError

from ..operations.configuration_template import AdminCreateConfigurationTemplateV1
from ..operations.configuration_template import AdminDeleteConfigurationTemplateV1
from ..operations.configuration_template import AdminGetAllConfigurationTemplatesV1
from ..operations.configuration_template import AdminGetConfigurationTemplateV1
from ..operations.configuration_template import AdminGetDSMCConfiguration
from ..operations.configuration_template import AdminSyncDSMCConfiguration
from ..operations.configuration_template import AdminUpdateConfigurationTemplateV1


@same_doc_as(AdminCreateConfigurationTemplateV1)
def admin_create_configuration_template_v1(
    body: ApimodelsCreateConfigurationTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [CREATE] (adminCreateConfigurationTemplateV1)

    Create template configuration to be applied across party and session.
    Session configuration mandatory :
    - name
    - joinability (example value : OPEN, CLOSED, INVITE_ONLY)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greather or equal 0)
    - MaxPlayers (must greather than 0)
    - InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configuration

        method: POST

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateConfigurationTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsConfigurationTemplateResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateConfigurationTemplateV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateConfigurationTemplateV1)
async def admin_create_configuration_template_v1_async(
    body: ApimodelsCreateConfigurationTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [CREATE] (adminCreateConfigurationTemplateV1)

    Create template configuration to be applied across party and session.
    Session configuration mandatory :
    - name
    - joinability (example value : OPEN, CLOSED, INVITE_ONLY)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greather or equal 0)
    - MaxPlayers (must greather than 0)
    - InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configuration

        method: POST

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateConfigurationTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsConfigurationTemplateResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateConfigurationTemplateV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteConfigurationTemplateV1)
def admin_delete_configuration_template_v1(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [DELETE] (adminDeleteConfigurationTemplateV1)

    Delete a template configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: DELETE

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteConfigurationTemplateV1.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteConfigurationTemplateV1)
async def admin_delete_configuration_template_v1_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [DELETE] (adminDeleteConfigurationTemplateV1)

    Delete a template configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: DELETE

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteConfigurationTemplateV1.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAllConfigurationTemplatesV1)
def admin_get_all_configuration_templates_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration templates. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetAllConfigurationTemplatesV1)

    Get all template configurations in specified namespace.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelsConfigurationTemplatesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAllConfigurationTemplatesV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllConfigurationTemplatesV1)
async def admin_get_all_configuration_templates_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration templates. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetAllConfigurationTemplatesV1)

    Get all template configurations in specified namespace.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelsConfigurationTemplatesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetAllConfigurationTemplatesV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetConfigurationTemplateV1)
def admin_get_configuration_template_v1(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetConfigurationTemplateV1)

    Get a template configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationTemplateResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetConfigurationTemplateV1.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigurationTemplateV1)
async def admin_get_configuration_template_v1_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetConfigurationTemplateV1)

    Get a template configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationTemplateResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetConfigurationTemplateV1.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetDSMCConfiguration)
def admin_get_dsmc_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dsmc configuration . Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetDSMCConfiguration)

    Get a dsmc configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/dsconfigs

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetDSMCConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetDSMCConfiguration)
async def admin_get_dsmc_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dsmc configuration . Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminGetDSMCConfiguration)

    Get a dsmc configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/dsconfigs

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetDSMCConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSyncDSMCConfiguration)
def admin_sync_dsmc_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync dsmc configuration . Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminSyncDSMCConfiguration)

    sync dsmc configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/dsconfigs/sync

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSyncDSMCConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSyncDSMCConfiguration)
async def admin_sync_dsmc_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync dsmc configuration . Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [READ] (adminSyncDSMCConfiguration)

    sync dsmc configuration.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/dsconfigs/sync

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSyncDSMCConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateConfigurationTemplateV1)
def admin_update_configuration_template_v1(
    body: ApimodelsUpdateConfigurationTemplateRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [UPDATE] (adminUpdateConfigurationTemplateV1)

    Update template configuration
    Session configuration mandatory :
    - name
    - joinability (example value : OPEN, CLOSED, INVITE_ONLY)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greather or equal 0)
    - MaxPlayers (must greather than 0)
    - InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: PUT

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateConfigurationTemplateRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationTemplateResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateConfigurationTemplateV1.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateConfigurationTemplateV1)
async def admin_update_configuration_template_v1_async(
    body: ApimodelsUpdateConfigurationTemplateRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update configuration template. Requires ADMIN:NAMESPACE:{namespace}:SESSION:CONFIGURATION [UPDATE] (adminUpdateConfigurationTemplateV1)

    Update template configuration
    Session configuration mandatory :
    - name
    - joinability (example value : OPEN, CLOSED, INVITE_ONLY)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greather or equal 0)
    - MaxPlayers (must greather than 0)
    - InviteTimeout (must greather or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greather or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/configurations/{name}

        method: PUT

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateConfigurationTemplateRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigurationTemplateResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateConfigurationTemplateV1.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
