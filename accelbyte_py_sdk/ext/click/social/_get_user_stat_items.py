import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_user_stat_items as get_user_stat_items_internal
from ....api.social.models import UserStatItemPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--stat_codes", "stat_codes", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_stat_items(
        user_id: str,
        stat_codes: Optional[str] = None,
        tags: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_stat_items_internal.__doc__)
    result, error = get_user_stat_items_internal(
        user_id=user_id,
        stat_codes=stat_codes,
        tags=tags,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserStatItems failed: {str(error)}")
    click.echo("getUserStatItems success")
