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
from ..models import ModelChallengeResponse
from ..models import ModelCreateChallengeRequest
from ..models import ModelListChallengeResponse
from ..models import ModelListPeriodsResponse
from ..models import ModelSchedule
from ..models import ModelUpdateChallengeRequest
from ..models import ModelUpdateChallengeScheduleRequest
from ..models import ResponseError

from ..operations.challenge_configuration import AdminCreateChallenge
from ..operations.challenge_configuration import AdminDeleteChallenge
from ..operations.challenge_configuration import AdminDeleteTiedChallenge
from ..operations.challenge_configuration import AdminGetActiveChallenges
from ..operations.challenge_configuration import AdminGetChallenge
from ..operations.challenge_configuration import AdminGetChallenges
from ..operations.challenge_configuration import (
    AdminGetChallengesSortByEnum,
    AdminGetChallengesStatusEnum,
)
from ..operations.challenge_configuration import AdminGetPeriods
from ..operations.challenge_configuration import AdminRandomizeChallenge
from ..operations.challenge_configuration import AdminUpdateChallenge
from ..operations.challenge_configuration import AdminUpdateTiedChallengeSchedule
from ..models import (
    ModelChallengeResponseAssignmentRuleEnum,
    ModelChallengeResponseGoalsVisibilityEnum,
    ModelChallengeResponseRotationEnum,
    ModelChallengeResponseStatusEnum,
)
from ..models import (
    ModelCreateChallengeRequestAssignmentRuleEnum,
    ModelCreateChallengeRequestGoalsVisibilityEnum,
    ModelCreateChallengeRequestRotationEnum,
)
from ..models import (
    ModelUpdateChallengeRequestAssignmentRuleEnum,
    ModelUpdateChallengeRequestGoalsVisibilityEnum,
    ModelUpdateChallengeRequestRotationEnum,
)
from ..models import ModelUpdateChallengeScheduleRequestActionEnum


