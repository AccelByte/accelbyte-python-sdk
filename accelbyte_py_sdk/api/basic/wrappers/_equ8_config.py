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

from ..models import ADTOForUpdateEqu8ConfigAPICall
from ..models import Equ8Config
from ..models import ErrorEntity

from ..operations.equ8_config import DeleteConfig
from ..operations.equ8_config import GetConfig
from ..operations.equ8_config import UpdateConfig


@same_doc_as(DeleteConfig)
def delete_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete equ8 config (deleteConfig)

    Delete equ8 config.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=8 (DELETE)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: DELETE

        tags: ["EQU8Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete equ8 config successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteConfig)
async def delete_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete equ8 config (deleteConfig)

    Delete equ8 config.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=8 (DELETE)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: DELETE

        tags: ["EQU8Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete equ8 config successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetConfig)
def get_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get equ8 config (getConfig)

    Get equ8 config.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=2 (READ)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: GET

        tags: ["EQU8Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Equ8Config (successful operation)

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetConfig)
async def get_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get equ8 config (getConfig)

    Get equ8 config.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=2 (READ)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: GET

        tags: ["EQU8Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Equ8Config (successful operation)

        404: Not Found - ErrorEntity (11641: Equ8 config not found in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateConfig)
def update_config(
    body: Optional[ADTOForUpdateEqu8ConfigAPICall] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or Update equ8 config (updateConfig)

    Update equ8 config, create if not exists.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=4 (UPDATE)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: PATCH

        tags: ["EQU8Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ADTOForUpdateEqu8ConfigAPICall in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Equ8Config (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateConfig)
async def update_config_async(
    body: Optional[ADTOForUpdateEqu8ConfigAPICall] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create or Update equ8 config (updateConfig)

    Update equ8 config, create if not exists.
    Other detail info:

      * Required permission : resource= "ADMIN:NAMESPACE:{namespace}:EQU8CONFIG" , action=4 (UPDATE)

    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/equ8/config

        method: PATCH

        tags: ["EQU8Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL ADTOForUpdateEqu8ConfigAPICall in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Equ8Config (successful operation)

        400: Bad Request - ErrorEntity (11621: Invalid EQU8 api key in namespace [{namespace}])

        500: Internal Server Error - ErrorEntity (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
