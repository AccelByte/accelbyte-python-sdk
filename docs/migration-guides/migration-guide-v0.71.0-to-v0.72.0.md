# [v0.72.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `csm`: Operation `get_notification_subscriber_list_v2` parameter `notification_type` is now required.

- `iam`: Operation `admin_update_login_allowlist_v3` now returns `None` instead of `ModelLoginAllowlistResponse`.

[v0.72.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.71.0..v0.72.0
