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

from ..models import ModelsSetAliasRequest
from ..models import ModelsUpdateServerRequest
from ..models import ResponseError

from ..operations.admin import DeleteServer
from ..operations.admin import SetServerAlias
from ..operations.admin import UpdateServerConfig


@same_doc_as(DeleteServer)
def delete_server(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete a QoS service record (DeleteServer)

    ```
    Required permission: ADMIN:QOS:SERVER [DELETE]
    Required scope: social

    This endpoint delete a registered QoS service record.
    ```

    Properties:
        url: /qosm/admin/servers/{region}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record deleted)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteServer.create(
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteServer)
async def delete_server_async(
    region: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete a QoS service record (DeleteServer)

    ```
    Required permission: ADMIN:QOS:SERVER [DELETE]
    Required scope: social

    This endpoint delete a registered QoS service record.
    ```

    Properties:
        url: /qosm/admin/servers/{region}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record deleted)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = DeleteServer.create(
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SetServerAlias)
def set_server_alias(
    body: ModelsSetAliasRequest,
    region: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Modify a QoS service's region alias (SetServerAlias)

    ```
    Required permission: ADMIN:QOS:SERVER [UDPATE]
    Required scope: social

    This endpoint modifies a registered QoS service's region alias.
    ```

    Properties:
        url: /qosm/admin/servers/{region}/alias

        method: POST

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetAliasRequest in body

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (server record not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SetServerAlias.create(
        body=body,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SetServerAlias)
async def set_server_alias_async(
    body: ModelsSetAliasRequest,
    region: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Modify a QoS service's region alias (SetServerAlias)

    ```
    Required permission: ADMIN:QOS:SERVER [UDPATE]
    Required scope: social

    This endpoint modifies a registered QoS service's region alias.
    ```

    Properties:
        url: /qosm/admin/servers/{region}/alias

        method: POST

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetAliasRequest in body

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (server record not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SetServerAlias.create(
        body=body,
        region=region,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateServerConfig)
def update_server_config(
    body: ModelsUpdateServerRequest,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update QoS Service configuration (UpdateServerConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]
    Required scope: social

    This endpoint updates the registered QoS service's configurable configuration'.
    ```

    Properties:
        url: /qosm/admin/namespaces/{namespace}/servers/{region}

        method: PATCH

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateServerRequest in body

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (server record not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateServerConfig.create(
        body=body,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateServerConfig)
async def update_server_config_async(
    body: ModelsUpdateServerRequest,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update QoS Service configuration (UpdateServerConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]
    Required scope: social

    This endpoint updates the registered QoS service's configurable configuration'.
    ```

    Properties:
        url: /qosm/admin/namespaces/{namespace}/servers/{region}

        method: PATCH

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateServerRequest in body

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (server record not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateServerConfig.create(
        body=body,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
