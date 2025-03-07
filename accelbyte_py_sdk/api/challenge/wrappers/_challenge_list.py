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

from ..models import IamErrorResponse
from ..models import ModelGetGoalsResponse
from ..models import ModelListChallengeResponse
from ..models import ResponseError

from ..operations.challenge_list import GetChallenges
from ..operations.challenge_list import GetChallengesSortByEnum, GetChallengesStatusEnum
from ..operations.challenge_list import PublicGetScheduledGoals
from ..operations.challenge_list import PublicGetScheduledGoalsSortByEnum


@same_doc_as(GetChallenges)
def get_challenges(
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, GetChallengesSortByEnum]] = None,
    status: Optional[Union[str, GetChallengesStatusEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Challenges (GetChallenges)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge List"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChallenges.create(
        keyword=keyword,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetChallenges)
async def get_challenges_async(
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, GetChallengesSortByEnum]] = None,
    status: Optional[Union[str, GetChallengesStatusEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Challenges (GetChallenges)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge List"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChallenges.create(
        keyword=keyword,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetScheduledGoals)
def public_get_scheduled_goals(
    challenge_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicGetScheduledGoalsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Goals of a Challenge (publicGetScheduledGoals)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals

        method: GET

        tags: ["Challenge List"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelGetGoalsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetScheduledGoals.create(
        challenge_code=challenge_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetScheduledGoals)
async def public_get_scheduled_goals_async(
    challenge_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicGetScheduledGoalsSortByEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Goals of a Challenge (publicGetScheduledGoals)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals

        method: GET

        tags: ["Challenge List"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelGetGoalsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetScheduledGoals.create(
        challenge_code=challenge_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        tags=tags,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
