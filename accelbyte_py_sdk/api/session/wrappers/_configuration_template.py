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

from ..models import ApimodelsConfigAlertRequestCreate
from ..models import ApimodelsConfigAlertResponse
from ..models import ApimodelsConfigurationTemplateResponse
from ..models import ApimodelsConfigurationTemplatesResponse
from ..models import ApimodelsCreateConfigurationTemplateRequest
from ..models import ApimodelsUpdateConfigurationTemplateRequest
from ..models import ModelsDSMConfigRecord
from ..models import ResponseError

from ..operations.configuration_template import AdminCreateConfigurationAlertV1
from ..operations.configuration_template import AdminCreateConfigurationTemplateV1
from ..operations.configuration_template import AdminDeleteConfigurationAlertV1
from ..operations.configuration_template import AdminDeleteConfigurationTemplateV1
from ..operations.configuration_template import AdminGetAllConfigurationTemplatesV1
from ..operations.configuration_template import AdminGetConfigurationAlertV1
from ..operations.configuration_template import AdminGetConfigurationTemplateV1
from ..operations.configuration_template import AdminGetDSMCConfiguration
from ..operations.configuration_template import AdminSyncDSMCConfiguration
from ..operations.configuration_template import AdminUpdateConfigurationAlertV1
from ..operations.configuration_template import AdminUpdateConfigurationTemplateV1
from ..models import ApimodelsConfigurationTemplateResponseTextChatModeEnum
from ..models import ApimodelsCreateConfigurationTemplateRequestTextChatModeEnum
from ..models import ApimodelsUpdateConfigurationTemplateRequestTextChatModeEnum


