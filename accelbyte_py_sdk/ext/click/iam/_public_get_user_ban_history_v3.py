import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_get_user_ban_history_v3 as public_get_user_ban_history_v3_internal
from ....api.iam.models import ModelGetUserBanV3Response


@click.command()
@click.argument("user_id", type=str)
@click.option("--active_only", type=bool)
@click.option("--limit", type=int)
@click.option("--before", type=str)
@click.option("--after", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_user_ban_history_v3(
        user_id: str,
        active_only: Optional[bool] = None,
        limit: Optional[int] = None,
        before: Optional[str] = None,
        after: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_user_ban_history_v3_internal.__doc__)
    result, error = public_get_user_ban_history_v3_internal(
        user_id=user_id,
        active_only=active_only,
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicGetUserBanHistoryV3 failed: {str(error)}")
    click.echo("PublicGetUserBanHistoryV3 success")
