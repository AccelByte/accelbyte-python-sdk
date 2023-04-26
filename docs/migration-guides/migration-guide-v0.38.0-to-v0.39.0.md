# [v0.39.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:
- `lobby`: Operation `AdminChatHistory` is removed.
- `lobby`: Operation `GetPersonalChatHistoryV1Public` is removed.
- `lobby`: Operation `PersonalChatHistory` is removed.
- `platform`: Model `ItemCreate` field `region_data` type is now changed from `Dict[str, List[RegionDataItem]]` to `Dict[str, List[RegionDataItemDTO]]`.
- `platform`: Operation `GetUserDLC` now returns `List[UserDLCRecord]`.
- `ugc`: Operation `AdminUpdateContentS3` now uses `ModelsAdminUpdateContentRequest` model as request body.
- `ugc`: Operation `SingleAdminUpdateContentS3` now uses `ModelsAdminUpdateContentRequest` model as request body.

[v0.39.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.38.0..v0.39.0
