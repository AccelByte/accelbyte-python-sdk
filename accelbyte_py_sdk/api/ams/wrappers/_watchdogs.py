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


from ..operations.watchdogs import LocalWatchdogConnect
from ..operations.watchdogs import WatchdogConnect


@same_doc_as(LocalWatchdogConnect)
def local_watchdog_connect(
    watchdog_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """connect a local watchdog (LocalWatchdogConnect)

    This is to support local ds development scenarios

    Required Permission: NAMESPACE:{namespace}:AMS:LOCALDS [CREATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/local/{watchdogID}/connect

        method: GET

        tags: ["Watchdogs"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        watchdog_id: (watchdogID) REQUIRED str in path

    Responses:
        200: OK - (OK)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = LocalWatchdogConnect.create(
        watchdog_id=watchdog_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(LocalWatchdogConnect)
async def local_watchdog_connect_async(
    watchdog_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """connect a local watchdog (LocalWatchdogConnect)

    This is to support local ds development scenarios

    Required Permission: NAMESPACE:{namespace}:AMS:LOCALDS [CREATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/local/{watchdogID}/connect

        method: GET

        tags: ["Watchdogs"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        watchdog_id: (watchdogID) REQUIRED str in path

    Responses:
        200: OK - (OK)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = LocalWatchdogConnect.create(
        watchdog_id=watchdog_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(WatchdogConnect)
def watchdog_connect(
    watchdog_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """connect a watchdog (WatchdogConnect)

    Required Permission: NAMESPACE:{namespace}:ARMADA:WATCHDOG [CREATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect

        method: GET

        tags: ["Watchdogs"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        watchdog_id: (watchdogID) REQUIRED str in path

    Responses:
        200: OK - (OK)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = WatchdogConnect.create(
        watchdog_id=watchdog_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(WatchdogConnect)
async def watchdog_connect_async(
    watchdog_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """connect a watchdog (WatchdogConnect)

    Required Permission: NAMESPACE:{namespace}:ARMADA:WATCHDOG [CREATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect

        method: GET

        tags: ["Watchdogs"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        watchdog_id: (watchdogID) REQUIRED str in path

    Responses:
        200: OK - (OK)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = WatchdogConnect.create(
        watchdog_id=watchdog_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
