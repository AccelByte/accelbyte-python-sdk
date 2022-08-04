# My Single Page App

## Requirements

* Python 3.9+
* see `requirements.txt`

## Installation

### Create the virtual environment

```shell
python -m venv venv
```

### Activate the virtual environment

On macOS or Unix

```shell
source venv/bin/activate
```

On Windows using Command Prompt

```shell
venv\Scripts\activate.bat
```

On Windows using PowerShell

```shell
venv\Scripts\Activate.ps1
```

:bulb: Checking which Python executable is active

```shell
python -c "import sys; print(sys.executable)"
```

### Install package dependencies

```shell
pip install -r requirements.txt
```

:bulb: Deactivating the virtual environment

On macOS, Unix, or Windows using PowerShell

```shell
deactivate
```

On Windows using Command Prompt

```shell
venv\Scripts\deactivate.bat
```

## Configuring

Edit the `app.env` file

```shell
APP_REDIRECT_ENDPOINT={base_url}/login/callback
AB_BASE_URL=<INPUT>
AB_CLIENT_ID=<INPUT>
AB_CLIENT_SECRET=<INPUT>
AB_NAMESPACE=<INPUT>
AB_PLATFORM_ID=<INPUT>
OIDC_CLIENT_ID=<INPUT>
OIDC_CLIENT_SECRET=<INPUT>
OIDC_BASE_URL=<INPUT>
OIDC_AUTHORIZE_ENDPOINT=<INPUT>
OIDC_TOKEN_ENDPOINT=<INPUT>
OIDC_JWKS_URL=<INPUT>
```

#### PhantAuth Configuration Example

```shell
APP_REDIRECT_ENDPOINT={base_url}/login/callback
AB_BASE_URL=<INPUT>
AB_CLIENT_ID=<INPUT>
AB_CLIENT_SECRET=<INPUT>
AB_NAMESPACE=<INPUT>
AB_PLATFORM_ID=<INPUT>
OIDC_CLIENT_ID=test.client
OIDC_CLIENT_SECRET=UTBcWwt5
OIDC_BASE_URL=https://phantauth.net
OIDC_AUTHORIZE_ENDPOINT={base_url}/auth/authorize?{query_params}
OIDC_TOKEN_ENDPOINT={base_url}/auth/token
OIDC_JWKS_URL=https://phantauth.net/auth/jwks
```

#### Auth0 Configuration Example

```shell
APP_REDIRECT_ENDPOINT={base_url}/login/callback
AB_BASE_URL=<INPUT>
AB_CLIENT_ID=<INPUT>
AB_CLIENT_SECRET=<INPUT>
AB_NAMESPACE=<INPUT>
AB_PLATFORM_ID=<INPUT>
OIDC_CLIENT_ID=<INPUT>
OIDC_CLIENT_SECRET=<INPUT>
OIDC_BASE_URL=<INPUT>
OIDC_AUTHORIZE_ENDPOINT={base_url}/authorize?{query_params}
OIDC_TOKEN_ENDPOINT={base_url}/oauth/token
OIDC_JWKS_URL=<INPUT>
```

## Running

```shell
$ cd single_page_app
$ python app.py --help
$ python app.py --env "../app.env" --debug
```
