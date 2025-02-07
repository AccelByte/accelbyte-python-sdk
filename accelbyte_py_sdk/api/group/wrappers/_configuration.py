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

from ..models import ModelsCreateGroupConfigurationRequestV1
from ..models import ModelsCreateGroupConfigurationResponseV1
from ..models import ModelsGetGroupConfigurationResponseV1
from ..models import ModelsListConfigurationResponseV1
from ..models import ModelsUpdateGroupConfigurationGlobalRulesRequestV1
from ..models import ModelsUpdateGroupConfigurationRequestV1
from ..models import ModelsUpdateGroupConfigurationResponseV1
from ..models import ResponseErrorResponse

from ..operations.configuration import CreateGroupConfigurationAdminV1
from ..operations.configuration import DeleteGroupConfigurationGlobalRuleAdminV1
from ..operations.configuration import DeleteGroupConfigurationV1
from ..operations.configuration import GetGroupConfigurationAdminV1
from ..operations.configuration import InitiateGroupConfigurationAdminV1
from ..operations.configuration import ListGroupConfigurationAdminV1
from ..operations.configuration import UpdateGroupConfigurationAdminV1
from ..operations.configuration import UpdateGroupConfigurationGlobalRuleAdminV1


@same_doc_as(CreateGroupConfigurationAdminV1)
def create_group_configuration_admin_v1(
    body: ModelsCreateGroupConfigurationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new configuration (createGroupConfigurationAdminV1)

    This endpoint is used to create new configuration. Before creating the configuration, make sure that member role for admin and group member are already created before.

    For each of the global rule, it will be the rule detail that consists of these fields:

    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked

    Allowed Action can only be filled with any available action in the Group Service. For the configuration, the only value is **"createGroup"**

    Action Code: 73103

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupConfigurationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupConfigurationResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73130: global configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGroupConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateGroupConfigurationAdminV1)
async def create_group_configuration_admin_v1_async(
    body: ModelsCreateGroupConfigurationRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new configuration (createGroupConfigurationAdminV1)

    This endpoint is used to create new configuration. Before creating the configuration, make sure that member role for admin and group member are already created before.

    For each of the global rule, it will be the rule detail that consists of these fields:

    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked

    Allowed Action can only be filled with any available action in the Group Service. For the configuration, the only value is **"createGroup"**

    Action Code: 73103

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupConfigurationRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupConfigurationResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73130: global configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGroupConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupConfigurationGlobalRuleAdminV1)
def delete_group_configuration_global_rule_admin_v1(
    allowed_action: str,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete existing configuration global rule based on allowed action (deleteGroupConfigurationGlobalRuleAdminV1)

    This endpoint is used to delete existing global rule configuration based on the allowed action. It will not give any error if the allowed action is not existed in the global rule

    Action Code: 73105

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}

        method: DELETE

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupConfigurationGlobalRuleAdminV1.create(
        allowed_action=allowed_action,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupConfigurationGlobalRuleAdminV1)
async def delete_group_configuration_global_rule_admin_v1_async(
    allowed_action: str,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete existing configuration global rule based on allowed action (deleteGroupConfigurationGlobalRuleAdminV1)

    This endpoint is used to delete existing global rule configuration based on the allowed action. It will not give any error if the allowed action is not existed in the global rule

    Action Code: 73105

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}

        method: DELETE

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupConfigurationGlobalRuleAdminV1.create(
        allowed_action=allowed_action,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupConfigurationV1)
