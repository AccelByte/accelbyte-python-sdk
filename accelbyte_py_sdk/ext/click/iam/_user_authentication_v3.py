import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import user_authentication_v3 as user_authentication_v3_internal


@click.command()
@click.argument("user_name", type=str)
@click.argument("password", type=str)
@click.argument("request_id", type=str)
@click.option("--redirect_uri", type=str)
@click.option("--client_id", type=str)
@click.option("--extend_exp", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def user_authentication_v3(
        user_name: str,
        password: str,
        request_id: str,
        redirect_uri: Optional[str] = None,
        client_id: Optional[str] = None,
        extend_exp: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(user_authentication_v3_internal.__doc__)
    result, error = user_authentication_v3_internal(
        user_name=user_name,
        password=password,
        request_id=request_id,
        redirect_uri=redirect_uri,
        client_id=client_id,
        extend_exp=extend_exp,
    )
    if error:
        raise Exception(f"UserAuthenticationV3 failed: {str(error)}")
    click.echo("UserAuthenticationV3 success")
