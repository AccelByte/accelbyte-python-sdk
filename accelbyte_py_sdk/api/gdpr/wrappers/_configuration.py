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

from ..models import DtoServiceConfigurationUpdateRequest
from ..models import DtoServicesConfigurationResponse
from ..models import ResponseError

from ..operations.configuration import AdminGetServicesConfiguration
from ..operations.configuration import AdminResetServicesConfiguration
from ..operations.configuration import AdminUpdateServicesConfiguration
from ..operations.configuration import DeleteAdminEmailConfiguration
from ..operations.configuration import GetAdminEmailConfiguration
from ..operations.configuration import SaveAdminEmailConfiguration
from ..operations.configuration import UpdateAdminEmailConfiguration


@same_doc_as(AdminGetServicesConfiguration)
def admin_get_services_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Registered Services Configuration (AdminGetServicesConfiguration)

    Get Registered Services Configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoServicesConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetServicesConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetServicesConfiguration)
async def admin_get_services_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Registered Services Configuration (AdminGetServicesConfiguration)

    Get Registered Services Configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [READ]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoServicesConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetServicesConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetServicesConfiguration)
def admin_reset_services_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset Registered Services Configuration (AdminResetServicesConfiguration)

    [TEST FACILITY ONLY]
    Reset Registered Services Configuration to use the default configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations/reset

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminResetServicesConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetServicesConfiguration)
async def admin_reset_services_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset Registered Services Configuration (AdminResetServicesConfiguration)

    [TEST FACILITY ONLY]
    Reset Registered Services Configuration to use the default configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [DELETE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations/reset

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminResetServicesConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateServicesConfiguration)
def admin_update_services_configuration(
    body: DtoServiceConfigurationUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Registered Services Configuration (AdminUpdateServicesConfiguration)

    Update Registered Services Configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoServiceConfigurationUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoServiceConfigurationUpdateRequest (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateServicesConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateServicesConfiguration)
async def admin_update_services_configuration_async(
    body: DtoServiceConfigurationUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Registered Services Configuration (AdminUpdateServicesConfiguration)

    Update Registered Services Configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:GDPR:CONFIGURATION [UPDATE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/configurations

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DtoServiceConfigurationUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DtoServiceConfigurationUpdateRequest (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateServicesConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAdminEmailConfiguration)
def delete_admin_email_configuration(
    emails: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin emails configurations (DeleteAdminEmailConfiguration)

    Delete a list of admin email addresses to stop receiving personal data request notification.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        emails: (emails) REQUIRED List[str] in query

    Responses:
        204: No Content - (No Content)

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
    request = DeleteAdminEmailConfiguration.create(
        emails=emails,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAdminEmailConfiguration)
async def delete_admin_email_configuration_async(
    emails: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin emails configurations (DeleteAdminEmailConfiguration)

    Delete a list of admin email addresses to stop receiving personal data request notification.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [DELETE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        emails: (emails) REQUIRED List[str] in query

    Responses:
        204: No Content - (No Content)

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
    request = DeleteAdminEmailConfiguration.create(
        emails=emails,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAdminEmailConfiguration)
def get_admin_email_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin email addresses configuration (GetAdminEmailConfiguration)

    Get list of admin email address configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAdminEmailConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAdminEmailConfiguration)
async def get_admin_email_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get admin email addresses configuration (GetAdminEmailConfiguration)

    Get list of admin email address configuration.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [READ]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[str] (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAdminEmailConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SaveAdminEmailConfiguration)
def save_admin_email_configuration(
    body: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add admin email address configuration (SaveAdminEmailConfiguration)

    Add admin email address for receiving personal data request notification.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SaveAdminEmailConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SaveAdminEmailConfiguration)
async def save_admin_email_configuration_async(
    body: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add admin email address configuration (SaveAdminEmailConfiguration)

    Add admin email address for receiving personal data request notification.


    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]` and scope `account`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [CREATE]

    Required Scope(s):
        - account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SaveAdminEmailConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAdminEmailConfiguration)
def update_admin_email_configuration(
    body: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update admin email address configuration (UpdateAdminEmailConfiguration)

    Update admin email address for receiving personal data request notification.

    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateAdminEmailConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAdminEmailConfiguration)
async def update_admin_email_configuration_async(
    body: List[str],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update admin email address configuration (UpdateAdminEmailConfiguration)

    Update admin email address for receiving personal data request notification.

    Required permission `ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EMAIL:CONFIGURATION [UPDATE]

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/emails/configurations

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[str] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateAdminEmailConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
