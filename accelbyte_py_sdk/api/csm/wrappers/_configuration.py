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

from ..models import GeneratedGetListOfConfigurationsV1Response
from ..models import GeneratedSaveConfigurationV1Request
from ..models import GeneratedSaveConfigurationV1Response
from ..models import GeneratedUpdateConfigurationV1Request
from ..models import GeneratedUpdateConfigurationV1Response
from ..models import ResponseErrorResponse

from ..operations.configuration import DeleteSecretV1
from ..operations.configuration import DeleteVariableV1
from ..operations.configuration import GetListOfSecretsV1
from ..operations.configuration import GetListOfVariablesV1
from ..operations.configuration import SaveSecretV1
from ..operations.configuration import SaveVariableV1
from ..operations.configuration import UpdateSecretV1
from ..operations.configuration import UpdateVariableV1


@deprecated
@same_doc_as(DeleteSecretV1)
def delete_secret_v1(
    app: str,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an environment secret (DeleteSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

    Delete an environment secret.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSecretV1.create(
        app=app,
        config_id=config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteSecretV1)
async def delete_secret_v1_async(
    app: str,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an environment secret (DeleteSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

    Delete an environment secret.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSecretV1.create(
        app=app,
        config_id=config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteVariableV1)
def delete_variable_v1(
    app: str,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an environment variable (DeleteVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

    Delete an environment variable.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteVariableV1.create(
        app=app,
        config_id=config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteVariableV1)
async def delete_variable_v1_async(
    app: str,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an environment variable (DeleteVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

    Delete an environment variable.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}

        method: DELETE

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteVariableV1.create(
        app=app,
        config_id=config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListOfSecretsV1)
def get_list_of_secrets_v1(
    app: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of environment secrets (GetListOfSecretsV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

    Get list of environment secrets per app
    Available Deployment Status:
    `deployed` = app config is already deployed
    `undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetListOfConfigurationsV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfSecretsV1.create(
        app=app,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListOfSecretsV1)
async def get_list_of_secrets_v1_async(
    app: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of environment secrets (GetListOfSecretsV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

    Get list of environment secrets per app
    Available Deployment Status:
    `deployed` = app config is already deployed
    `undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetListOfConfigurationsV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfSecretsV1.create(
        app=app,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListOfVariablesV1)
def get_list_of_variables_v1(
    app: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of environment variables (GetListOfVariablesV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

    Get list of environment variables per app
    Available Deployment Status:
    `deployed` = app config is already deployed
    `undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetListOfConfigurationsV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfVariablesV1.create(
        app=app,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListOfVariablesV1)
async def get_list_of_variables_v1_async(
    app: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of environment variables (GetListOfVariablesV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

    Get list of environment variables per app
    Available Deployment Status:
    `deployed` = app config is already deployed
    `undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables

        method: GET

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetListOfConfigurationsV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfVariablesV1.create(
        app=app,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SaveSecretV1)
def save_secret_v1(
    app: str,
    body: GeneratedSaveConfigurationV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save an environment secret (SaveSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

    Save an environment secret.
    Request body:
    - configName : environment secret name - Required.
    - source : source of the configuration value (plaintext or ssm) - Required.
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedSaveConfigurationV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedSaveConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveSecretV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SaveSecretV1)
async def save_secret_v1_async(
    app: str,
    body: GeneratedSaveConfigurationV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save an environment secret (SaveSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

    Save an environment secret.
    Request body:
    - configName : environment secret name - Required.
    - source : source of the configuration value (plaintext or ssm) - Required.
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedSaveConfigurationV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedSaveConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveSecretV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SaveVariableV1)
def save_variable_v1(
    app: str,
    body: GeneratedSaveConfigurationV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save an environment variable (SaveVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

    Save an environment variable.
    Request body:
    - configName : environment variable name - Required.
    - source : source of the configuration value (plaintext or ssm) - Required.
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedSaveConfigurationV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedSaveConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveVariableV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SaveVariableV1)
async def save_variable_v1_async(
    app: str,
    body: GeneratedSaveConfigurationV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Save an environment variable (SaveVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

    Save an environment variable.
    Request body:
    - configName : environment variable name - Required.
    - source : source of the configuration value (plaintext or ssm) - Required.
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables

        method: POST

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedSaveConfigurationV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedSaveConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SaveVariableV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateSecretV1)
def update_secret_v1(
    app: str,
    body: GeneratedUpdateConfigurationV1Request,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an environment secret (UpdateSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

    Update an environment secret.
    Request body:
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateConfigurationV1Request in body

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSecretV1.create(
        app=app,
        body=body,
        config_id=config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateSecretV1)
async def update_secret_v1_async(
    app: str,
    body: GeneratedUpdateConfigurationV1Request,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an environment secret (UpdateSecretV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

    Update an environment secret.
    Request body:
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateConfigurationV1Request in body

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSecretV1.create(
        app=app,
        body=body,
        config_id=config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateVariableV1)
def update_variable_v1(
    app: str,
    body: GeneratedUpdateConfigurationV1Request,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an environment variable (UpdateVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

    Update an environment variable.
    Request body:
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateConfigurationV1Request in body

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateVariableV1.create(
        app=app,
        body=body,
        config_id=config_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateVariableV1)
async def update_variable_v1_async(
    app: str,
    body: GeneratedUpdateConfigurationV1Request,
    config_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update an environment variable (UpdateVariableV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

    Update an environment variable.
    Request body:
    - value : configuration value - Required.
    - description : description of the configuration - Optional.
    - applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}

        method: PUT

        tags: ["Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateConfigurationV1Request in body

        app: (app) REQUIRED str in path

        config_id: (configId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateConfigurationV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateVariableV1.create(
        app=app,
        body=body,
        config_id=config_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
