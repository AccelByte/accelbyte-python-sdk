import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_user_login_histories as get_user_login_histories_internal
from ....api.iam.models import ModelLoginHistoriesResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--before", "before", type=float)
@click.option("--after", "after", type=float)
@click.option("--limit", "limit", type=float)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_login_histories(
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
        click.echo(get_user_login_histories_internal.__doc__)
    result, error = get_user_login_histories_internal(
        user_id=user_id,
        before=before,
        after=after,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetUserLoginHistories failed: {str(error)}")
    click.echo("GetUserLoginHistories success")
