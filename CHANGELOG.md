# Changelog

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
- Catch http connection errors.
- Catch empty responses.
- Catch `application/problem+json` MIME type.
- Change behaviour for checking response for access token.
- Change to automatically add Bearer Auth.
- Ignore empty `produces` and `consumes`.
- Fix responses with `access_token` not getting returned.
- Fix `accelbyte_py_sdk.initialize(options)` parsing issues.
- Fix path params not converted into string automatically.
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
