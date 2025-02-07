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

from ..models import ModelGetProfileUpdateStrategyConfigResponse
from ..models import ModelSimpleProfileUpdateStrategyConfigs
from ..models import ModelUpdateProfileUpdateStrategyConfigRequest
from ..models import RestErrorResponse

from ..operations.profile_update_strategy import AdminGetProfileUpdateStrategyV3
from ..operations.profile_update_strategy import (
    AdminGetProfileUpdateStrategyV3FieldEnum,
)
from ..operations.profile_update_strategy import AdminUpdateProfileUpdateStrategyV3
from ..operations.profile_update_strategy import (
    AdminUpdateProfileUpdateStrategyV3FieldEnum,
)
from ..operations.profile_update_strategy import PublicGetProfileUpdateStrategyV3
from ..operations.profile_update_strategy import (
    PublicGetProfileUpdateStrategyV3FieldEnum,
)


@same_doc_as(AdminGetProfileUpdateStrategyV3)
def admin_get_profile_update_strategy_v3(
    field: Optional[Union[str, AdminGetProfileUpdateStrategyV3FieldEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get profile update strategy by namespace and field. (AdminGetProfileUpdateStrategyV3)

    This API is for admin to get profile update strategy by namespace and field.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies

        method: GET

        tags: ["Profile Update Strategy"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) OPTIONAL Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelGetProfileUpdateStrategyConfigResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetProfileUpdateStrategyV3.create(
        field=field,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetProfileUpdateStrategyV3)
async def admin_get_profile_update_strategy_v3_async(
    field: Optional[Union[str, AdminGetProfileUpdateStrategyV3FieldEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get profile update strategy by namespace and field. (AdminGetProfileUpdateStrategyV3)

    This API is for admin to get profile update strategy by namespace and field.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies

        method: GET

        tags: ["Profile Update Strategy"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) OPTIONAL Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelGetProfileUpdateStrategyConfigResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetProfileUpdateStrategyV3.create(
        field=field,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateProfileUpdateStrategyV3)
def admin_update_profile_update_strategy_v3(
    body: ModelUpdateProfileUpdateStrategyConfigRequest,
    field: Union[str, AdminUpdateProfileUpdateStrategyV3FieldEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update profile update strategy by namespace and field. (AdminUpdateProfileUpdateStrategyV3)

    This API includes upsert behavior.
    Note:
    1. field 'config'' in request body will only work when type is limited

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies

        method: PUT

        tags: ["Profile Update Strategy"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateProfileUpdateStrategyConfigRequest in body

        namespace: (namespace) REQUIRED str in path

        field: (field) REQUIRED Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelSimpleProfileUpdateStrategyConfigs (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateProfileUpdateStrategyV3.create(
        body=body,
        field=field,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateProfileUpdateStrategyV3)
async def admin_update_profile_update_strategy_v3_async(
    body: ModelUpdateProfileUpdateStrategyConfigRequest,
    field: Union[str, AdminUpdateProfileUpdateStrategyV3FieldEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin update profile update strategy by namespace and field. (AdminUpdateProfileUpdateStrategyV3)

    This API includes upsert behavior.
    Note:
    1. field 'config'' in request body will only work when type is limited

    Properties:
        url: /iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies

        method: PUT

        tags: ["Profile Update Strategy"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUpdateProfileUpdateStrategyConfigRequest in body

        namespace: (namespace) REQUIRED str in path

        field: (field) REQUIRED Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelSimpleProfileUpdateStrategyConfigs (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateProfileUpdateStrategyV3.create(
        body=body,
        field=field,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetProfileUpdateStrategyV3)
def public_get_profile_update_strategy_v3(
    field: Optional[Union[str, PublicGetProfileUpdateStrategyV3FieldEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get profile update strategy by namespace and field. (PublicGetProfileUpdateStrategyV3)

    This API is for public user to get profile update strategy by namespace and field.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies

        method: GET

        tags: ["Profile Update Strategy"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) OPTIONAL Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelGetProfileUpdateStrategyConfigResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfileUpdateStrategyV3.create(
        field=field,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetProfileUpdateStrategyV3)
async def public_get_profile_update_strategy_v3_async(
    field: Optional[Union[str, PublicGetProfileUpdateStrategyV3FieldEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Public get profile update strategy by namespace and field. (PublicGetProfileUpdateStrategyV3)

    This API is for public user to get profile update strategy by namespace and field.
    Note: If the config is not found, this API will return a config with unlimited.

    Properties:
        url: /iam/v3/public/namespaces/{namespace}/profileUpdateStrategies

        method: GET

        tags: ["Profile Update Strategy"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        field: (field) OPTIONAL Union[str, FieldEnum] in query

    Responses:
        200: OK - ModelGetProfileUpdateStrategyConfigResponse (Operation succeeded)

        400: Bad Request - RestErrorResponse (20002: validation error)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        403: Forbidden - RestErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetProfileUpdateStrategyV3.create(
        field=field,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
