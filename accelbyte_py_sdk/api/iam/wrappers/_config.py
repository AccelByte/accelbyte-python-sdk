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

from ..models import ModelConfigValueResponseV3
from ..models import RestErrorResponse

from ..operations.config import AdminGetConfigValueV3
from ..operations.config import PublicGetConfigValueV3


@same_doc_as(AdminGetConfigValueV3)
def admin_get_config_value_v3(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Config Value (AdminGetConfigValueV3)

    This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.

    **Supported config key:**
    * uniqueDisplayNameEnabled
    * usernameDisabled
    * mandatoryEmailVerificationEnabled

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/config/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelConfigValueResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigValueV3.create(
        config_key=config_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetConfigValueV3)
async def admin_get_config_value_v3_async(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Config Value (AdminGetConfigValueV3)

    This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.

    **Supported config key:**
    * uniqueDisplayNameEnabled
    * usernameDisabled
    * mandatoryEmailVerificationEnabled

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/config/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelConfigValueResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetConfigValueV3.create(
        config_key=config_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetConfigValueV3)
def public_get_config_value_v3(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Config Value (PublicGetConfigValueV3)

    This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.
    Note: this endpoint does not need any authorization.

    **Supported config key:**
    * uniqueDisplayNameEnabled
    * usernameDisabled
    * mandatoryEmailVerificationEnabled
    * verificationCodeType

    If the key is verificationCodeType, then possible value format will be '{collection}:{N}'; example: 'ABCDEFGHI:6', 'ABCDEFGHI1234:8','01234567894:7'

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/config/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelConfigValueResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetConfigValueV3.create(
        config_key=config_key,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetConfigValueV3)
async def public_get_config_value_v3_async(
    config_key: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Config Value (PublicGetConfigValueV3)

    This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.
    Note: this endpoint does not need any authorization.

    **Supported config key:**
    * uniqueDisplayNameEnabled
    * usernameDisabled
    * mandatoryEmailVerificationEnabled
    * verificationCodeType

    If the key is verificationCodeType, then possible value format will be '{collection}:{N}'; example: 'ABCDEFGHI:6', 'ABCDEFGHI1234:8','01234567894:7'

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/config/{configKey}

        method: GET

        tags: ["Config"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        config_key: (configKey) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelConfigValueResponseV3 (OK)

        400: Bad Request - RestErrorResponse (20002: validation error)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetConfigValueV3.create(
        config_key=config_key,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
