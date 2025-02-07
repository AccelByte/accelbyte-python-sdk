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
from ..models import ModelsGetContentBulkByShareCodesRequest
from ..models import ModelsGetContentPreviewResponse
from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsPublicCreateContentRequestS3
from ..models import ModelsPublicGetContentBulkRequest
from ..models import ModelsUpdateContentRequest
from ..models import ModelsUpdateContentShareCodeRequest
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.public_content_legacy import CreateContentDirect
from ..operations.public_content_legacy import CreateContentS3
from ..operations.public_content_legacy import DeleteContent
from ..operations.public_content_legacy import DeleteContentScreenshot
from ..operations.public_content_legacy import PublicDeleteContentByShareCode
from ..operations.public_content_legacy import PublicDownloadContentByContentID
from ..operations.public_content_legacy import PublicDownloadContentByShareCode
from ..operations.public_content_legacy import PublicDownloadContentPreview
from ..operations.public_content_legacy import PublicGetContentBulk
from ..operations.public_content_legacy import PublicGetContentBulkByShareCodes
from ..operations.public_content_legacy import PublicGetUserContent
from ..operations.public_content_legacy import PublicSearchContent
from ..operations.public_content_legacy import PublicUpdateContentByShareCode
from ..operations.public_content_legacy import SearchChannelSpecificContent
from ..operations.public_content_legacy import UpdateContentDirect
from ..operations.public_content_legacy import UpdateContentS3
from ..operations.public_content_legacy import UpdateContentShareCode
from ..operations.public_content_legacy import UpdateScreenshots
from ..operations.public_content_legacy import UploadContentScreenshot
from ..models import ModelsCreateContentResponseContentStatusEnum


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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded to S3 bucket)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded to S3 bucket)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete content's screenshot (DeleteContentScreenshot)

    Delete existing screenshot from a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Screenshot deleted)

        400: Bad Request - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Delete content's screenshot (DeleteContentScreenshot)

    Delete existing screenshot from a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Screenshot deleted)

        400: Bad Request - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(PublicDeleteContentByShareCode)
def public_delete_content_by_share_code(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (PublicDeleteContentByShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteContentByShareCode.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeleteContentByShareCode)
async def public_delete_content_by_share_code_async(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (PublicDeleteContentByShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteContentByShareCode.create(
        channel_id=channel_id,
        share_code=share_code,
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Get user specific content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773200: ugc content not found)

        500: Internal Server Error - ResponseError (773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 773203: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Get user specific content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773200: ugc content not found)

        500: Internal Server Error - ResponseError (773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 773203: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetContentPreviewResponse (Get content preview)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773702: ugc content not found)

        500: Internal Server Error - ResponseError (773701: Unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetContentPreviewResponse (Get content preview)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773702: ugc content not found)

        500: Internal Server Error - ResponseError (773701: Unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Get contents by content Ids)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Get contents by content Ids)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentBulk.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentBulkByShareCodes)
def public_get_content_bulk_by_share_codes(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (PublicGetContentBulkByShareCodes)

    Require valid user token.
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentBulkByShareCodes.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentBulkByShareCodes)
async def public_get_content_bulk_by_share_codes_async(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (PublicGetContentBulkByShareCodes)

    Require valid user token.
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentBulkByShareCodes.create(
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get user's generated contents)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get user's generated contents)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    ishidden: Optional[str] = None,
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        ishidden: (ishidden) OPTIONAL str in query

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
        200: OK - ModelsPaginatedContentDownloadResponse (Search contents)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchContent.create(
        creator=creator,
        ishidden=ishidden,
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
    ishidden: Optional[str] = None,
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        ishidden: (ishidden) OPTIONAL str in query

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
        200: OK - ModelsPaginatedContentDownloadResponse (Search contents)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchContent.create(
        creator=creator,
        ishidden=ishidden,
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


@same_doc_as(PublicUpdateContentByShareCode)
def public_update_content_by_share_code(
    body: ModelsUpdateContentRequest,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (PublicUpdateContentByShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentByShareCode.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateContentByShareCode)
async def public_update_content_by_share_code_async(
    body: ModelsUpdateContentRequest,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (PublicUpdateContentByShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentByShareCode.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
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
    ishidden: Optional[str] = None,
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        ishidden: (ishidden) OPTIONAL str in query

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
        200: OK - ModelsPaginatedContentDownloadResponse (Search contents specific to a channel)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchChannelSpecificContent.create(
        channel_id=channel_id,
        creator=creator,
        ishidden=ishidden,
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
    ishidden: Optional[str] = None,
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

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        creator: (creator) OPTIONAL str in query

        ishidden: (ishidden) OPTIONAL str in query

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
        200: OK - ModelsPaginatedContentDownloadResponse (Search contents specific to a channel)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchChannelSpecificContent.create(
        channel_id=channel_id,
        creator=creator,
        ishidden=ishidden,
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at S3 bucket)

        400: Bad Request - ResponseError (772601: Malformed request | 772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at S3 bucket)

        400: Bad Request - ResponseError (772601: Malformed request | 772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(UpdateContentShareCode)
def update_content_share_code(
    body: ModelsUpdateContentShareCodeRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content sharecode (UpdateContentShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT:SHARECODE [UPDATE].

    This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

    `shareCode` format should follows:
    Max length: 7
    Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode

        method: PATCH

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentShareCodeRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated by sharecodes)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentShareCode.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateContentShareCode)
async def update_content_share_code_async(
    body: ModelsUpdateContentShareCodeRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content sharecode (UpdateContentShareCode)

    Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT:SHARECODE [UPDATE].

    This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

    `shareCode` format should follows:
    Max length: 7
    Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode

        method: PATCH

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentShareCodeRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated by sharecodes)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentShareCode.create(
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

    Maximum description length: 1024

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (Screenshot updated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    Maximum description length: 1024

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (Screenshot updated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    All request body are required except for *contentType* field.
    *contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
    If not specified, it will use *fileExtension* value.
    Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
    Maximum description length: 1024

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Screenshot uploaded)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

    All request body are required except for *contentType* field.
    *contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
    If not specified, it will use *fileExtension* value.
    Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
    Maximum description length: 1024

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Screenshot uploaded)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
