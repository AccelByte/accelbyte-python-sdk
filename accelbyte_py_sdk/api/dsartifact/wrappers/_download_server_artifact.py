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

from ..models import ModelsArtifactFileStatus
from ..models import ResponseError

from ..operations.download_server_artifact import CheckServerArtifact
from ..operations.download_server_artifact import DownloadServerArtifacts


@same_doc_as(CheckServerArtifact)
def check_server_artifact(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check dedicated server artifacts files existence (checkServerArtifact)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

    Required scope: social

    This endpoint will check artifact file existence before download file.

    This endpoint will return the artifact status.

    The possible status is : 'Empty', 'In Queue', 'Uploading', 'Ready', 'Failed'

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists

        method: GET

        tags: ["Download Server Artifact"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsArtifactFileStatus (artifact exists.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckServerArtifact.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckServerArtifact)
async def check_server_artifact_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check dedicated server artifacts files existence (checkServerArtifact)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

    Required scope: social

    This endpoint will check artifact file existence before download file.

    This endpoint will return the artifact status.

    The possible status is : 'Empty', 'In Queue', 'Uploading', 'Ready', 'Failed'

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists

        method: GET

        tags: ["Download Server Artifact"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsArtifactFileStatus (artifact exists.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckServerArtifact.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DownloadServerArtifacts)
def download_server_artifacts(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download dedicated server artifact files (downloadServerArtifacts)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

    Required scope: social

    This endpoint will download dedicated server's Artifact file (.zip).

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download

        method: GET

        tags: ["Download Server Artifact"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - (server artifact downloaded.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadServerArtifacts.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadServerArtifacts)
async def download_server_artifacts_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download dedicated server artifact files (downloadServerArtifacts)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

    Required scope: social

    This endpoint will download dedicated server's Artifact file (.zip).

    Properties:
        url: /dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download

        method: GET

        tags: ["Download Server Artifact"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - (server artifact downloaded.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadServerArtifacts.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
