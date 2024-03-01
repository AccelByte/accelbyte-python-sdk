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
from ..models import ModelsUpdateChallengeRequest
from ..models import ResponseError

from ..operations.challenge_configuration import AdminCreateChallenge
from ..operations.challenge_configuration import AdminDeleteChallenge
from ..operations.challenge_configuration import AdminGetChallenge
from ..operations.challenge_configuration import AdminGetChallenges
from ..operations.challenge_configuration import AdminGetChallengesStatusEnum
from ..operations.challenge_configuration import AdminGetPeriods
from ..operations.challenge_configuration import AdminRandomizeChallenge
from ..operations.challenge_configuration import AdminUpdateChallenge
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
    ModelsUpdateChallengeRequestAssignmentRuleEnum,
    ModelsUpdateChallengeRequestGoalsVisibilityEnum,
    ModelsUpdateChallengeRequestRotationEnum,
)


@same_doc_as(AdminCreateChallenge)
def admin_create_challenge(
    body: ModelCreateChallengeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]&lt;/li&gt;&lt;/ul&gt;Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken. (adminCreateChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

    Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

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

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        422: Unprocessable Entity - ResponseError (99003: challenge validation error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]&lt;/li&gt;&lt;/ul&gt;Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken. (adminCreateChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

    Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]

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

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        409: Conflict - ResponseError (99002: duplicate key error: {{message}})

        422: Unprocessable Entity - ResponseError (99003: challenge validation error: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]&lt;/li&gt;&lt;/ul&gt; (adminDeleteChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

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
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]&lt;/li&gt;&lt;/ul&gt; (adminDeleteChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteChallenge.create(
        challenge_code=challenge_code,
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

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
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

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
        namespace, error = get_services_namespace()
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
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, AdminGetChallengesStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetChallenges)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetChallenges.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetChallenges)
async def admin_get_challenges_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[Union[str, AdminGetChallengesStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetChallenges)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges

        method: GET

        tags: ["Challenge Configuration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListChallengeResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetChallenges.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetPeriods)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

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
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]&lt;/li&gt;&lt;/ul&gt; (adminGetPeriods)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

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
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]&lt;/li&gt;&lt;/ul&gt;This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED. (adminRandomizeChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

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

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]&lt;/li&gt;&lt;/ul&gt;This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED. (adminRandomizeChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

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

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - ResponseError (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    body: ModelsUpdateChallengeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]&lt;/li&gt;&lt;/ul&gt; (adminUpdateChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChallengeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        422: Unprocessable Entity - ResponseError (Unprocessable Entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    body: ModelsUpdateChallengeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """&lt;ul&gt;&lt;li&gt;Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]&lt;/li&gt;&lt;/ul&gt; (adminUpdateChallenge)

      * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}

        method: PUT

        tags: ["Challenge Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChallengeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelChallengeResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        422: Unprocessable Entity - ResponseError (Unprocessable Entity)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
