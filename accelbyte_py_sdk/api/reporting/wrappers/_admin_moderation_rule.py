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

from ..models import RestapiErrorResponse
from ..models import RestapiModerationRuleActiveRequest
from ..models import RestapiModerationRuleRequest
from ..models import RestapiModerationRuleResponse
from ..models import RestapiModerationRulesList

from ..operations.admin_moderation_rule import CreateModerationRule
from ..operations.admin_moderation_rule import DeleteModerationRule
from ..operations.admin_moderation_rule import GetModerationRuleDetails
from ..operations.admin_moderation_rule import GetModerationRules
from ..operations.admin_moderation_rule import UpdateModerationRule
from ..operations.admin_moderation_rule import UpdateModerationRuleStatus
from ..models import (
    RestapiModerationRuleRequestActionEnum,
    RestapiModerationRuleRequestCategoryEnum,
)


@same_doc_as(CreateModerationRule)
def create_moderation_rule(
    body: RestapiModerationRuleRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create auto moderation rule (createModerationRule)

    This endpoint create moderation rule.
    Supported Category: - UGC - USER - CHAT - EXTENSION
    Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):

    * HideContent

    Supported Actions:

    * **hideContent**: Hide the content
    * **banAccount**: Ban the user account
    * **deleteChat**: Delete chat

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule

        method: POST

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateModerationRule.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateModerationRule)
async def create_moderation_rule_async(
    body: RestapiModerationRuleRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create auto moderation rule (createModerationRule)

    This endpoint create moderation rule.
    Supported Category: - UGC - USER - CHAT - EXTENSION
    Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):

    * HideContent

    Supported Actions:

    * **hideContent**: Hide the content
    * **banAccount**: Ban the user account
    * **deleteChat**: Delete chat

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule

        method: POST

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateModerationRule.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteModerationRule)
def delete_moderation_rule(
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete auto moderation rule (deleteModerationRule)

    This endpoint delete moderation rule.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}

        method: DELETE

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteModerationRule.create(
        rule_id=rule_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteModerationRule)
async def delete_moderation_rule_async(
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete auto moderation rule (deleteModerationRule)

    This endpoint delete moderation rule.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}

        method: DELETE

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteModerationRule.create(
        rule_id=rule_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetModerationRuleDetails)
def get_moderation_rule_details(
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get auto moderation rule (getModerationRuleDetails)

    This endpoint get moderation rule.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}

        method: GET

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        200: OK - RestapiModerationRuleResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetModerationRuleDetails.create(
        rule_id=rule_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetModerationRuleDetails)
async def get_moderation_rule_details_async(
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get auto moderation rule (getModerationRuleDetails)

    This endpoint get moderation rule.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}

        method: GET

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        200: OK - RestapiModerationRuleResponse (OK)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetModerationRuleDetails.create(
        rule_id=rule_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetModerationRules)
def get_moderation_rules(
    category: Optional[str] = None,
    extension_category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get auto moderation rules (getModerationRules)

    This endpoint get moderation rules.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rules

        method: GET

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        extension_category: (extensionCategory) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiModerationRulesList (OK)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetModerationRules.create(
        category=category,
        extension_category=extension_category,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetModerationRules)
async def get_moderation_rules_async(
    category: Optional[str] = None,
    extension_category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get auto moderation rules (getModerationRules)

    This endpoint get moderation rules.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rules

        method: GET

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        extension_category: (extensionCategory) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiModerationRulesList (OK)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetModerationRules.create(
        category=category,
        extension_category=extension_category,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateModerationRule)
def update_moderation_rule(
    body: RestapiModerationRuleRequest,
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update auto moderation rule (updateModerationRule)

    This endpoint update moderation rule.
    Supported Category:- UGC - USER - CHAT - EXTENSION
    Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):
    * HideContent

    Supported Actions:
    * **hideContent**: Hide the content
    * **banAccount**: Ban the user account
    * **deleteChat**: Delete chat

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}

        method: PUT

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleRequest in body

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        200: OK - RestapiModerationRuleResponse (OK)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateModerationRule.create(
        body=body,
        rule_id=rule_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateModerationRule)
async def update_moderation_rule_async(
    body: RestapiModerationRuleRequest,
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update auto moderation rule (updateModerationRule)

    This endpoint update moderation rule.
    Supported Category:- UGC - USER - CHAT - EXTENSION
    Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):
    * HideContent

    Supported Actions:
    * **hideContent**: Hide the content
    * **banAccount**: Ban the user account
    * **deleteChat**: Delete chat

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}

        method: PUT

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleRequest in body

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        200: OK - RestapiModerationRuleResponse (OK)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        409: Conflict - RestapiErrorResponse (Conflict)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateModerationRule.create(
        body=body,
        rule_id=rule_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateModerationRuleStatus)
def update_moderation_rule_status(
    body: RestapiModerationRuleActiveRequest,
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable/Disable auto moderation rule (updateModerationRuleStatus)

    This endpoint enable/disable moderation rule status.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status

        method: PUT

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleActiveRequest in body

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateModerationRuleStatus.create(
        body=body,
        rule_id=rule_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateModerationRuleStatus)
async def update_moderation_rule_status_async(
    body: RestapiModerationRuleActiveRequest,
    rule_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable/Disable auto moderation rule (updateModerationRuleStatus)

    This endpoint enable/disable moderation rule status.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status

        method: PUT

        tags: ["Admin Moderation Rule"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiModerationRuleActiveRequest in body

        namespace: (namespace) REQUIRED str in path

        rule_id: (ruleId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponse (Bad Request)

        404: Not Found - RestapiErrorResponse (Not Found)

        500: Internal Server Error - RestapiErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateModerationRuleStatus.create(
        body=body,
        rule_id=rule_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
