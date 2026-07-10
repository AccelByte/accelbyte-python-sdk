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

from ..models import ResponseErrorResponse

from ..operations.extend_files import GetExtendFile


@same_doc_as(GetExtendFile)
def get_extend_file(
    file_path: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve extend hosted static files (GetExtendFile)

    Serves static files provided for extend features, for example: serving App UI files. Files are served with immutable caching headers.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/files/{filePath}

        method: GET

        tags: ["Extend Files"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file_path: (filePath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetExtendFile.create(
        file_path=file_path,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetExtendFile)
async def get_extend_file_async(
    file_path: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve extend hosted static files (GetExtendFile)

    Serves static files provided for extend features, for example: serving App UI files. Files are served with immutable caching headers.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/files/{filePath}

        method: GET

        tags: ["Extend Files"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file_path: (filePath) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetExtendFile.create(
        file_path=file_path,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
