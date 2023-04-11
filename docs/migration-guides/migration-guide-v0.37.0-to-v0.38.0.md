# [v0.38.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:
- `platform`: Operation `getPaymentCallbackConfig_1` is renamed to `getRevocationConfig`.
- `platform`: Operation `queryChanges` now returns `CatalogChangePagingSlicedResult`.
- `ugc`: Operation `SingleAdminUpdateContentS3` now uses `UpdateContentRequest` model as request body.
- `ugc`: Operation `AdminUpdateContentS3` now uses `UpdateContentRequest` model as request body.
- `ugc`: Operation `AdminUpdateChannel` now uses `UpdateChannelRequest` model as request body.
- `ugc`: Operation `SingleAdminUpdateChannel` now uses `UpdateChannelRequest` model as request body.
- `ugc`: Operation `UpdateContentS3` now uses `UpdateContentRequest` model as request body.
- `ugc`: Operation `CreateContentS3` now uses `PublicCreateContentRequestS3` model as request body.
- `ugc`: Operation `UpdateChannel` now uses `UpdateChannelRequest` model as request body.
- `ugc`: Operation `CreateChannel` is renamed to `PublicCreateChannel` and now uses `PublicChannelRequest` request body.

[v0.38.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.37.0..v0.38.0
