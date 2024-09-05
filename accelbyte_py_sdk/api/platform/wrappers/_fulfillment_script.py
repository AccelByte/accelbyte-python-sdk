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

from ..models import ErrorEntity
from ..models import FulfillmentScriptCreate
from ..models import FulfillmentScriptInfo
from ..models import FulfillmentScriptUpdate

from ..operations.fulfillment_script import CreateFulfillmentScript
from ..operations.fulfillment_script import DeleteFulfillmentScript
from ..operations.fulfillment_script import GetFulfillmentScript
from ..operations.fulfillment_script import ListFulfillmentScripts
from ..operations.fulfillment_script import UpdateFulfillmentScript


@same_doc_as(CreateFulfillmentScript)
def create_fulfillment_script(
    id_: str,
    body: Optional[FulfillmentScriptCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create fulfillment script (createFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Create fulfillment script.
    Other detail info:


    Fulfillment scripts are used for adding custom fulfillment logic based on ITEM_TYPE : [MEDIA,INGAMEITEM] for now, and the custom scripts only cover grantDays.
    Example for grantDays:
    `order && ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30 : -1`

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: POST

        tags: ["FulfillmentScript"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentScriptCreate in body

        id_: (id) REQUIRED str in path

    Responses:
        201: Created - FulfillmentScriptInfo (successful operation)

        409: Conflict - ErrorEntity (38171: Fulfillment script already exists)
    """
    request = CreateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateFulfillmentScript)
async def create_fulfillment_script_async(
    id_: str,
    body: Optional[FulfillmentScriptCreate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create fulfillment script (createFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Create fulfillment script.
    Other detail info:


    Fulfillment scripts are used for adding custom fulfillment logic based on ITEM_TYPE : [MEDIA,INGAMEITEM] for now, and the custom scripts only cover grantDays.
    Example for grantDays:
    `order && ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30 : -1`

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: POST

        tags: ["FulfillmentScript"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentScriptCreate in body

        id_: (id) REQUIRED str in path

    Responses:
        201: Created - FulfillmentScriptInfo (successful operation)

        409: Conflict - ErrorEntity (38171: Fulfillment script already exists)
    """
    request = CreateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteFulfillmentScript)
def delete_fulfillment_script(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete fulfillment script (deleteFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Delete fulfillment script.

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: DELETE

        tags: ["FulfillmentScript"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (delete fulfillment script successfully)
    """
    request = DeleteFulfillmentScript.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteFulfillmentScript)
async def delete_fulfillment_script_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete fulfillment script (deleteFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Delete fulfillment script.

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: DELETE

        tags: ["FulfillmentScript"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        204: No Content - (delete fulfillment script successfully)
    """
    request = DeleteFulfillmentScript.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetFulfillmentScript)
def get_fulfillment_script(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get fulfillment script by id (getFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Get fulfillment script by id.
    Other detail info:

      * Returns : get fulfillment script

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: GET

        tags: ["FulfillmentScript"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - FulfillmentScriptInfo (successful operation)

        404: Not Found - ErrorEntity (38141: Fulfillment script does not exist)
    """
    request = GetFulfillmentScript.create(
        id_=id_,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetFulfillmentScript)
async def get_fulfillment_script_async(
    id_: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get fulfillment script by id (getFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Get fulfillment script by id.
    Other detail info:

      * Returns : get fulfillment script

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: GET

        tags: ["FulfillmentScript"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - FulfillmentScriptInfo (successful operation)

        404: Not Found - ErrorEntity (38141: Fulfillment script does not exist)
    """
    request = GetFulfillmentScript.create(
        id_=id_,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListFulfillmentScripts)
def list_fulfillment_scripts(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List all fulfillment scripts (listFulfillmentScripts)

    [Not supported yet in AGS Shared Cloud] List all fulfillment scripts.

    Properties:
        url: /platform/admin/fulfillment/scripts

        method: GET

        tags: ["FulfillmentScript"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[FulfillmentScriptInfo] (successful operation)
    """
    request = ListFulfillmentScripts.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListFulfillmentScripts)
async def list_fulfillment_scripts_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List all fulfillment scripts (listFulfillmentScripts)

    [Not supported yet in AGS Shared Cloud] List all fulfillment scripts.

    Properties:
        url: /platform/admin/fulfillment/scripts

        method: GET

        tags: ["FulfillmentScript"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

    Responses:
        200: OK - List[FulfillmentScriptInfo] (successful operation)
    """
    request = ListFulfillmentScripts.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateFulfillmentScript)
def update_fulfillment_script(
    id_: str,
    body: Optional[FulfillmentScriptUpdate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update fulfillment script (updateFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Update fulfillment script.

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: PATCH

        tags: ["FulfillmentScript"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentScriptUpdate in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - FulfillmentScriptInfo (successful operation)

        400: Bad Request - ErrorEntity (38141: Fulfillment script does not exist)
    """
    request = UpdateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateFulfillmentScript)
async def update_fulfillment_script_async(
    id_: str,
    body: Optional[FulfillmentScriptUpdate] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update fulfillment script (updateFulfillmentScript)

    [Not supported yet in AGS Shared Cloud] Update fulfillment script.

    Properties:
        url: /platform/admin/fulfillment/scripts/{id}

        method: PATCH

        tags: ["FulfillmentScript"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentScriptUpdate in body

        id_: (id) REQUIRED str in path

    Responses:
        200: OK - FulfillmentScriptInfo (successful operation)

        400: Bad Request - ErrorEntity (38141: Fulfillment script does not exist)
    """
    request = UpdateFulfillmentScript.create(
        id_=id_,
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
