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

from ..models import ApimodelsGlobalConfigurationResponse
from ..models import ApimodelsPutGlobalConfigurationRequest
from ..models import ResponseError

from ..operations.global_configuration import AdminDeleteGlobalConfiguration
from ..operations.global_configuration import AdminListGlobalConfiguration
from ..operations.global_configuration import AdminUpdateGlobalConfiguration


@same_doc_as(AdminDeleteGlobalConfiguration)
def admin_delete_global_configuration(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete of global configuration data. (adminDeleteGlobalConfiguration)

    Delete of global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: DELETE

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - str (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminDeleteGlobalConfiguration.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteGlobalConfiguration)
async def admin_delete_global_configuration_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Delete of global configuration data. (adminDeleteGlobalConfiguration)

    Delete of global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: DELETE

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - str (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminDeleteGlobalConfiguration.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListGlobalConfiguration)
def admin_list_global_configuration(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Record of global configuration data. (adminListGlobalConfiguration)

    Record of global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: GET

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApimodelsGlobalConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminListGlobalConfiguration.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListGlobalConfiguration)
async def admin_list_global_configuration_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Record of global configuration data. (adminListGlobalConfiguration)

    Record of global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: GET

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApimodelsGlobalConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminListGlobalConfiguration.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateGlobalConfiguration)
def admin_update_global_configuration(
    body: ApimodelsPutGlobalConfigurationRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upsert global configuration data. (adminUpdateGlobalConfiguration)

    Upsert global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: PUT

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPutGlobalConfigurationRequest in body

    Responses:
        200: OK - ApimodelsGlobalConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminUpdateGlobalConfiguration.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateGlobalConfiguration)
async def admin_update_global_configuration_async(
    body: ApimodelsPutGlobalConfigurationRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upsert global configuration data. (adminUpdateGlobalConfiguration)

    Upsert global configuration data.

    Properties:
        url: /session/v1/admin/global-configurations

        method: PUT

        tags: ["Global Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPutGlobalConfigurationRequest in body

    Responses:
        200: OK - ApimodelsGlobalConfigurationResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminUpdateGlobalConfiguration.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
