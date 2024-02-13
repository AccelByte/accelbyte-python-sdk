import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import authorize_v3

result, error = authorize_v3(
    client_id=client_id,
    response_type=response_type,
    code_challenge=code_challenge,
    code_challenge_method=code_challenge_method,
    create_headless=create_headless,
    one_time_link_code=one_time_link_code,
    redirect_uri=redirect_uri,
    scope=scope,
    state=state,
    target_auth_page=target_auth_page,
    use_redirect_uri_as_login_url_when_locked=use_redirect_uri_as_login_url_when_locked,
    x_additional_headers=x_additional_headers,
)
