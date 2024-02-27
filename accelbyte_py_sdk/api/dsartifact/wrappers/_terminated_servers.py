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

from ..models import ModelsListTerminatedServersResponse
from ..models import ResponseError

from ..operations.terminated_servers import ListTerminatedServersWithNamespace


@same_doc_as(ListTerminatedServersWithNamespace)
def list_terminated_servers_with_namespace(
    deployment: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers in a Namespace (listTerminatedServersWithNamespace)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

    This endpoint used to retrieve terminated servers in a namespace
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/search

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListTerminatedServersWithNamespace.create(
        deployment=deployment,
        game_mode=game_mode,
        limit=limit,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListTerminatedServersWithNamespace)
async def list_terminated_servers_with_namespace_async(
    deployment: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers in a Namespace (listTerminatedServersWithNamespace)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

    This endpoint used to retrieve terminated servers in a namespace
    ```

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/search

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListTerminatedServersWithNamespace.create(
        deployment=deployment,
        game_mode=game_mode,
        limit=limit,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
