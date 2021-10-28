import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import revoke_user as revoke_user_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def revoke_user(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(revoke_user_internal.__doc__)
    result, error = revoke_user_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"RevokeUser failed: {str(error)}")
    click.echo("RevokeUser success")
