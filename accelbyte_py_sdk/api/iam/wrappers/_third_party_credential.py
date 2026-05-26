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

from ..models import ModelCheckAvailabilityResponse
from ..models import ModelPlatformDefaultsResponse
from ..models import ModelPlatformDomainDeleteRequest
from ..models import ModelPlatformDomainPatchRequest
from ..models import ModelPlatformDomainResponse
from ..models import ModelPlatformDomainUpdateRequest
from ..models import ModelPublicThirdPartyPlatformInfo
from ..models import ModelThirdPartyLoginPlatformCredentialRequest
from ..models import ModelThirdPartyLoginPlatformCredentialResponse
from ..models import RestErrorResponse

from ..operations.third_party_credential import AddThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import (
    AdminCheckThirdPartyLoginPlatformAvailabilityV3,
)
from ..operations.third_party_credential import (
    DeleteThirdPartyLoginPlatformCredentialV3,
)
from ..operations.third_party_credential import DeleteThirdPartyLoginPlatformDomainV3
from ..operations.third_party_credential import GetThirdPartyLoginPlatformDefaultsV3
from ..operations.third_party_credential import (
    PartialUpdateThirdPartyLoginPlatformDomainV3,
)
from ..operations.third_party_credential import RetrieveActiveOIDCClientsPublicV3
from ..operations.third_party_credential import (
    RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3,
)
from ..operations.third_party_credential import (
    RetrieveAllActiveThirdPartyLoginPlatformCredentialV3,
)
from ..operations.third_party_credential import (
    RetrieveAllThirdPartyLoginPlatformCredentialV3,
)
from ..operations.third_party_credential import (
    RetrieveThirdPartyLoginPlatformCredentialV3,
)
from ..operations.third_party_credential import (
    UpdateThirdPartyLoginPlatformCredentialV3,
)
from ..operations.third_party_credential import UpdateThirdPartyLoginPlatformDomainV3


