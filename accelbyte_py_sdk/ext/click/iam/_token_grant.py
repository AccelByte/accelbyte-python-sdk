import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import token_grant as token_grant_internal
from ....api.iam.models import OauthmodelErrorResponse
from ....api.iam.models import OauthmodelTokenResponse


@click.command()
@click.argument("grant_type", type=str)
@click.option("--device_id", "device_id", type=str)
@click.option("--username", "username", type=str)
@click.option("--password", "password", type=str)
@click.option("--refresh_token", "refresh_token", type=str)
@click.option("--code", "code", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def token_grant(
        grant_type: str,
        device_id: Optional[str] = None,
        username: Optional[str] = None,
        password: Optional[str] = None,
        refresh_token: Optional[str] = None,
        code: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        extend_exp: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(token_grant_internal.__doc__)
    result, error = token_grant_internal(
        grant_type=grant_type,
        device_id=device_id,
        username=username,
        password=password,
        refresh_token=refresh_token,
        code=code,
        redirect_uri=redirect_uri,
        extend_exp=extend_exp,
        namespace=namespace,
    )
    if error:
        raise Exception(f"TokenGrant failed: {str(error)}")
    click.echo("TokenGrant success")
