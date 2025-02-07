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

from ..models import ModelsAdminContentRequestV2
from ..models import ModelsAdminGetContentBulkRequest
from ..models import ModelsAdminUpdateContentRequestV2
from ..models import ModelsContentDownloadResponse
from ..models import ModelsContentDownloadResponseV2
from ..models import ModelsCopyContentRequest
from ..models import ModelsCreateContentResponseV2
from ..models import ModelsCreateScreenshotRequest
from ..models import ModelsCreateScreenshotResponse
from ..models import ModelsGenerateContentUploadURLRequest
from ..models import ModelsGenerateContentUploadURLResponse
from ..models import ModelsGetContentBulkByShareCodesRequest
from ..models import ModelsHideContentRequest
from ..models import ModelsListContentVersionsResponse
from ..models import ModelsPaginatedContentDownloadResponseV2
from ..models import ModelsUpdateContentResponseV2
from ..models import ModelsUpdateFileLocationRequest
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.admin_content_v2 import AdminBulkGetContentByIDsV2
from ..operations.admin_content_v2 import AdminCopyContent
from ..operations.admin_content_v2 import AdminCreateContentV2
from ..operations.admin_content_v2 import AdminDeleteContentByShareCodeV2
from ..operations.admin_content_v2 import AdminDeleteContentScreenshotV2
from ..operations.admin_content_v2 import AdminDeleteOfficialContentV2
from ..operations.admin_content_v2 import AdminDeleteUserContentV2
from ..operations.admin_content_v2 import AdminGenerateOfficialContentUploadURLV2
from ..operations.admin_content_v2 import AdminGenerateUserContentUploadURLV2
from ..operations.admin_content_v2 import AdminGetContentBulkByShareCodesV2
from ..operations.admin_content_v2 import AdminGetContentByChannelIDV2
from ..operations.admin_content_v2 import AdminGetContentByContentIDV2
from ..operations.admin_content_v2 import AdminGetContentByShareCodeV2
from ..operations.admin_content_v2 import AdminGetContentByUserIDV2
from ..operations.admin_content_v2 import AdminListContentV2
from ..operations.admin_content_v2 import AdminUpdateContentByShareCodeV2
from ..operations.admin_content_v2 import AdminUpdateContentHideStatusV2
from ..operations.admin_content_v2 import AdminUpdateOfficialContentFileLocation
from ..operations.admin_content_v2 import AdminUpdateOfficialContentV2
from ..operations.admin_content_v2 import AdminUpdateScreenshotsV2
from ..operations.admin_content_v2 import AdminUpdateUserContentFileLocation
from ..operations.admin_content_v2 import AdminUpdateUserContentV2
from ..operations.admin_content_v2 import AdminUploadContentScreenshotV2
from ..operations.admin_content_v2 import ListContentVersionsV2
from ..operations.admin_content_v2 import RollbackContentVersionV2
from ..models import ModelsCreateContentResponseV2ContentStatusEnum
from ..models import ModelsUpdateContentResponseV2ContentStatusEnum


