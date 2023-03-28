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

from ..models import ResponseErrorResponse

from ..operations.anonymization import AdminAnonymizeUserLeaderboardAdminV1


@same_doc_as(AdminAnonymizeUserLeaderboardAdminV1)
def admin_anonymize_user_leaderboard_admin_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Anonymize user's leaderboard (adminAnonymizeUserLeaderboardAdminV1)

    This API will delete specified user leaderboard




    Required permission
    `ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAnonymizeUserLeaderboardAdminV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAnonymizeUserLeaderboardAdminV1)
async def admin_anonymize_user_leaderboard_admin_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Anonymize user's leaderboard (adminAnonymizeUserLeaderboardAdminV1)

    This API will delete specified user leaderboard




    Required permission
    `ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards

        method: DELETE

        tags: ["Anonymization"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminAnonymizeUserLeaderboardAdminV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
