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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsCreateDSMConfigRequest
from ..models import ModelsCreatePortRequest
from ..models import ModelsDSMConfigRecord
from ..models import ModelsImportResponse
from ..models import ModelsListConfigResponse
from ..models import ModelsUpdateDSMConfigRequest
from ..models import ModelsUpdatePortRequest
from ..models import ResponseError

from ..operations.config import AddPort
from ..operations.config import ClearCache
from ..operations.config import CreateConfig
from ..operations.config import DeleteConfig
from ..operations.config import DeletePort
from ..operations.config import ExportConfigV1
from ..operations.config import GetConfig
from ..operations.config import ImportConfigV1
from ..operations.config import ListConfig
from ..operations.config import SaveConfig
from ..operations.config import UpdateConfig
from ..operations.config import UpdatePort


@same_doc_as(AddPort)
def add_port(
    body: ModelsCreatePortRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create port config (AddPort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers port config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePortRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDSMConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        409: Conflict - ResponseError (port config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddPort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddPort)
async def add_port_async(
    body: ModelsCreatePortRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create port config (AddPort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint create a dedicated servers port config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreatePortRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDSMConfigRecord (pod config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        409: Conflict - ResponseError (port config already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddPort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ClearCache)
def clear_cache(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clear config cache (ClearCache)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint clears config cache in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/cache

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClearCache.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ClearCache)
async def clear_cache_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clear config cache (ClearCache)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint clears config cache in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/cache

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (ok)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClearCache.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateConfig)
def create_config(
    body: ModelsCreateDSMConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create config (CreateConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint creates config.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    }
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDSMConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDSMConfigRecord (config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateConfig)
async def create_config_async(
    body: ModelsCreateDSMConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create config (CreateConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint creates config.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    }
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateDSMConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsDSMConfigRecord (config created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteConfig)
def delete_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete config (DeleteConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]
    Required scope: social

    This endpoint removes config. When there are ready servers,
    those servers will be removed.
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete config (DeleteConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]
    Required scope: social

    This endpoint removes config. When there are ready servers,
    those servers will be removed.
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (config deleted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePort)
def delete_port(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete port config (DeletePort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server port config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePort.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePort)
async def delete_port_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete port config (DeletePort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

    Required scope: social

    This endpoint delete a dedicated server port config in a namespace

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: DELETE

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (ok)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePort.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExportConfigV1)
def export_config_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """export DSM Controller configuration for a namespace (exportConfigV1)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint export a dedicated servers config in a namespace.

    Properties:
        url: /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (config exported)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportConfigV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExportConfigV1)
async def export_config_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """export DSM Controller configuration for a namespace (exportConfigV1)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint export a dedicated servers config in a namespace.

    Properties:
        url: /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (config exported)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportConfigV1.create(
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
    """Get config for a namespace (GetConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated servers config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (config retrieved)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get config for a namespace (GetConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint get a dedicated servers config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (config retrieved)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ImportConfigV1)
def import_config_v1(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """import config for a namespace (importConfigV1)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint import a dedicated servers config in a namespace.

    If there is an existing configuration, the configuration would be replaced.

    Properties:
        url: /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import

        method: POST

        tags: ["Config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportResponse (config imported)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportConfigV1.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ImportConfigV1)
async def import_config_v1_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """import config for a namespace (importConfigV1)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

    Required scope: social

    This endpoint import a dedicated servers config in a namespace.

    If there is an existing configuration, the configuration would be replaced.

    Properties:
        url: /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import

        method: POST

        tags: ["Config"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportResponse (config imported)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (unauthorized access)

        403: Forbidden - ResponseError (forbidden access)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportConfigV1.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListConfig)
def list_config(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """List all configs (ListConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint lists all of dedicated servers configs.

    Properties:
        url: /dsmcontroller/admin/configs

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsListConfigResponse (configs listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListConfig)
async def list_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List all configs (ListConfig)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

    Required scope: social

    This endpoint lists all of dedicated servers configs.

    Properties:
        url: /dsmcontroller/admin/configs

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsListConfigResponse (configs listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SaveConfig)
def save_config(
    body: ModelsDSMConfigRecord,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save config (SaveConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint adds/modifies config. When there are ready servers and
    the server version is updated, those servers will be replaced with newer version.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    "image_version_mapping": {
    "1.4.0": "accelbyte/sample-ds-go:1.4.0"
    },
    "default_version": "1.4.0",
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 0,
    "configurations": {
    "1player": {
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "-gamemode 1p",
    },
    "50players": {
    "cpu_limit": "200",
    "mem_limit": "512",
    "params": "-gamemode 50p",
    }
    },
    "deployments": {
    "global-1p": {
    "game_version": "1.4.0"",
    "regions": ["us-west", "ap-southeast"],
    "configuration": "1player",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 2
    },
    "us-50p": {
    "game_version": "1.4.0"",
    "regions": ["us-west"],
    "configuration": "50players",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 5
    },
    },
    }
    ```

    Properties:
        url: /dsmcontroller/admin/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDSMConfigRecord in body

    Responses:
        204: No Content - (config added/updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SaveConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SaveConfig)
async def save_config_async(
    body: ModelsDSMConfigRecord,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save config (SaveConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
    Required scope: social

    This endpoint adds/modifies config. When there are ready servers and
    the server version is updated, those servers will be replaced with newer version.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    "image_version_mapping": {
    "1.4.0": "accelbyte/sample-ds-go:1.4.0"
    },
    "default_version": "1.4.0",
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 0,
    "configurations": {
    "1player": {
    "cpu_limit": "100",
    "mem_limit": "64",
    "params": "-gamemode 1p",
    },
    "50players": {
    "cpu_limit": "200",
    "mem_limit": "512",
    "params": "-gamemode 50p",
    }
    },
    "deployments": {
    "global-1p": {
    "game_version": "1.4.0"",
    "regions": ["us-west", "ap-southeast"],
    "configuration": "1player",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 2
    },
    "us-50p": {
    "game_version": "1.4.0"",
    "regions": ["us-west"],
    "configuration": "50players",
    "min_count": 0,
    "max_count": 0,
    "buffer_count": 5
    },
    },
    }
    ```

    Properties:
        url: /dsmcontroller/admin/configs

        method: POST

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDSMConfigRecord in body

    Responses:
        204: No Content - (config added/updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = SaveConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateConfig)
def update_config(
    body: ModelsUpdateDSMConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update config (UpdateConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
    Required scope: social

    This endpoint modifies config. When there are ready servers and
    the server version is updated, those servers will be replaced with newer version.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    }
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDSMConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateConfig)
async def update_config_async(
    body: ModelsUpdateDSMConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update config (UpdateConfig)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
    Required scope: social

    This endpoint modifies config. When there are ready servers and
    the server version is updated, those servers will be replaced with newer version.

    Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

    CPU and Memory limit / request are formatted with Kubernetes format,
    e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

    The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
    Creation timeout is time limit for DS to startup until registers itself.
    Claim timeout is time limit for game session manager to claim its ready DS.
    Session timeout is time limit for match session before deleted.
    Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
    Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

    Sample config:
    {
    "namespace": "accelbyte",
    "providers": [
    "aws"
    ],
    "port": 7777,
    "protocol": "udp",
    "creation_timeout": 120,
    "claim_timeout": 60,
    "session_timeout": 1800,
    "heartbeat_timeout": 30,
    "unreachable_timeout": 30,
    }
    ```

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateDSMConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePort)
def update_port(
    body: ModelsUpdatePortRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update port config (UpdatePort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers port config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePortRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (pod config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePort)
async def update_port_async(
    body: ModelsUpdatePortRequest,
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update port config (UpdatePort)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

    Required scope: social

    This endpoint update a dedicated servers port config in a namespace.

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdatePortRequest in body

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDSMConfigRecord (pod config updated)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (port config not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
