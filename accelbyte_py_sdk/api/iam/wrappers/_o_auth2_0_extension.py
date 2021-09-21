# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..models import OauthmodelCountryLocationResponse

from ..operations.o_auth2_0_extension import GetCountryLocationV3
from ..operations.o_auth2_0_extension import Logout
from ..operations.o_auth2_0_extension import PlatformAuthenticationV3
from ..operations.o_auth2_0_extension import UserAuthenticationV3


@same_doc_as(GetCountryLocationV3)
def get_country_location_v3():
    request = GetCountryLocationV3.create()
    return run_request(request)


@same_doc_as(Logout)
def logout():
    request = Logout.create()
    return run_request(request)


@same_doc_as(PlatformAuthenticationV3)
def platform_authentication_v3(platform_id: str, state: str, openid_ns: Optional[str] = None, openid_mode: Optional[str] = None, openid_op_endpoint: Optional[str] = None, openid_claimed_id: Optional[str] = None, openid_identity: Optional[str] = None, openid_return_to: Optional[str] = None, openid_response_nonce: Optional[str] = None, openid_assoc_handle: Optional[str] = None, openid_signed: Optional[str] = None, openid_sig: Optional[str] = None, code: Optional[str] = None, error: Optional[str] = None):
    request = PlatformAuthenticationV3.create(
        platform_id=platform_id,
        state=state,
        openid_ns=openid_ns,
        openid_mode=openid_mode,
        openid_op_endpoint=openid_op_endpoint,
        openid_claimed_id=openid_claimed_id,
        openid_identity=openid_identity,
        openid_return_to=openid_return_to,
        openid_response_nonce=openid_response_nonce,
        openid_assoc_handle=openid_assoc_handle,
        openid_signed=openid_signed,
        openid_sig=openid_sig,
        code=code,
        error=error,
    )
    return run_request(request)


@same_doc_as(UserAuthenticationV3)
def user_authentication_v3(user_name: str, password: str, request_id: str, redirect_uri: Optional[str] = None, client_id: Optional[str] = None, extend_exp: Optional[bool] = None):
    request = UserAuthenticationV3.create(
        user_name=user_name,
        password=password,
        request_id=request_id,
        redirect_uri=redirect_uri,
        client_id=client_id,
        extend_exp=extend_exp,
    )
    return run_request(request)
