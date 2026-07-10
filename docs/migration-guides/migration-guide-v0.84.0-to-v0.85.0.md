# [v0.85.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Operation `func1` has been renamed to `version_info`
- `challenge`: Operation `get_challenges` has been renamed to `public_get_challenges`
- `challenge`: Operation `evaluate_my_progress` has been renamed to `public_evaluate_my_progress`
- `csm`: Model `ApimodelAppItem` field `redeployment_info` has been removed (models `ModelAppRedeploymentInfo`/`ModelAppRedeploymentDetail` removed)
- `gdpr`: Operations `public_cancel_my_account_deletion_request`, `public_get_my_account_deletion_status`, `public_submit_my_account_deletion_request` moved from `data_deletion` to new `data_deletion_headless` wrapper
- `iam`: Operation `platform_token_request_handler` has been renamed to `namespace_scoped_platform_token_grant`
- `iam`: Model `ModelLinkRequest` has been renamed to `ModelReAuthRequest`
    - `public_get_async_status` return type changed from `ModelLinkRequest` to `ModelReAuthRequest`
    - `public_process_web_link_platform_v3` return type changed from `ModelLinkRequest` to `ModelReAuthRequest`

[v0.85.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.84.0..v0.85.0
