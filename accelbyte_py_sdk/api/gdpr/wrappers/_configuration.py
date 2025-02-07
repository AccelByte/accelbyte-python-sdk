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

from ..operations.configuration import (
    AdminGetPlatformAccountClosureServicesConfiguration,
)
from ..operations.configuration import AdminGetServicesConfiguration
from ..operations.configuration import (
    AdminResetPlatformAccountClosureServicesConfiguration,
)
from ..operations.configuration import AdminResetServicesConfiguration
from ..operations.configuration import (
    AdminUpdatePlatformAccountClosureServicesConfiguration,
)
from ..operations.configuration import AdminUpdateServicesConfiguration
from ..operations.configuration import DeleteAdminEmailConfiguration
from ..operations.configuration import GetAdminEmailConfiguration
from ..operations.configuration import SaveAdminEmailConfiguration
from ..operations.configuration import UpdateAdminEmailConfiguration


@same_doc_as(AdminGetPlatformAccountClosureServicesConfiguration)
def admin_get_platform_account_closure_services_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Registered Platform Account Closure Services Configuration (AdminGetPlatformAccountClosureServicesConfiguration)

    Get registered platform account closure services configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureServicesConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlatformAccountClosureServicesConfiguration)
async def admin_get_platform_account_closure_services_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Registered Platform Account Closure Services Configuration (AdminGetPlatformAccountClosureServicesConfiguration)

    Get registered platform account closure services configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlatformAccountClosureServicesConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetServicesConfiguration)
def admin_get_services_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Registered Services Configuration (AdminGetServicesConfiguration)

    Get Registered Services Configuration.
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetServicesConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetPlatformAccountClosureServicesConfiguration)
def admin_reset_platform_account_closure_services_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset Registered Platform Account Closure Services Configuration (AdminResetPlatformAccountClosureServicesConfiguration)

    **[TEST FACILITY ONLY]**
    Reset registered platform account closure services configuration to use the default configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPlatformAccountClosureServicesConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetPlatformAccountClosureServicesConfiguration)
async def admin_reset_platform_account_closure_services_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset Registered Platform Account Closure Services Configuration (AdminResetPlatformAccountClosureServicesConfiguration)

    **[TEST FACILITY ONLY]**
    Reset registered platform account closure services configuration to use the default configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetPlatformAccountClosureServicesConfiguration.create(
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

    **[TEST FACILITY ONLY]**
    Reset Registered Services Configuration to use the default configuration.
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    **[TEST FACILITY ONLY]**
    Reset Registered Services Configuration to use the default configuration.
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetServicesConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdatePlatformAccountClosureServicesConfiguration)
def admin_update_platform_account_closure_services_configuration(
    body: DtoServiceConfigurationUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Registered Platform Account Closure Services Configuration (AdminUpdatePlatformAccountClosureServicesConfiguration)

    Update registered platform account closure services configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdatePlatformAccountClosureServicesConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdatePlatformAccountClosureServicesConfiguration)
async def admin_update_platform_account_closure_services_configuration_async(
    body: DtoServiceConfigurationUpdateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Registered Platform Account Closure Services Configuration (AdminUpdatePlatformAccountClosureServicesConfiguration)

    Update registered platform account closure services configuration.
    Scope: account

    Properties:
        url: /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdatePlatformAccountClosureServicesConfiguration.create(
        body=body,
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    Scope: account

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAdminEmailConfiguration.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
