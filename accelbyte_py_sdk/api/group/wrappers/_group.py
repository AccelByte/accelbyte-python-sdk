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

from ..models import ModelsGetGroupListRequestV2
from ..models import ModelsGetGroupsListResponseV1
from ..models import ModelsGetGroupsResponseV1
from ..models import ModelsGroupResponseV1
from ..models import ModelsPublicCreateNewGroupRequestV1
from ..models import ModelsUpdateGroupCustomAttributesRequestV1
from ..models import ModelsUpdateGroupCustomRuleRequestV1
from ..models import ModelsUpdateGroupPredefinedRuleRequestV1
from ..models import ModelsUpdateGroupRequestV1
from ..models import ResponseErrorResponse

from ..operations.group import CreateNewGroupPublicV1
from ..operations.group import CreateNewGroupPublicV2
from ..operations.group import DeleteGroupAdminV1
from ..operations.group import DeleteGroupPredefinedRulePublicV1
from ..operations.group import DeleteGroupPredefinedRulePublicV2
from ..operations.group import DeleteGroupPublicV1
from ..operations.group import DeleteGroupPublicV2
from ..operations.group import GetGroupListAdminV1
from ..operations.group import GetGroupListPublicV1
from ..operations.group import GetListGroupByIDsAdminV2
from ..operations.group import GetListGroupByIDsV2
from ..operations.group import GetSingleGroupAdminV1
from ..operations.group import GetSingleGroupPublicV1
from ..operations.group import UpdateGroupCustomAttributesPublicV1
from ..operations.group import UpdateGroupCustomAttributesPublicV2
from ..operations.group import UpdateGroupCustomRulePublicV1
from ..operations.group import UpdateGroupCustomRulePublicV2
from ..operations.group import UpdateGroupPredefinedRulePublicV1
from ..operations.group import UpdateGroupPredefinedRulePublicV2
from ..operations.group import UpdatePatchSingleGroupPublicV1
from ..operations.group import UpdatePatchSingleGroupPublicV2
from ..operations.group import UpdatePutSingleGroupPublicV2
from ..operations.group import UpdateSingleGroupV1
from ..models import ModelsGroupResponseV1GroupTypeEnum
from ..models import ModelsPublicCreateNewGroupRequestV1GroupTypeEnum
from ..models import ModelsUpdateGroupRequestV1GroupTypeEnum


