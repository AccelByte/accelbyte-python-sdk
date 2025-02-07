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

from ..models import ApimodelsChainingOperationReq
from ..models import ApimodelsChainingOperationResp

from ..operations.admin_chaining_operations import AdminCreateChainingOperations


@same_doc_as(AdminCreateChainingOperations)
def admin_create_chaining_operations(
    body: ApimodelsChainingOperationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To Create Chaining Operation (AdminCreateChainingOperations)


    Create chaining Operations.
    This process will run sequentially
    1. remove item process
    2. consume item process
    3. update item process
    4. create item process
    if toSpecificInventory set as true, then inventoryId field will be mandatory, vice versa

    The behavior of each process is same with current admin level endpoint

    requestId: Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted,
    it will return original successful response
    replayed : replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/chainingOperations

        method: POST

        tags: ["Admin Chaining Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsChainingOperationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsChainingOperationResp (OK)

        400: Bad Request - ApimodelsChainingOperationResp (Bad Request)

        401: Unauthorized - ApimodelsChainingOperationResp (Unauthorized)

        403: Forbidden - ApimodelsChainingOperationResp (Forbidden)

        404: Not Found - ApimodelsChainingOperationResp (Not Found)

        500: Internal Server Error - ApimodelsChainingOperationResp (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateChainingOperations.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateChainingOperations)
async def admin_create_chaining_operations_async(
    body: ApimodelsChainingOperationReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To Create Chaining Operation (AdminCreateChainingOperations)


    Create chaining Operations.
    This process will run sequentially
    1. remove item process
    2. consume item process
    3. update item process
    4. create item process
    if toSpecificInventory set as true, then inventoryId field will be mandatory, vice versa

    The behavior of each process is same with current admin level endpoint

    requestId: Request id(Optional), client should provide a unique request id to perform at most once execution, When a request id is resubmitted,
    it will return original successful response
    replayed : replayed, if true,the response is original successful response. This will not be included in response if client have not pass request id.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/chainingOperations

        method: POST

        tags: ["Admin Chaining Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsChainingOperationReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsChainingOperationResp (OK)

        400: Bad Request - ApimodelsChainingOperationResp (Bad Request)

        401: Unauthorized - ApimodelsChainingOperationResp (Unauthorized)

        403: Forbidden - ApimodelsChainingOperationResp (Forbidden)

        404: Not Found - ApimodelsChainingOperationResp (Not Found)

        500: Internal Server Error - ApimodelsChainingOperationResp (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateChainingOperations.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
