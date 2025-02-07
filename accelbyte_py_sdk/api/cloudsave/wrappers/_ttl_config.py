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

from ..models import ModelsResponseError

from ..operations.ttl_config import DeleteAdminGameRecordTTLConfig
from ..operations.ttl_config import DeleteGameBinaryRecordTTLConfig
from ..operations.ttl_config import DeleteGameRecordTTLConfig


@same_doc_as(DeleteAdminGameRecordTTLConfig)
def delete_admin_game_record_ttl_config(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin game record TTL config (deleteAdminGameRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the admin game record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError

        500: Internal Server Error - ModelsResponseError
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAdminGameRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAdminGameRecordTTLConfig)
async def delete_admin_game_record_ttl_config_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete admin game record TTL config (deleteAdminGameRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the admin game record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError

        500: Internal Server Error - ModelsResponseError
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAdminGameRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGameBinaryRecordTTLConfig)
def delete_game_binary_record_ttl_config(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record TTL config (deleteGameBinaryRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the game binary record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameBinaryRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGameBinaryRecordTTLConfig)
async def delete_game_binary_record_ttl_config_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game binary record TTL config (deleteGameBinaryRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the game binary record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18317: record not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18318: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameBinaryRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGameRecordTTLConfig)
def delete_game_record_ttl_config(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record TTL config (deleteGameRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the game record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18003: record not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18053: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGameRecordTTLConfig)
async def delete_game_record_ttl_config_async(
    key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete game record TTL config (deleteGameRecordTTLConfig)

    ## Description

    This endpoints will delete the ttl config of the game record

    Properties:
        url: /cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl

        method: DELETE

        tags: ["TTLConfig"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        key: (key) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (TTL config deleted)

        400: Bad Request - ModelsResponseError (20002: validation error)

        401: Unauthorized - ModelsResponseError (20001: unauthorized access)

        403: Forbidden - ModelsResponseError (20013: insufficient permission)

        404: Not Found - ModelsResponseError (18003: record not found)

        500: Internal Server Error - ModelsResponseError (20000: internal server error | 18053: unable to update record)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGameRecordTTLConfig.create(
        key=key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
