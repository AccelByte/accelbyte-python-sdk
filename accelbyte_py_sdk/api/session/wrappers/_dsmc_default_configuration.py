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

from ..models import ModelsDefaultDSMCConfig
from ..models import ResponseError

from ..operations.dsmc_default_configuration import AdminGetDSMCConfigurationDefault


@deprecated
@same_doc_as(AdminGetDSMCConfigurationDefault)
def admin_get_dsmc_configuration_default(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get dsmc default configuration. (adminGetDSMCConfigurationDefault)

    Get dsmc default configuration.

    Properties:
        url: /session/v1/admin/dsconfigs/default

        method: GET

        tags: ["DSMC Default Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDefaultDSMCConfig (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = AdminGetDSMCConfigurationDefault.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetDSMCConfigurationDefault)
async def admin_get_dsmc_configuration_default_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get dsmc default configuration. (adminGetDSMCConfigurationDefault)

    Get dsmc default configuration.

    Properties:
        url: /session/v1/admin/dsconfigs/default

        method: GET

        tags: ["DSMC Default Configuration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsDefaultDSMCConfig (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = AdminGetDSMCConfigurationDefault.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
