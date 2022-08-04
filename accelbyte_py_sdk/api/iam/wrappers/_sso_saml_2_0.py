# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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


from ..operations.sso_saml_2_0 import PlatformAuthenticateSAMLV3Handler


@same_doc_as(PlatformAuthenticateSAMLV3Handler)
def platform_authenticate_samlv3_handler(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    error: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformAuthenticateSAMLV3Handler.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformAuthenticateSAMLV3Handler)
async def platform_authenticate_samlv3_handler_async(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    error: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformAuthenticateSAMLV3Handler.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
