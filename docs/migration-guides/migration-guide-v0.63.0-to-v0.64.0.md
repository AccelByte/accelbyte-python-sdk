# [v0.64.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiDevelopmentServerConfigurationCreateRequest` required property `command_line` is renamed to `command_line_arguments`.
- `ams`: Model `ApiDevelopmentServerConfigurationGetResponse` required property `command_line` is renamed to `command_line_arguments`.
- `ams`: Model `ApiFleetGetResponse` adds a new required property `on_demand`.
- `ams`: Model `ApiFleetListItemResponse` adds a new required property `on_demand`.
- `ams`: Model `ApiFleetParameters` adds a new required property `on_demand`.
- `ams`: Operation `DevelopmentServerConfigurationList` 200 response type was changed from `List[ApiDevelopmentServerConfigurationGetResponse]` to `ApiDevelopmentServerConfigurationListResponse`.

- `chat`: ModelCategoryHookDriverEnum` is removed.



[v0.64.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.63.0..v0.64.0
