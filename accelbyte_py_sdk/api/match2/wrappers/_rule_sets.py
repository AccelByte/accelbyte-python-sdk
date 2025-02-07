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

from ..models import ApiListRuleSetsResponse
from ..models import ApiRuleSetPayload
from ..models import ResponseError

from ..operations.rule_sets import CreateRuleSet
from ..operations.rule_sets import DeleteRuleSet
from ..operations.rule_sets import RuleSetDetails
from ..operations.rule_sets import RuleSetList
from ..operations.rule_sets import UpdateRuleSet


@same_doc_as(CreateRuleSet)
def create_rule_set(
    body: ApiRuleSetPayload,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a match rule set (CreateRuleSet)

    Creates a new rules set.

    A rule set has a name and contains arbitrary data which is meaningful to some particular match function(s)
    The name is used for a match pool to select the ruleset data that should be sent to the match function when matchmaking in that pool.

    To use custom rules set please set enable_custom_match_function=true. Default (false).

    When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets

        method: POST

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiRuleSetPayload in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

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
    request = CreateRuleSet.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateRuleSet)
async def create_rule_set_async(
    body: ApiRuleSetPayload,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a match rule set (CreateRuleSet)

    Creates a new rules set.

    A rule set has a name and contains arbitrary data which is meaningful to some particular match function(s)
    The name is used for a match pool to select the ruleset data that should be sent to the match function when matchmaking in that pool.

    To use custom rules set please set enable_custom_match_function=true. Default (false).

    When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets

        method: POST

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiRuleSetPayload in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

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
    request = CreateRuleSet.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteRuleSet)
def delete_rule_set(
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a rule set (DeleteRuleSet)

    Deletes an existing rule set.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: DELETE

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRuleSet.create(
        ruleset=ruleset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRuleSet)
async def delete_rule_set_async(
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a rule set (DeleteRuleSet)

    Deletes an existing rule set.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: DELETE

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteRuleSet.create(
        ruleset=ruleset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RuleSetDetails)
def rule_set_details(
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific rule set (RuleSetDetails)

    Get details for a specific rule set

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: GET

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        200: OK - ApiRuleSetPayload (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RuleSetDetails.create(
        ruleset=ruleset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RuleSetDetails)
async def rule_set_details_async(
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific rule set (RuleSetDetails)

    Get details for a specific rule set

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: GET

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        200: OK - ApiRuleSetPayload (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RuleSetDetails.create(
        ruleset=ruleset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RuleSetList)
def rule_set_list(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List existing rule sets (RuleSetList)

    List rule sets.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets

        method: GET

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApiListRuleSetsResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RuleSetList.create(
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RuleSetList)
async def rule_set_list_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List existing rule sets (RuleSetList)

    List rule sets.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets

        method: GET

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApiListRuleSetsResponse (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RuleSetList.create(
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRuleSet)
def update_rule_set(
    body: ApiRuleSetPayload,
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a match rule set (UpdateRuleSet)

    Updates an existing matchmaking rule set.

    To use custom rules set please set enable_custom_match_function=true. Default (false).

    When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: PUT

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiRuleSetPayload in body

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        200: OK - ApiRuleSetPayload (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRuleSet.create(
        body=body,
        ruleset=ruleset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRuleSet)
async def update_rule_set_async(
    body: ApiRuleSetPayload,
    ruleset: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a match rule set (UpdateRuleSet)

    Updates an existing matchmaking rule set.

    To use custom rules set please set enable_custom_match_function=true. Default (false).

    When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.

    Properties:
        url: /match2/v1/namespaces/{namespace}/rulesets/{ruleset}

        method: PUT

        tags: ["Rule-Sets", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiRuleSetPayload in body

        namespace: (namespace) REQUIRED str in path

        ruleset: (ruleset) REQUIRED str in path

    Responses:
        200: OK - ApiRuleSetPayload (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateRuleSet.create(
        body=body,
        ruleset=ruleset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
