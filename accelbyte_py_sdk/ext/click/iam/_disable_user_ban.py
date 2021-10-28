import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import disable_user_ban as disable_user_ban_internal
from ....api.iam.models import ModelUserBanResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("ban_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def disable_user_ban(
        user_id: str,
        ban_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(disable_user_ban_internal.__doc__)
    result, error = disable_user_ban_internal(
        user_id=user_id,
        ban_id=ban_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DisableUserBan failed: {str(error)}")
    click.echo("DisableUserBan success")
