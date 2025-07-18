<a name="v0.77.0"></a>
## [v0.77.0]
### ci
- **:** consolidate builder label lima
- **:** consolidate extend-builder-batch linux-amd64
- **github:** change label to extend-builder-ci
- **generate:** remove cli and integration test stage
- **nightly:** add params for cli and integration test
- **nightly-starter:** remove redundant Jenkinsfile.nightly-starter
### feat
- **core:** add get_version
- **:** add delete iam client after finish integration
- **:** assert value not none
### docs
- **:** fix url
### chore
- **core:** add upload binary data method


<a name="v0.76.0"></a>
## [v0.76.0]
### fix
- **test:** use create test user endpoint for integration test
- **auth:** fix kwargs not getting forwarded to login timer for on demand token refresher
- **auth:** - this will allow for shorter intervals and for the refresh logic to only be executed only when the token is about to expire
- **core:** reset existing timer before creating a new one
- **core:** fix token expiry calculation
- **integration:** fix reference before assignment error
### test
- **integration:** skip tests in csm if the app takes too long to create
- **integration:** change achievement stat code randomization
- **core:** fix test expiry assertion
- **integration:** change generate_user to use public_create_test_user_v4
- **core:** add test for token expiry calculation
### chore
- **core:** add uid for Timer instances
- **:** bump version 0.75.0 → 0.75.1
- **auth:** change repeat on exception default value for login timers
- **auth:** add more logging for exceptions caught by timers
- **!:** remove matchmaking, session browser and history services (breaking)
### docs
- **changelog:** update CHANGELOG.md
- **:** improve refresh rate wording
### refactor
- **core!:** remove Timer results and exceptions caching


<a name="v0.75.0"></a>
## [v0.75.1]
### fix
- **auth:** fix kwargs not getting forwarded to login timer for on demand token refresher
- **auth:** add refresh_rate argument for Login Timers
- **core:** reset existing timer before creating a new one
- **core:** fix token expiry calculation
### chore
- **core:** add uid for Timer instances
### refactor
- **core!:** remove Timer results and exceptions caching
### test
- **core:** add test for token expiry calculation
- **core:** fix test expiry assertion
- **integration:** change generate_user to use public_create_test_user_v4
### docs
- improve refresh rate wording

<a name="v0.75.0"></a>
## [v0.75.0]
### ci
- **coverity:** add arm64 build machine support
- **coverity:** this job often stuck in ec2 build machine for certain language
- **coverity:** change coverity download path
- **jenkinsfile:** use lima build machine too
### test
- **integration:** gametelemetry - remove deprecated endpoints
### docs
- **common use cases:** update
### fix
- **core:** fix security handling for cookie auth accepting requests
### chore
- **tests:** add redacted comments in tests
- **docs:** regenerate common use cases file
- **doc:** rename doc tag
- **cli:** generate cli index files


<a name="v0.74.0"></a>
## [v0.74.0]
### chore
- **sdk:** generated from openapi spec commit: 79683a20ff945862cdc0c4aef8d903a0f30bf2f5
- **token-validation:** add update_on_init argument
- **token-validator:** improved handling of None values
- **token-validation:** export error types
### ci
- **coverity:** update coverity tool
### feat
- **token-validation:** allow passing of kwargs
### fix
- **token-validator:** handle null values in claims
### test
- **integration:** clean up extend app


<a name="v0.73.1"></a>
## [v0.73.1]
### fix
- **all**: fix auto fill namespace not working when using `sdk` parameter

<a name="v0.73.0"></a>
## [v0.73.0]
### test
- **core:** down size temp file size
### fix
- **token-validation:** add raise_on_error option to pass on caching classes
### docs
- **readme:** update doc links


