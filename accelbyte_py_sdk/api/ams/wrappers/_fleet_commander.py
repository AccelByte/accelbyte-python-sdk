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


from ..operations.fleet_commander import BasicHealthCheck
from ..operations.fleet_commander import Func1
from ..operations.fleet_commander import PortalHealthCheck


@same_doc_as(BasicHealthCheck)
def basic_health_check(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Health check (BasicHealthCheck)

    Properties:
        url: /healthz

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BasicHealthCheck.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BasicHealthCheck)
async def basic_health_check_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Health check (BasicHealthCheck)

    Properties:
        url: /healthz

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BasicHealthCheck.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Func1)
def func1(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Version info (func1)

    Properties:
        url: /ams/version

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Func1.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Func1)
async def func1_async(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Version info (func1)

    Properties:
        url: /ams/version

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Func1.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PortalHealthCheck)
def portal_health_check(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Health check (PortalHealthCheck)

    Properties:
        url: /ams/healthz

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = PortalHealthCheck.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PortalHealthCheck)
async def portal_health_check_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Health check (PortalHealthCheck)

    Properties:
        url: /ams/healthz

        method: GET

        tags: ["Fleet Commander"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = PortalHealthCheck.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
