# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ugc Service

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

from .utils import randomize

from ..api.ugc.models import ModelsAddDownloadCountResponse
from ..api.ugc.models import ModelsAdminContentRequestV2
from ..api.ugc.models import ModelsAdminGetContentBulkRequest
from ..api.ugc.models import ModelsAdminUpdateContentRequest
from ..api.ugc.models import ModelsAdminUpdateContentRequestV2
from ..api.ugc.models import ModelsApproveStagingContentRequest
from ..api.ugc.models import ModelsChannelRequest
from ..api.ugc.models import ModelsChannelResponse
from ..api.ugc.models import ModelsConfigResponse
from ..api.ugc.models import ModelsContentDownloadResponse
from ..api.ugc.models import ModelsContentDownloadResponseV2
from ..api.ugc.models import ModelsContentDownloaderResponse
from ..api.ugc.models import ModelsContentLikeRequest
from ..api.ugc.models import ModelsContentLikeResponse
from ..api.ugc.models import ModelsContentLikersResponse
from ..api.ugc.models import ModelsContentRequestV2
from ..api.ugc.models import ModelsContentSnapshot
from ..api.ugc.models import ModelsContentVersionResponse
from ..api.ugc.models import ModelsCopyContentRequest
from ..api.ugc.models import ModelsCreateContentRequest
from ..api.ugc.models import ModelsCreateContentRequestS3
from ..api.ugc.models import ModelsCreateContentResponse
from ..api.ugc.models import ModelsCreateContentResponseV2
from ..api.ugc.models import ModelsCreateGroupRequest
from ..api.ugc.models import ModelsCreateGroupResponse
from ..api.ugc.models import ModelsCreateScreenshotRequest
from ..api.ugc.models import ModelsCreateScreenshotRequestItem
from ..api.ugc.models import ModelsCreateScreenshotResponse
from ..api.ugc.models import ModelsCreateTagRequest
from ..api.ugc.models import ModelsCreateTagResponse
from ..api.ugc.models import ModelsCreateTypeRequest
from ..api.ugc.models import ModelsCreateTypeResponse
from ..api.ugc.models import ModelsCreatorFollowState
from ..api.ugc.models import ModelsCreatorOverviewResponse
from ..api.ugc.models import ModelsCreatorResponse
from ..api.ugc.models import ModelsGenerateContentUploadURLRequest
from ..api.ugc.models import ModelsGenerateContentUploadURLResponse
from ..api.ugc.models import ModelsGetContentBulkByShareCodesRequest
from ..api.ugc.models import ModelsGetContentPreviewResponse
from ..api.ugc.models import ModelsHideContentRequest
from ..api.ugc.models import ModelsLikeState
from ..api.ugc.models import ModelsListContentVersionsResponse
from ..api.ugc.models import ModelsPaginatedContentDownloadResponse
from ..api.ugc.models import ModelsPaginatedContentDownloadResponseV2
from ..api.ugc.models import ModelsPaginatedContentDownloaderResponse
from ..api.ugc.models import ModelsPaginatedContentLikersResponse
from ..api.ugc.models import ModelsPaginatedCreatorOverviewResponse
from ..api.ugc.models import ModelsPaginatedGetChannelResponse
from ..api.ugc.models import ModelsPaginatedGetConfigsResponse
from ..api.ugc.models import ModelsPaginatedGetTagResponse
from ..api.ugc.models import ModelsPaginatedGetTypeResponse
from ..api.ugc.models import ModelsPaginatedGroupResponse
from ..api.ugc.models import ModelsPaginatedListStagingContentResponse
from ..api.ugc.models import ModelsPagingCursor
from ..api.ugc.models import ModelsPayloadURL
from ..api.ugc.models import ModelsPreviewMetadata
from ..api.ugc.models import ModelsPreviewURL
from ..api.ugc.models import ModelsPublicChannelRequest
from ..api.ugc.models import ModelsPublicCreateContentRequestS3
from ..api.ugc.models import ModelsPublicGetContentBulkRequest
from ..api.ugc.models import ModelsScreenshotResponse
from ..api.ugc.models import ModelsStagingContentResponse
from ..api.ugc.models import ModelsUpdateChannelRequest
from ..api.ugc.models import ModelsUpdateConfigRequest
from ..api.ugc.models import ModelsUpdateContentRequest
from ..api.ugc.models import ModelsUpdateContentRequestV2
from ..api.ugc.models import ModelsUpdateContentResponseV2
from ..api.ugc.models import ModelsUpdateContentShareCodeRequest
from ..api.ugc.models import ModelsUpdateFileLocationRequest
from ..api.ugc.models import ModelsUpdateScreenshot
from ..api.ugc.models import ModelsUpdateScreenshotRequest
from ..api.ugc.models import ModelsUpdateScreenshotResponse
from ..api.ugc.models import ModelsUpdateStagingContentRequest
from ..api.ugc.models import ModelsUserFollowRequest
from ..api.ugc.models import ModelsUserFollowResponse
from ..api.ugc.models import ResponseError