@same_doc_as(CreateNewGroupPublicV1)
def create_new_group_public_v1(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new group (createNewGroupPublicV1)

    Required valid user authentication

    This endpoint is used to create new group

    There are some fields that needs to be fulfilled

    * **groupDescription**: the description of the group (optional)
    * **groupIcon**: group icon URL link (optional)
    * **groupName**: name of the group
    * **groupRegion**: region of the group
    * **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
    * **allowedAction**: available action in group service. It consist of joinGroup and createGroup
    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked
    * **customAttributes**: additional custom group attributes (optional)

    Action Code: 73304

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateNewGroupRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73342: user already joined group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNewGroupPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNewGroupPublicV1)
async def create_new_group_public_v1_async(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new group (createNewGroupPublicV1)

    Required valid user authentication

    This endpoint is used to create new group

    There are some fields that needs to be fulfilled

    * **groupDescription**: the description of the group (optional)
    * **groupIcon**: group icon URL link (optional)
    * **groupName**: name of the group
    * **groupRegion**: region of the group
    * **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
    * **allowedAction**: available action in group service. It consist of joinGroup and createGroup
    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked
    * **customAttributes**: additional custom group attributes (optional)

    Action Code: 73304

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateNewGroupRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73342: user already joined group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNewGroupPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateNewGroupPublicV2)
def create_new_group_public_v2(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new group (createNewGroupPublicV2)

    Required valid user authentication

    This endpoint is used to create new group

    There are some fields that needs to be fulfilled

    * **groupDescription**: the description of the group (optional)
    * **groupIcon**: group icon URL link (optional)
    * **groupName**: name of the group
    * **groupRegion**: region of the group
    * **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
    * **allowedAction**: available action in group service. It consist of joinGroup and inviteGroup
    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked
    * **customAttributes**: additional custom group attributes (optional)

    Action Code: 73304

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateNewGroupRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73342: user already joined group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNewGroupPublicV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNewGroupPublicV2)
async def create_new_group_public_v2_async(
    body: ModelsPublicCreateNewGroupRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new group (createNewGroupPublicV2)

    Required valid user authentication

    This endpoint is used to create new group

    There are some fields that needs to be fulfilled

    * **groupDescription**: the description of the group (optional)
    * **groupIcon**: group icon URL link (optional)
    * **groupName**: name of the group
    * **groupRegion**: region of the group
    * **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
    * **allowedAction**: available action in group service. It consist of joinGroup and inviteGroup
    * **ruleAttribute**: attribute of the player that needs to be checked
    * **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
    * **ruleValue**: value that needs to be checked
    * **customAttributes**: additional custom group attributes (optional)

    Action Code: 73304

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateNewGroupRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73342: user already joined group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateNewGroupPublicV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupAdminV1)
def delete_group_admin_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupAdminV1)

    Delete existing group. It will check whether the groupID is exist before doing the process to delete the group.

    Action Code: 73302

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupAdminV1)
async def delete_group_admin_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupAdminV1)

    Delete existing group. It will check whether the groupID is exist before doing the process to delete the group.

    Action Code: 73302

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPredefinedRulePublicV1)
def delete_group_predefined_rule_public_v1(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group predefined rule (deleteGroupPredefinedRulePublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73309

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPredefinedRulePublicV1)
async def delete_group_predefined_rule_public_v1_async(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group predefined rule (deleteGroupPredefinedRulePublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73309

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPredefinedRulePublicV2)
def delete_group_predefined_rule_public_v2(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group predefined rule (deleteGroupPredefinedRulePublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73309

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV2.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPredefinedRulePublicV2)
async def delete_group_predefined_rule_public_v2_async(
    allowed_action: str,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group predefined rule (deleteGroupPredefinedRulePublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73309

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPredefinedRulePublicV2.create(
        allowed_action=allowed_action,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPublicV1)
def delete_group_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [DELETE]"

    Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73305

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPublicV1)
async def delete_group_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [DELETE]"

    Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73305

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroupPublicV2)
def delete_group_public_v2(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [DELETE]"

    Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73305

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPublicV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroupPublicV2)
async def delete_group_public_v2_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete existing group (deleteGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [DELETE]"

    Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73305

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroupPublicV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupListAdminV1)
def get_group_list_admin_v1(
    configuration_code: Optional[str] = None,
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups (getGroupListAdminV1)

    Get list of groups. This endpoint will show any types of group

    Action Code: 73301

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_code: (configurationCode) OPTIONAL str in query

        group_name: (groupName) OPTIONAL str in query

        group_region: (groupRegion) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupListAdminV1.create(
        configuration_code=configuration_code,
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupListAdminV1)
async def get_group_list_admin_v1_async(
    configuration_code: Optional[str] = None,
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups (getGroupListAdminV1)

    Get list of groups. This endpoint will show any types of group

    Action Code: 73301

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_code: (configurationCode) OPTIONAL str in query

        group_name: (groupName) OPTIONAL str in query

        group_region: (groupRegion) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupListAdminV1.create(
        configuration_code=configuration_code,
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupListPublicV1)
def get_group_list_public_v1(
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups (getGroupListPublicV1)

    Required valid user authentication

    Get list of groups. This endpoint will only show OPEN and PUBLIC group type. This endpoint can search based on the group name by filling the "groupName" query parameter

    Action Code: 73303

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group_name: (groupName) OPTIONAL str in query

        group_region: (groupRegion) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupListPublicV1.create(
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupListPublicV1)
async def get_group_list_public_v1_async(
    group_name: Optional[str] = None,
    group_region: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups (getGroupListPublicV1)

    Required valid user authentication

    Get list of groups. This endpoint will only show OPEN and PUBLIC group type. This endpoint can search based on the group name by filling the "groupName" query parameter

    Action Code: 73303

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        group_name: (groupName) OPTIONAL str in query

        group_region: (groupRegion) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupListPublicV1.create(
        group_name=group_name,
        group_region=group_region,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetListGroupByIDsAdminV2)
def get_list_group_by_i_ds_admin_v2(
    body: ModelsGetGroupListRequestV2,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups by group Ids (getListGroupByIDsAdminV2)

    Required valid user authentication

    Get list of groups by group Ids.

    Action Code: 73303

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/groups/bulk

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetGroupListRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupsResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListGroupByIDsAdminV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetListGroupByIDsAdminV2)
async def get_list_group_by_i_ds_admin_v2_async(
    body: ModelsGetGroupListRequestV2,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups by group Ids (getListGroupByIDsAdminV2)

    Required valid user authentication

    Get list of groups by group Ids.

    Action Code: 73303

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/groups/bulk

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetGroupListRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupsResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListGroupByIDsAdminV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetListGroupByIDsV2)
def get_list_group_by_i_ds_v2(
    body: ModelsGetGroupListRequestV2,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups by group Ids (getListGroupByIDsV2)

    Required valid user authentication

    Get list of groups by group Ids.

    Action Code: 73303

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/bulk

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetGroupListRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupsResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListGroupByIDsV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetListGroupByIDsV2)
async def get_list_group_by_i_ds_v2_async(
    body: ModelsGetGroupListRequestV2,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of groups by group Ids (getListGroupByIDsV2)

    Required valid user authentication

    Get list of groups by group Ids.

    Action Code: 73303

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/bulk

        method: POST

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetGroupListRequestV2 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetGroupsResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListGroupByIDsV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleGroupAdminV1)
def get_single_group_admin_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get single group (getSingleGroupAdminV1)

    Get single group information. This endpoint will show the group information by the groupId

    Action Code: 73306

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleGroupAdminV1)
async def get_single_group_admin_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get single group (getSingleGroupAdminV1)

    Get single group information. This endpoint will show the group information by the groupId

    Action Code: 73306

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleGroupAdminV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleGroupPublicV1)
def get_single_group_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get single group (getSingleGroupPublicV1)

    Required valid user authentication

    Get single group information. This endpoint will show the group information by the groupId

    Action Code: 73306

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleGroupPublicV1)
async def get_single_group_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get single group (getSingleGroupPublicV1)

    Required valid user authentication

    Get single group information. This endpoint will show the group information by the groupId

    Action Code: 73306

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Group"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleGroupPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomAttributesPublicV1)
def update_group_custom_attributes_public_v1(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group custom attributes (updateGroupCustomAttributesPublicV1)

    Requires valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]

    This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73311

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomAttributesRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomAttributesPublicV1)
async def update_group_custom_attributes_public_v1_async(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group custom attributes (updateGroupCustomAttributesPublicV1)

    Requires valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]

    This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73311

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomAttributesRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomAttributesPublicV2)
def update_group_custom_attributes_public_v2(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group custom attributes (updateGroupCustomAttributesPublicV2)

    Requires valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73311

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomAttributesRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomAttributesPublicV2)
async def update_group_custom_attributes_public_v2_async(
    body: ModelsUpdateGroupCustomAttributesRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group custom attributes (updateGroupCustomAttributesPublicV2)

    Requires valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73311

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomAttributesRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomAttributesPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomRulePublicV1)
def update_group_custom_rule_public_v1(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update group custom rule (updateGroupCustomRulePublicV1)

    Required valid user authentication

    Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73308

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomRuleRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomRulePublicV1)
async def update_group_custom_rule_public_v1_async(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update group custom rule (updateGroupCustomRulePublicV1)

    Required valid user authentication

    Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73308

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomRuleRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupCustomRulePublicV2)
def update_group_custom_rule_public_v2(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update group custom rule (updateGroupCustomRulePublicV2)

    Required valid user authentication

    Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73308

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomRuleRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupCustomRulePublicV2)
async def update_group_custom_rule_public_v2_async(
    body: ModelsUpdateGroupCustomRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update group custom rule (updateGroupCustomRulePublicV2)

    Required valid user authentication

    Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73308

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupCustomRuleRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupCustomRulePublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupPredefinedRulePublicV1)
def update_group_predefined_rule_public_v1(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update predefined group rule (updateGroupPredefinedRulePublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    If the rule action is not defined in the group, it will be added immediately to the predefined group rule

    Action Code: 73310

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupPredefinedRuleRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupPredefinedRulePublicV1)
async def update_group_predefined_rule_public_v1_async(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update predefined group rule (updateGroupPredefinedRulePublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    If the rule action is not defined in the group, it will be added immediately to the predefined group rule

    Action Code: 73310

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupPredefinedRuleRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV1.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroupPredefinedRulePublicV2)
def update_group_predefined_rule_public_v2(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update predefined group rule (updateGroupPredefinedRulePublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    If the rule action is not defined in the group, it will be added immediately to the predefined group rule

    Action Code: 73310

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupPredefinedRuleRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV2.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroupPredefinedRulePublicV2)
async def update_group_predefined_rule_public_v2_async(
    allowed_action: str,
    body: ModelsUpdateGroupPredefinedRuleRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update predefined group rule (updateGroupPredefinedRulePublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    If the rule action is not defined in the group, it will be added immediately to the predefined group rule

    Action Code: 73310

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupPredefinedRuleRequestV1 in body

        allowed_action: (allowedAction) REQUIRED str in path

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroupPredefinedRulePublicV2.create(
        allowed_action=allowed_action,
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePatchSingleGroupPublicV1)
def update_patch_single_group_public_v1(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePatchSingleGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: PATCH

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePatchSingleGroupPublicV1)
async def update_patch_single_group_public_v1_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePatchSingleGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: PATCH

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePatchSingleGroupPublicV2)
def update_patch_single_group_public_v2(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePatchSingleGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: PATCH

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePatchSingleGroupPublicV2)
async def update_patch_single_group_public_v2_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePatchSingleGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: PATCH

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePatchSingleGroupPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePutSingleGroupPublicV2)
def update_put_single_group_public_v2(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePutSingleGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePutSingleGroupPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePutSingleGroupPublicV2)
async def update_put_single_group_public_v2_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updatePutSingleGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePutSingleGroupPublicV2.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSingleGroupV1)
def update_single_group_v1(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updateSingleGroupV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSingleGroupV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSingleGroupV1)
async def update_single_group_v1_async(
    body: ModelsUpdateGroupRequestV1,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update existing group (updateSingleGroupV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP [UPDATE]"

    Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

    Action Code: 73307

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateGroupRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73333: group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSingleGroupV1.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
