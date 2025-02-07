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

from ..models import ModelsContentDownloadResponseV2
from ..models import ModelsContentRequestV2
from ..models import ModelsCreateContentResponseV2
from ..models import ModelsCreateScreenshotRequest
from ..models import ModelsCreateScreenshotResponse
from ..models import ModelsGenerateContentUploadURLRequest
from ..models import ModelsGenerateContentUploadURLResponse
from ..models import ModelsGetContentBulkByShareCodesRequest
from ..models import ModelsPaginatedContentDownloadResponseV2
from ..models import ModelsPublicGetContentBulkRequest
from ..models import ModelsUpdateContentRequestV2
from ..models import ModelsUpdateContentResponseV2
from ..models import ModelsUpdateContentShareCodeRequest
from ..models import ModelsUpdateFileLocationRequest
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.public_content_v2 import DeleteContentScreenshotV2
from ..operations.public_content_v2 import PublicBulkGetContentByIDV2
from ..operations.public_content_v2 import PublicCreateContentV2
from ..operations.public_content_v2 import PublicDeleteContentByShareCodeV2
from ..operations.public_content_v2 import PublicDeleteContentV2
from ..operations.public_content_v2 import PublicGenerateContentUploadURLV2
from ..operations.public_content_v2 import PublicGetContentBulkByShareCodesV2
from ..operations.public_content_v2 import PublicGetContentByChannelIDV2
from ..operations.public_content_v2 import PublicGetContentByIDV2
from ..operations.public_content_v2 import PublicGetContentByShareCodeV2
from ..operations.public_content_v2 import PublicGetContentByUserIDV2
from ..operations.public_content_v2 import PublicListContentV2
from ..operations.public_content_v2 import PublicUpdateContentByShareCodeV2
from ..operations.public_content_v2 import PublicUpdateContentFileLocation
from ..operations.public_content_v2 import PublicUpdateContentV2
from ..operations.public_content_v2 import UpdateContentShareCodeV2
from ..operations.public_content_v2 import UpdateScreenshotsV2
from ..operations.public_content_v2 import UploadContentScreenshotV2
from ..models import ModelsCreateContentResponseV2ContentStatusEnum
from ..models import ModelsUpdateContentResponseV2ContentStatusEnum


@same_doc_as(DeleteContentScreenshotV2)
def delete_content_screenshot_v2(
    content_id: str,
    screenshot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (DeleteContentScreenshotV2)

    Delete screenshot from a content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content V2"]

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

        404: Not Found - ResponseError (772603: Content not found | 772602: Unable to check user ban status/Unable to get updated ugc content)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteContentScreenshotV2.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteContentScreenshotV2)
async def delete_content_screenshot_v2_async(
    content_id: str,
    screenshot_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (DeleteContentScreenshotV2)

    Delete screenshot from a content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Public Content V2"]

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

        404: Not Found - ResponseError (772603: Content not found | 772602: Unable to check user ban status/Unable to get updated ugc content)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteContentScreenshotV2.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkGetContentByIDV2)
def public_bulk_get_content_by_idv2(
    body: ModelsPublicGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents by content Ids  (PublicBulkGetContentByIDV2)

    Maximum requested Ids: 100.
    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Get contents by content Ids)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetContentByIDV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkGetContentByIDV2)
async def public_bulk_get_content_by_idv2_async(
    body: ModelsPublicGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents by content Ids  (PublicBulkGetContentByIDV2)

    Maximum requested Ids: 100.
    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Get contents by content Ids)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkGetContentByIDV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateContentV2)
