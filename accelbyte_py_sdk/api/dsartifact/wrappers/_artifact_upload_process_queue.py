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

from ..models import ModelsListAllQueueResponse
from ..models import ModelsListNodesIPAddress
from ..models import ModelsListQueueResponse
from ..models import ModelsQueue
from ..models import ResponseError

from ..operations.artifact_upload_process_queue import DeleteActiveQueue
from ..operations.artifact_upload_process_queue import DeleteNodeByID
from ..operations.artifact_upload_process_queue import DeleteQueue
from ..operations.artifact_upload_process_queue import GetActiveQueue
from ..operations.artifact_upload_process_queue import ListAllActiveQueue
from ..operations.artifact_upload_process_queue import ListAllQueue
from ..operations.artifact_upload_process_queue import ListNodesIPAddress
from ..operations.artifact_upload_process_queue import ListQueue
from ..operations.artifact_upload_process_queue import ReportFailedUpload
from ..operations.artifact_upload_process_queue import SetActiveQueue


@same_doc_as(DeleteActiveQueue)
def delete_active_queue(
    node_ip: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete active queue process on a node (deleteActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [DELETE]

    This endpoint is used to delete active queue process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteActiveQueue.create(
        node_ip=node_ip,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteActiveQueue)
async def delete_active_queue_async(
    node_ip: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete active queue process on a node (deleteActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [DELETE]

    This endpoint is used to delete active queue process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteActiveQueue.create(
        node_ip=node_ip,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNodeByID)
def delete_node_by_id(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a node that previously held artifact queue by IP address (deleteNodeByID)

    Required permission: ADMIN:DSAM:ARTIFACT:NODES [DELETE]

    Required scope: social

    This endpoint will delete a node by IP

    Properties:
        url: /dsartifact/artifacts/nodes/ipaddresses

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (delete queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteNodeByID.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNodeByID)
async def delete_node_by_id_async(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a node that previously held artifact queue by IP address (deleteNodeByID)

    Required permission: ADMIN:DSAM:ARTIFACT:NODES [DELETE]

    Required scope: social

    This endpoint will delete a node by IP

    Properties:
        url: /dsartifact/artifacts/nodes/ipaddresses

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (delete queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteNodeByID.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteQueue)
def delete_queue(
    node_ip: str,
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a queue entry (deleteQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [DELETE]

    Required scope: social

    This endpoint will delete a queue entry

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (delete queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteQueue.create(
        node_ip=node_ip,
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteQueue)
async def delete_queue_async(
    node_ip: str,
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a queue entry (deleteQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [DELETE]

    Required scope: social

    This endpoint will delete a queue entry

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues

        method: DELETE

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (delete queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteQueue.create(
        node_ip=node_ip,
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetActiveQueue)
def get_active_queue(
    node_ip: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get active queue process on a node (getActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

    This endpoint is used to get an active queue process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        200: OK - ModelsQueue (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = GetActiveQueue.create(
        node_ip=node_ip,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetActiveQueue)
async def get_active_queue_async(
    node_ip: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get active queue process on a node (getActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

    This endpoint is used to get an active queue process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        200: OK - ModelsQueue (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = GetActiveQueue.create(
        node_ip=node_ip,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListAllActiveQueue)
def list_all_active_queue(
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all currently uploading artifact queue (listAllActiveQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

    Required scope: social

    This endpoint will list all DSes which artifact is currently in uploading process.

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues/active/all

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        pod_name: (podName) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAllQueueResponse (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAllActiveQueue.create(
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        pod_name=pod_name,
        previous=previous,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListAllActiveQueue)
async def list_all_active_queue_async(
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all currently uploading artifact queue (listAllActiveQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

    Required scope: social

    This endpoint will list all DSes which artifact is currently in uploading process.

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues/active/all

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        pod_name: (podName) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAllQueueResponse (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAllActiveQueue.create(
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        pod_name=pod_name,
        previous=previous,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListAllQueue)
def list_all_queue(
    exclude_uploading: Optional[bool] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    order: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all artifact upload process queues (listAllQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

    Required scope: social

    This endpoint will list all DSes which has artifact in upload queue.

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues/all

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        exclude_uploading: (exclude_uploading) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        order: (order) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAllQueueResponse (get all queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAllQueue.create(
        exclude_uploading=exclude_uploading,
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        order=order,
        pod_name=pod_name,
        previous=previous,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListAllQueue)
async def list_all_queue_async(
    exclude_uploading: Optional[bool] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    order: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all artifact upload process queues (listAllQueue)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT:QUEUE [READ]

    Required scope: social

    This endpoint will list all DSes which has artifact in upload queue.

    Properties:
        url: /dsartifact/namespaces/{namespace}/artifacts/queues/all

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        exclude_uploading: (exclude_uploading) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        order: (order) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListAllQueueResponse (get all queue success.)

        400: Bad Request - ResponseError (Bad Request)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAllQueue.create(
        exclude_uploading=exclude_uploading,
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        order=order,
        pod_name=pod_name,
        previous=previous,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListNodesIPAddress)
def list_nodes_ip_address(
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    previous: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IP Address of all nodes that all artifact in queue resides. This IP Address is the IP Address of nomad client (listNodesIPAddress)

    Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

    Required scope: social

    This endpoint will list IP Address of all artifact queue

    Properties:
        url: /dsartifact/artifacts/nodes/ipaddresses

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListNodesIPAddress (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListNodesIPAddress.create(
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        previous=previous,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListNodesIPAddress)
async def list_nodes_ip_address_async(
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    previous: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IP Address of all nodes that all artifact in queue resides. This IP Address is the IP Address of nomad client (listNodesIPAddress)

    Required permission: ADMIN:DSAM:ARTIFACT:NODES [READ]

    Required scope: social

    This endpoint will list IP Address of all artifact queue

    Properties:
        url: /dsartifact/artifacts/nodes/ipaddresses

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        node_ip: (nodeIP) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

    Responses:
        200: OK - ModelsListNodesIPAddress (get all active queue success.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListNodesIPAddress.create(
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        previous=previous,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListQueue)
def list_queue(
    node_ip: str,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    previous: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of queues on a node (listQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

    This endpoint is used to get the list of queues on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        200: OK - ModelsListQueueResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListQueue.create(
        node_ip=node_ip,
        limit=limit,
        next_=next_,
        previous=previous,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListQueue)
async def list_queue_async(
    node_ip: str,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    previous: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of queues on a node (listQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [READ]

    This endpoint is used to get the list of queues on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues

        method: GET

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        node_ip: (nodeIP) REQUIRED str in query

    Responses:
        200: OK - ModelsListQueueResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListQueue.create(
        node_ip=node_ip,
        limit=limit,
        next_=next_,
        previous=previous,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ReportFailedUpload)
def report_failed_upload(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report failed artifact upload (reportFailedUpload)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

    This endpoint is used to report a failed artifact upload
    ```

    Properties:
        url: /dsartifact/artifacts/queues/failed

        method: PUT

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ReportFailedUpload.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ReportFailedUpload)
async def report_failed_upload_async(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Report failed artifact upload (reportFailedUpload)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

    This endpoint is used to report a failed artifact upload
    ```

    Properties:
        url: /dsartifact/artifacts/queues/failed

        method: PUT

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ReportFailedUpload.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetActiveQueue)
def set_active_queue(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set a queue as active queue (setActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

    This endpoint is used to set a queue entry as the current active queue
    for artifact uploading process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: PUT

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SetActiveQueue.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetActiveQueue)
async def set_active_queue_async(
    node_ip: str,
    pod_name: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Set a queue as active queue (setActiveQueue)

    ```
    Required permission: ADMIN:DSAM:ARTIFACT:QUEUE [UPDATE]

    This endpoint is used to set a queue entry as the current active queue
    for artifact uploading process on a node
    ```

    Properties:
        url: /dsartifact/artifacts/queues/active

        method: PUT

        tags: ["Artifact Upload Process Queue"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        node_ip: (nodeIP) REQUIRED str in query

        pod_name: (podName) REQUIRED str in query

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SetActiveQueue.create(
        node_ip=node_ip,
        pod_name=pod_name,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
