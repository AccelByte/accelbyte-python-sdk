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

from ..models import ModelsAdminGetContentBulkRequest
from ..models import ModelsAdminUpdateContentRequest
from ..models import ModelsContentDownloadResponse
from ..models import ModelsCreateContentRequest
from ..models import ModelsCreateContentRequestS3
from ..models import ModelsCreateContentResponse
from ..models import ModelsCreateScreenshotRequest
from ..models import ModelsCreateScreenshotResponse
from ..models import ModelsGetContentBulkByShareCodesRequest
from ..models import ModelsGetContentPreviewResponse
from ..models import ModelsHideContentRequest
from ..models import ModelsListContentVersionsResponse
from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.admin_content import AdminDeleteContent
from ..operations.admin_content import AdminDeleteContentScreenshot
from ..operations.admin_content import AdminDownloadContentPreview
from ..operations.admin_content import AdminGetContent
from ..operations.admin_content import AdminGetContentBulk
from ..operations.admin_content import AdminGetContentBulkByShareCodes
from ..operations.admin_content import AdminGetSpecificContent
from ..operations.admin_content import AdminGetUserContentByShareCode
from ..operations.admin_content import AdminHideUserContent
from ..operations.admin_content import AdminSearchChannelSpecificContent
from ..operations.admin_content import AdminSearchContent
from ..operations.admin_content import AdminUpdateContentDirect
from ..operations.admin_content import AdminUpdateContentS3
from ..operations.admin_content import AdminUpdateContentS3ByShareCode
from ..operations.admin_content import AdminUpdateScreenshots
from ..operations.admin_content import AdminUploadContentDirect
from ..operations.admin_content import AdminUploadContentS3
from ..operations.admin_content import AdminUploadContentScreenshot
from ..operations.admin_content import DeleteContentByShareCode
from ..operations.admin_content import ListContentVersions
from ..operations.admin_content import RollbackContentVersion
from ..operations.admin_content import SingleAdminDeleteContent
from ..operations.admin_content import SingleAdminGetContent
from ..operations.admin_content import SingleAdminUpdateContentDirect
from ..operations.admin_content import SingleAdminUpdateContentS3
from ..models import ModelsCreateContentResponseContentStatusEnum


