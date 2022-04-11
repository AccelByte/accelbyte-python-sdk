# Changelog

## v0.12.0
- Update APIs
    - cloudsave
        - new endpoints
        - new models
    - dslogmanager
        - update endpoints
    - dsmc
        - version bump
        - update endpoints
    - gametelemetry
        - add, update endpoints
        - update security definitions
    - group
        - update endpoints
    - iam
        - add, update endpoints
    - legal
        - update endpoints
    - lobby
        - update endpoints
    - matchmaking
        - update endpoints
    - platform
        - update endpoints
    - ugc
        - add, update endpoints

## v0.11.0
- Add integration tests for commonly used endpoints
- Add `is_valid()` method for all Model classes
- Fix logout not using basic auth
- Update error messages for config repos
- Update APIs
    - basic
        - version bump only
    - cloudsave
        - version bump
        - update permissions
        - update endpoints
        - update models
    - dslogmanager
        - version bump
        - update model
    - dsmc
        - version bump only
    - iam
        - version bump
        - change query parameter types
        - new endpoints
        - new models
    - legal
        - version bump
        - update endpoints
    - lobby
        - version bump
        - change query parameter types
        - update endpoints
        - update models
    - platform
        - version bump
        - update endpoints
        - update models
    - seasonpass
        - version bump only
    - sessionbrowser
        - change query parameter types
    - social
        - version bump
        - update endpoint
    - ugc
        - change query parameter types

## v0.10.0
- Add utility function to deal with conflicting content types (i.e. server is returning a different content-type from what is documented in the specification)
- Add `YamlConfigRepository`, `YamlFileConfigRepository`, `DotEnvFileConfigRepository`
- Add integration tests on for endpoints found in the `AccelByte Python SDK: Getting Started Guide`
- Add AWS Lambda User Stat Crud App
- Fix missing required `/` on WebSocketClient
- Move response handling logic from each operation to the base operation class
- Refactor WebSocket capability in CLI app
- Update APIs
    - Add `x-omitempty` to boolean properties
    - Move `basePath`(s) into each `pathItem`
    - basic
        - version bump only
        - add `pattern` property to `dateOfBirth` and `language` fields
    - cloudsave
        - version bump only
    - dslogmanager
        - version bump only
    - dsmc
        - version bump only
    - group
        - version bump only
    - iam
        - version bump,
        - add, update endpoint(s)
        - add, update model(s)
    - leaderboard
        - version bump only
    - legal
        - version bump only
    - lobby
        - version bump only
        - update 1 model
    - matchmaking
        - version bump only
    - platform
        - version bump
        - update endpoint(s)
    - seasonpass
        - version bump only
    - social
        - version bump only
    - ugc
        - version bump only


## v0.9.0
- Add `X-Amzn-Trace-Id` automatically on each request
    - You can enable/disable this feature when you use `initialize()`
- Add `User-Agent` automatically on each request
    - You can enable/disable this feature when you use `initialize()`
    - You can specify your `App Name` and `App Version`
- Add WebSocket capability in the CLI app
- Add log file helpers
    - You can enable/disable this feature when you use `initialize()`
- Remove authentication requirement optional in `WSClients`
- Update Copyright Headers
- Update APIs
    - basic
        - version bump only
    - dsmc
        - version bump
        - add, update: endpoints, models
    - gdpr
        - version bump only
    - iam
        - version bump only
        - *security schema fixes*
    - leaderboard
        - version bump only
    - platform
        - version bump
        - update model
    - seasonpass
        - version bump only
    - social
        - version bump only
    - ugc
        - version bump only

## v0.8.0
- Move `samples/how_to` folder contents into `samples/how-to`.
- Update tests.
- Update CLI commands.
    - An optional parameter `--login_with_auth` is added. Users can now specify the value of the `Authorization` header directly when running a CLI command.
    ```sh
    python -m accelbyte_py_sdk_cli achievement-admin-list-achievement --login_with_auth "Bearer foo"
    ```
- Updated APIs
    - Add 'x-nullable' property to all date-time and date properties
    - Add 'Required Permission(s)' and 'Required Scope(s)' section in each operation description.
    - Strip HTML tags in operation descriptions.
    - basic
        - version bump only
    - cloudsave
        - version bump only
    - dsmc
        - version bump only
    - gdpr
        - version bump only
    - iam
        - version bump
        - remove incorrectly parsed scopes
        - replace confusable unicode characters
        - update endpoints
    - leaderboard
        - version bump only
    - legal
        - version bump only
    - lobby
        - add, update endpoints
    - platform
        - version bump
        - add, update endpoints
    - seasonpass
        - version bump
        - add security definitions
        - sort schema
    - social
        - version bump
        - add endpoints
    - ugc
        - version bump only
## v0.7.0
- Add additional object to class methods
- Truncate file names that are too long
- Updated APIs
    - gametelemetry
        - update descriptions in endpoints
    - gdpr
        - version bump only
    - iam
        - add, update endpoints
    - leaderboard
        - version bump only
    - matchmaking
        - add endpoints

## v0.6.0
- Fix handling of operations that don't have any parameters
- Fix handling of bytes responses
- Fix handling of empty models (open dictionaries)
- Fix bytes treated as tokens
- Fix checking if the body parameter was assigned
- Add special handling of 204 responses
- Add code snippets from the How To guides
- Add custom query params formatting
- Update CLI commands
- Update auto-generated unit tests
- Simplify WSClient creation
- Updated APIs
    - basic
        - version bump only
    - cloudsave
        - add, update endpoints
    - dslogmanager
        - version bump only
    - dsmc
        - version bump only
    - gdpr
        - version bump only
    - group
        - update endpoints
    - iam
        - add, update endpoints
    - leaderboard
        - update endpoints
    - legal
        - add, update endpoints
    - lobby
        - update endpoints
    - matchmaking
        - version bump only
    - platform
        - add, update endpoints
    - seasonpass
        - version bump only
    - social
        - version bump only
    - ugc
        - version bump only

