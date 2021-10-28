import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import revoke_token as revoke_token_internal


@click.command()
@click.argument("token", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def revoke_token(
        token: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(revoke_token_internal.__doc__)
    result, error = revoke_token_internal(
        token=token,
    )
    if error:
        raise Exception(f"RevokeToken failed: {str(error)}")
    click.echo("RevokeToken success")