<a name="v0.72.0"></a>
## [v0.72.0]
### test
- **csm:** add csm integration tests
- **integration:** disable game telemetry tests in starter
- **:** add raw wsm in the assert message
- **integration:** added new required param
- **token-validation:** add role override iam test
- **integration:** add missing tests
### docs
- **readme:** update AB_BASE_URL example
### chore
- **sdk:** generated from openapi spec commit: 36ae5c39dfabaa8b38695823c2a32ce307953790
- **core:** add request http verb methods
- **requirements:** update websockets version
### fix
- **websockets:** fix blocking in task
- **websockets:** update connect params
- **cli:** update requirements.txt
### feat
- **token-validation:** update role cache endpoint to AdminGetRoleNamespacePermissionV3


<a name="v0.71.0"></a>
## [v0.71.0]
### ci
- **:** avoid lima build machines
### feat
- **:** add challenge service integration tests


<a name="v0.70.0"></a>
## [v0.70.0]
### test
- **eventlog:** remove tests
- **ws:** move to standalone mock ws server
- **match2:** fix tests parameters
- **integration:** remove deprecated services
- **integration:** remove deprecated services (more)
- **lobby:** retry on ws too many redirects
- **lobby:** skip ws tests when encountering timeouts
### refactor
- **core:** move http related util methods
### chore
- **:** remove event log
- **makefile:** improve mock server ready detection
- **integration:** add player record cloudsave test
- **docs:** add player record cloudsave integration test
### docs
- **common use cases:** remove deprecated services
### fix
- **core:** allow passing websockets connect kwargs
- **lobby:** remove passing empty extra_headers kwarg
### ci
- **lint:** disable false-positive lint error


<a name="v0.69.0"></a>
## [v0.69.0]
### chore
- **core:** exported TokenRepositoryObserver
- **:** replace usage of WebsocketsWSClient with LobbyWSClient
- **:** add clean step
- **:** disable incorrect lint error
- **:** disable incorrect lint error
### feat
- **core:** add websocket client base implementation
- **lobby:** add websocket client lobby implementation
- **core:** add number_of_attempts to WSClient should_reconnect
### test
- **lobby:** add tests for websocket client lobby implementation
- **integration:** add inventory test
### style
- **:** run styler
### fix
- **core:** fix ws listener invocation needing exact parameter name
- **integration:** add cancel user account deletion request


<a name="v0.68.0"></a>
## [v0.68.0]
### docs
- **migration-guide:** remove item in migration guide
- **:** update links
### ci
- **generate:** use stage_extend-sdk
- **:** use extend-builder-batch
- **:** update commitlint
- **:** use slack channel env var
### test
- **nightly:** integration - delay sending packets due to db eventual consistency
- **integration:** matchmaking - disable total matchmaking test
- **integration:** seasonpass - fix currency code namespace
- **integration:** group - clear user group member first
- **integration:** seasonpass - fix currency code namespace
- **generate:** integration - delay sending packets due to db eventual consistency
- **core:** fix missing flag in test_core target
### fix
- **group:** fix group tests
- **integration:** add delay between ws messages
- **integration:** fix batched ws session checking
### feat
- **core:** add login cli command
- **core:** add send_raw_request func in http_client


<a name="v0.67.0"></a>
## [v0.67.0]


<a name="v0.66.0"></a>
## [v0.66.0]


<a name="v0.65.0"></a>
## [v0.65.0]
### ci
- **:** do not use jenkins master
### test
- **session:** skip party flow in starter


<a name="v0.64.0"></a>
## [v0.64.0]
### chore
- **api:** add sessionhistory
- **api:** generate sessionhistory
### test
- **integration:** add sessionhistory integration tests
### fix
- **integration:** fix sessionhistory tests in starter


<a name="v0.63.0"></a>
## [v0.63.0]
### docs
- **migration-guides:** add lobby changes
### feat
- **core:** add token repo observer
- **core:** add on_access_token_changed in WebsocketsWSClient
- **samples:** add sample for WSClient token refresh
### test
- **lobby:** add refresh token test
### fix
- **integration:** fix async lobby tests
- **integration:** fix group tests
- **core:** handle runtime error in ws client


