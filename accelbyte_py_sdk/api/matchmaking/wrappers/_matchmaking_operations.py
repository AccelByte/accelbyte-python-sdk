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

from ..models import LogAppMessageDeclaration
from ..models import ResponseError

from ..operations.matchmaking_operations import GetHealthcheckInfo
from ..operations.matchmaking_operations import HandlerV3Healthz
from ..operations.matchmaking_operations import PublicGetMessages
from ..operations.matchmaking_operations import VersionCheckHandler


@same_doc_as(GetHealthcheckInfo)
def get_healthcheck_info(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info (GetHealthcheckInfo)

    Properties:
        url: /healthz

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfo.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetHealthcheckInfo)
async def get_healthcheck_info_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get healthcheck info (GetHealthcheckInfo)

    Properties:
        url: /healthz

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GetHealthcheckInfo.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(HandlerV3Healthz)
def handler_v3_healthz(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Handler V3 healthz (handlerV3Healthz)

    Properties:
        url: /matchmaking/healthz

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HandlerV3Healthz.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(HandlerV3Healthz)
async def handler_v3_healthz_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Handler V3 healthz (handlerV3Healthz)

    Properties:
        url: /matchmaking/healthz

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HandlerV3Healthz.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetMessages)
def public_get_messages(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """get service messages (publicGetMessages)

    get the list of messages.

    Properties:
        url: /matchmaking/v1/messages

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[LogAppMessageDeclaration]

        500: Internal Server Error - ResponseError
    """
    request = PublicGetMessages.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetMessages)
async def public_get_messages_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """get service messages (publicGetMessages)

    get the list of messages.

    Properties:
        url: /matchmaking/v1/messages

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[LogAppMessageDeclaration]

        500: Internal Server Error - ResponseError
    """
    request = PublicGetMessages.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(VersionCheckHandler)
def version_check_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Version check handler (versionCheckHandler)

    Properties:
        url: /matchmaking/version

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = VersionCheckHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(VersionCheckHandler)
async def version_check_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Version check handler (versionCheckHandler)

    Properties:
        url: /matchmaking/version

        method: GET

        tags: ["Matchmaking Operations"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = VersionCheckHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
