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

from ..models import ModelsContentDownloadResponse
from ..models import ModelsCreateContentRequest
from ..models import ModelsCreateContentResponse
from ..models import ModelsCreateScreenshotRequest
from ..models import ModelsCreateScreenshotResponse
from ..models import ModelsGetContentPreviewResponse
from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsPublicCreateContentRequestS3
from ..models import ModelsPublicGetContentBulkRequest
from ..models import ModelsUpdateContentRequest
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.public_content import CreateContentDirect
from ..operations.public_content import CreateContentS3
from ..operations.public_content import DeleteContent
from ..operations.public_content import DeleteContentScreenshot
from ..operations.public_content import PublicDownloadContentByContentID
from ..operations.public_content import PublicDownloadContentByShareCode
from ..operations.public_content import PublicDownloadContentPreview
from ..operations.public_content import PublicGetContentBulk
from ..operations.public_content import PublicGetUserContent
from ..operations.public_content import PublicSearchContent
from ..operations.public_content import SearchChannelSpecificContent
from ..operations.public_content import UpdateContentDirect
from ..operations.public_content import UpdateContentS3
from ..operations.public_content import UpdateScreenshots
from ..operations.public_content import UploadContentScreenshot


@deprecated
@same_doc_as(CreateContentDirect)
def create_content_direct(
    body: ModelsCreateContentRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to a channel (CreateContentDirect)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except preview, tags and customAttributes.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateContentDirect.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateContentDirect)
async def create_content_direct_async(
    body: ModelsCreateContentRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to a channel (CreateContentDirect)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except preview, tags and customAttributes.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateContentDirect.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateContentS3)
def create_content_s3(
    body: ModelsPublicCreateContentRequestS3,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to S3 bucket (CreateContentS3)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except payload, preview, tags, contentType and customAttributes.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
    If not specified, it will use fileExtension value.



    NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateContentS3.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateContentS3)
async def create_content_s3_async(
    body: ModelsPublicCreateContentRequestS3,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to S3 bucket (CreateContentS3)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except payload, preview, tags, contentType and customAttributes.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
    If not specified, it will use fileExtension value.



    NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateContentS3.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteContent)
def delete_content(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (DeleteContent)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteContent)
async def delete_content_async(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (DeleteContent)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteContentScreenshot)
def delete_content_screenshot(
    content_id: str,
    screenshot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (DeleteContentScreenshot)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteContentScreenshot.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteContentScreenshot)
async def delete_content_screenshot_async(
    content_id: str,
    screenshot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (DeleteContentScreenshot)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteContentScreenshot.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDownloadContentByContentID)
def public_download_content_by_content_id(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user specific content (PublicDownloadContentByContentID)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentByContentID.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDownloadContentByContentID)
async def public_download_content_by_content_id_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user specific content (PublicDownloadContentByContentID)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentByContentID.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDownloadContentByShareCode)
def public_download_content_by_share_code(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (PublicDownloadContentByShareCode)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentByShareCode.create(
        share_code=share_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDownloadContentByShareCode)
async def public_download_content_by_share_code_async(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (PublicDownloadContentByShareCode)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentByShareCode.create(
        share_code=share_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDownloadContentPreview)
def public_download_content_preview(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content preview (PublicDownloadContentPreview)

    Requires valid user token

     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetContentPreviewResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentPreview.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDownloadContentPreview)
async def public_download_content_preview_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content preview (PublicDownloadContentPreview)

    Requires valid user token

     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetContentPreviewResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDownloadContentPreview.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentBulk)
def public_get_content_bulk(
    body: ModelsPublicGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents by content Ids  (PublicGetContentBulk)

    Maximum requested Ids: 100.
    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetContentBulk.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentBulk)
async def public_get_content_bulk_async(
    body: ModelsPublicGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents by content Ids  (PublicGetContentBulk)

    Maximum requested Ids: 100.
    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetContentBulk.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserContent)
def public_get_user_content(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (PublicGetUserContent)

    Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserContent.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserContent)
async def public_get_user_content_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (PublicGetUserContent)

    Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetUserContent.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSearchContent)