@same_doc_as(AdminCreateConfigurationAlertV1)
def admin_create_configuration_alert_v1(
    body: ApimodelsConfigAlertRequestCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create configuration alert. (adminCreateConfigurationAlertV1)

    Create configuration alert
    configuration alert mandatory :
    - namespace
    - durationDays must be greater than 0

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: POST

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigAlertRequestCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsConfigAlertResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateConfigurationAlertV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateConfigurationAlertV1)
async def admin_create_configuration_alert_v1_async(
    body: ApimodelsConfigAlertRequestCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create configuration alert. (adminCreateConfigurationAlertV1)

    Create configuration alert
    configuration alert mandatory :
    - namespace
    - durationDays must be greater than 0

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: POST

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigAlertRequestCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsConfigAlertResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateConfigurationAlertV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateConfigurationTemplateV1)
def admin_create_configuration_template_v1(
    body: ApimodelsCreateConfigurationTemplateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create configuration template. (adminCreateConfigurationTemplateV1)

    Create template configuration to be applied across party and session.
    Session configuration mandatory :
    - name
    - joinability. supported values:
    - OPEN: user can join or rejoin the session without an invite
    - CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
    - INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
    - FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
    - FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
    - FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
    - autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greater or equal 0)
    - MaxPlayers (must greater than 0)
    - InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent will only applies to session with type DS (example value true or false, default: false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing
    - nativeSessionSetting:
    - XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
    - XboxServiceConfigID: the XBox service configuration ID.
    - PSNServiceLabel: the PSN service label.
    - SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
    - ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
    - PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
    - PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
    - https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
    - https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
    - https://s2s.np.playstation.net (Production)
    - localizedSessionName : for localized name and default language
    example payload :
    "localizedSessionName":{
    "defaultLanguage" : "en-US"
    "localizedText" :{
    "en-US" : "title"
    }
    }
    - if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
    - TieTeamsSessionLifetime (optional, default: false): If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
    - DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
    - DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
    - EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
    - LeaderElectionGracePeriod this is on second (optional, default:0) this is only use for party session, if value > 0 if leader disconnect will be wait until value reach and leader will be change after reach
    - ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
    - DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
    - appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
    - customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
    - grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
    - appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
    - customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
    - functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
    - 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
    - 0x2 is for updated event. Event is async. Called when any update on the game session.
    - 0x4 is for deleted event. Event is async. Callen when game session got deleted.
    Example:
    - value 3: enable for created and updated
    - value 7: enable for created, updated, and deleted, etc

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Create configuration template. (adminCreateConfigurationTemplateV1)

    Create template configuration to be applied across party and session.
    Session configuration mandatory :
    - name
    - joinability. supported values:
    - OPEN: user can join or rejoin the session without an invite
    - CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
    - INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
    - FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
    - FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
    - FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
    - autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greater or equal 0)
    - MaxPlayers (must greater than 0)
    - InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent will only applies to session with type DS (example value true or false, default: false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing
    - nativeSessionSetting:
    - XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
    - XboxServiceConfigID: the XBox service configuration ID.
    - PSNServiceLabel: the PSN service label.
    - SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
    - ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
    - PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
    - PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
    - https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
    - https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
    - https://s2s.np.playstation.net (Production)
    - localizedSessionName : for localized name and default language
    example payload :
    "localizedSessionName":{
    "defaultLanguage" : "en-US"
    "localizedText" :{
    "en-US" : "title"
    }
    }
    - if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
    - TieTeamsSessionLifetime (optional, default: false): If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
    - DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
    - DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
    - EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
    - LeaderElectionGracePeriod this is on second (optional, default:0) this is only use for party session, if value > 0 if leader disconnect will be wait until value reach and leader will be change after reach
    - ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
    - DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
    - appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
    - customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
    - grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
    - appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
    - customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
    - functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
    - 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
    - 0x2 is for updated event. Event is async. Called when any update on the game session.
    - 0x4 is for deleted event. Event is async. Callen when game session got deleted.
    Example:
    - value 3: enable for created and updated
    - value 7: enable for created, updated, and deleted, etc

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateConfigurationTemplateV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteConfigurationAlertV1)
def admin_delete_configuration_alert_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete configuration alert. (adminDeleteConfigurationAlertV1)

    Delete configuration alert.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: DELETE

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteConfigurationAlertV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteConfigurationAlertV1)
async def admin_delete_configuration_alert_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete configuration alert. (adminDeleteConfigurationAlertV1)

    Delete configuration alert.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: DELETE

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteConfigurationAlertV1.create(
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
    """Delete configuration template. (adminDeleteConfigurationTemplateV1)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete configuration template. (adminDeleteConfigurationTemplateV1)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    name: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration templates. (adminGetAllConfigurationTemplatesV1)

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

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsConfigurationTemplatesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllConfigurationTemplatesV1.create(
        limit=limit,
        name=name,
        offset=offset,
        order=order,
        order_by=order_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllConfigurationTemplatesV1)
async def admin_get_all_configuration_templates_v1_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration templates. (adminGetAllConfigurationTemplatesV1)

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

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsConfigurationTemplatesResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllConfigurationTemplatesV1.create(
        limit=limit,
        name=name,
        offset=offset,
        order=order,
        order_by=order_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetConfigurationAlertV1)
def admin_get_configuration_alert_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration alert. (adminGetConfigurationAlertV1)

    Get a configuration alert.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigAlertResponse (Created)

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
    request = AdminGetConfigurationAlertV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigurationAlertV1)
async def admin_get_configuration_alert_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration alert. (adminGetConfigurationAlertV1)

    Get a configuration alert.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: GET

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigAlertResponse (Created)

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
    request = AdminGetConfigurationAlertV1.create(
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
    """Get configuration template. (adminGetConfigurationTemplateV1)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get configuration template. (adminGetConfigurationTemplateV1)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigurationTemplateV1.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetDSMCConfiguration)
