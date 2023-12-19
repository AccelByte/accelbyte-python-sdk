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

from ..models import RestapiConfigResponse
from ..models import RestapiErrorResponse
from ..models import RestapiReportingLimit

from ..operations.admin_configurations import Get
from ..operations.admin_configurations import GetCategoryEnum
from ..operations.admin_configurations import Upsert


@same_doc_as(Get)
def get(
    category: Optional[Union[str, GetCategoryEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration (Get)

    TimeInterval is in nanoseconds.
    When there's no configuration set, the response is the default value (configurable through envar).

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/configurations

        method: GET

        tags: ["Admin Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL Union[str, CategoryEnum] in query

    Responses:
        200: OK - RestapiConfigResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Get.create(
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Get)
async def get_async(
    category: Optional[Union[str, GetCategoryEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get configuration (Get)

    TimeInterval is in nanoseconds.
    When there's no configuration set, the response is the default value (configurable through envar).

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/configurations

        method: GET

        tags: ["Admin Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL Union[str, CategoryEnum] in query

    Responses:
        200: OK - RestapiConfigResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Get.create(
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Upsert)
def upsert(
    body: RestapiReportingLimit,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create/Update configuration (Upsert)

    The behaviour of this endpoint is upsert based on the namespace.
    So, you can use this for both creating & updating the configuration.
    TimeInterval is in nanoseconds.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/configurations

        method: POST

        tags: ["Admin Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiReportingLimit in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiConfigResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Upsert.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Upsert)
async def upsert_async(
    body: RestapiReportingLimit,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create/Update configuration (Upsert)

    The behaviour of this endpoint is upsert based on the namespace.
    So, you can use this for both creating & updating the configuration.
    TimeInterval is in nanoseconds.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/configurations

        method: POST

        tags: ["Admin Configurations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiReportingLimit in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - RestapiConfigResponse

        400: Bad Request - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Upsert.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
