import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_user_login_histories_v3 as admin_get_user_login_histories_v3_internal
from ....api.iam.models import ModelLoginHistoriesResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--before", type=float)
@click.option("--after", type=float)
@click.option("--limit", type=float)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_user_login_histories_v3(
        user_id: str,
        before: Optional[float] = None,
        after: Optional[float] = None,
        limit: Optional[float] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_user_login_histories_v3_internal.__doc__)
    result, error = admin_get_user_login_histories_v3_internal(
        user_id=user_id,
        before=before,
        after=after,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetUserLoginHistoriesV3 failed: {str(error)}")
    click.echo("AdminGetUserLoginHistoriesV3 success")
