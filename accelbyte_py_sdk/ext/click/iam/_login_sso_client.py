import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import login_sso_client as login_sso_client_internal


@click.command()
@click.argument("platform_id", type=str)
@click.option("--payload", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def login_sso_client(
        platform_id: str,
        payload: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(login_sso_client_internal.__doc__)
    result, error = login_sso_client_internal(
        platform_id=platform_id,
        payload=payload,
    )
    if error:
        raise Exception(f"LoginSSOClient failed: {str(error)}")
    click.echo("LoginSSOClient success")