def create_models_add_download_count_response_example() -> (
    ModelsAddDownloadCountResponse
):
    instance = ModelsAddDownloadCountResponse()
    instance.content_id = randomize()
    return instance


def create_models_admin_content_request_v2_example() -> ModelsAdminContentRequestV2:
    instance = ModelsAdminContentRequestV2()
    instance.name = randomize()
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.share_code = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_admin_get_content_bulk_request_example() -> (
    ModelsAdminGetContentBulkRequest
):
    instance = ModelsAdminGetContentBulkRequest()
    instance.content_ids = [randomize()]
    return instance


def create_models_admin_update_content_request_example() -> (
    ModelsAdminUpdateContentRequest
):
    instance = ModelsAdminUpdateContentRequest()
    instance.content_type = randomize()
    instance.file_extension = randomize()
    instance.name = randomize()
    instance.payload = randomize()
    instance.preview = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.update_content_file = randomize("bool")
    instance.custom_attributes = {randomize(): randomize()}
    instance.preview_metadata = create_models_preview_metadata_example()
    instance.share_code = randomize()
    return instance


def create_models_admin_update_content_request_v2_example() -> (
    ModelsAdminUpdateContentRequestV2
):
    instance = ModelsAdminUpdateContentRequestV2()
    instance.custom_attributes = {randomize(): randomize()}
    instance.name = randomize()
    instance.share_code = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_approve_staging_content_request_example() -> (
    ModelsApproveStagingContentRequest
):
    instance = ModelsApproveStagingContentRequest()
    instance.approved = randomize("bool")
    instance.note = randomize()
    return instance


def create_models_channel_request_example() -> ModelsChannelRequest:
    instance = ModelsChannelRequest()
    instance.name = randomize()
    instance.id_ = randomize()
    return instance


def create_models_channel_response_example() -> ModelsChannelResponse:
    instance = ModelsChannelResponse()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.parent_namespace = randomize("slug")
    return instance


def create_models_config_response_example() -> ModelsConfigResponse:
    instance = ModelsConfigResponse()
    instance.key = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize()
    return instance


def create_models_content_download_response_example() -> ModelsContentDownloadResponse:
    instance = ModelsContentDownloadResponse()
    instance.channel_id = randomize()
    instance.created_time = randomize()
    instance.creator_follow_state = create_models_creator_follow_state_example()
    instance.creator_name = randomize()
    instance.download_count = randomize("int", min_val=1, max_val=1000)
    instance.file_extension = randomize()
    instance.id_ = randomize()
    instance.is_hidden = randomize("bool")
    instance.is_official = randomize("bool")
    instance.like_count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.share_code = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.updated_time = randomize()
    instance.user_id = randomize("uid")
    instance.custom_attributes = {randomize(): randomize()}
    instance.groups = [randomize()]
    instance.like_state = create_models_like_state_example()
    instance.payload = randomize()
    instance.payload_url = randomize("url")
    instance.preview_url = randomize("url")
    instance.screenshots = [create_models_screenshot_response_example()]
    return instance


