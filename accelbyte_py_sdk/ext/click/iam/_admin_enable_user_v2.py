import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_enable_user_v2 as admin_enable_user_v2_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_enable_user_v2(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_enable_user_v2_internal.__doc__)
    result, error = admin_enable_user_v2_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminEnableUserV2 failed: {str(error)}")
    click.echo("AdminEnableUserV2 success")
