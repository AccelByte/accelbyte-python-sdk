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
    """SAML platform Authentication API (platformAuthenticateSAMLV3Handler)

    This endpoint authenticates user platform for SAML protocol. It validates user to its
    respective platforms. Deactivated or login-banned users are unable to login.
    ## Supported platforms:
    - **azure**
    Microsoft login page will redirects to this endpoint after login success
    as previously defined on authentication request SAML

    Properties:
        url: /iam/v3/sso/saml/platforms/{platformId}/authenticate

        method: POST

        tags: ["SSO SAML 2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: []

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        error: (error) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
    """
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
    """SAML platform Authentication API (platformAuthenticateSAMLV3Handler)

    This endpoint authenticates user platform for SAML protocol. It validates user to its
    respective platforms. Deactivated or login-banned users are unable to login.
    ## Supported platforms:
    - **azure**
    Microsoft login page will redirects to this endpoint after login success
    as previously defined on authentication request SAML

    Properties:
        url: /iam/v3/sso/saml/platforms/{platformId}/authenticate

        method: POST

        tags: ["SSO SAML 2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: []

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        error: (error) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
    """
    request = PlatformAuthenticateSAMLV3Handler.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