def create_models_content_download_response_v2_example() -> (
    ModelsContentDownloadResponseV2
):
    instance = ModelsContentDownloadResponseV2()
    instance.channel_id = randomize()
    instance.created_time = randomize()
    instance.creator_follow_state = create_models_creator_follow_state_example()
    instance.download_count = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.is_hidden = randomize("bool")
    instance.is_official = randomize("bool")
    instance.like_count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.share_code = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.groups = [randomize()]
    instance.like_state = create_models_like_state_example()
    instance.payload_url = randomize("url")
    instance.screenshots = [create_models_screenshot_response_example()]
    instance.sub_type = randomize()
    instance.type_ = randomize()
    instance.updated_time = randomize()
    return instance


def create_models_content_downloader_response_example() -> (
    ModelsContentDownloaderResponse
):
    instance = ModelsContentDownloaderResponse()
    instance.content_id = randomize()
    instance.created_time = randomize("date")
    instance.downloaded_by = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_content_like_request_example() -> ModelsContentLikeRequest:
    instance = ModelsContentLikeRequest()
    instance.like_status = randomize("bool")
    return instance


def create_models_content_like_response_example() -> ModelsContentLikeResponse:
    instance = ModelsContentLikeResponse()
    instance.content_id = randomize()
    instance.like_status = randomize("bool")
    return instance


def create_models_content_likers_response_example() -> ModelsContentLikersResponse:
    instance = ModelsContentLikersResponse()
    instance.content_id = randomize()
    instance.created_time = randomize("date")
    instance.liked_by = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_content_request_v2_example() -> ModelsContentRequestV2:
    instance = ModelsContentRequestV2()
    instance.name = randomize()
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_content_snapshot_example() -> ModelsContentSnapshot:
    instance = ModelsContentSnapshot()
    instance.file_extension = randomize()
    instance.name = randomize()
    instance.url = randomize("url")
    return instance


def create_models_content_version_response_example() -> ModelsContentVersionResponse:
    instance = ModelsContentVersionResponse()
    instance.content = create_models_content_snapshot_example()
    instance.id_ = randomize()
    instance.updated_at = randomize()
    instance.version = randomize("version")
    return instance


def create_models_copy_content_request_example() -> ModelsCopyContentRequest:
    instance = ModelsCopyContentRequest()
    instance.target_channel_id = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.name = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_create_content_request_example() -> ModelsCreateContentRequest:
    instance = ModelsCreateContentRequest()
    instance.name = randomize()
    instance.payload = randomize()
    instance.preview = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.preview_metadata = create_models_preview_metadata_example()
    return instance


def create_models_create_content_request_s3_example() -> ModelsCreateContentRequestS3:
    instance = ModelsCreateContentRequestS3()
    instance.name = randomize()
    instance.preview = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.preview_metadata = create_models_preview_metadata_example()
    instance.share_code = randomize()
    return instance


def create_models_create_content_response_example() -> ModelsCreateContentResponse:
    instance = ModelsCreateContentResponse()
    instance.channel_id = randomize()
    instance.created_time = randomize()
    instance.creator_name = randomize()
    instance.file_extension = randomize()
    instance.id_ = randomize()
    instance.is_hidden = randomize("bool")
    instance.is_official = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.preview = randomize()
    instance.share_code = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.updated_time = randomize()
    instance.user_id = randomize("uid")
    instance.content_status = randomize()
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.payload_url = randomize("url")
    instance.preview_url = randomize("url")
    return instance


