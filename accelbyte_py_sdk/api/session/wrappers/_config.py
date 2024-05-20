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

from ..models import LogconfigConfiguration
from ..models import ResponseError

from ..operations.config import AdminGetLogConfig
from ..operations.config import AdminPatchUpdateLogConfig
from ..models import LogconfigConfigurationLogLevelEnum


@same_doc_as(AdminGetLogConfig)
def admin_get_log_config(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Log Configuration (adminGetLogConfig)

    Get Log Configuration.

    Properties:
        url: /session/v1/admin/config/log

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - LogconfigConfiguration (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminGetLogConfig.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetLogConfig)
async def admin_get_log_config_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Log Configuration (adminGetLogConfig)

    Get Log Configuration.

    Properties:
        url: /session/v1/admin/config/log

        method: GET

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - LogconfigConfiguration (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminGetLogConfig.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminPatchUpdateLogConfig)
def admin_patch_update_log_config(
    body: LogconfigConfiguration,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch Update Log Configuration (adminPatchUpdateLogConfig)

    Update Log Configuration.

    Properties:
        url: /session/v1/admin/config/log

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LogconfigConfiguration in body

    Responses:
        200: OK - LogconfigConfiguration (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminPatchUpdateLogConfig.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminPatchUpdateLogConfig)
async def admin_patch_update_log_config_async(
    body: LogconfigConfiguration,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch Update Log Configuration (adminPatchUpdateLogConfig)

    Update Log Configuration.

    Properties:
        url: /session/v1/admin/config/log

        method: PATCH

        tags: ["Config"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED LogconfigConfiguration in body

    Responses:
        200: OK - LogconfigConfiguration (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)
    """
    request = AdminPatchUpdateLogConfig.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
