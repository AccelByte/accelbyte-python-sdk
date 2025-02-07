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

from ..models import ApimodelsErrorResponse
from ..models import ApimodelsListInventoryResp

from ..operations.public_inventories import PublicListInventories
from ..operations.public_inventories import PublicListInventoriesSortByEnum


@same_doc_as(PublicListInventories)
def public_list_inventories(
    inventory_configuration_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListInventoriesSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all my inventories (PublicListInventories)


    Listing all my inventories in a namespace.
    The response body will be in the form of standard pagination.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories

        method: GET

        tags: ["Public Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        inventory_configuration_code: (inventoryConfigurationCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListInventories.create(
        inventory_configuration_code=inventory_configuration_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListInventories)
async def public_list_inventories_async(
    inventory_configuration_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListInventoriesSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list all my inventories (PublicListInventories)


    Listing all my inventories in a namespace.
    The response body will be in the form of standard pagination.

    Properties:
        url: /inventory/v1/public/namespaces/{namespace}/users/me/inventories

        method: GET

        tags: ["Public Inventories"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        inventory_configuration_code: (inventoryConfigurationCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListInventoryResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListInventories.create(
        inventory_configuration_code=inventory_configuration_code,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
