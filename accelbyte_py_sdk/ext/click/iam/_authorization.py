import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import authorization as authorization_internal


@click.command()
@click.argument("client_id", type=str)
@click.argument("redirect_uri", type=str)
@click.argument("response_type", type=str)
@click.option("--login", "login", type=str)
@click.option("--password", "password", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--state", "state", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def authorization(
        client_id: str,
        redirect_uri: str,
        response_type: str,
        login: Optional[str] = None,
        password: Optional[str] = None,
        scope: Optional[str] = None,
        state: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(authorization_internal.__doc__)
    result, error = authorization_internal(
        client_id=client_id,
        redirect_uri=redirect_uri,
        response_type=response_type,
        login=login,
        password=password,
        scope=scope,
        state=state,
    )
    if error:
        raise Exception(f"Authorization failed: {str(error)}")
    click.echo("Authorization success")