<a name="v0.62.0"></a>
## [v0.62.0]
### chore
- **api:** add challenge service spec
- **api:** generate challenge service package
### test
- **integration:** add challenge integration tests
### ci
- **:** switch to extend-builder-ci


<a name="v0.61.0"></a>
## [v0.61.0]
### chore
- **github:** update github creds


<a name="v0.60.0"></a>
## [v0.60.0]
### ci
- **nightly-starter:** separate from nightly
### test
- **integration:** temporarily disable test_admin_delete_configuration_template_v in ags starter
- **integration:** add dsartifact integration tests
- **token-validation:** add tests for namespace revamp
### chore
- **api:** add dsartifact service spec
- **api:** generate dsartifact service package
- **sdk:** generate python extend sdk (2024-02-12T23:29:00+00:00)
### fix
- **core:** fix multiple form data file uploads


<a name="v0.59.0"></a>
## [v0.59.0]
### fix
- **core:** fix RequestPreprocessor signature
### feat
- **core:** add flight id preprocessor
### test
- **core:** add tests for flight id
### chore
- **api:** removed all service version in file header


<a name="v0.58.0"></a>
## [v0.58.0]
### fix
- **integration:** disable dslogmanager, dsmc, qosm
- **integration:** fix basic tests - token revoked
- **integration:** disable iam tests in starter
### docs
- **common use cases:** remove common use case marking
### test
- **integration:** disable gdpr for ags starter


<a name="v0.57.0"></a>
## [v0.57.0]
### ci
- **coverity:** update coverity to 2023.6.2


<a name="v0.56.0"></a>
## [v0.56.0]
### fix
- **integration:** skip tests when in AGS starter
- **auth:** fix error handling in platform login
### docs
- **:** update accelbyte doc portal links
### feat
- **api:** bootstrap chat service support
### chore
- **api:** regenerate chat service
### test
- **api:** add chat integration tests
- **api:** dsmc fix no config error handling
- **integration:** remove special cases for AGS starter
- **integration:** add special cases for AGS starter
### ci
- **jenkins:** update integration env file


<a name="v0.55.0"></a>
## [v0.55.0]
### test
- **integration:** re-enable some test cases
- **core:** add using AGS starter flag
- **auth:** add login user with no scope test
- **dsmc:** skip tests if arrange step fails
- **eventlog:** skip incomplete test
- **iam:** skip tests if 2FA is disabled
- **core:** fix httpbin test
- **integration:** adjust tests to use client credentials for AGS starter environments
### ci
- **nightly:** add integration tests for AGS starter
### fix
- **integration:** update matchmaking test


<a name="v0.54.0"></a>
## [v0.54.0]
### fix
- **core:** fix typo
- **integration:** fix get, update, delete basic profile tests
### feat
- **httpx:** add follow_redirect override


<a name="v0.53.0"></a>
## [v0.53.0]
### fix
- **integration:** fix test due to operation id rename
### refactor
- **core:** refactor permission resource validation
### feat
- **core:** add user_id override for validate_token(...) for uniformity


<a name="v0.52.0"></a>
## [v0.52.0]
### fix
- **integration:** fix test due to operation id rename

<a name="v0.51.0"></a>
## [v0.51.0]
### feat
- **core:** add on demand refresh
- **auth:** add default scope constant
- **auth:** add warning when using a public oauth client
### test
- **core:** add on demand refresh test
- **auth:** add login user with scope test
- **auth:** add test for public oauth client
### docs
- **readme:** add on demand refresh section
- **samples:** add on demand refresh token sample
- **auth:** add warning about using public oauth client
- **auth:** update warning wording
### style
- **:** run styler
### fix
- **match2:** remove match2 health check test
- **ams:** remove ams health check test


