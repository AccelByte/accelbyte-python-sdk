# justice-ugc-service Index (1.10.0)


## Operations

### [Admin] Channel
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/channels | POST | AdminCreateChannel | [AdminCreateChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/admin_create_channel.py) | [admin_create_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId} | DELETE | AdminDeleteChannel | [AdminDeleteChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/admin_delete_channel.py) | [admin_delete_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels | GET | AdminGetChannel | [AdminGetChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/admin_get_channel.py) | [admin_get_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId} | PUT | AdminUpdateChannel | [AdminUpdateChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/admin_update_channel.py) | [admin_update_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId} | DELETE | SingleAdminDeleteChannel | [SingleAdminDeleteChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/single_admin_delete_channel.py) | [single_admin_delete_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels | GET | SingleAdminGetChannel | [SingleAdminGetChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/single_admin_get_channel.py) | [single_admin_get_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId} | PUT | SingleAdminUpdateChannel | [SingleAdminUpdateChannel](../accelbyte_py_sdk/api/ugc/operations/admin_channel/single_admin_update_channel.py) | [single_admin_update_channel](../accelbyte_py_sdk/api/ugc/wrappers/_admin_channel.py) |

### [Admin] Content
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} | DELETE | AdminDeleteContent | [AdminDeleteContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_delete_content.py) | [admin_delete_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId} | DELETE | AdminDeleteContentScreenshot | [AdminDeleteContentScreenshot](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_delete_content_screenshot.py) | [admin_delete_content_screenshot](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview | GET | AdminDownloadContentPreview | [AdminDownloadContentPreview](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_download_content_preview.py) | [admin_download_content_preview](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents | GET | AdminGetContent | [AdminGetContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_get_content.py) | [admin_get_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/{contentId} | GET | AdminGetSpecificContent | [AdminGetSpecificContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_get_specific_content.py) | [admin_get_specific_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide | PUT | AdminHideUserContent | [AdminHideUserContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_hide_user_content.py) | [admin_hide_user_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search | GET | AdminSearchChannelSpecificContent | [AdminSearchChannelSpecificContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_search_channel_specific_content.py) | [admin_search_channel_specific_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/search | GET | AdminSearchContent | [AdminSearchContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_search_content.py) | [admin_search_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} | PUT | AdminUpdateContentDirect | [AdminUpdateContentDirect](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_update_content_direct.py) | [admin_update_content_direct](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} | PUT | AdminUpdateContentS3 | [AdminUpdateContentS3](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_update_content_s3.py) | [admin_update_content_s3](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots | PUT | AdminUpdateScreenshots | [AdminUpdateScreenshots](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_update_screenshots.py) | [admin_update_screenshots](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents | POST | AdminUploadContentDirect | [AdminUploadContentDirect](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_upload_content_direct.py) | [admin_upload_content_direct](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3 | POST | AdminUploadContentS3 | [AdminUploadContentS3](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_upload_content_s3.py) | [admin_upload_content_s3](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots | POST | AdminUploadContentScreenshot | [AdminUploadContentScreenshot](../accelbyte_py_sdk/api/ugc/operations/admin_content/admin_upload_content_screenshot.py) | [admin_upload_content_screenshot](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} | DELETE | SingleAdminDeleteContent | [SingleAdminDeleteContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/single_admin_delete_content.py) | [single_admin_delete_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/contents | GET | SingleAdminGetContent | [SingleAdminGetContent](../accelbyte_py_sdk/api/ugc/operations/admin_content/single_admin_get_content.py) | [single_admin_get_content](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} | PUT | SingleAdminUpdateContentDirect | [SingleAdminUpdateContentDirect](../accelbyte_py_sdk/api/ugc/operations/admin_content/single_admin_update_content_direct.py) | [single_admin_update_content_direct](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |
| /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId} | PUT | SingleAdminUpdateContentS3 | [SingleAdminUpdateContentS3](../accelbyte_py_sdk/api/ugc/operations/admin_content/single_admin_update_content_s3.py) | [single_admin_update_content_s3](../accelbyte_py_sdk/api/ugc/wrappers/_admin_content.py) |

### [Admin] Group
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/groups | POST | AdminCreateGroup | [AdminCreateGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_create_group.py) | [admin_create_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId} | DELETE | AdminDeleteGroup | [AdminDeleteGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_delete_group.py) | [admin_delete_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups | GET | AdminGetAllGroups | [AdminGetAllGroups](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_get_all_groups.py) | [admin_get_all_groups](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId} | GET | AdminGetGroup | [AdminGetGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_get_group.py) | [admin_get_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents | GET | AdminGetGroupContents | [AdminGetGroupContents](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_get_group_contents.py) | [admin_get_group_contents](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId} | PUT | AdminUpdateGroup | [AdminUpdateGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/admin_update_group.py) | [admin_update_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/groups/{groupId} | DELETE | SingleAdminDeleteGroup | [SingleAdminDeleteGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/single_admin_delete_group.py) | [single_admin_delete_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/groups | GET | SingleAdminGetAllGroups | [SingleAdminGetAllGroups](../accelbyte_py_sdk/api/ugc/operations/admin_group/single_admin_get_all_groups.py) | [single_admin_get_all_groups](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/groups/{groupId} | GET | SingleAdminGetGroup | [SingleAdminGetGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/single_admin_get_group.py) | [single_admin_get_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents | GET | SingleAdminGetGroupContents | [SingleAdminGetGroupContents](../accelbyte_py_sdk/api/ugc/operations/admin_group/single_admin_get_group_contents.py) | [single_admin_get_group_contents](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |
| /ugc/v1/admin/namespaces/{namespace}/groups/{groupId} | PUT | SingleAdminUpdateGroup | [SingleAdminUpdateGroup](../accelbyte_py_sdk/api/ugc/operations/admin_group/single_admin_update_group.py) | [single_admin_update_group](../accelbyte_py_sdk/api/ugc/wrappers/_admin_group.py) |

### [Admin] Tag
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/tags | POST | AdminCreateTag | [AdminCreateTag](../accelbyte_py_sdk/api/ugc/operations/admin_tag/admin_create_tag.py) | [admin_create_tag](../accelbyte_py_sdk/api/ugc/wrappers/_admin_tag.py) |
| /ugc/v1/admin/namespaces/{namespace}/tags/{tagId} | DELETE | AdminDeleteTag | [AdminDeleteTag](../accelbyte_py_sdk/api/ugc/operations/admin_tag/admin_delete_tag.py) | [admin_delete_tag](../accelbyte_py_sdk/api/ugc/wrappers/_admin_tag.py) |
| /ugc/v1/admin/namespaces/{namespace}/tags | GET | AdminGetTag | [AdminGetTag](../accelbyte_py_sdk/api/ugc/operations/admin_tag/admin_get_tag.py) | [admin_get_tag](../accelbyte_py_sdk/api/ugc/wrappers/_admin_tag.py) |
| /ugc/v1/admin/namespaces/{namespace}/tags/{tagId} | PUT | AdminUpdateTag | [AdminUpdateTag](../accelbyte_py_sdk/api/ugc/operations/admin_tag/admin_update_tag.py) | [admin_update_tag](../accelbyte_py_sdk/api/ugc/wrappers/_admin_tag.py) |

### [Admin] Type
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/types | POST | AdminCreateType | [AdminCreateType](../accelbyte_py_sdk/api/ugc/operations/admin_type/admin_create_type.py) | [admin_create_type](../accelbyte_py_sdk/api/ugc/wrappers/_admin_type.py) |
| /ugc/v1/admin/namespaces/{namespace}/types/{typeId} | DELETE | AdminDeleteType | [AdminDeleteType](../accelbyte_py_sdk/api/ugc/operations/admin_type/admin_delete_type.py) | [admin_delete_type](../accelbyte_py_sdk/api/ugc/wrappers/_admin_type.py) |
| /ugc/v1/admin/namespaces/{namespace}/types | GET | AdminGetType | [AdminGetType](../accelbyte_py_sdk/api/ugc/operations/admin_type/admin_get_type.py) | [admin_get_type](../accelbyte_py_sdk/api/ugc/wrappers/_admin_type.py) |
| /ugc/v1/admin/namespaces/{namespace}/types/{typeId} | PUT | AdminUpdateType | [AdminUpdateType](../accelbyte_py_sdk/api/ugc/operations/admin_type/admin_update_type.py) | [admin_update_type](../accelbyte_py_sdk/api/ugc/wrappers/_admin_type.py) |

### Anonymization
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels | DELETE | AdminDeleteAllUserChannels | [AdminDeleteAllUserChannels](../accelbyte_py_sdk/api/ugc/operations/anonymization/admin_delete_all_user_channels.py) | [admin_delete_all_user_channels](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents | DELETE | AdminDeleteAllUserContents | [AdminDeleteAllUserContents](../accelbyte_py_sdk/api/ugc/operations/anonymization/admin_delete_all_user_contents.py) | [admin_delete_all_user_contents](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups | DELETE | AdminDeleteAllUserGroup | [AdminDeleteAllUserGroup](../accelbyte_py_sdk/api/ugc/operations/anonymization/admin_delete_all_user_group.py) | [admin_delete_all_user_group](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/admin/namespaces/{namespace}/users/{userId}/states | DELETE | AdminDeleteAllUserStates | [AdminDeleteAllUserStates](../accelbyte_py_sdk/api/ugc/operations/anonymization/admin_delete_all_user_states.py) | [admin_delete_all_user_states](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels | DELETE | DeleteAllUserChannel | [DeleteAllUserChannel](../accelbyte_py_sdk/api/ugc/operations/anonymization/delete_all_user_channel.py) | [delete_all_user_channel](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents | DELETE | DeleteAllUserContents | [DeleteAllUserContents](../accelbyte_py_sdk/api/ugc/operations/anonymization/delete_all_user_contents.py) | [delete_all_user_contents](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups | DELETE | DeleteAllUserGroup | [DeleteAllUserGroup](../accelbyte_py_sdk/api/ugc/operations/anonymization/delete_all_user_group.py) | [delete_all_user_group](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/states | DELETE | DeleteAllUserStates | [DeleteAllUserStates](../accelbyte_py_sdk/api/ugc/operations/anonymization/delete_all_user_states.py) | [delete_all_user_states](../accelbyte_py_sdk/api/ugc/wrappers/_anonymization.py) |

### [Public] Channel
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels | POST | CreateChannel | [CreateChannel](../accelbyte_py_sdk/api/ugc/operations/public_channel/create_channel.py) | [create_channel](../accelbyte_py_sdk/api/ugc/wrappers/_public_channel.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId} | DELETE | DeleteChannel | [DeleteChannel](../accelbyte_py_sdk/api/ugc/operations/public_channel/delete_channel.py) | [delete_channel](../accelbyte_py_sdk/api/ugc/wrappers/_public_channel.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels | GET | GetChannels | [GetChannels](../accelbyte_py_sdk/api/ugc/operations/public_channel/get_channels.py) | [get_channels](../accelbyte_py_sdk/api/ugc/wrappers/_public_channel.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId} | PUT | UpdateChannel | [UpdateChannel](../accelbyte_py_sdk/api/ugc/operations/public_channel/update_channel.py) | [update_channel](../accelbyte_py_sdk/api/ugc/wrappers/_public_channel.py) |

### [Public] Content
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents | POST | CreateContentDirect | [CreateContentDirect](../accelbyte_py_sdk/api/ugc/operations/public_content/create_content_direct.py) | [create_content_direct](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3 | POST | CreateContentS3 | [CreateContentS3](../accelbyte_py_sdk/api/ugc/operations/public_content/create_content_s3.py) | [create_content_s3](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} | DELETE | DeleteContent | [DeleteContent](../accelbyte_py_sdk/api/ugc/operations/public_content/delete_content.py) | [delete_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId} | DELETE | DeleteContentScreenshot | [DeleteContentScreenshot](../accelbyte_py_sdk/api/ugc/operations/public_content/delete_content_screenshot.py) | [delete_content_screenshot](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode} | GET | DownloadContentByShareCode | [DownloadContentByShareCode](../accelbyte_py_sdk/api/ugc/operations/public_content/download_content_by_share_code.py) | [download_content_by_share_code](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/contents/{contentId} | GET | PublicDownloadContentByContentID | [PublicDownloadContentByContentID](../accelbyte_py_sdk/api/ugc/operations/public_content/public_download_content_by_content_id.py) | [public_download_content_by_content_id](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview | GET | PublicDownloadContentPreview | [PublicDownloadContentPreview](../accelbyte_py_sdk/api/ugc/operations/public_content/public_download_content_preview.py) | [public_download_content_preview](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents | GET | PublicGetUserContent | [PublicGetUserContent](../accelbyte_py_sdk/api/ugc/operations/public_content/public_get_user_content.py) | [public_get_user_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/contents | GET | PublicSearchContent | [PublicSearchContent](../accelbyte_py_sdk/api/ugc/operations/public_content/public_search_content.py) | [public_search_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents | GET | SearchChannelSpecificContent | [SearchChannelSpecificContent](../accelbyte_py_sdk/api/ugc/operations/public_content/search_channel_specific_content.py) | [search_channel_specific_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} | PUT | UpdateContentDirect | [UpdateContentDirect](../accelbyte_py_sdk/api/ugc/operations/public_content/update_content_direct.py) | [update_content_direct](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} | PUT | UpdateContentS3 | [UpdateContentS3](../accelbyte_py_sdk/api/ugc/operations/public_content/update_content_s3.py) | [update_content_s3](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots | PUT | UpdateScreenshots | [UpdateScreenshots](../accelbyte_py_sdk/api/ugc/operations/public_content/update_screenshots.py) | [update_screenshots](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots | POST | UploadContentScreenshot | [UploadContentScreenshot](../accelbyte_py_sdk/api/ugc/operations/public_content/upload_content_screenshot.py) | [upload_content_screenshot](../accelbyte_py_sdk/api/ugc/wrappers/_public_content.py) |

### [Public] Download Count
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount | POST | AddDownloadCount | [AddDownloadCount](../accelbyte_py_sdk/api/ugc/operations/public_download_count/add_download_count.py) | [add_download_count](../accelbyte_py_sdk/api/ugc/wrappers/_public_download_count.py) |

### [Public] Follow
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/contents/followed | GET | GetFollowedContent | [GetFollowedContent](../accelbyte_py_sdk/api/ugc/operations/public_follow/get_followed_content.py) | [get_followed_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_follow.py) |
| /ugc/v1/public/namespaces/{namespace}/users/followed | GET | GetFollowedUsers | [GetFollowedUsers](../accelbyte_py_sdk/api/ugc/operations/public_follow/get_followed_users.py) | [get_followed_users](../accelbyte_py_sdk/api/ugc/wrappers/_public_follow.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow | PUT | UpdateUserFollowStatus | [UpdateUserFollowStatus](../accelbyte_py_sdk/api/ugc/operations/public_follow/update_user_follow_status.py) | [update_user_follow_status](../accelbyte_py_sdk/api/ugc/wrappers/_public_follow.py) |

### [Public] Group
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups | POST | CreateGroup | [CreateGroup](../accelbyte_py_sdk/api/ugc/operations/public_group/create_group.py) | [create_group](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId} | DELETE | DeleteGroup | [DeleteGroup](../accelbyte_py_sdk/api/ugc/operations/public_group/delete_group.py) | [delete_group](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId} | GET | GetGroup | [GetGroup](../accelbyte_py_sdk/api/ugc/operations/public_group/get_group.py) | [get_group](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents | GET | GetGroupContent | [GetGroupContent](../accelbyte_py_sdk/api/ugc/operations/public_group/get_group_content.py) | [get_group_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups | GET | GetGroups | [GetGroups](../accelbyte_py_sdk/api/ugc/operations/public_group/get_groups.py) | [get_groups](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |
| /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId} | PUT | UpdateGroup | [UpdateGroup](../accelbyte_py_sdk/api/ugc/operations/public_group/update_group.py) | [update_group](../accelbyte_py_sdk/api/ugc/wrappers/_public_group.py) |

### [Public] Like
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/contents/liked | GET | GetLikedContent | [GetLikedContent](../accelbyte_py_sdk/api/ugc/operations/public_like/get_liked_content.py) | [get_liked_content](../accelbyte_py_sdk/api/ugc/wrappers/_public_like.py) |
| /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like | PUT | UpdateContentLikeStatus | [UpdateContentLikeStatus](../accelbyte_py_sdk/api/ugc/operations/public_like/update_content_like_status.py) | [update_content_like_status](../accelbyte_py_sdk/api/ugc/wrappers/_public_like.py) |

### [Public] Tag
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/tags | GET | GetTag | [GetTag](../accelbyte_py_sdk/api/ugc/operations/public_tag/get_tag.py) | [get_tag](../accelbyte_py_sdk/api/ugc/wrappers/_public_tag.py) |

### [Public] Type
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /ugc/v1/public/namespaces/{namespace}/types | GET | GetType | [GetType](../accelbyte_py_sdk/api/ugc/operations/public_type/get_type.py) | [get_type](../accelbyte_py_sdk/api/ugc/wrappers/_public_type.py) |


## Models
| Model | Class |
|---|---|
| models.AddDownloadCountResponse | [ModelsAddDownloadCountResponse](../accelbyte_py_sdk/api/ugc/models/models_add_download_count_response.py) |
| models.ChannelRequest | [ModelsChannelRequest](../accelbyte_py_sdk/api/ugc/models/models_channel_request.py) |
| models.ChannelResponse | [ModelsChannelResponse](../accelbyte_py_sdk/api/ugc/models/models_channel_response.py) |
| models.ContentDownloadResponse | [ModelsContentDownloadResponse](../accelbyte_py_sdk/api/ugc/models/models_content_download_response.py) |
| models.ContentLikeRequest | [ModelsContentLikeRequest](../accelbyte_py_sdk/api/ugc/models/models_content_like_request.py) |
| models.ContentLikeResponse | [ModelsContentLikeResponse](../accelbyte_py_sdk/api/ugc/models/models_content_like_response.py) |
| models.CreateContentRequest | [ModelsCreateContentRequest](../accelbyte_py_sdk/api/ugc/models/models_create_content_request.py) |
| models.CreateContentRequestS3 | [ModelsCreateContentRequestS3](../accelbyte_py_sdk/api/ugc/models/models_create_content_request_s3.py) |
| models.CreateContentResponse | [ModelsCreateContentResponse](../accelbyte_py_sdk/api/ugc/models/models_create_content_response.py) |
| models.CreateGroupRequest | [ModelsCreateGroupRequest](../accelbyte_py_sdk/api/ugc/models/models_create_group_request.py) |
| models.CreateGroupResponse | [ModelsCreateGroupResponse](../accelbyte_py_sdk/api/ugc/models/models_create_group_response.py) |
| models.CreateScreenshotRequest | [ModelsCreateScreenshotRequest](../accelbyte_py_sdk/api/ugc/models/models_create_screenshot_request.py) |
| models.createScreenshotRequestItem | [ModelsCreateScreenshotRequestItem](../accelbyte_py_sdk/api/ugc/models/models_create_screenshot_request_item.py) |
| models.CreateScreenshotResponse | [ModelsCreateScreenshotResponse](../accelbyte_py_sdk/api/ugc/models/models_create_screenshot_response.py) |
| models.CreateTagRequest | [ModelsCreateTagRequest](../accelbyte_py_sdk/api/ugc/models/models_create_tag_request.py) |
| models.CreateTagResponse | [ModelsCreateTagResponse](../accelbyte_py_sdk/api/ugc/models/models_create_tag_response.py) |
| models.CreateTypeRequest | [ModelsCreateTypeRequest](../accelbyte_py_sdk/api/ugc/models/models_create_type_request.py) |
| models.CreateTypeResponse | [ModelsCreateTypeResponse](../accelbyte_py_sdk/api/ugc/models/models_create_type_response.py) |
| models.CreatorFollowState | [ModelsCreatorFollowState](../accelbyte_py_sdk/api/ugc/models/models_creator_follow_state.py) |
| models.CreatorOverviewResponse | [ModelsCreatorOverviewResponse](../accelbyte_py_sdk/api/ugc/models/models_creator_overview_response.py) |
| models.GetContentPreviewResponse | [ModelsGetContentPreviewResponse](../accelbyte_py_sdk/api/ugc/models/models_get_content_preview_response.py) |
| models.HideContentRequest | [ModelsHideContentRequest](../accelbyte_py_sdk/api/ugc/models/models_hide_content_request.py) |
| models.LikeState | [ModelsLikeState](../accelbyte_py_sdk/api/ugc/models/models_like_state.py) |
| models.PaginatedContentDownloadResponse | [ModelsPaginatedContentDownloadResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_content_download_response.py) |
| models.PaginatedCreatorOverviewResponse | [ModelsPaginatedCreatorOverviewResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_creator_overview_response.py) |
| models.PaginatedGetChannelResponse | [ModelsPaginatedGetChannelResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_get_channel_response.py) |
| models.PaginatedGetTagResponse | [ModelsPaginatedGetTagResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_get_tag_response.py) |
| models.PaginatedGetTypeResponse | [ModelsPaginatedGetTypeResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_get_type_response.py) |
| models.PaginatedGroupResponse | [ModelsPaginatedGroupResponse](../accelbyte_py_sdk/api/ugc/models/models_paginated_group_response.py) |
| models.PagingCursor | [ModelsPagingCursor](../accelbyte_py_sdk/api/ugc/models/models_paging_cursor.py) |
| models.PayloadURL | [ModelsPayloadURL](../accelbyte_py_sdk/api/ugc/models/models_payload_url.py) |
| models.ScreenshotResponse | [ModelsScreenshotResponse](../accelbyte_py_sdk/api/ugc/models/models_screenshot_response.py) |
| models.updateScreenshot | [ModelsUpdateScreenshot](../accelbyte_py_sdk/api/ugc/models/models_update_screenshot.py) |
| models.UpdateScreenshotRequest | [ModelsUpdateScreenshotRequest](../accelbyte_py_sdk/api/ugc/models/models_update_screenshot_request.py) |
| models.UpdateScreenshotResponse | [ModelsUpdateScreenshotResponse](../accelbyte_py_sdk/api/ugc/models/models_update_screenshot_response.py) |
| models.UserFollowRequest | [ModelsUserFollowRequest](../accelbyte_py_sdk/api/ugc/models/models_user_follow_request.py) |
| models.UserFollowResponse | [ModelsUserFollowResponse](../accelbyte_py_sdk/api/ugc/models/models_user_follow_response.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/ugc/models/response_error.py) |
