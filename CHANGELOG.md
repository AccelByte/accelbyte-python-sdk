# Changelog

## v0.5.0
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