def admin_get_dsmc_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dsmc configuration . (adminGetDSMCConfiguration)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDSMCConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetDSMCConfiguration)
async def admin_get_dsmc_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dsmc configuration . (adminGetDSMCConfiguration)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetDSMCConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminSyncDSMCConfiguration)
def admin_sync_dsmc_configuration(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync dsmc configuration. (adminSyncDSMCConfiguration)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncDSMCConfiguration.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminSyncDSMCConfiguration)
async def admin_sync_dsmc_configuration_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync dsmc configuration. (adminSyncDSMCConfiguration)

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncDSMCConfiguration.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateConfigurationAlertV1)
def admin_update_configuration_alert_v1(
    body: ApimodelsConfigAlertRequestCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update configuration alert. (adminUpdateConfigurationAlertV1)

    Update configuration alert
    configuration alert mandatory :
    - namespace
    - durationDays must be greater than 0

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: PUT

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigAlertRequestCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigAlertResponse (OK)

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
    request = AdminUpdateConfigurationAlertV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateConfigurationAlertV1)
async def admin_update_configuration_alert_v1_async(
    body: ApimodelsConfigAlertRequestCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update configuration alert. (adminUpdateConfigurationAlertV1)

    Update configuration alert
    configuration alert mandatory :
    - namespace
    - durationDays must be greater than 0

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/alerts-configuration

        method: PUT

        tags: ["Configuration Template"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsConfigAlertRequestCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsConfigAlertResponse (OK)

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
    request = AdminUpdateConfigurationAlertV1.create(
        body=body,
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
    """Update configuration template. (adminUpdateConfigurationTemplateV1)

    Modify template configuration
    Session configuration mandatory :
    - name
    - joinability. supported values:
    - OPEN: user can join or rejoin the session without an invite
    - CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
    - INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
    - FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
    - FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
    - FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
    - autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greater or equal 0)
    - MaxPlayers (must greater than 0)
    - InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing
    - nativeSessionSetting:
    - XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
    - XboxServiceConfigID: the XBox service configuration ID.
    - PSNServiceLabel: the PSN service label.
    - SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
    - ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
    - PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
    - PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
    - https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
    - https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
    - https://s2s.np.playstation.net (Production)
    - localizedSessionName : for localized name and default language
    example payload :
    "localizedSessionName":{
    "defaultLanguage" : "en-US"
    "localizedText" :{
    "en-US" : "title"
    }
    }
    - if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
    - TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
    - DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
    - DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
    - EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created.
    - ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
    - DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
    - appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
    - customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
    - grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
    - appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
    - customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
    - functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
    - 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
    - 0x2 is for updated event. Event is async. Called when any update on the game session.
    - 0x4 is for deleted event. Event is async. Callen when game session got deleted.
    Example:
    - value 3: enable for created and updated
    - value 7: enable for created, updated, and deleted, etc

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Update configuration template. (adminUpdateConfigurationTemplateV1)

    Modify template configuration
    Session configuration mandatory :
    - name
    - joinability. supported values:
    - OPEN: user can join or rejoin the session without an invite
    - CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
    - INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
    - FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
    - FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
    - FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
    - autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
    - Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
    - MinPlayers (must greater or equal 0)
    - MaxPlayers (must greater than 0)
    - InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
    - Persistent Flag only can use with type DS (example value true or false)
    - If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
    - To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - If Persistent False the session will be inactive if all member left and DS terminate or removing
    - nativeSessionSetting:
    - XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
    - XboxServiceConfigID: the XBox service configuration ID.
    - PSNServiceLabel: the PSN service label.
    - SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
    - ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
    - PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
    - PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
    - https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
    - https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
    - https://s2s.np.playstation.net (Production)
    - localizedSessionName : for localized name and default language
    example payload :
    "localizedSessionName":{
    "defaultLanguage" : "en-US"
    "localizedText" :{
    "en-US" : "title"
    }
    }
    - if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
    - TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
    - DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
    - DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
    - EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created.
    - ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
    - DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
    - appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
    - customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
    - grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
    - appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
    - customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
    - functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
    - 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
    - 0x2 is for updated event. Event is async. Called when any update on the game session.
    - 0x4 is for deleted event. Event is async. Callen when game session got deleted.
    Example:
    - value 3: enable for created and updated
    - value 7: enable for created, updated, and deleted, etc

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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