@same_doc_as(AdminDeleteContent)
def admin_delete_content(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (AdminDeleteContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminDeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteContent)
async def admin_delete_content_async(
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (AdminDeleteContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminDeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteContentScreenshot)
def admin_delete_content_screenshot(
    content_id: str,
    screenshot_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content's screenshot (AdminDeleteContentScreenshot)

    Delete existing screenshot from a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Admin Content"]

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
    request = AdminDeleteContentScreenshot.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteContentScreenshot)
async def admin_delete_content_screenshot_async(
    content_id: str,
    screenshot_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content's screenshot (AdminDeleteContentScreenshot)

    Delete existing screenshot from a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}

        method: DELETE

        tags: ["Admin Content"]

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
    request = AdminDeleteContentScreenshot.create(
        content_id=content_id,
        screenshot_id=screenshot_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDownloadContentPreview)
def admin_download_content_preview(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content preview (AdminDownloadContentPreview)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminDownloadContentPreview.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDownloadContentPreview)
async def admin_download_content_preview_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content preview (AdminDownloadContentPreview)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminDownloadContentPreview.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContent)
def admin_get_content(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (AdminGetContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetContent.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContent)
async def admin_get_content_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (AdminGetContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetContent.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentBulk)
def admin_get_content_bulk(
    body: ModelsAdminGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content IDs (AdminGetContentBulk)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum contentId per request 100

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by content IDs)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentBulk.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentBulk)
async def admin_get_content_bulk_async(
    body: ModelsAdminGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content IDs (AdminGetContentBulk)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum contentId per request 100

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/bulk

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminGetContentBulkRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by content IDs)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentBulk.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetContentBulkByShareCodes)
def admin_get_content_bulk_by_share_codes(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (AdminGetContentBulkByShareCodes)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by content sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentBulkByShareCodes.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentBulkByShareCodes)
async def admin_get_content_bulk_by_share_codes_async(
    body: ModelsGetContentBulkByShareCodesRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content sharecodes (AdminGetContentBulkByShareCodes)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum sharecodes per request 100

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/bulk

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetContentBulkByShareCodesRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsContentDownloadResponse] (Bulk get content by content sharecodes)

        400: Bad Request - ResponseError (773900: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (773901: Unable to get ugc content: database/Unable to get creator | 773902: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetContentBulkByShareCodes.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetSpecificContent)
def admin_get_specific_content(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user specific content (AdminGetSpecificContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetSpecificContent.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetSpecificContent)
async def admin_get_specific_content_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user specific content (AdminGetSpecificContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetSpecificContent.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserContentByShareCode)
def admin_get_user_content_by_share_code(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (AdminGetUserContentByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetUserContentByShareCode.create(
        share_code=share_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserContentByShareCode)
async def admin_get_user_content_by_share_code_async(
    share_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get content by sharecode (AdminGetUserContentByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminGetUserContentByShareCode.create(
        share_code=share_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminHideUserContent)
def admin_hide_user_content(
    body: ModelsHideContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Hide/Unhide user's generated contents (AdminHideUserContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHideContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (hide/unhide user's generated content)

        400: Bad Request - ResponseError (773801: Invalid request body/Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773803: Unable to update hide status: content not found)

        500: Internal Server Error - ResponseError (773802: Unable to update hide status: database error | 773804: Unable to save ugc content: failed generate upload URL | 773805: Unable to save ugc content preview: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminHideUserContent.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminHideUserContent)
async def admin_hide_user_content_async(
    body: ModelsHideContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Hide/Unhide user's generated contents (AdminHideUserContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHideContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (hide/unhide user's generated content)

        400: Bad Request - ResponseError (773801: Invalid request body/Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773803: Unable to update hide status: content not found)

        500: Internal Server Error - ResponseError (773802: Unable to update hide status: database error | 773804: Unable to save ugc content: failed generate upload URL | 773805: Unable to save ugc content preview: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminHideUserContent.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSearchChannelSpecificContent)
def admin_search_channel_specific_content(
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
    """Search contents specific to a channel (AdminSearchChannelSpecificContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminSearchChannelSpecificContent.create(
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


@same_doc_as(AdminSearchChannelSpecificContent)
async def admin_search_channel_specific_content_async(
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
    """Search contents specific to a channel (AdminSearchChannelSpecificContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminSearchChannelSpecificContent.create(
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


@same_doc_as(AdminSearchContent)
def admin_search_content(
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
    """Search contents (AdminSearchContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        url: /ugc/v1/admin/namespaces/{namespace}/contents/search

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminSearchContent.create(
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


@same_doc_as(AdminSearchContent)
async def admin_search_content_async(
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
    """Search contents (AdminSearchContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        url: /ugc/v1/admin/namespaces/{namespace}/contents/search

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

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
    request = AdminSearchContent.create(
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
@same_doc_as(AdminUpdateContentDirect)
def admin_update_content_direct(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (AdminUpdateContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated)

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
    request = AdminUpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUpdateContentDirect)
async def admin_update_content_direct_async(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (AdminUpdateContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated)

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
    request = AdminUpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateContentS3)
def admin_update_content_s3(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (AdminUpdateContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateContentS3)
async def admin_update_content_s3_async(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (AdminUpdateContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateContentS3ByShareCode)
def admin_update_content_s3_by_share_code(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (AdminUpdateContentS3ByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentS3ByShareCode.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateContentS3ByShareCode)
async def admin_update_content_s3_by_share_code_async(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket by share code (AdminUpdateContentS3ByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateContentS3ByShareCode.create(
        body=body,
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateScreenshots)
def admin_update_screenshots(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (AdminUpdateScreenshots)

    Maximum description length: 1024

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminUpdateScreenshots.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateScreenshots)
async def admin_update_screenshots_async(
    body: ModelsUpdateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update screenshot of content (AdminUpdateScreenshots)

    Maximum description length: 1024

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminUpdateScreenshots.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminUploadContentDirect)
def admin_upload_content_direct(
    body: ModelsCreateContentRequest,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to a channel (AdminUploadContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content | 20013: insufficient permission)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadContentDirect.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminUploadContentDirect)
async def admin_upload_content_direct_async(
    body: ModelsCreateContentRequest,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to a channel (AdminUploadContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content uploaded)

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content | 20013: insufficient permission)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadContentDirect.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUploadContentS3)
def admin_upload_content_s3(
    body: ModelsCreateContentRequestS3,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to S3 bucket (AdminUploadContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except `preview`, `tags`, `contentType`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client when uploading the content using the S3 presigned URL. If not specified, it will use fileExtension value.

    `shareCode` format should follows:

    Length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content Uploaded to S3 bucket )

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadContentS3.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUploadContentS3)
async def admin_upload_content_s3_async(
    body: ModelsCreateContentRequestS3,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload content to S3 bucket (AdminUploadContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except `preview`, `tags`, `contentType`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client when uploading the content using the S3 presigned URL. If not specified, it will use fileExtension value.

    `shareCode` format should follows:

    Length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequestS3 in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateContentResponse (Content Uploaded to S3 bucket )

        400: Bad Request - ResponseError (770100: Malformed request/Invalid request body/channel do not exist | 770107: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (770104: User has been banned to create content)

        409: Conflict - ResponseError (770103: Unable to save ugc content: shareCode exceed the limit)

        500: Internal Server Error - ResponseError (770102: Unable to check user ban status/Unable to save ugc content: unable to get channel | 770103: Unable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUploadContentS3.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUploadContentScreenshot)
def admin_upload_content_screenshot(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for official content (AdminUploadContentScreenshot)

    All request body are required except for *contentType* field.
    *contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
    If not specified, it will use *fileExtension* value.
    Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
    Maximum description length: 1024

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Screenshots uploaded)

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
    request = AdminUploadContentScreenshot.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUploadContentScreenshot)
async def admin_upload_content_screenshot_async(
    body: ModelsCreateScreenshotRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload screenshots for official content (AdminUploadContentScreenshot)

    All request body are required except for *contentType* field.
    *contentType* values is used to enforce the *Content-Type* header needed by the client to upload the content using the presigned URL.
    If not specified, it will use *fileExtension* value.
    Supported file extensions: *pjp*, *jpg*, *jpeg*, *jfif*, *bmp*, *png*.
    Maximum description length: 1024

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots

        method: POST

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateScreenshotRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateScreenshotResponse (Screenshots uploaded)

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
    request = AdminUploadContentScreenshot.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteContentByShareCode)
def delete_content_by_share_code(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (DeleteContentByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Delete content by share code)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteContentByShareCode.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteContentByShareCode)
async def delete_content_by_share_code_async(
    channel_id: str,
    share_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content by share code (DeleteContentByShareCode)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        share_code: (shareCode) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Delete content by share code)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772702: Content not found)

        500: Internal Server Error - ResponseError (772701: Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteContentByShareCode.create(
        channel_id=channel_id,
        share_code=share_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListContentVersions)
def list_content_versions(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content's payload versions (ListContentVersions)

    Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
    Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListContentVersionsResponse (list content's payload versions)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774004: ugc content not found)

        500: Internal Server Error - ResponseError (774005: unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListContentVersions.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListContentVersions)
async def list_content_versions_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content's payload versions (ListContentVersions)

    Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]
    Content's payload versions created when UGC is created or updated with `updateContentFile` set to true. Only list up to 10 latest versions.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListContentVersionsResponse (list content's payload versions)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (774004: ugc content not found)

        500: Internal Server Error - ResponseError (774005: unable to get ugc content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListContentVersions.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RollbackContentVersion)
def rollback_content_version(
    content_id: str,
    version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback content's payload version (RollbackContentVersion)

    Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
    Rollback content's payload to specified version.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}

        method: PUT

        tags: ["Admin Content"]

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
    request = RollbackContentVersion.create(
        content_id=content_id,
        version_id=version_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RollbackContentVersion)
async def rollback_content_version_async(
    content_id: str,
    version_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rollback content's payload version (RollbackContentVersion)

    Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]
    Rollback content's payload to specified version.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}

        method: PUT

        tags: ["Admin Content"]

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
    request = RollbackContentVersion.create(
        content_id=content_id,
        version_id=version_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminDeleteContent)
def single_admin_delete_content(
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (SingleAdminDeleteContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminDeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminDeleteContent)
async def single_admin_delete_content_async(
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete content (SingleAdminDeleteContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: DELETE

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminDeleteContent.create(
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminGetContent)
def single_admin_get_content(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (SingleAdminGetContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminGetContent)
async def single_admin_get_content_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's generated contents (SingleAdminGetContent)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SingleAdminUpdateContentDirect)
def single_admin_update_content_direct(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (SingleAdminUpdateContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminUpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SingleAdminUpdateContentDirect)
async def single_admin_update_content_direct_async(
    body: ModelsCreateContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to a channel (SingleAdminUpdateContentDirect)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except preview, tags and customAttributes.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminUpdateContentDirect.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminUpdateContentS3)
def single_admin_update_content_s3(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (SingleAdminUpdateContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SingleAdminUpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminUpdateContentS3)
async def single_admin_update_content_s3_async(
    body: ModelsAdminUpdateContentRequest,
    channel_id: str,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update content to S3 bucket (SingleAdminUpdateContentS3)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    All request body are required except `payload`, `preview`, `tags`,`contentType`, `updateContentFile`, `customAttributes` and `shareCode`.

    `contentType` values is used to enforce the Content-Type header needed by the client to upload the content using the S3 presigned URL.

    If not specified, it will use `fileExtension` value.

    To update content file, set `updateContentFile` to `true` and upload the file using URL in `payloadURL.url` in response body.

    `shareCode` format should follows:

    Max length: 7
    Available characters: abcdefhkpqrstuxyz




     NOTE: Preview is Legacy Code, please use Screenshot for better solution to display preview of a content

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}

        method: PUT

        tags: ["Admin Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAdminUpdateContentRequest in body

        channel_id: (channelId) REQUIRED str in path

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateContentResponse (Content updated at s3)

        400: Bad Request - ResponseError (772601: Malformed request | 772607: Unable to update ugc content: invalid shareCode format)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (772604: User has been banned to update content)

        404: Not Found - ResponseError (772603: Content not found)

        409: Conflict - ResponseError (772606: Share code already used)

        500: Internal Server Error - ResponseError (772602: Unable to check user ban status/Unable to get updated ugc content | 772605: Unable to save ugc content: failed generate upload URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SingleAdminUpdateContentS3.create(
        body=body,
        channel_id=channel_id,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