@same_doc_as(AddThirdPartyLoginPlatformCredentialV3)
def add_third_party_login_platform_credential_v3(
    body: ModelThirdPartyLoginPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Third Party Platform Credential (AddThirdPartyLoginPlatformCredentialV3)

    Creates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: POST

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelThirdPartyLoginPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        201: Created - ModelThirdPartyLoginPlatformCredentialResponse (Third Party Credential Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddThirdPartyLoginPlatformCredentialV3)
async def add_third_party_login_platform_credential_v3_async(
    body: ModelThirdPartyLoginPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add Third Party Platform Credential (AddThirdPartyLoginPlatformCredentialV3)

    Creates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: POST

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelThirdPartyLoginPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        201: Created - ModelThirdPartyLoginPlatformCredentialResponse (Third Party Credential Created)

        400: Bad Request - RestErrorResponse (20019: unable to parse request body)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCheckThirdPartyLoginPlatformAvailabilityV3)
def admin_check_third_party_login_platform_availability_v3(
    platform_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Check 3rd party platform availability (AdminCheckThirdPartyLoginPlatformAvailabilityV3)

    This is the API to check specific 3rd party platform availability.
    Passing platform group name or it's member will return same platform availability data
    Supported third party platform and platform group:
    - PSN group(psn)
    - ps4web
    - ps4
    - ps5

    Properties:
        url: /iam/v3/admin/platforms/{platformId}/availability

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelCheckAvailabilityResponse (Platform Availability Check Retrieved)

        400: Bad Request - RestErrorResponse (10226: third party platform is not supported)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminCheckThirdPartyLoginPlatformAvailabilityV3.create(
        platform_id=platform_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCheckThirdPartyLoginPlatformAvailabilityV3)
async def admin_check_third_party_login_platform_availability_v3_async(
    platform_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Check 3rd party platform availability (AdminCheckThirdPartyLoginPlatformAvailabilityV3)

    This is the API to check specific 3rd party platform availability.
    Passing platform group name or it's member will return same platform availability data
    Supported third party platform and platform group:
    - PSN group(psn)
    - ps4web
    - ps4
    - ps5

    Properties:
        url: /iam/v3/admin/platforms/{platformId}/availability

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelCheckAvailabilityResponse (Platform Availability Check Retrieved)

        400: Bad Request - RestErrorResponse (10226: third party platform is not supported)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)
    """
    request = AdminCheckThirdPartyLoginPlatformAvailabilityV3.create(
        platform_id=platform_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteThirdPartyLoginPlatformCredentialV3)
def delete_third_party_login_platform_credential_v3(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Third Party Platform Credential (DeleteThirdPartyLoginPlatformCredentialV3)

    Deletes the third-party platform credential for the specified platform.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: DELETE

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Delete Process Successful)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteThirdPartyLoginPlatformCredentialV3)
async def delete_third_party_login_platform_credential_v3_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Third Party Platform Credential (DeleteThirdPartyLoginPlatformCredentialV3)

    Deletes the third-party platform credential for the specified platform.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: DELETE

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Delete Process Successful)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteThirdPartyLoginPlatformDomainV3)
def delete_third_party_login_platform_domain_v3(
    body: ModelPlatformDomainDeleteRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unregister Third Party Platform Credential Domain (DeleteThirdPartyLoginPlatformDomainV3)

    This is the API to unregister 3rd Platform domain.
    If there is a ssoGroups in request body, then this request wil only delete the sso group from the target domain, it will not delete domain.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: DELETE

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainDeleteRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Domain unregister succeeded)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteThirdPartyLoginPlatformDomainV3)
async def delete_third_party_login_platform_domain_v3_async(
    body: ModelPlatformDomainDeleteRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unregister Third Party Platform Credential Domain (DeleteThirdPartyLoginPlatformDomainV3)

    This is the API to unregister 3rd Platform domain.
    If there is a ssoGroups in request body, then this request wil only delete the sso group from the target domain, it will not delete domain.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: DELETE

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainDeleteRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        204: No Content - (Domain unregister succeeded)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetThirdPartyLoginPlatformDefaultsV3)
def get_third_party_login_platform_defaults_v3(
    platform_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Third Party Platform Defaults (GetThirdPartyLoginPlatformDefaultsV3)

    Returns the built-in default configuration values for a given platform.

    Properties:
        url: /iam/v3/admin/platforms/{platformId}/defaults

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDefaultsResponse (Platform defaults retrieved)
    """
    request = GetThirdPartyLoginPlatformDefaultsV3.create(
        platform_id=platform_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetThirdPartyLoginPlatformDefaultsV3)
async def get_third_party_login_platform_defaults_v3_async(
    platform_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Third Party Platform Defaults (GetThirdPartyLoginPlatformDefaultsV3)

    Returns the built-in default configuration values for a given platform.

    Properties:
        url: /iam/v3/admin/platforms/{platformId}/defaults

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDefaultsResponse (Platform defaults retrieved)
    """
    request = GetThirdPartyLoginPlatformDefaultsV3.create(
        platform_id=platform_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PartialUpdateThirdPartyLoginPlatformDomainV3)
def partial_update_third_party_login_platform_domain_v3(
    body: ModelPlatformDomainPatchRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Partial Update Third Party Platform Credential Domain (PartialUpdateThirdPartyLoginPlatformDomainV3)

    This is the API to patch update 3rd Platform domain.
    This API is a create or partial-update behavior. If it is update, it is a partial update behavior.

    **Request body:** Partial domain configuration update. Only provided fields will be updated.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: PATCH

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainPatchRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDomainResponse (Domain config partial updated)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PartialUpdateThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PartialUpdateThirdPartyLoginPlatformDomainV3)
async def partial_update_third_party_login_platform_domain_v3_async(
    body: ModelPlatformDomainPatchRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Partial Update Third Party Platform Credential Domain (PartialUpdateThirdPartyLoginPlatformDomainV3)

    This is the API to patch update 3rd Platform domain.
    This API is a create or partial-update behavior. If it is update, it is a partial update behavior.

    **Request body:** Partial domain configuration update. Only provided fields will be updated.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: PATCH

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainPatchRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDomainResponse (Domain config partial updated)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PartialUpdateThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveActiveOIDCClientsPublicV3)
def retrieve_active_oidc_clients_public_v3(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Active OIDC Platform Credentials by Client ID (RetrieveActiveOIDCClientsPublicV3)

    Retrieves all active OIDC platform credentials filtered by client ID.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) REQUIRED str in query

    Responses:
        200: OK - List[ModelPublicThirdPartyPlatformInfo] (All Active OIDC Credential Retrieved)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveActiveOIDCClientsPublicV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveActiveOIDCClientsPublicV3)
async def retrieve_active_oidc_clients_public_v3_async(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Active OIDC Platform Credentials by Client ID (RetrieveActiveOIDCClientsPublicV3)

    Retrieves all active OIDC platform credentials filtered by client ID.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/clients/oidc

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        client_id: (clientId) REQUIRED str in query

    Responses:
        200: OK - List[ModelPublicThirdPartyPlatformInfo] (All Active OIDC Credential Retrieved)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveActiveOIDCClientsPublicV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)
def retrieve_all_active_third_party_login_platform_credential_public_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Active Third Party Platform Credentials (RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)

    Retrieves all active third-party platform credentials for the namespace.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/clients/active

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelPublicThirdPartyPlatformInfo] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)
async def retrieve_all_active_third_party_login_platform_credential_public_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Active Third Party Platform Credentials (RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)

    Retrieves all active third-party platform credentials for the namespace.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/platforms/clients/active

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelPublicThirdPartyPlatformInfo] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)
def retrieve_all_active_third_party_login_platform_credential_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Active Third Party Platform Active Credential (RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)

    Retrieves all active third-party platform credentials.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelThirdPartyLoginPlatformCredentialResponse] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)
async def retrieve_all_active_third_party_login_platform_credential_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Active Third Party Platform Active Credential (RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)

    Retrieves all active third-party platform credentials.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelThirdPartyLoginPlatformCredentialResponse] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveAllThirdPartyLoginPlatformCredentialV3)
def retrieve_all_third_party_login_platform_credential_v3(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Third Party Platform Credential (RetrieveAllThirdPartyLoginPlatformCredentialV3)

    Retrieves all third-party platform credentials.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/all/clients

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelThirdPartyLoginPlatformCredentialResponse] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveAllThirdPartyLoginPlatformCredentialV3)
async def retrieve_all_third_party_login_platform_credential_v3_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get All Third Party Platform Credential (RetrieveAllThirdPartyLoginPlatformCredentialV3)

    Retrieves all third-party platform credentials.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/all/clients

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelThirdPartyLoginPlatformCredentialResponse] (All Active Third Party Credential Retrieved)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveAllThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveThirdPartyLoginPlatformCredentialV3)
def retrieve_third_party_login_platform_credential_v3(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Third Party Platform Credential (RetrieveThirdPartyLoginPlatformCredentialV3)

    Retrieves the third-party platform credential for the specified platform.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (Third Party Credential Found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveThirdPartyLoginPlatformCredentialV3)
async def retrieve_third_party_login_platform_credential_v3_async(
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Third Party Platform Credential (RetrieveThirdPartyLoginPlatformCredentialV3)

    Retrieves the third-party platform credential for the specified platform.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: GET

        tags: ["Third Party Credential"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (Third Party Credential Found)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetrieveThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateThirdPartyLoginPlatformCredentialV3)
def update_third_party_login_platform_credential_v3(
    body: ModelThirdPartyLoginPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Third Party Platform Credential (UpdateThirdPartyLoginPlatformCredentialV3)

    Updates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: PATCH

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelThirdPartyLoginPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateThirdPartyLoginPlatformCredentialV3)
async def update_third_party_login_platform_credential_v3_async(
    body: ModelThirdPartyLoginPlatformCredentialRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Third Party Platform Credential (UpdateThirdPartyLoginPlatformCredentialV3)

    Updates a third-party platform credential. Configure the Secret field according to the target platform (see field description). For generic OAuth flow, set GenericOauthFlow to true and configure the corresponding fields.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients

        method: PATCH

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelThirdPartyLoginPlatformCredentialRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelThirdPartyLoginPlatformCredentialResponse (OK)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateThirdPartyLoginPlatformDomainV3)
def update_third_party_login_platform_domain_v3(
    body: ModelPlatformDomainUpdateRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Third Party Platform Credential Domain (UpdateThirdPartyLoginPlatformDomainV3)

    This is the API to set 3rd Platform domain.
    This API is a create-or-update behavior. If it is update, it is a replacement behavior.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: PUT

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDomainResponse (Domain config updated)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateThirdPartyLoginPlatformDomainV3)
async def update_third_party_login_platform_domain_v3_async(
    body: ModelPlatformDomainUpdateRequest,
    platform_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set Third Party Platform Credential Domain (UpdateThirdPartyLoginPlatformDomainV3)

    This is the API to set 3rd Platform domain.
    This API is a create-or-update behavior. If it is update, it is a replacement behavior.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain

        method: PUT

        tags: ["Third Party Credential"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPlatformDomainUpdateRequest in body

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - ModelPlatformDomainResponse (Domain config updated)

        400: Bad Request - RestErrorResponse (Bad Request)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        404: Not Found - RestErrorResponse (10175: third party credential not found)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformDomainV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
