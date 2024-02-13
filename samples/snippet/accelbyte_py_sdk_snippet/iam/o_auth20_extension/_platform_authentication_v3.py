import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_authentication_v3

result, error = platform_authentication_v3(
    platform_id=platform_id,
    state=state,
    code=code,
    error=error,
    openid_assoc_handle=openid_assoc_handle,
    openid_claimed_id=openid_claimed_id,
    openid_identity=openid_identity,
    openid_mode=openid_mode,
    openid_ns=openid_ns,
    openid_op_endpoint=openid_op_endpoint,
    openid_response_nonce=openid_response_nonce,
    openid_return_to=openid_return_to,
    openid_sig=openid_sig,
    openid_signed=openid_signed,
    x_additional_headers=x_additional_headers,
)
