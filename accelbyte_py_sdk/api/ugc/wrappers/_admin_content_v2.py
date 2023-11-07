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
from ..models import ModelsContentDownloadResponseV2
from ..models import ModelsCreateContentResponseV2
from ..models import ModelsCreateScreenshotRequest
from ..models import ModelsCreateScreenshotResponse
from ..models import ModelsGenerateContentUploadURLRequest
from ..models import ModelsGenerateContentUploadURLResponse
from ..models import ModelsHideContentRequest
from ..models import ModelsPaginatedContentDownloadResponseV2
from ..models import ModelsUpdateContentResponseV2
from ..models import ModelsUpdateFileLocationRequest
from ..models import ModelsUpdateScreenshotRequest
from ..models import ModelsUpdateScreenshotResponse
from ..models import ResponseError

from ..operations.admin_content_v2 import AdminBulkGetContentByIDsV2
from ..operations.admin_content_v2 import AdminCreateContentV2
from ..operations.admin_content_v2 import AdminDeleteContentScreenshotV2
from ..operations.admin_content_v2 import AdminDeleteOfficialContentV2
from ..operations.admin_content_v2 import AdminDeleteUserContentV2
from ..operations.admin_content_v2 import AdminGenerateOfficialContentUploadURLV2
from ..operations.admin_content_v2 import AdminGenerateUserContentUploadURLV2
from ..operations.admin_content_v2 import AdminGetContentByChannelIDV2
from ..operations.admin_content_v2 import AdminGetContentByContentIDV2
from ..operations.admin_content_v2 import AdminGetContentByShareCodeV2
from ..operations.admin_content_v2 import AdminGetContentByUserIDV2
from ..operations.admin_content_v2 import AdminListContentV2
from ..operations.admin_content_v2 import AdminUpdateContentHideStatusV2
from ..operations.admin_content_v2 import AdminUpdateOfficialContentFileLocation
from ..operations.admin_content_v2 import AdminUpdateOfficialContentV2
from ..operations.admin_content_v2 import AdminUpdateScreenshotsV2
from ..operations.admin_content_v2 import AdminUpdateUserContentFileLocation
from ..operations.admin_content_v2 import AdminUpdateUserContentV2
from ..operations.admin_content_v2 import AdminUploadContentScreenshotV2


@same_doc_as(AdminBulkGetContentByIDsV2)
def admin_bulk_get_content_by_i_ds_v2(
    body: ModelsAdminGetContentBulkRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get content by content IDs (AdminBulkGetContentByIDsV2)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum contentId per request 100

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - List[ModelsContentDownloadResponseV2] (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].
    Maximum contentId per request 100

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - List[ModelsContentDownloadResponseV2] (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminBulkGetContentByIDsV2.create(
        body=body,
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

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
        201: Created - ModelsCreateContentResponseV2 (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

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
        201: Created - ModelsCreateContentResponseV2 (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminDeleteContentScreenshotV2)
def admin_delete_content_screenshot_v2(
    content_id: str,
    screenshot_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete screenshots content (AdminDeleteContentScreenshotV2)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsGenerateContentUploadURLResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsGenerateContentUploadURLResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsGenerateContentUploadURLResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsGenerateContentUploadURLResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminGetContentByChannelIDV2)
def admin_get_content_by_channel_idv2(
    channel_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (AdminGetContentByChannelIDV2)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

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

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetContentByChannelIDV2.create(
        channel_id=channel_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetContentByChannelIDV2)
async def admin_get_content_by_channel_idv2_async(
    channel_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List contents specific to a channel (AdminGetContentByChannelIDV2)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

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

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetContentByChannelIDV2.create(
        channel_id=channel_id,
        limit=limit,
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - ModelsContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - ModelsContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - ModelsContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

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
        200: OK - ModelsContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

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
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [READ]

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
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sub_type: (subType) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListContentV2.create(
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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:*:CONTENT [READ]

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/contents

        method: GET

        tags: ["Admin Content V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        sub_type: (subType) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminListContentV2.create(
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsCreateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsCreateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    This endpoint should be used after calling generate official content upload url endpoint to commit the changes.
    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    This endpoint should be used after calling generate official content upload url endpoint to commit the changes.
    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Maximum description length: 1024.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Maximum description length: 1024.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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

    This endpoint should be used after calling generate user content upload url endpoint to commit the changes.
    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    This endpoint should be used after calling generate user content upload url endpoint to commit the changes.
    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE].

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [UPDATE]

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
        200: OK - ModelsUpdateContentResponseV2 (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except for contentType field.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
    If not specified, it will use fileExtension value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.

    Maximum description length: 1024.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

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
        201: Created - ModelsCreateScreenshotResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE].

    All request body are required except for contentType field.
    contentType values is used to enforce the Content-Type header needed by the client to upload the content using the presigned URL.
    If not specified, it will use fileExtension value.
    Supported file extensions: pjp, jpg, jpeg, jfif, bmp, png.

    Maximum description length: 1024.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [CREATE]

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
        201: Created - ModelsCreateScreenshotResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