def create_models_create_content_response_v2_example() -> ModelsCreateContentResponseV2:
    instance = ModelsCreateContentResponseV2()
    instance.channel_id = randomize()
    instance.content_status = randomize()
    instance.created_time = randomize()
    instance.file_location = randomize()
    instance.id_ = randomize()
    instance.is_hidden = randomize("bool")
    instance.is_official = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.share_code = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.payload_url = randomize("url")
    instance.sub_type = randomize()
    instance.type_ = randomize()
    instance.updated_time = randomize()
    return instance


def create_models_create_group_request_example() -> ModelsCreateGroupRequest:
    instance = ModelsCreateGroupRequest()
    instance.contents = [randomize()]
    instance.name = randomize()
    return instance


def create_models_create_group_response_example() -> ModelsCreateGroupResponse:
    instance = ModelsCreateGroupResponse()
    instance.contents = [randomize()]
    instance.created_at = randomize()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_models_create_screenshot_request_example() -> ModelsCreateScreenshotRequest:
    instance = ModelsCreateScreenshotRequest()
    instance.screenshots = [create_models_create_screenshot_request_item_example()]
    return instance


def create_models_create_screenshot_request_item_example() -> (
    ModelsCreateScreenshotRequestItem
):
    instance = ModelsCreateScreenshotRequestItem()
    instance.description = randomize()
    instance.file_extension = randomize()
    instance.content_type = randomize()
    return instance


def create_models_create_screenshot_response_example() -> (
    ModelsCreateScreenshotResponse
):
    instance = ModelsCreateScreenshotResponse()
    instance.screenshots = [create_models_screenshot_response_example()]
    return instance


def create_models_create_tag_request_example() -> ModelsCreateTagRequest:
    instance = ModelsCreateTagRequest()
    instance.tag = randomize()
    return instance


def create_models_create_tag_response_example() -> ModelsCreateTagResponse:
    instance = ModelsCreateTagResponse()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.tag = randomize()
    return instance


def create_models_create_type_request_example() -> ModelsCreateTypeRequest:
    instance = ModelsCreateTypeRequest()
    instance.subtype = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_create_type_response_example() -> ModelsCreateTypeResponse:
    instance = ModelsCreateTypeResponse()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.subtype = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_creator_follow_state_example() -> ModelsCreatorFollowState:
    instance = ModelsCreatorFollowState()
    instance.state = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_models_creator_overview_response_example() -> ModelsCreatorOverviewResponse:
    instance = ModelsCreatorOverviewResponse()
    instance.follow_count = randomize("int", min_val=1, max_val=1000)
    instance.following_count = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.total_liked_content = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_creator_response_example() -> ModelsCreatorResponse:
    instance = ModelsCreatorResponse()
    instance.creator_follow_state = create_models_creator_follow_state_example()
    instance.follow_count = randomize("int", min_val=1, max_val=1000)
    instance.following_count = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.total_liked_content = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_generate_content_upload_url_request_example() -> (
    ModelsGenerateContentUploadURLRequest
):
    instance = ModelsGenerateContentUploadURLRequest()
    instance.content_type = randomize()
    instance.file_extension = randomize()
    return instance


def create_models_generate_content_upload_url_response_example() -> (
    ModelsGenerateContentUploadURLResponse
):
    instance = ModelsGenerateContentUploadURLResponse()
    instance.file_location = randomize()
    instance.url = randomize("url")
    instance.content_type = randomize()
    instance.file_extension = randomize()
    return instance


def create_models_get_content_bulk_by_share_codes_request_example() -> (
    ModelsGetContentBulkByShareCodesRequest
):
    instance = ModelsGetContentBulkByShareCodesRequest()
    instance.share_codes = [randomize()]
    return instance


def create_models_get_content_preview_response_example() -> (
    ModelsGetContentPreviewResponse
):
    instance = ModelsGetContentPreviewResponse()
    instance.preview = randomize()
    instance.preview_url = randomize("url")
    return instance


def create_models_hide_content_request_example() -> ModelsHideContentRequest:
    instance = ModelsHideContentRequest()
    instance.is_hidden = randomize("bool")
    return instance


