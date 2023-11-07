# [v0.53.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiQOSServer` is now renamed to `ApiQoSServer`.
- `ams`: Operation `info_regions` had its response changed from `ApiRegionsResponse` into `ApiAMSRegionsResponse`.

- `iam`: Operation `request_game_token_response_v3` is now renamed to `request_target_token_response_v3`.
- `iam`: Operation `request_game_token_code_response_v3` is now renamed to `request_token_exchange_code_v3`
  and its response changed from `OauthmodelGameTokenCodeResponse` into `OauthmodelTargetTokenCodeResponse`.

[v0.53.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.52.0..v0.53.0