<a name="v0.50.0"></a>
## [v0.50.0]
### fix
- **core:** improve error messages when dealing with text/plain responses
### ci
- **generate:** use demo_extend-sdk


<a name="v0.49.0"></a>
## [v0.49.0]


<a name="v0.48.0"></a>
## [v0.48.0]
### feat
- **jwt:** add parse_access_token
### test
- **jwt:** add tests for parse_access_token
### docs
- **jwt:** add docs for parse_access_token


<a name="v0.47.0"></a>
## [v0.47.0]
### docs
- **:** use docs-old for now for some docs
### chore
- **:** gitignore vscode
- **:** ams portal health check
- **:** ams portal health check (cli & test)


<a name="v0.46.0"></a>
## [v0.46.0]
### test
- **integration:** fix dsmc test
- **integration:** fix session browser test


<a name="v0.45.0"></a>
## [v0.45.0]
### feat
- **mock-server:** change jenkinfiles for new mock-server path


<a name="v0.44.0"></a>
## [v0.44.0]
### ci
- **generate:** wrong spec commit hash if no recent changes enough in stage_extend-sdk


## v0.43.0
- Update spec for AccelByte Cloud v3.51.0.
- **integration tests:** fix do_get_store to return only draft stores
- **integration tests:** fix leaderboard code collisions

## v0.42.0
- Update spec for AccelByte Cloud v3.50.0.

### fix
- **core:** handle application/json;charset=utf-8 returned by public_get_my_user_v3
### chore
- **sdk:** generate python extend sdk - AMS
### test
- **sdk:** add AMS integration tests


## v0.41.0
- Update spec for AccelByte Cloud v3.49.0.

### fix
- **tests:** update phantauth environment variable
- **integration tests:** fix leaderboard tests
- **core tests:** disable http bin tests
### chore
- **jenkinsfile:** update generate spec target

## v0.40.0
- Update spec for AccelByte Cloud v3.48.0.

## v0.39.0
- Fix integration tests for `matchmaking` and `seasonpass`.
- Update spec for AccelByte Cloud v3.47.0.

## v0.38.0
- Fix `HttpXHttpClient` not reading timeout argument.
- Update spec for AccelByte Cloud v3.46.0.

## v0.37.0
- Add `**kwargs` argument for `create()` class methods.
- Fix integration tests.
- Fix broken links in docs.
- Remove outdated sample app.
- Update spec for AccelByte Cloud v3.45.0.

## v0.36.0
- Add guide for creating custom operations and models.
- Rename AccelByte Cloud to AccelByte Gaming Services.
- Rename Python Server SDK to Python Extend SDK.
- Update spec for AccelByte Cloud v3.44.0.

## v0.35.0
- Add [migration guide](docs/migration-guides/migration-guide-v0.34.0-to-v0.35.0.md) for `v0.34.0` to `v0.35.0`.
- Add more DSMC deployment tests.
- Fix error message wording when an operation fails to resolve all security requirements.
- Update spec for AccelByte Gaming Services v3.43.0.
- Update coverity image.
- Update AWS CF Sample Apps.

## v0.34.0
- Update spec for AccelByte Cloud v3.42.0.

## v0.33.0
- Add Token Validation feature. Check out the `Validating Tokens` section in the `README.md`.
- Disable `DSMC` tests temporarily.
- Update spec for AccelByte Cloud v3.41.0.

## v0.32.0
- Add `/releases` info in README.
- Add `AdminQueryParties` in session integration test.
- Fix `create_match_ticket` usage in match2 integration test.
- Update requirements.txt file.
- Update spec for AccelByte Cloud v3.40.0.

## v0.31.0
- Update spec for AccelByte Cloud v3.39.0.

## v0.30.0
- Add deprecation information in docs/operation files.
- Add missing integration tests.
- Add multi-SDK usage example in README.md
- Fix PhantAuth tests.
- Move integration tests into another directory.
- Update common use cases file.
- Update spec for AccelByte Cloud v3.38.0.