@same_doc_as(AdminBulkGetContentByIDsV2)
def admin_bulk_get_content_by_i_ds_v2(
    body: ModelsAdminGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content IDs (AdminBulkGetContentByIDsV2)

    Maximum contentId per request 100

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Bulk get content by content IDs)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetContentByIDsV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkGetContentByIDsV2)
async def admin_bulk_get_content_by_i_ds_v2_async(
    body: ModelsAdminGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content IDs (AdminBulkGetContentByIDsV2)

    Maximum contentId per request 100

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponseV2] (Bulk get content by content IDs)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkGetContentByIDsV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCopyContent)
def admin_copy_content(
    body: ModelsCopyContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Copy contents from a channel to another (AdminCopyContent)

    Copy existing content from source channel to target channel.

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCopyContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsContentDownloadResponseV2 (contents copied)

        400: Bad Request - ResponseError

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError

        500: Internal Server Error - ResponseError
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCopyContent.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCopyContent)
async def admin_copy_content_async(
    body: ModelsCopyContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Copy contents from a channel to another (AdminCopyContent)

    Copy existing content from source channel to target channel.

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCopyContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsContentDownloadResponseV2 (contents copied)

        400: Bad Request - ResponseError

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError

        500: Internal Server Error - ResponseError
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCopyContent.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateContentV2)
def admin_create_content_v2(
    body: ModelsAdminContentRequestV2,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a content (AdminCreateContentV2)

    Create official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponseV2 (Content created)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770106: channel doesn't exist)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateContentV2.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateContentV2)
async def admin_create_content_v2_async(
    body: ModelsAdminContentRequestV2,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a content (AdminCreateContentV2)

    Create official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponseV2 (Content created)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770106: channel doesn't exist)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770105: Unable to save ugc content: failed generate upload URL | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateContentV2.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteContentByShareCodeV2)
def admin_delete_content_by_share_code_v2(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (AdminDeleteContentByShareCodeV2)

    Delete content by share code

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteContentByShareCodeV2.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteContentByShareCodeV2)
async def admin_delete_content_by_share_code_v2_async(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (AdminDeleteContentByShareCodeV2)

    Delete content by share code

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteContentByShareCodeV2.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteContentScreenshotV2)
def admin_delete_content_screenshot_v2(
    content_id: str,
    screenshot_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (AdminDeleteContentScreenshotV2)

    Delete screenshot from a content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

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
    request = AdminDeleteContentScreenshotV2.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteContentScreenshotV2)
async def admin_delete_content_screenshot_v2_async(
    content_id: str,
    screenshot_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (AdminDeleteContentScreenshotV2)

    Delete screenshot from a content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        screenshot_id: (screenshotId) REQUIRED str in path

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
    request = AdminDeleteContentScreenshotV2.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteOfficialContentV2)
def admin_delete_official_content_v2(
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete official content (AdminDeleteOfficialContentV2)

    Delete existing official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Official content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteOfficialContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteOfficialContentV2)
async def admin_delete_official_content_v2_async(
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete official content (AdminDeleteOfficialContentV2)

    Delete existing official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Official content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteOfficialContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteUserContentV2)
def admin_delete_user_content_v2(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user content (AdminDeleteUserContentV2)

    Delete user content by content ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteUserContentV2)
async def admin_delete_user_content_v2_async(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user content (AdminDeleteUserContentV2)

    Delete user content by content ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteUserContentV2.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateOfficialContentUploadURLV2)
def admin_generate_official_content_upload_urlv2(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate official content upload URL (AdminGenerateOfficialContentUploadURLV2)

    Generate official content upload URL

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (official content upload URL generated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateOfficialContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateOfficialContentUploadURLV2)
async def admin_generate_official_content_upload_urlv2_async(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate official content upload URL (AdminGenerateOfficialContentUploadURLV2)

    Generate official content upload URL

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (official content upload URL generated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateOfficialContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGenerateUserContentUploadURLV2)
def admin_generate_user_content_upload_urlv2(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate user content upload URL (AdminGenerateUserContentUploadURLV2)

    generate user content upload URL

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (User content upload URL generated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateUserContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGenerateUserContentUploadURLV2)
async def admin_generate_user_content_upload_urlv2_async(
    body: ModelsGenerateContentUploadURLRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate user content upload URL (AdminGenerateUserContentUploadURLV2)

    generate user content upload URL

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenerateContentUploadURLRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGenerateContentUploadURLResponse (User content upload URL generated)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGenerateUserContentUploadURLV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentBulkByShareCodesV2)
def admin_get_content_bulk_by_share_codes_v2(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (AdminGetContentBulkByShareCodesV2)

    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
    request = AdminGetContentBulkByShareCodesV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentBulkByShareCodesV2)
async def admin_get_content_bulk_by_share_codes_v2_async(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (AdminGetContentBulkByShareCodesV2)

    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
    request = AdminGetContentBulkByShareCodesV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentByChannelIDV2)
def admin_get_content_by_channel_idv2(
    channel_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (AdminGetContentByChannelIDV2)

    List content specific to a channel

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List contents specific to a channel)

        400: Bad Request - ResponseError (770804: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770805: Unable to get ugc content: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByChannelIDV2.create(
        channel_id=channel_id,
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentByChannelIDV2)
async def admin_get_content_by_channel_idv2_async(
    channel_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (AdminGetContentByChannelIDV2)

    List content specific to a channel

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List contents specific to a channel)

        400: Bad Request - ResponseError (770804: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770805: Unable to get ugc content: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByChannelIDV2.create(
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


@same_doc_as(AdminGetContentByContentIDV2)
def admin_get_content_by_content_idv2(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by content ID (AdminGetContentByContentIDV2)

    Get content by content ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
    request = AdminGetContentByContentIDV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentByContentIDV2)
async def admin_get_content_by_content_idv2_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by content ID (AdminGetContentByContentIDV2)

    Get content by content ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
    request = AdminGetContentByContentIDV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentByShareCodeV2)
def admin_get_content_by_share_code_v2(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (AdminGetContentByShareCodeV2)

    Get content by share code

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByShareCodeV2.create(
        share_code=share_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentByShareCodeV2)
async def admin_get_content_by_share_code_v2_async(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (AdminGetContentByShareCodeV2)

    Get content by share code

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponseV2 (Get content by sharecode)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770300: ugc content not found)

        500: Internal Server Error - ResponseError (770301: Unable to get ugc content/Unable to get creator | 773201: Unable to get ugc content/Unable to get creator/Unable to get included group | 770303: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByShareCodeV2.create(
        share_code=share_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentByUserIDV2)
def admin_get_content_by_user_idv2(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (AdminGetContentByUserIDV2)

    Get user cotent

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get user's generated contents)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByUserIDV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentByUserIDV2)
async def admin_get_content_by_user_idv2_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (AdminGetContentByUserIDV2)

    Get user cotent

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get user's generated contents)

        400: Bad Request - ResponseError (770900: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentByUserIDV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListContentV2)
def admin_list_content_v2(
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
    """List contents (AdminListContentV2)

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
        url: /ugc/v2/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListContentV2.create(
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


@same_doc_as(AdminListContentV2)
async def admin_list_content_v2_async(
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
    """List contents (AdminListContentV2)

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
        url: /ugc/v2/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

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
        200: OK - ModelsPaginatedContentDownloadResponseV2 (List content)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListContentV2.create(
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


@same_doc_as(AdminUpdateContentByShareCodeV2)
def admin_update_content_by_share_code_v2(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (AdminUpdateContentByShareCodeV2)

    *shareCode* format should follows:

    "Max length: 7
    "Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (content udpated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 770107: Unable to update ugc content: invalid shareCode format)

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
    request = AdminUpdateContentByShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateContentByShareCodeV2)
async def admin_update_content_by_share_code_v2_async(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (AdminUpdateContentByShareCodeV2)

    *shareCode* format should follows:

    "Max length: 7
    "Available characters: abcdefhkpqrstuxyz

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (content udpated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 770107: Unable to update ugc content: invalid shareCode format)

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
    request = AdminUpdateContentByShareCodeV2.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateContentHideStatusV2)
def admin_update_content_hide_status_v2(
    body: ModelsHideContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Hide/Unhide user's generated contents (AdminUpdateContentHideStatusV2)

    Hide/Unhide user's generated contents

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHideContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (Hide/UnHide user's generated content)

        400: Bad Request - ResponseError (773801: Invalid request body/Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (773803: Unable to update hide status: content not found)

        500: Internal Server Error - ResponseError (773802: Unable to update hide status: database error | 773804: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentHideStatusV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateContentHideStatusV2)
async def admin_update_content_hide_status_v2_async(
    body: ModelsHideContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Hide/Unhide user's generated contents (AdminUpdateContentHideStatusV2)

    Hide/Unhide user's generated contents

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHideContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponseV2 (Hide/UnHide user's generated content)

        400: Bad Request - ResponseError (773801: Invalid request body/Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (773803: Unable to update hide status: content not found)

        500: Internal Server Error - ResponseError (773802: Unable to update hide status: database error | 773804: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentHideStatusV2.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateOfficialContentFileLocation)
def admin_update_official_content_file_location(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content file location (AdminUpdateOfficialContentFileLocation)

    This endpoint should be used after calling generate official content upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateOfficialContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateOfficialContentFileLocation)
async def admin_update_official_content_file_location_async(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content file location (AdminUpdateOfficialContentFileLocation)

    This endpoint should be used after calling generate official content upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateOfficialContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateOfficialContentV2)
def admin_update_official_content_v2(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update official content (AdminUpdateOfficialContentV2)

    Update existing official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update official content)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateOfficialContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateOfficialContentV2)
async def admin_update_official_content_v2_async(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update official content (AdminUpdateOfficialContentV2)

    Update existing official content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update official content)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateOfficialContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateScreenshotsV2)
def admin_update_screenshots_v2(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (AdminUpdateScreenshotsV2)

    Maximum description length: 1024

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (Screenshot updated)

        400: Bad Request - ResponseError (772601: Malformed request | 772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateScreenshotsV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateScreenshotsV2)
async def admin_update_screenshots_v2_async(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (AdminUpdateScreenshotsV2)

    Maximum description length: 1024

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateScreenshotResponse (Screenshot updated)

        400: Bad Request - ResponseError (772601: Malformed request | 772602: Unable to check user ban status/Unable to get updated ugc content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateScreenshotsV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserContentFileLocation)
def admin_update_user_content_file_location(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user content file location (AdminUpdateUserContentFileLocation)

    This endpoint should be used after calling generate user content upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update user content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserContentFileLocation)
async def admin_update_user_content_file_location_async(
    body: ModelsUpdateFileLocationRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user content file location (AdminUpdateUserContentFileLocation)

    This endpoint should be used after calling generate user content upload url endpoint to commit the changes

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateFileLocationRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update user content file location)

        400: Bad Request - ResponseError (774001: unable to read response body/unable to update file location)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774002: unable to update content file location: content not found)

        500: Internal Server Error - ResponseError (774003: unable to update content file location)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserContentFileLocation.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateUserContentV2)
def admin_update_user_content_v2(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user content (AdminUpdateUserContentV2)

    Update existing user content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update user content)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateUserContentV2)
async def admin_update_user_content_v2_async(
    body: ModelsAdminUpdateContentRequestV2,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user content (AdminUpdateUserContentV2)

    Update existing user content

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PATCH

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequestV2 in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateContentResponseV2 (Update user content)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateUserContentV2.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUploadContentScreenshotV2)
def admin_upload_content_screenshot_v2(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (AdminUploadContentScreenshotV2)

    This endpoint used to request upload URL from content's screenshot.
    If *contentType* is not specified, it will use *fileExtension* value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
    Maximum description length: 1024

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminUploadContentScreenshotV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUploadContentScreenshotV2)
async def admin_upload_content_screenshot_v2_async(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for content (AdminUploadContentScreenshotV2)

    This endpoint used to request upload URL from content's screenshot.
    If *contentType* is not specified, it will use *fileExtension* value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.
    Maximum description length: 1024

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: POST

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminUploadContentScreenshotV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListContentVersionsV2)
def list_content_versions_v2(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content's payload versions (ListContentVersionsV2)

    Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListContentVersionsResponse (List content's payload verisions)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774004: ugc content not found)

        500: Internal Server Error - ResponseError (774005: unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListContentVersionsV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListContentVersionsV2)
async def list_content_versions_v2_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content's payload versions (ListContentVersionsV2)

    Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListContentVersionsResponse (List content's payload verisions)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774004: ugc content not found)

        500: Internal Server Error - ResponseError (774005: unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListContentVersionsV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RollbackContentVersionV2)
def rollback_content_version_v2(
    content_id: str,
    version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback content's payload version (RollbackContentVersionV2)

    Rollback content's payload to specified version

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version_id: (versionId) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Rollback content's payload version)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774101: ugc content not found | 774102: version not found)

        422: Unprocessable Entity - ResponseError (774103: unable to get ugc content/content cannot be restored using the current content version)

        500: Internal Server Error - ResponseError (774103: unable to get ugc content/content cannot be restored using the current content version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RollbackContentVersionV2.create(
        content_id=content_id,
        version_id=version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RollbackContentVersionV2)
async def rollback_content_version_v2_async(
    content_id: str,
    version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback content's payload version (RollbackContentVersionV2)

    Rollback content's payload to specified version

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}

        method: PUT

        tags: ["Admin Content V2"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version_id: (versionId) REQUIRED str in path

    Responses:
        200: OK - ModelsContentDownloadResponse (Rollback content's payload version)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774101: ugc content not found | 774102: version not found)

        422: Unprocessable Entity - ResponseError (774103: unable to get ugc content/content cannot be restored using the current content version)

        500: Internal Server Error - ResponseError (774103: unable to get ugc content/content cannot be restored using the current content version)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RollbackContentVersionV2.create(
        content_id=content_id,
        version_id=version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