@same_doc_as(AdminCreateChallenge)
def admin_create_challenge(
    body: ModelCreateChallengeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create New Challenge (adminCreateChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
    Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.
    #### Request body:
    - code: only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
    - name: name of the challenge
    - description: text describing about the challenge (optional)
    - startDate: timestamp of when the challenge is started
    - endDate: timestamp of when the challenge is ended (optional)
    - endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
    - repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
    - rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
    - activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
    - assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
    - goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
    - resetConfig: describe when rotation reset will happen (optional).
    - resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
    - resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
    - resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
    - randomizedPerRotation:
    - true: each goal will be randomly assigned to multiple periods
    - false: a goal will only be assigned to one period
    - tags: challenge's labels.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: POST

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateChallengeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelChallengeResponse (Created)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        422: Unprocessable Entity - ResponseError (99003: challenge validation error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateChallenge.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateChallenge)
async def admin_create_challenge_async(
    body: ModelCreateChallengeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create New Challenge (adminCreateChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
    Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.
    #### Request body:
    - code: only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
    - name: name of the challenge
    - description: text describing about the challenge (optional)
    - startDate: timestamp of when the challenge is started
    - endDate: timestamp of when the challenge is ended (optional)
    - endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
    - repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
    - rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
    - activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
    - assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
    - goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
    - resetConfig: describe when rotation reset will happen (optional).
    - resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
    - resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
    - resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
    - randomizedPerRotation:
    - true: each goal will be randomly assigned to multiple periods
    - false: a goal will only be assigned to one period
    - tags: challenge's labels.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: POST

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelCreateChallengeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelChallengeResponse (Created)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        422: Unprocessable Entity - ResponseError (99003: challenge validation error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateChallenge.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteChallenge)
def admin_delete_challenge(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a Challenge (adminDeleteChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: DELETE

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteChallenge)
async def admin_delete_challenge_async(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a Challenge (adminDeleteChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: DELETE

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteTiedChallenge)
def admin_delete_tied_challenge(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Tied Challenge (adminDeleteTiedChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
    - This endpoint will delete the combination of related data: CHALLENGES, GOALS, SCHEDULES, PLAYER PROGRESSIONS

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied

        method: DELETE

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTiedChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTiedChallenge)
async def admin_delete_tied_challenge_async(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Tied Challenge (adminDeleteTiedChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
    - This endpoint will delete the combination of related data: CHALLENGES, GOALS, SCHEDULES, PLAYER PROGRESSIONS

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied

        method: DELETE

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTiedChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetActiveChallenges)
def admin_get_active_challenges(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Active Challenges (adminGetActiveChallenges)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
    The endpoint provides you an access to list of currently active challenges in which the player is participating

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetActiveChallenges.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetActiveChallenges)
async def admin_get_active_challenges_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Active Challenges (adminGetActiveChallenges)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
    The endpoint provides you an access to list of currently active challenges in which the player is participating

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetActiveChallenges.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetChallenge)
def admin_get_challenge(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a Challenge (adminGetChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetChallenge)
async def admin_get_challenge_async(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a Challenge (adminGetChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetChallenges)
def admin_get_challenges(
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminGetChallengesSortByEnum]] = None,
    status: Optional[Union[str, AdminGetChallengesStatusEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Challenges (adminGetChallenges)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge Configuration"]

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
    request = AdminGetChallenges.create(
        keyword=keyword,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        tags=tags,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetChallenges)
async def admin_get_challenges_async(
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminGetChallengesSortByEnum]] = None,
    status: Optional[Union[str, AdminGetChallengesStatusEnum]] = None,
    tags: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List Challenges (adminGetChallenges)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge Configuration"]

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
    request = AdminGetChallenges.create(
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


@same_doc_as(AdminGetPeriods)
def admin_get_periods(
    challenge_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's Periods (adminGetPeriods)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListPeriodsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPeriods.create(
        challenge_code=challenge_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPeriods)
async def admin_get_periods_async(
    challenge_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Challenge's Periods (adminGetPeriods)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListPeriodsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPeriods.create(
        challenge_code=challenge_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRandomizeChallenge)
def admin_randomize_challenge(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Randomize Goals of a Challenge (adminRandomizeChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED and RandomizePerRotation assigned with true.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize

        method: POST

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelSchedule] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRandomizeChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRandomizeChallenge)
async def admin_randomize_challenge_async(
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Randomize Goals of a Challenge (adminRandomizeChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED and RandomizePerRotation assigned with true.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize

        method: POST

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelSchedule] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRandomizeChallenge.create(
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateChallenge)
def admin_update_challenge(
    body: ModelUpdateChallengeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Challenge (adminUpdateChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    Request body:
    - name: name of the challenge
    - description: text describing about the challenge (optional)
    - startDate: timestamp of when the challenge is started
    - endDate: timestamp of when the challenge is ended (optional)
    - endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
    - repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
    - rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
    - activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
    - assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
    - goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
    - resetConfig: describe when rotation reset will happen (optional).
    - resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
    - resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
    - resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
    - randomizedPerRotation:
    - true: each goal will be randomly assigned to multiple periods
    - false: a goal will only be assigned to one period
    - tags: challenge's labels.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateChallengeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        422: Unprocessable Entity - ResponseError (Unprocessable Entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateChallenge.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateChallenge)
async def admin_update_challenge_async(
    body: ModelUpdateChallengeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a Challenge (adminUpdateChallenge)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    Request body:
    - name: name of the challenge
    - description: text describing about the challenge (optional)
    - startDate: timestamp of when the challenge is started
    - endDate: timestamp of when the challenge is ended (optional)
    - endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
    - repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
    - rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
    - activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
    - assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
    - goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
    - resetConfig: describe when rotation reset will happen (optional).
    - resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
    - resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
    - resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
    - randomizedPerRotation:
    - true: each goal will be randomly assigned to multiple periods
    - false: a goal will only be assigned to one period
    - tags: challenge's labels.

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateChallengeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        422: Unprocessable Entity - ResponseError (Unprocessable Entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateChallenge.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateTiedChallengeSchedule)
def admin_update_tied_challenge_schedule(
    body: ModelUpdateChallengeScheduleRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Tied Challenge Schedule (adminUpdateTiedChallengeSchedule)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    ### Request body:
    - action: Update the challenge schedule. The available options are:
    - STOP: Ends the challenge, changing its status to RETIRED. This option supports all types of challenges.
    - ACCELERATE: Speeds up the challenge's end time. Note that this option does not apply to challenges with an 'endAfter' value.
    - endDate: The timestamp specifying when the challenge should end (required if the action is ACCELERATE).

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateChallengeScheduleRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTiedChallengeSchedule.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateTiedChallengeSchedule)
async def admin_update_tied_challenge_schedule_async(
    body: ModelUpdateChallengeScheduleRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Tied Challenge Schedule (adminUpdateTiedChallengeSchedule)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
    ### Request body:
    - action: Update the challenge schedule. The available options are:
    - STOP: Ends the challenge, changing its status to RETIRED. This option supports all types of challenges.
    - ACCELERATE: Speeds up the challenge's end time. Note that this option does not apply to challenges with an 'endAfter' value.
    - endDate: The timestamp specifying when the challenge should end (required if the action is ACCELERATE).

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateChallengeScheduleRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTiedChallengeSchedule.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