def public_create_content_v2(
    body: ModelsContentRequestV2,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a content (PublicCreateContentV2)

    Create a new content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponseV2 (Content created)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770106: channel doesn't exist)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateContentV2.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateContentV2)
async def public_create_content_v2_async(
    body: ModelsContentRequestV2,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a content (PublicCreateContentV2)

    Create a new content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponseV2 (Content created)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770106: channel doesn't exist)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateContentV2.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeleteContentByShareCodeV2)
def public_delete_content_by_share_code_v2(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (PublicDeleteContentByShareCodeV2)

    Delete existing content by share code

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Public Content V2"]

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
    request = PublicDeleteContentByShareCodeV2.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeleteContentByShareCodeV2)
async def public_delete_content_by_share_code_v2_async(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (PublicDeleteContentByShareCodeV2)

    Delete existing content by share code

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Public Content V2"]

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
    request = PublicDeleteContentByShareCodeV2.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeleteContentV2)
def public_delete_content_v2(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (PublicDeleteContentV2)

    Delete existing content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content V2"]

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
    request = PublicDeleteContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeleteContentV2)
async def public_delete_content_v2_async(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (PublicDeleteContentV2)

    Delete existing content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Public Content V2"]

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
    request = PublicDeleteContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGenerateContentUploadURLV2)
def public_generate_content_upload_urlv2(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate content upload URL (PublicGenerateContentUploadURLV2)

    Generate content upload URL

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (content upload URL generated)

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
    request = PublicGenerateContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGenerateContentUploadURLV2)
async def public_generate_content_upload_urlv2_async(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate content upload URL (PublicGenerateContentUploadURLV2)

    Generate content upload URL

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (content upload URL generated)

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
    request = PublicGenerateContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentBulkByShareCodesV2)
def public_get_content_bulk_by_share_codes_v2(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (PublicGetContentBulkByShareCodesV2)

    Require valid user token.
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Bulk get content by content sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentBulkByShareCodesV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentBulkByShareCodesV2)
async def public_get_content_bulk_by_share_codes_v2_async(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (PublicGetContentBulkByShareCodesV2)

    Require valid user token.
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Bulk get content by content sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentBulkByShareCodesV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentByChannelIDV2)
def public_get_content_by_channel_idv2(
    channel_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (PublicGetContentByChannelIDV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content specific to a channel)

        400: Bad Request - ResponseError (770804: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770805: Unable to get ugc content: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByChannelIDV2.create(
        channel_id=channel_id,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentByChannelIDV2)
async def public_get_content_by_channel_idv2_async(
    channel_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (PublicGetContentByChannelIDV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content specific to a channel)

        400: Bad Request - ResponseError (770804: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770805: Unable to get ugc content: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByChannelIDV2.create(
        channel_id=channel_id,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentByIDV2)
def public_get_content_by_idv2(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by content ID (PublicGetContentByIDV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by content ID)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773200: ugc content not found)

        500: Internal Server Error - ResponseError (773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 770301: Unable to get ugc content/Unable to get creator | 773203: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByIDV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentByIDV2)
async def public_get_content_by_idv2_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by content ID (PublicGetContentByIDV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by content ID)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773200: ugc content not found)

        500: Internal Server Error - ResponseError (773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 770301: Unable to get ugc content/Unable to get creator | 773203: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByIDV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentByShareCodeV2)
def public_get_content_by_share_code_v2(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (PublicGetContentByShareCodeV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByShareCodeV2.create(
        share_code=share_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentByShareCodeV2)
async def public_get_content_by_share_code_v2_async(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (PublicGetContentByShareCodeV2)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByShareCodeV2.create(
        share_code=share_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetContentByUserIDV2)
def public_get_content_by_user_idv2(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by user ID (PublicGetContentByUserIDV2)

    Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get content by user ID)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByUserIDV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetContentByUserIDV2)
async def public_get_content_by_user_idv2_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by user ID (PublicGetContentByUserIDV2)

    Public user can access without token or if token specified, required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get content by user ID)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetContentByUserIDV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListContentV2)
def public_list_content_v2(
    is_official: Optional[bool] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    sub_type: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents (PublicListContentV2)

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


    *tags=red*
    *tags=red&animal;*
    *tags=red|animal*
    *tags=red&animal;|wild*
    *tags=red&(animal|wild)*

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore _ and dash -

    Allowed character for operator: & | ( )


    **Please note that value of tags query param should be URL encoded**

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_official: (isOfficial) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sub_type: (subType) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (list content's)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentV2.create(
        is_official=is_official,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sub_type=sub_type,
        tags=tags,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListContentV2)
async def public_list_content_v2_async(
    is_official: Optional[bool] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    sub_type: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents (PublicListContentV2)

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


    *tags=red*
    *tags=red&animal;*
    *tags=red|animal*
    *tags=red&animal;|wild*
    *tags=red&(animal|wild)*

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore _ and dash -

    Allowed character for operator: & | ( )


    **Please note that value of tags query param should be URL encoded**

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents

        method: GET

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_official: (isOfficial) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sub_type: (subType) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (list content's)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentV2.create(
        is_official=is_official,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sub_type=sub_type,
        tags=tags,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateContentByShareCodeV2)
def public_update_content_by_share_code_v2(
    body: ModelsUpdateContentRequestV2,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (PublicUpdateContentByShareCodeV2)

    Update content by share code

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentByShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateContentByShareCodeV2)
async def public_update_content_by_share_code_v2_async(
    body: ModelsUpdateContentRequestV2,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (PublicUpdateContentByShareCodeV2)

    Update content by share code

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentByShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateContentFileLocation)
def public_update_content_file_location(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content file location (PublicUpdateContentFileLocation)

    This endpoint should be used after calling generate upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateContentFileLocation)
async def public_update_content_file_location_async(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content file location (PublicUpdateContentFileLocation)

    This endpoint should be used after calling generate upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUpdateContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUpdateContentV2)
def public_update_content_v2(
    body: ModelsUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content (PublicUpdateContentV2)

    Update existing content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Content updated)

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
    request = PublicUpdateContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUpdateContentV2)
async def public_update_content_v2_async(
    body: ModelsUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content (PublicUpdateContentV2)

    Update existing content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Content updated)

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
    request = PublicUpdateContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateContentShareCodeV2)
def update_content_share_code_v2(
    body: ModelsUpdateContentShareCodeRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content share code (UpdateContentShareCodeV2)

    This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

    `shareCode` format should follows:
    Max length: 7
    Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentShareCodeRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (Update content sharecode)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateContentShareCodeV2)
async def update_content_share_code_v2_async(
    body: ModelsUpdateContentShareCodeRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content share code (UpdateContentShareCodeV2)

    This endpoint is used to modify the shareCode of a content. However, this operation is restricted by default and requires the above permission to be granted to the User role.

    `shareCode` format should follows:
    Max length: 7
    Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode

        method: PATCH

        tags: ["Public Content V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateContentShareCodeRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (Update content sharecode)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateScreenshotsV2)
def update_screenshots_v2(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (UpdateScreenshotsV2)

    Maximum description length: 1024

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content V2"]

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
    request = UpdateScreenshotsV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateScreenshotsV2)
async def update_screenshots_v2_async(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (UpdateScreenshotsV2)

    Maximum description length: 1024

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Public Content V2"]

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
    request = UpdateScreenshotsV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadContentScreenshotV2)
def upload_content_screenshot_v2(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (UploadContentScreenshotV2)

    This endpoint used to request upload URL from content's screenshot.
    If *contentType* is not specified, it will use *fileExtension* value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
    Maximum description length: 1024

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content V2"]

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

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadContentScreenshotV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadContentScreenshotV2)
async def upload_content_screenshot_v2_async(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (UploadContentScreenshotV2)

    This endpoint used to request upload URL from content's screenshot.
    If *contentType* is not specified, it will use *fileExtension* value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
    Maximum description length: 1024

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots

        method: POST

        tags: ["Public Content V2"]

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

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadContentScreenshotV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
