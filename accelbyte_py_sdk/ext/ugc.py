# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.5.5)

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
from ..api.ugc.models import ModelsChannelRequest
from ..api.ugc.models import ModelsChannelResponse
from ..api.ugc.models import ModelsContentDownloadResponse
from ..api.ugc.models import ModelsContentLikeRequest
from ..api.ugc.models import ModelsContentLikeResponse
from ..api.ugc.models import ModelsCreateContentRequest
from ..api.ugc.models import ModelsCreateContentRequestS3
from ..api.ugc.models import ModelsCreateContentResponse
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
from ..api.ugc.models import ModelsGetContentPreviewResponse
from ..api.ugc.models import ModelsHideContentRequest
from ..api.ugc.models import ModelsLikeState
from ..api.ugc.models import ModelsPaginatedContentDownloadResponse
from ..api.ugc.models import ModelsPaginatedCreatorOverviewResponse
from ..api.ugc.models import ModelsPaginatedGetChannelResponse
from ..api.ugc.models import ModelsPaginatedGetTagResponse
from ..api.ugc.models import ModelsPaginatedGetTypeResponse
from ..api.ugc.models import ModelsPaginatedGroupResponse
from ..api.ugc.models import ModelsPagingCursor
from ..api.ugc.models import ModelsPayloadURL
from ..api.ugc.models import ModelsPreviewMetadata
from ..api.ugc.models import ModelsPreviewURL
from ..api.ugc.models import ModelsPublicGetContentBulkRequest
from ..api.ugc.models import ModelsScreenshotResponse
from ..api.ugc.models import ModelsUpdateScreenshot
from ..api.ugc.models import ModelsUpdateScreenshotRequest
from ..api.ugc.models import ModelsUpdateScreenshotResponse
from ..api.ugc.models import ModelsUserFollowRequest
from ..api.ugc.models import ModelsUserFollowResponse
from ..api.ugc.models import ResponseError


def create_models_add_download_count_response_example() -> ModelsAddDownloadCountResponse:
    instance = ModelsAddDownloadCountResponse()
    instance.content_id = randomize()
    return instance


def create_models_channel_request_example() -> ModelsChannelRequest:
    instance = ModelsChannelRequest()
    instance.name = randomize()
    return instance


def create_models_channel_response_example() -> ModelsChannelResponse:
    instance = ModelsChannelResponse()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
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
    instance.groups = [randomize()]
    instance.like_state = create_models_like_state_example()
    instance.payload = randomize()
    instance.payload_url = randomize("url")
    instance.preview_url = randomize("url")
    instance.screenshots = [create_models_screenshot_response_example()]
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


def create_models_create_content_request_example() -> ModelsCreateContentRequest:
    instance = ModelsCreateContentRequest()
    instance.name = randomize()
    instance.payload = randomize()
    instance.preview = randomize()
    instance.preview_metadata = create_models_preview_metadata_example()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    return instance


def create_models_create_content_request_s3_example() -> ModelsCreateContentRequestS3:
    instance = ModelsCreateContentRequestS3()
    instance.content_type = randomize()
    instance.file_extension = randomize()
    instance.name = randomize()
    instance.preview = randomize()
    instance.preview_metadata = create_models_preview_metadata_example()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
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
    instance.preview = randomize()
    instance.share_code = randomize()
    instance.sub_type = randomize()
    instance.tags = [randomize()]
    instance.type_ = randomize()
    instance.updated_time = randomize()
    instance.user_id = randomize("uid")
    instance.content_type = randomize()
    instance.payload_url = randomize("url")
    instance.preview_url = randomize("url")
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
    instance.user_id = randomize("uid")
    return instance


def create_models_create_screenshot_request_example() -> ModelsCreateScreenshotRequest:
    instance = ModelsCreateScreenshotRequest()
    instance.screenshots = [create_models_create_screenshot_request_item_example()]
    return instance


def create_models_create_screenshot_request_item_example() -> ModelsCreateScreenshotRequestItem:
    instance = ModelsCreateScreenshotRequestItem()
    instance.content_type = randomize()
    instance.description = randomize()
    instance.file_extension = randomize()
    return instance


def create_models_create_screenshot_response_example() -> ModelsCreateScreenshotResponse:
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
    instance.total_liked_content = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_creator_response_example() -> ModelsCreatorResponse:
    instance = ModelsCreatorResponse()
    instance.creator_follow_state = create_models_creator_follow_state_example()
    instance.follow_count = randomize("int", min_val=1, max_val=1000)
    instance.following_count = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.total_liked_content = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_get_content_preview_response_example() -> ModelsGetContentPreviewResponse:
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


def create_models_paginated_content_download_response_example() -> ModelsPaginatedContentDownloadResponse:
    instance = ModelsPaginatedContentDownloadResponse()
    instance.data = [create_models_content_download_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_creator_overview_response_example() -> ModelsPaginatedCreatorOverviewResponse:
    instance = ModelsPaginatedCreatorOverviewResponse()
    instance.data = [create_models_creator_overview_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_channel_response_example() -> ModelsPaginatedGetChannelResponse:
    instance = ModelsPaginatedGetChannelResponse()
    instance.data = [create_models_channel_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_tag_response_example() -> ModelsPaginatedGetTagResponse:
    instance = ModelsPaginatedGetTagResponse()
    instance.data = [create_models_create_tag_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_get_type_response_example() -> ModelsPaginatedGetTypeResponse:
    instance = ModelsPaginatedGetTypeResponse()
    instance.data = [create_models_create_type_response_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_paginated_group_response_example() -> ModelsPaginatedGroupResponse:
    instance = ModelsPaginatedGroupResponse()
    instance.data = [create_models_create_group_response_example()]
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


def create_models_public_get_content_bulk_request_example() -> ModelsPublicGetContentBulkRequest:
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


def create_models_update_screenshot_example() -> ModelsUpdateScreenshot:
    instance = ModelsUpdateScreenshot()
    instance.description = randomize()
    instance.screenshot_id = randomize()
    return instance


def create_models_update_screenshot_request_example() -> ModelsUpdateScreenshotRequest:
    instance = ModelsUpdateScreenshotRequest()
    instance.screenshots = [create_models_update_screenshot_example()]
    return instance


def create_models_update_screenshot_response_example() -> ModelsUpdateScreenshotResponse:
    instance = ModelsUpdateScreenshotResponse()
    instance.screenshots = [create_models_update_screenshot_example()]
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