def public_search_content(
    creator: Optional[str] = None,
    isofficial: Optional[str] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search contents (PublicSearchContent)

    Public user can access without token or if token specified, requires valid user token.

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

    `tags=red`

    `tags=red&animal;`

    `tags=red|animal`

    `tags=red&animal;|wild`

    `tags=red&(animal|wild)`

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore `_` and dash `-`

    Allowed character for operator: `&` `|` `(` `)`

     Please note that value of tags query param should be URL encoded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSearchContent.create(
        creator=creator,
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSearchContent)
async def public_search_content_async(
    creator: Optional[str] = None,
    isofficial: Optional[str] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search contents (PublicSearchContent)

    Public user can access without token or if token specified, requires valid user token.

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

    `tags=red`

    `tags=red&animal;`

    `tags=red|animal`

    `tags=red&animal;|wild`

    `tags=red&(animal|wild)`

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore `_` and dash `-`

    Allowed character for operator: `&` `|` `(` `)`

     Please note that value of tags query param should be URL encoded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicSearchContent.create(
        creator=creator,
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SearchChannelSpecificContent)
def search_channel_specific_content(
    channel_id: str,
    creator: Optional[str] = None,
    isofficial: Optional[str] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search contents specific to a channel (SearchChannelSpecificContent)

    Requires valid user token.

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

    `tags=red`

    `tags=red&animal;`

    `tags=red|animal`

    `tags=red&animal;|wild`

    `tags=red&(animal|wild)`

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore `_` and dash `-`

    Allowed character for operator: `&` `|` `(` `)`

     Please note that value of tags query param should be URL encoded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SearchChannelSpecificContent.create(
        channel_id=channel_id,
        creator=creator,
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SearchChannelSpecificContent)
async def search_channel_specific_content_async(
    channel_id: str,
    creator: Optional[str] = None,
    isofficial: Optional[str] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search contents specific to a channel (SearchChannelSpecificContent)

    Requires valid user token.

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses () for priority. e.g:

    `tags=red`

    `tags=red&animal;`

    `tags=red|animal`

    `tags=red&animal;|wild`

    `tags=red&(animal|wild)`

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore `_` and dash `-`

    Allowed character for operator: `&` `|` `(` `)`

     Please note that value of tags query param should be URL encoded

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        isofficial: (isofficial) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SearchChannelSpecificContent.create(
        channel_id=channel_id,
        creator=creator,
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateContentDirect)
def update_content_direct(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (UpdateContentDirect)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateContentDirect)
async def update_content_direct_async(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (UpdateContentDirect)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateContentS3)
def update_content_s3(
    body: ModelsUpdateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (UpdateContentS3)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
    All request body are required except payload, preview, tags, contentType, updateContentFile and customAttributes.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
    If not specified, it will use fileExtension value.
    To update content's file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.



    NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateContentS3)
async def update_content_s3_async(
    body: ModelsUpdateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (UpdateContentS3)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].
    All request body are required except payload, preview, tags, contentType, updateContentFile and customAttributes.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.
    If not specified, it will use fileExtension value.
    To update content's file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.



    NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateScreenshots)
def update_screenshots(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (UpdateScreenshots)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Maximum description length: 1024.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateScreenshots.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateScreenshots)
async def update_screenshots_async(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (UpdateScreenshots)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Maximum description length: 1024.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateScreenshots.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadContentScreenshot)
def upload_content_screenshot(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (UploadContentScreenshot)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except for contentType field.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
    If not specified, it will use fileExtension value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.

    Maximum description length: 1024.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UploadContentScreenshot.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadContentScreenshot)
async def upload_content_screenshot_async(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (UploadContentScreenshot)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except for contentType field.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
    If not specified, it will use fileExtension value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.

    Maximum description length: 1024.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UploadContentScreenshot.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