def delete_group_configuration_v1(
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group configuration (deleteGroupConfigurationV1)

    This endpoint is used to delete group configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: DELETE

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupConfigurationV1.create(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupConfigurationV1)
async def delete_group_configuration_v1_async(
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group configuration (deleteGroupConfigurationV1)

    This endpoint is used to delete group configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: DELETE

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupConfigurationV1.create(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupConfigurationAdminV1)
def get_group_configuration_admin_v1(
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get existing configuration (getGroupConfigurationAdminV1)

    This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: GET

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupConfigurationAdminV1.create(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupConfigurationAdminV1)
async def get_group_configuration_admin_v1_async(
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get existing configuration (getGroupConfigurationAdminV1)

    This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: GET

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupConfigurationAdminV1.create(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(InitiateGroupConfigurationAdminV1)
def initiate_group_configuration_admin_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """initiate configuration (initiateGroupConfigurationAdminV1)

    This endpoint is used to initiate configuration.
    This endpoint will automatically create default configuration and member roles with default permission
    Default Permission for admin role will cover these permission:
    - Permission to invite user to group
    - Permission to accept or reject join request
    - Permission to kick group member

    Default max member value will be 50 and global rules will be empty
    Action Code: 73104

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/initiate

        method: POST

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupConfigurationResponseV1 (Created)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73130: global configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InitiateGroupConfigurationAdminV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InitiateGroupConfigurationAdminV1)
async def initiate_group_configuration_admin_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """initiate configuration (initiateGroupConfigurationAdminV1)

    This endpoint is used to initiate configuration.
    This endpoint will automatically create default configuration and member roles with default permission
    Default Permission for admin role will cover these permission:
    - Permission to invite user to group
    - Permission to accept or reject join request
    - Permission to kick group member

    Default max member value will be 50 and global rules will be empty
    Action Code: 73104

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/initiate

        method: POST

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupConfigurationResponseV1 (Created)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73130: global configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InitiateGroupConfigurationAdminV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListGroupConfigurationAdminV1)
def list_group_configuration_admin_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Group Configuration (listGroupConfigurationAdminV1)

    This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration

        method: GET

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGroupConfigurationAdminV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListGroupConfigurationAdminV1)
async def list_group_configuration_admin_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Group Configuration (listGroupConfigurationAdminV1)

    This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

    Action Code: 73101

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration

        method: GET

        tags: ["Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsListConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListGroupConfigurationAdminV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupConfigurationAdminV1)
def update_group_configuration_admin_v1(
    body: ModelsUpdateGroupConfigurationRequestV1,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing configuration (updateGroupConfigurationAdminV1)

    This endpoint is used to update existing configuration. groupAdminRoleId and groupMemberRoleId won't be able to be updated. User can try to change the member role permission instead for each of those member role

    Action Code: 73102

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: PATCH

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupConfigurationRequestV1 in body

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupConfigurationAdminV1.create(
        body=body,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupConfigurationAdminV1)
async def update_group_configuration_admin_v1_async(
    body: ModelsUpdateGroupConfigurationRequestV1,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing configuration (updateGroupConfigurationAdminV1)

    This endpoint is used to update existing configuration. groupAdminRoleId and groupMemberRoleId won't be able to be updated. User can try to change the member role permission instead for each of those member role

    Action Code: 73102

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}

        method: PATCH

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupConfigurationRequestV1 in body

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupConfigurationAdminV1.create(
        body=body,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupConfigurationGlobalRuleAdminV1)
def update_group_configuration_global_rule_admin_v1(
    allowed_action: str,
    body: ModelsUpdateGroupConfigurationGlobalRulesRequestV1,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing configuration global rule (updateGroupConfigurationGlobalRuleAdminV1)

    This endpoint is used to update existing global rule configuration based on the allowed action. It will replace the permission with the request

    Action Code: 73106

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupConfigurationGlobalRulesRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupConfigurationGlobalRuleAdminV1.create(
        allowed_action=allowed_action,
        body=body,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupConfigurationGlobalRuleAdminV1)
async def update_group_configuration_global_rule_admin_v1_async(
    allowed_action: str,
    body: ModelsUpdateGroupConfigurationGlobalRulesRequestV1,
    configuration_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing configuration global rule (updateGroupConfigurationGlobalRuleAdminV1)

    This endpoint is used to update existing global rule configuration based on the allowed action. It will replace the permission with the request

    Action Code: 73106

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupConfigurationGlobalRulesRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        configuration_code: (configurationCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateGroupConfigurationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73131: global configuration not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupConfigurationGlobalRuleAdminV1.create(
        allowed_action=allowed_action,
        body=body,
        configuration_code=configuration_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
