import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import revoke_a_user as revoke_a_user_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def revoke_a_user(
        user_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(revoke_a_user_internal.__doc__)
    result, error = revoke_a_user_internal(
        user_id=user_id,
    )
    if error:
        raise Exception(f"RevokeAUser failed: {str(error)}")
    click.echo("RevokeAUser success")
