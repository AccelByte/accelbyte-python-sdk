import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_banned_users_v3 as admin_get_banned_users_v3_internal
from ....api.iam.models import ModelGetUserBanV3Response


@click.command()
@click.option("--active_only", "active_only", type=bool)
@click.option("--ban_type", "ban_type", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_banned_users_v3(
        active_only: Optional[bool] = None,
        ban_type: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_banned_users_v3_internal.__doc__)
    result, error = admin_get_banned_users_v3_internal(
        active_only=active_only,
        ban_type=ban_type,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetBannedUsersV3 failed: {str(error)}")
    click.echo("AdminGetBannedUsersV3 success")