## v0.29.0
- Add AccelByte OpenAPI2 Vendor Extensions document.
- Add Getting Started sample.
- Add new tests for Match2 and Session services.
- Fix broken links in `docs/operations` and in `README.md`. 
- Update IAM delete user test.
- Update spec for AccelByte Cloud v3.37.0.

## v0.28.0
- Updated spec for AccelByte Cloud v3.36.0.

## v0.27.3
- Updated spec files to fix issues in `dslogmanager`, `dsmc`, `iam` and `matchmaking`.
  - `downloadServerLogs` and `batchDownloadServerLogs` in `dslogmanager`
  - `exportConfigV1` in `dsmc`
  - `AdminDownloadMyBackupCodesV4` and `PublicDownloadMyBackupCodesV4` in `iam`
  - `ExportChannels` in `matchmaking`
- Added tests for `downloadServerLogs`, `exportConfigV1`, `AdminDownloadMyBackupCodesV4`, `PublicDownloadMyBackupCodesV4`, `ExportChannels`
- Fixes bug when receiving undeclared file responses

## v0.27.2
- Updated spec for AccelByte Cloud v3.35.2.

## v0.27.1
- Updated spec for AccelByte Cloud v3.35.1.

## v0.27.0
- Updated Getting Started doc.
- Updated spec for AccelByte Cloud v3.35.0.

## v0.26.1
- Fixed handling of null arrays in responses.
  - `GetAllPartyInAllChannel `
- Updated spec files to fix issues in `achievement` and `lobby`.
  - `ExportAchievements` and `AdminExportConfigV1`

## v0.26.0
- Updated spec for AccelByte Cloud v3.34.0.

## v0.25.1
- ! Fixed Social `export_stats` operation
    ```python
    file, error = export_stats(...)
    ```
- ! Fixed Platform `export_rewards`, `export_store`, `export_store_1`, `download_user_order_receipt`, `public_download_user_order_receipt` operations
    ```python
    file, error = export_*(...)
    file, error = *download_*(...)
    ```
- Fixed bug in regarding Content-Type checking
- Fixed bug when receiving file responses
- Added tests for `export_store_1`, `import_store_1`, `export_rewards`, `export_stats`

## v0.25.0
- Add new tests
- Restructure docs folder

## v0.24.0
- Publish to PyPI
- Use local HttpBin in tests

## v0.23.0
- Add new [Commonly Used Cases](docs/common_use_cases.md) document.
- Fix default values in `DSMC Service` integration tests.
- Fix new required parameter in `Matchmaking Service` integration tests.
- Update to latest IAM User CRUD operations.

## v0.22.0
- Add `sdk` param to all `accelbyte_py_sdk.core` module level functions.
  ```python
  import accelbyte_py_sdk
  from accelbyte_py_sdk.core import initialize, run_request

  my_sdk = accelbyte_py_sdk.SDK()
  
  initialize(sdk=my_sdk)

  # run_request(..., sdk=my_sdk)
  ```
- Add additional information when converting JWT into AccelByte token.
- Add Tic-Tac-Toe sample game and service.
- Updated spec for AccelByte Cloud v3.30.0.

## v0.21.0
- Remove references to Justice and replaced it with AccelByte Cloud.
- Remove Obsolete Core Mocked tests.
- Add QOSM and Season Pass integration tests.
- Updated spec for AccelByte Cloud v3.29.0.

## v0.20.0
- ! Only 4XX and 5XX **undocumented** responses are considered as an error.
    ```python
    result, error = some_endpoint_with_200_400_response_that_will_return_201()

    # previously: result (None),                     error (UndocumentedResponse 201)
    # now:        result (UndocumentedResponse 201), error (None)
    ```
- Updated spec for Justice 3.28.