## v0.5.0

- Fix file uploads
- Updated APIs:
    - basic
        - version bump
    - cloudsave
        - version bump
        - add, deprecate endpoints
    - dslogmanager
        - version bump
        - add, update endpoints
    - dsmc
        - version bump
        - update endpoints
    - gdpr
        - version bump
    - group
        - update endpoints
    - iam
        - version bump
        - add, update endpoints
    - leaderboard
        - version bump
    - legal
        - version bump
    - lobby
        - update endpoints
    - matchmaking
        - version bump
    - platform
        - version bump
        - add, remove, update endpoints
    - seasonpass
        - version bump
    - social
        - version bump
    - ugc
        - version bump
        - special characters in tags were removed

## v0.4.0

- Add new WebsocketClient implementation.
- Add examples on how to use the Lobby Service's WSS.
- Add example on how to create a Matchmaking Service using AWS SAM CLI.
- Updated APIs:
    - achievement
    - basic
    - cloudsave
    - dslogmanager
    - dsmc
    - eventlog
    - iam
    - legal
    - lobby
    - matchmaking
    - platform
    - seasonpass (new)
    - social
    - ugc
- Moved CLI under samples.

## v0.3.0

- Add utility function for generating websocket message identifiers.
- Add base classes and parser functions for websocket messages.
- Add WebSocket Message (WSM) Classes.
- Add `authorization_override` operation field.
- Add `create_curl_request(..)` utility function.
- Add `WSClient` base class.
- Add `deprecated` decorators.
- Add usage of the logging module.
- Add handling of error codes and error messages from redirects.
- Add `ext` module.
    - `create_<model name>_example()` methods
    - Add `click` submodule
        - with auto-generated `click` commands
- Add `additional_headers` parameter in `run_request(..)` and the wrappers (`x_additional_headers`).
- Add `accelbyte_py_sdk.reset()` function.
- Add allowing of `dict-like` tokens.
- Add entry point for `accelbyte_py_sdk`.
- Add `login_client` wrapper.
- Add core unit tests.
- Add new config repository implementations:
    - *new* DictConfigRepository
    - *new* JsonConfigRepository
    - *changed* JsonFileConfigRepository, accepts a `Path` object or a string file path.
- Add new `accelbyte_py_sdk.initialize(options)` options arguments (config_params, token_params, http_params).
- Add `HttpxHttpClient` class.
- Add `async` version of wrappers.
- Add QoL Methods:
    - get_env_config
        - maps to AB_BASE_URL, AB_CLIENT_ID, AB_CLIENT_SECRET, AB_NAMESPACE
    - get_env_user_credentials
        - maps to AB_USERNAME, AB_PASSWORD
    - set_env_config
        - maps to AB_BASE_URL, AB_CLIENT_ID, AB_CLIENT_SECRET, AB_NAMESPACE
    - set_env_user_credentials
        - maps to AB_USERNAME, AB_PASSWORD
- Add new services
    - achievement 2.6.0
    - dslogmanager 1.3.0
    - eventlog 1.18.3
    - gdpr 1.11.1
    - leaderboard 2.11.0
    - legal 1.14.8
    - matchmaking 2.10.0
    - qosm 0.0.0
    - ugc 1.9.0
- Add logging related utility QoL functions
- Catch http connection errors.
- Catch empty responses.
- Catch `application/problem+json` MIME type.
- Catch null responses gracefully.
- Change behaviour for checking response for access token.
- Change to automatically add Bearer Auth.
- Ignore empty `produces` and `consumes`.
- Fix responses with `access_token` not getting returned.
- Fix `accelbyte_py_sdk.initialize(options)` parsing issues.
- Fix path params not converted into string automatically.
- Fix empty Basic Auth password being rejected.
- Fix default scopes.
- Fix HttpxHttpClient not caching internal client.
- Moved full url composing logic into the Operation base class.
- Remove field implicit boolean check when converting to dictionary `to_dict()`.
- Refactor package setup file.
- Regenerate services:
    - iam
    - basic 1.23.0 to 1.26.0
    - cloudsave 1.8.0 to 1.9.0
    - dsmc (previously dsm_controller) 2.6.0 to 2.8.0
    - gametelemetry (previously amalgam_game_telemetry)
    - group 2.8.0 to 2.9.0
    - lobby
    - platform 3.34.0 to 3.37.1
    - sessionbrowser (previously session_browser)
    - social 1.18.1 to 1.21.0
- Update demo scripts


## v0.2.1

Fix an issue with the options argument in the `accelbyte_py_sdk.initialize(..)` method.

Special thanks to [@encyphered](https://github.com/encyphered) for issue [#1](https://github.com/AccelByte/accelbyte-python-sdk/pull/1).

## v0.2.0

Minor updates to the sample app module of the AccelByte Python SDK.

- New optional argument to specify which login type (client|user) to use on some commands.
- Access tokens are now echo'd on loggin commands (login, login-client).
- Updated the sample app section in the README file.

## v0.1.0

The initial release of the Python SDK for AccelByte platform.

01. IAM
02. Basic
03. Social
04. Platform
05. Group
06. Lobby
07. Session Browser
08. DSMC
09. Cloud Save
10. Telemetry
