import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import platform_authentication_v3 as platform_authentication_v3_internal


@click.command()
@click.argument("platform_id", type=str)
@click.argument("state", type=str)
@click.option("--openid_ns", type=str)
@click.option("--openid_mode", type=str)
@click.option("--openid_op_endpoint", type=str)
@click.option("--openid_claimed_id", type=str)
@click.option("--openid_identity", type=str)
@click.option("--openid_return_to", type=str)
@click.option("--openid_response_nonce", type=str)
@click.option("--openid_assoc_handle", type=str)
@click.option("--openid_signed", type=str)
@click.option("--openid_sig", type=str)
@click.option("--code", type=str)
@click.option("--error", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def platform_authentication_v3(
        platform_id: str,
        state: str,
        openid_ns: Optional[str] = None,
        openid_mode: Optional[str] = None,
        openid_op_endpoint: Optional[str] = None,
        openid_claimed_id: Optional[str] = None,
        openid_identity: Optional[str] = None,
        openid_return_to: Optional[str] = None,
        openid_response_nonce: Optional[str] = None,
        openid_assoc_handle: Optional[str] = None,
        openid_signed: Optional[str] = None,
        openid_sig: Optional[str] = None,
        code: Optional[str] = None,
        error: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(platform_authentication_v3_internal.__doc__)
    result, error = platform_authentication_v3_internal(
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
    if error:
        raise Exception(f"PlatformAuthenticationV3 failed: {str(error)}")
    click.echo("PlatformAuthenticationV3 success")
