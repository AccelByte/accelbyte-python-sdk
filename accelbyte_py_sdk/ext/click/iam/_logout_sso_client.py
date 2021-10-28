import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import logout_sso_client as logout_sso_client_internal
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def logout_sso_client(
        platform_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(logout_sso_client_internal.__doc__)
    result, error = logout_sso_client_internal(
        platform_id=platform_id,
    )
    if error:
        raise Exception(f"LogoutSSOClient failed: {str(error)}")
    click.echo("LogoutSSOClient success")
