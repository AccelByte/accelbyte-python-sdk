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

from ..models import ModelsAddDownloadCountResponse
from ..models import ResponseError

from ..operations.public_download_count_legacy import AddDownloadCount


@same_doc_as(AddDownloadCount)
def add_download_count(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add unique download count to a content (AddDownloadCount)

    This endpoint can be used to count how many the ugc downloaded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount

        method: POST

        tags: ["Public Download Count (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddDownloadCountResponse (added download count to a content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772903: Unable to add content download: content not found)

        500: Internal Server Error - ResponseError (772902: Unable to add content download: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddDownloadCount.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddDownloadCount)
async def add_download_count_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add unique download count to a content (AddDownloadCount)

    This endpoint can be used to count how many the ugc downloaded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount

        method: POST

        tags: ["Public Download Count (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddDownloadCountResponse (added download count to a content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772903: Unable to add content download: content not found)

        500: Internal Server Error - ResponseError (772902: Unable to add content download: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddDownloadCount.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
