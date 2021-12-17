## AccelByte Python SDK CLI

You could also interact with the SDK using this package's command-line interface.

```sh
$ python -m accelbyte_py_sdk_cli --help

Usage: python -m accelbyte_py_sdk_cli [OPTIONS] COMMAND [ARGS]...

Options:
  --help  Show this message and exit.

Commands:
  ...
  iam-auth-code-request-v3
  iam-authorization
  iam-authorize-v3
  iam-ban-user
  iam-create-client
  iam-create-client-by-namespace
  iam-create-role
  iam-disable-user
  iam-disable-user-ban
  iam-enable-user
  iam-enable-user-ban
  iam-forgot-password
  iam-get-bans-type
  iam-get-client
  iam-get-clients
  iam-get-country-location-v3
  iam-get-jwks
  iam-get-jwksv3
  iam-get-list-ban-reason
  iam-get-user-ban-history
  iam-get-user-by-login-id
  iam-get-user-by-platform-user-id
  iam-get-user-by-user-id
  iam-get-user-information
  iam-get-user-platform-accounts
  iam-get-user-verification-code
  iam-get-users-by-login-ids
  ...
```

You can get more information for each command by using this syntax:

```sh
$ python -m accelbyte_py_sdk_cli COMMAND --help
```

```sh
$ python3 -m accelbyte_py_sdk_cli iam-get-bans-type --help

Usage: python -m accelbyte_py_sdk_cli iam-get-bans-type [OPTIONS]

Options:
  --login_as [client|user]
  --help                    Show this message and exit.
```

Most commands will require you to login as either a `client` or as a `user`.
For these commands you'll have to pass either `--login_as client` or `--login_as user`.

But first you will have to set first the following environment variables:

```sh
#Used by all operations
export AB_BASE_URL="https://<environment>.accelbyte.io"

#Used by some operations
export AB_NAMESPACE="namespace"

#Used when logging in as client
export AB_CLIENT_ID="your-client-id"
export AB_CLIENT_SECRET="your-client-secret"

#Used when logging in as user
export AB_USERNAME="your-username"
export AB_PASSWORD="your-password"
```

### Examples

```sh
Usage: python -m accelbyte_py_sdk_cli iam-get-bans-type [OPTIONS]

Options:
  --login_as [client|user]
  --help                    Show this message and exit.

$ python -m accelbyte_py_sdk_cli iam-get-bans-type --login_as user

GetBansType success success
```

```sh
Usage: python -m accelbyte_py_sdk_cli iam-public-create-user-v3 [OPTIONS] DISPLAY_NAME EMAIL_ADDRESS
                                                            DATE_OF_BIRTH COUNTRY PASSWORD

Options:
  --namespace TEXT
  --role_id TEXT
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk_cli iam-public-create-user-v3 eagerhamster6800 vi7xUuNc4j@fakemail.com 2000-09-23 US "****" --login_as client

PublicCreateUserV3 success
```

```sh
Usage: python -m accelbyte_py_sdk_cli iam-admin-get-my-user-v3 [OPTIONS]

Options:
  --login_as [client|user]
  --help         Show this message and exit.

$ python -m accelbyte_py_sdk_cli iam-admin-get-my-user-v3 --login_as user

AdminGetMyUserV3 success
```

```sh
Usage: python -m accelbyte_py_sdk_cli iam-admin-update-client-v3 [OPTIONS] CLIENT_ID
                                                             CLIENT_UPDATE_REQUEST

Options:
  --namespace TEXT
  --login_as [client|user]
  --help            Show this message and exit.

$ python -m accelbyte_py_sdk_cli iam-admin-update-client-v3 **** {"clientName": "****"} --login_as user

AdminUpdateClientV3 success
```

```sh
Usage: python -m accelbyte_py_sdk_cli iam-admin-update-user-v3 [OPTIONS] USER_ID

Options:
  --country TEXT
  --date_of_birth TEXT
  --display_name TEXT
  --language_tag TEXT
  --user_name TEXT
  --namespace TEXT
  --login_as [client|user]
  --help                Show this message and exit.

$ python -m accelbyte_py_sdk_cli iam-admin-update-user-v3 **** --date_of_birth 2000-09-23 --login_as user

AdminUpdateUserV3 success
```