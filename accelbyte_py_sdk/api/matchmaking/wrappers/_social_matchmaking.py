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

from ..models import ModelsUpdatePlayTimeWeightRequest
from ..models import ModelsUpdatePlayerPlaytimeWeightResponse
from ..models import ResponseError
from ..models import ResponseErrorV1

from ..operations.social_matchmaking import UpdatePlayTimeWeight


@deprecated
@same_doc_as(UpdatePlayTimeWeight)
def update_play_time_weight(
    body: ModelsUpdatePlayTimeWeightRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player -- playtime connection weight (UpdatePlayTimeWeight)

    Update a connection weight between player and playtime.

    This endpoint is intended to be called by admin for debugging purpose on social matchmaking rule.

    Properties:
        url: /matchmaking/social/playtime/namespaces/{namespace}/weight

        method: PATCH

        tags: ["Social Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePlayTimeWeightRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdatePlayerPlaytimeWeightResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510301: user playtime not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlayTimeWeight.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdatePlayTimeWeight)
async def update_play_time_weight_async(
    body: ModelsUpdatePlayTimeWeightRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update player -- playtime connection weight (UpdatePlayTimeWeight)

    Update a connection weight between player and playtime.

    This endpoint is intended to be called by admin for debugging purpose on social matchmaking rule.

    Properties:
        url: /matchmaking/social/playtime/namespaces/{namespace}/weight

        method: PATCH

        tags: ["Social Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePlayTimeWeightRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdatePlayerPlaytimeWeightResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510301: user playtime not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlayTimeWeight.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
