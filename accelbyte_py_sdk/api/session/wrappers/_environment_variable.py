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

from ..models import ApimodelsEnvironmentVariableListResponse
from ..models import ResponseError

from ..operations.environment_variable import AdminListEnvironmentVariables


@same_doc_as(AdminListEnvironmentVariables)
def admin_list_environment_variables(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List of environment variables. Requires ADMIN:SESSION:CONFIGURATION:ENVIRONMENTVARIABLE [READ] (adminListEnvironmentVariables)

    List of environment variables.

    Properties:
        url: /session/v1/admin/environment-variables

        method: GET

        tags: ["Environment Variable"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApimodelsEnvironmentVariableListResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminListEnvironmentVariables.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListEnvironmentVariables)
async def admin_list_environment_variables_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """List of environment variables. Requires ADMIN:SESSION:CONFIGURATION:ENVIRONMENTVARIABLE [READ] (adminListEnvironmentVariables)

    List of environment variables.

    Properties:
        url: /session/v1/admin/environment-variables

        method: GET

        tags: ["Environment Variable"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ApimodelsEnvironmentVariableListResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminListEnvironmentVariables.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
