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

from ..models import ModelSSOPlatformCredentialRequest
from ..models import ModelSSOPlatformCredentialResponse
from ..models import RestErrorResponse

from ..operations.sso_credential import AddSSOLoginPlatformCredential
from ..operations.sso_credential import DeleteSSOLoginPlatformCredentialV3
from ..operations.sso_credential import RetrieveAllSSOLoginPlatformCredentialV3
from ..operations.sso_credential import RetrieveSSOLoginPlatformCredential
from ..operations.sso_credential import UpdateSSOPlatformCredential


@same_doc_as(AddSSOLoginPlatformCredential)
def add_sso_login_platform_credential(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add SSO Platform Credential (AddSSOLoginPlatformCredential)

    This is the API to Add SSO Platform Credential.
    ## Supported platforms:
    - **discourse**
    the ssoUrl of the discourse is the discourse forum url. example: https://forum.example.com
    - **azure with SAML**
    **appId** is an application identifier in IdP, in azure it's called EntityID
    **acsUrl** is an endpoint on the service provider where the identity provider will redirect to with its authentication response. example: /iam/v3/sso/saml/azuresaml/authenticate
    **federationMetadataUrl** is an endpoint on the Identity Provider(IdP) to get IdP federation metadata for service provider to build trust relationship

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: POST

        tags: ["SSO Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSSOPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        201: Created - ModelSSOPlatformCredentialResponse (SSO Credential Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddSSOLoginPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddSSOLoginPlatformCredential)
async def add_sso_login_platform_credential_async(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add SSO Platform Credential (AddSSOLoginPlatformCredential)

    This is the API to Add SSO Platform Credential.
    ## Supported platforms:
    - **discourse**
    the ssoUrl of the discourse is the discourse forum url. example: https://forum.example.com
    - **azure with SAML**
    **appId** is an application identifier in IdP, in azure it's called EntityID
    **acsUrl** is an endpoint on the service provider where the identity provider will redirect to with its authentication response. example: /iam/v3/sso/saml/azuresaml/authenticate
    **federationMetadataUrl** is an endpoint on the Identity Provider(IdP) to get IdP federation metadata for service provider to build trust relationship

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: POST

        tags: ["SSO Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSSOPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        201: Created - ModelSSOPlatformCredentialResponse (SSO Credential Created)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddSSOLoginPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSSOLoginPlatformCredentialV3)
def delete_sso_login_platform_credential_v3(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete SSO Platform Credential (DeleteSSOLoginPlatformCredentialV3)

    This is the API to Delete SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: DELETE

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Delete Process Successful)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSSOLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSSOLoginPlatformCredentialV3)
async def delete_sso_login_platform_credential_v3_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete SSO Platform Credential (DeleteSSOLoginPlatformCredentialV3)

    This is the API to Delete SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: DELETE

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Delete Process Successful)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSSOLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllSSOLoginPlatformCredentialV3)
def retrieve_all_sso_login_platform_credential_v3(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All SSO Platform Credential (RetrieveAllSSOLoginPlatformCredentialV3)

    This is the API to Get All Active SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/sso

        method: GET

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelSSOPlatformCredentialResponse] (All Active SSO Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllSSOLoginPlatformCredentialV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllSSOLoginPlatformCredentialV3)
async def retrieve_all_sso_login_platform_credential_v3_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All SSO Platform Credential (RetrieveAllSSOLoginPlatformCredentialV3)

    This is the API to Get All Active SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/sso

        method: GET

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelSSOPlatformCredentialResponse] (All Active SSO Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllSSOLoginPlatformCredentialV3.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveSSOLoginPlatformCredential)
def retrieve_sso_login_platform_credential(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve SSO Platform Credential (RetrieveSSOLoginPlatformCredential)

    This is the API to Get SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: GET

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelSSOPlatformCredentialResponse (SSO Credential Found)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (SSO Credential Not Found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSSOLoginPlatformCredential.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveSSOLoginPlatformCredential)
async def retrieve_sso_login_platform_credential_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve SSO Platform Credential (RetrieveSSOLoginPlatformCredential)

    This is the API to Get SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: GET

        tags: ["SSO Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelSSOPlatformCredentialResponse (SSO Credential Found)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (SSO Credential Not Found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveSSOLoginPlatformCredential.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSSOPlatformCredential)
def update_sso_platform_credential(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update SSO Platform Credential (UpdateSSOPlatformCredential)

    This is the API to Delete SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: PATCH

        tags: ["SSO Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSSOPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelSSOPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSSOPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSSOPlatformCredential)
async def update_sso_platform_credential_async(
    body: ModelSSOPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update SSO Platform Credential (UpdateSSOPlatformCredential)

    This is the API to Delete SSO Platform Credential.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso

        method: PATCH

        tags: ["SSO Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelSSOPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelSSOPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Invalid request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSSOPlatformCredential.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