def create_models_like_state_example() -> ModelsLikeState:
    instance = ModelsLikeState()
    instance.state = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_models_list_content_versions_response_example() -> (
    ModelsListContentVersionsResponse
):
    instance = ModelsListContentVersionsResponse()
    instance.data = [create_models_content_version_response_example()]
    return instance


def create_models_paginated_content_download_response_example() -> (
    ModelsPaginatedContentDownloadResponse
):
    instance = ModelsPaginatedContentDownloadResponse()
    instance.data = [create_models_content_download_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_content_download_response_v2_example() -> (
    ModelsPaginatedContentDownloadResponseV2
):
    instance = ModelsPaginatedContentDownloadResponseV2()
    instance.data = [create_models_content_download_response_v2_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_content_downloader_response_example() -> (
    ModelsPaginatedContentDownloaderResponse
):
    instance = ModelsPaginatedContentDownloaderResponse()
    instance.data = [create_models_content_downloader_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_content_likers_response_example() -> (
    ModelsPaginatedContentLikersResponse
):
    instance = ModelsPaginatedContentLikersResponse()
    instance.data = [create_models_content_likers_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_creator_overview_response_example() -> (
    ModelsPaginatedCreatorOverviewResponse
):
    instance = ModelsPaginatedCreatorOverviewResponse()
    instance.data = [create_models_creator_overview_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_channel_response_example() -> (
    ModelsPaginatedGetChannelResponse
):
    instance = ModelsPaginatedGetChannelResponse()
    instance.data = [create_models_channel_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_configs_response_example() -> (
    ModelsPaginatedGetConfigsResponse
):
    instance = ModelsPaginatedGetConfigsResponse()
    instance.data = [create_models_config_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_tag_response_example() -> ModelsPaginatedGetTagResponse:
    instance = ModelsPaginatedGetTagResponse()
    instance.data = [create_models_create_tag_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_type_response_example() -> (
    ModelsPaginatedGetTypeResponse
):
    instance = ModelsPaginatedGetTypeResponse()
    instance.data = [create_models_create_type_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_group_response_example() -> ModelsPaginatedGroupResponse:
    instance = ModelsPaginatedGroupResponse()
    instance.data = [create_models_create_group_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_list_staging_content_response_example() -> (
    ModelsPaginatedListStagingContentResponse
):
    instance = ModelsPaginatedListStagingContentResponse()
    instance.data = [create_models_staging_content_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paging_cursor_example() -> ModelsPagingCursor:
    instance = ModelsPagingCursor()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_payload_url_example() -> ModelsPayloadURL:
    instance = ModelsPayloadURL()
    instance.source = randomize()
    instance.url = randomize("url")
    return instance


def create_models_preview_metadata_example() -> ModelsPreviewMetadata:
    instance = ModelsPreviewMetadata()
    instance.preview_content_type = randomize()
    instance.preview_file_extension = randomize()
    return instance


def create_models_preview_url_example() -> ModelsPreviewURL:
    instance = ModelsPreviewURL()
    instance.source = randomize()
    instance.url = randomize("url")
    return instance


def create_models_public_channel_request_example() -> ModelsPublicChannelRequest:
    instance = ModelsPublicChannelRequest()
    instance.name = randomize()
    return instance


def create_models_public_create_content_request_s3_example() -> (
    ModelsPublicCreateContentRequestS3
):
    instance = ModelsPublicCreateContentRequestS3()
    instance.name = randomize()
    instance.preview = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.preview_metadata = create_models_preview_metadata_example()
    return instance


def create_models_public_get_content_bulk_request_example() -> (
    ModelsPublicGetContentBulkRequest
):
    instance = ModelsPublicGetContentBulkRequest()
    instance.content_ids = [randomize()]
    return instance


def create_models_screenshot_response_example() -> ModelsScreenshotResponse:
    instance = ModelsScreenshotResponse()
    instance.description = randomize()
    instance.file_extension = randomize()
    instance.screenshot_id = randomize()
    instance.source = randomize()
    instance.url = randomize("url")
    instance.content_type = randomize()
    return instance


def create_models_staging_content_response_example() -> ModelsStagingContentResponse:
    instance = ModelsStagingContentResponse()
    instance.channel_id = randomize()
    instance.created_time = randomize("date")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.note = randomize()
    instance.payload_url = randomize("url")
    instance.screenshots = [create_models_screenshot_response_example()]
    instance.sub_type = randomize()
    instance.type_ = randomize()
    instance.updated_time = randomize("date")
    return instance


def create_models_update_channel_request_example() -> ModelsUpdateChannelRequest:
    instance = ModelsUpdateChannelRequest()
    instance.name = randomize()
    return instance


def create_models_update_config_request_example() -> ModelsUpdateConfigRequest:
    instance = ModelsUpdateConfigRequest()
    instance.value = randomize()
    return instance


def create_models_update_content_request_example() -> ModelsUpdateContentRequest:
    instance = ModelsUpdateContentRequest()
    instance.content_type = randomize()
    instance.file_extension = randomize()
    instance.name = randomize()
    instance.payload = randomize()
    instance.preview = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.update_content_file = randomize("bool")
    instance.custom_attributes = {randomize(): randomize()}
    instance.preview_metadata = create_models_preview_metadata_example()
    return instance


def create_models_update_content_request_v2_example() -> ModelsUpdateContentRequestV2:
    instance = ModelsUpdateContentRequestV2()
    instance.custom_attributes = {randomize(): randomize()}
    instance.name = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_update_content_response_v2_example() -> ModelsUpdateContentResponseV2:
    instance = ModelsUpdateContentResponseV2()
    instance.channel_id = randomize()
    instance.content_status = randomize()
    instance.created_time = randomize()
    instance.file_location = randomize()
    instance.id_ = randomize()
    instance.is_hidden = randomize("bool")
    instance.is_official = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.parent_namespace = randomize("slug")
    instance.share_code = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    instance.content_type = randomize()
    instance.custom_attributes = {randomize(): randomize()}
    instance.file_extension = randomize()
    instance.payload_url = randomize("url")
    instance.sub_type = randomize()
    instance.type_ = randomize()
    instance.updated_time = randomize()
    return instance


def create_models_update_content_share_code_request_example() -> (
    ModelsUpdateContentShareCodeRequest
):
    instance = ModelsUpdateContentShareCodeRequest()
    instance.share_code = randomize()
    return instance


def create_models_update_file_location_request_example() -> (
    ModelsUpdateFileLocationRequest
):
    instance = ModelsUpdateFileLocationRequest()
    instance.file_location = randomize()
    instance.file_extension = randomize()
    return instance


def create_models_update_screenshot_example() -> ModelsUpdateScreenshot:
    instance = ModelsUpdateScreenshot()
    instance.description = randomize()
    instance.screenshot_id = randomize()
    return instance


def create_models_update_screenshot_request_example() -> ModelsUpdateScreenshotRequest:
    instance = ModelsUpdateScreenshotRequest()
    instance.screenshots = [create_models_update_screenshot_example()]
    return instance


def create_models_update_screenshot_response_example() -> (
    ModelsUpdateScreenshotResponse
):
    instance = ModelsUpdateScreenshotResponse()
    instance.screenshots = [create_models_update_screenshot_example()]
    return instance


def create_models_update_staging_content_request_example() -> (
    ModelsUpdateStagingContentRequest
):
    instance = ModelsUpdateStagingContentRequest()
    instance.file_location = randomize()
    instance.file_extension = randomize()
    return instance


def create_models_user_follow_request_example() -> ModelsUserFollowRequest:
    instance = ModelsUserFollowRequest()
    instance.follow_status = randomize("bool")
    return instance


def create_models_user_follow_response_example() -> ModelsUserFollowResponse:
    instance = ModelsUserFollowResponse()
    instance.follow_status = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