## v0.19.0
- ! Change default `login_x(auto_refresh)` value to `False`. You are encouraged to use any of the `LoginXTimer` classes.
- Add Sample OIDC App.
- Fix issue with the test entry point.
- Fix performance issue with the (on demand) token refresh.
- Updated spec for Justice 3.27.

## v0.18.0
- Add and fix unit test(s)
- Updated spec for Justice 3.26.

## v0.17.0
- Consolidate cli_test 1 and 2
- Fix unit tests
- Updated spec for Justice 3.25.

## v0.16.0
- ! Add Auto Refresh Token feature
    ```python
    import accelbyte_py_sdk.services.auth as auth

    result, error = auth.login_user(
        "username",
        "password",
        # auto refresh login session when token is close to expiring, if token is set to expire in 60 mins putting a 'refresh_rate' of 0.8,
        # the SDK will try to refresh the token on your next request when it's 48 mins past the issued time.
        auto_refresh=True,  # default: True
        refresh_rate=0.8,   # default: 0.8
    )
    ```
- Fix some issues in test scripts
- Refactor AccelByteSDK class
- Update spec for Justice 3.24.

## v0.15.0
- Add HTTP Retry feature
    - HttpRetryPolicy
    - HttpBackoffPolicy
- Updated spec for Justice 3.23.

## v0.14.0
- Add `Code generated. DO NOT EDIT!` notice on generated files.
- Add interactive mode in cli.
- Fix missing URL escape in HeaderStr class.
- Fix missing headers (X-Amzn-Trace-Id, User-Agent).
- Fix missing type hint in `convert_any_to_file_tuple(...)`.
- Fix missing raw content data when receiving file.
- Updated spec for Justice 3.22.

## v0.13.0
- Add `ProtoHttpRequest` dataclass
- Add Cookie header-related utility methods
- Add HeaderStr class
- Add link to the sample app commands in the `/doc/*-index.md` files
- ! Change method signature of `run_request` and `run_request_async`
    ```diff
    def run_request(
            operation: Operation,
    -       base_url: Union[None, str] = None,
    +       base_url: Optional[str] = "",
    -       additional_headers: Union[None, Dict[str, str]] = None,
    +       additional_headers: Optional[Dict[str, str]] = None,
            additional_headers_override: bool = True,
    +       config_repo: Optional[ConfigRepository] = None,
    +       token_repo: Optional[TokenRepository] = None,
    +       http_client: Optional[HttpClient] = None,
            **kwargs
    ) -> Tuple[Any, Any]:
    ```
- ! Changed method signature of `HttpClient.create_request`
    ```diff
    def create_request(
            self,
    -       operation: Operation,
    +       proto: ProtoHttpRequest,
    -       base_url: Union[None, str] = None,
    -       headers: Union[None, Header] = None,
    -       **kwargs
    -) -> Tuple[Any, Union[None, HttpResponse]]:
    +) -> Any:
    ```
- Fix security resolving
- Update APIs
    - basic
        - version bump
        - add 204s responses
    - cloudsave
        - version bump
        - update operation descriptions
    - dslogmanager
        - version bump only
    - dsmc
        - version bump only
    - gametelemetry
        - add Cookie header parameters
    - gdpr
        - version bump only
    - group
        - version bump
        - update operation descriptions
    - iam
        - version bump
        - add basic auth alternative to some endpoints
        - add Cookie header parameters
        - update operation descriptions
    - leaderboard
        - version bump only
    - legal
        - version bump
        - update responses
    - lobby
        - update responses
    - matchmaking
        - version bump only
    - platform
        - version bump
        - new endpoints
    - seasonpass
        - version bump only
    - social
        - version bump
        - update operation descriptions
    - ugc
        - version bump
        - new endpoints
        - new models
        - update operation descriptions

## v0.12.0
- Add enum classes for parameters / definitions with an `enum` property
- Fix integration tests
- Fix linter errors
- Move request field validation logic into base classes
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
