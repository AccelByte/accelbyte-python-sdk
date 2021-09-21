from typing import List, Union

from ...core import get_access_token
from ...core import get_client_id
from ...core import remove_token

from ...core import create_pkce_verifier_and_challenge_s256

from ...api.iam import authorize_v3
from ...api.iam import user_authentication_v3
from ...api.iam import token_grant_v3
from ...api.iam import token_revocation_v3


def login(username: str, password: str, scope: Union[None, str, List[str]] = None):
    code_verifier, code_challenge, code_challenge_method \
        = create_pkce_verifier_and_challenge_s256()

    client_id, error = get_client_id()
    if error:
        return None, error

    if scope is None:
        scope = "account social"
    elif isinstance(scope, List):
        scope = " ".join(scope)

    request_id, error = authorize_v3(
        response_type="code",
        client_id=client_id,
        scope=scope,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method
    )
    if error:
        return None, error

    code, error = user_authentication_v3(
        user_name=username,
        password=password,
        request_id=request_id,
        client_id=client_id
    )
    if error:
        return None, error

    _, error = token_grant_v3(
        grant_type="authorization_code",
        code=code,
        code_verifier=code_verifier,
        redirect_uri=""
    )
    if error:
        return None, error

    return None, None


def logout():
    access_token, error = get_access_token()
    if error:
        return None, error

    _, error = token_revocation_v3(access_token)
    if error:
        return None, error

    _, error = remove_token()
    if error:
        return None, error

    return None, None
