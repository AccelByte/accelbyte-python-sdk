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

from ..models import ModelsConfigList
from ..models import ModelsConfigReq
from ..models import ModelsImportConfigResponse
from ..models import ResponseError
from ..models import RestapiErrorResponseBody

from ..operations.config import AdminExportConfigV1
from ..operations.config import AdminGetAllConfigV1
from ..operations.config import AdminGetConfigV1
from ..operations.config import AdminImportConfigV1
from ..operations.config import AdminUpdateConfigV1


@same_doc_as(AdminExportConfigV1)
def admin_export_config_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export lobby config to a json file. (adminExportConfigV1)


        Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

        Required Scope: social

        Export lobby configuration to a json file. The file can then be imported from the /import endpoint.

        JSON Schema of the exported file:
        {"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime","maxFriendsLimit"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxFriendsLimit":{"type":"integer","format":"int32"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}}

        Required Permission(s):
            - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

        Required Scope(s):
            - social

        Properties:
            url: /lobby/v1/admin/config/namespaces/{namespace}/export

            method: GET

            tags: ["config"]

            consumes: []

            produces: ["application/json"]

            securities: [BEARER_AUTH]

            namespace: (namespace) REQUIRED str in path

        Responses:
            200: OK - Any (OK
    JSON Schema of the exported file:
    {"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime","maxFriendsLimit"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxFriendsLimit":{"type":"integer","format":"int32"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}})

            401: Unauthorized - ResponseError (Unauthorized)

            403: Forbidden - ResponseError (Forbidden)

            500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminExportConfigV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminExportConfigV1)
async def admin_export_config_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export lobby config to a json file. (adminExportConfigV1)


        Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

        Required Scope: social

        Export lobby configuration to a json file. The file can then be imported from the /import endpoint.

        JSON Schema of the exported file:
        {"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime","maxFriendsLimit"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxFriendsLimit":{"type":"integer","format":"int32"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}}

        Required Permission(s):
            - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

        Required Scope(s):
            - social

        Properties:
            url: /lobby/v1/admin/config/namespaces/{namespace}/export

            method: GET

            tags: ["config"]

            consumes: []

            produces: ["application/json"]

            securities: [BEARER_AUTH]

            namespace: (namespace) REQUIRED str in path

        Responses:
            200: OK - Any (OK
    JSON Schema of the exported file:
    {"required":["namespace","entitlementItemID","chatRateLimitDuration","unregisterDelay","generalRateLimitDuration","autoKickOnDisconnectDelay","chatRateLimitBurst","generalRateLimitBurst","maxPartyMember","autoKickOnDisconnect","profanityFilter","enableChat","entitlementCheck","cancelTicketOnDisconnect","concurrentUsersLimit","readyConsentTimeout","disableInvitationOnJoinParty","allowJoinPartyDuringMatchmaking","allowInviteNonConnectedUser","keepPresenceActivityOnDisconnect","maxDSWaitTime","maxFriendsLimit"],"properties":{"allowInviteNonConnectedUser":{"type":"boolean"},"allowJoinPartyDuringMatchmaking":{"type":"boolean"},"autoKickOnDisconnect":{"type":"boolean"},"autoKickOnDisconnectDelay":{"type":"integer","format":"integer"},"cancelTicketOnDisconnect":{"type":"boolean"},"chatRateLimitBurst":{"type":"integer","format":"int32"},"chatRateLimitDuration":{"type":"integer","format":"integer"},"concurrentUsersLimit":{"type":"integer","format":"int32"},"disableInvitationOnJoinParty":{"type":"boolean"},"enableChat":{"type":"boolean"},"entitlementCheck":{"type":"boolean"},"entitlementItemID":{"type":"string"},"generalRateLimitBurst":{"type":"integer","format":"int32"},"generalRateLimitDuration":{"type":"integer","format":"integer"},"keepPresenceActivityOnDisconnect":{"type":"boolean"},"maxDSWaitTime":{"type":"integer","format":"integer"},"maxFriendsLimit":{"type":"integer","format":"int32"},"maxPartyMember":{"type":"integer","format":"int32"},"namespace":{"type":"string"},"profanityFilter":{"type":"boolean"},"readyConsentTimeout":{"type":"integer","format":"integer"},"unregisterDelay":{"type":"integer","format":"integer"}}})

            401: Unauthorized - ResponseError (Unauthorized)

            403: Forbidden - ResponseError (Forbidden)

            500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminExportConfigV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAllConfigV1)
def admin_get_all_config_v1(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """admin get all namespaces config (adminGetAllConfigV1)

    Required permission : `ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]` with scope `social`

    get lobby config of all namespaces.
    default MaxDSWaitTime is 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config

        method: GET

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsConfigList (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = AdminGetAllConfigV1.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllConfigV1)
async def admin_get_all_config_v1_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """admin get all namespaces config (adminGetAllConfigV1)

    Required permission : `ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]` with scope `social`

    get lobby config of all namespaces.
    default MaxDSWaitTime is 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:*:LOBBY:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config

        method: GET

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsConfigList (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    request = AdminGetAllConfigV1.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetConfigV1)
def admin_get_config_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get namespace config (adminGetConfigV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`

    get lobby config of a namespace.
    default MaxDSWaitTime is 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}

        method: GET

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsConfigReq (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetConfigV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigV1)
async def admin_get_config_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get namespace config (adminGetConfigV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]` with scope `social`

    get lobby config of a namespace.
    default MaxDSWaitTime is 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}

        method: GET

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsConfigReq (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetConfigV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminImportConfigV1)
def admin_import_config_v1(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import lobby config from a json file. (adminImportConfigV1)


    Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope: social

    Import config configuration from file. The existing configuration will be replaced.
    The json file to import can be obtained from the /export endpoint.

    MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}/import

        method: POST

        tags: ["config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportConfigResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminImportConfigV1.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminImportConfigV1)
async def admin_import_config_v1_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import lobby config from a json file. (adminImportConfigV1)


    Required permission ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope: social

    Import config configuration from file. The existing configuration will be replaced.
    The json file to import can be obtained from the /export endpoint.

    MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}/import

        method: POST

        tags: ["config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportConfigResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminImportConfigV1.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateConfigV1)
def admin_update_config_v1(
    body: ModelsConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update namespace config (adminUpdateConfigV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]` with scope `social`

    update lobby config of a namespace.
    MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}

        method: PUT

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsConfigReq (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        412: Precondition Failed - RestapiErrorResponseBody (Precondition Failed)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateConfigV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateConfigV1)
async def admin_update_config_v1_async(
    body: ModelsConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update namespace config (adminUpdateConfigV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]` with scope `social`

    update lobby config of a namespace.
    MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LOBBY:CONFIG [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/config/namespaces/{namespace}

        method: PUT

        tags: ["config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsConfigReq (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        412: Precondition Failed - RestapiErrorResponseBody (Precondition Failed)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateConfigV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
