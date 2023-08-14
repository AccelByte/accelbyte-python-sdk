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


from ..operations.operations import Func2
from ..operations.operations import PortalHealthCheck


@same_doc_as(Func2)
def func2(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """health check (func2)

    Properties:
        url: /ams/healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Func2.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Func2)
async def func2_async(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """health check (func2)

    Properties:
        url: /ams/healthz

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Func2.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PortalHealthCheck)
def portal_health_check(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """health check (PortalHealthCheck)

    Properties:
        url: /healthz

        method: GET

        tags: []

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
    """health check (PortalHealthCheck)

    Properties:
        url: /healthz

        method: GET

        tags: []

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
