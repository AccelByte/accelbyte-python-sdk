import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import token_grant_v3 as token_grant_v3_internal
from ....api.iam.models import OauthmodelErrorResponse
from ....api.iam.models import OauthmodelTokenResponseV3


@click.command()
@click.argument("grant_type", type=str)
@click.option("--device_id", type=str)
@click.option("--code", type=str)
@click.option("--code_verifier", type=str)
@click.option("--client_id", type=str)
@click.option("--redirect_uri", type=str)
@click.option("--refresh_token", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def token_grant_v3(
        grant_type: str,
        device_id: Optional[str] = None,
        code: Optional[str] = None,
        code_verifier: Optional[str] = None,
        client_id: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        refresh_token: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(token_grant_v3_internal.__doc__)
    result, error = token_grant_v3_internal(
        grant_type=grant_type,
        device_id=device_id,
        code=code,
        code_verifier=code_verifier,
        client_id=client_id,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
    )
    if error:
        raise Exception(f"TokenGrantV3 failed: {str(error)}")
    click.echo("TokenGrantV3 success")
