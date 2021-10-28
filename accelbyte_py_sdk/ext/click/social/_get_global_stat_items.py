import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_global_stat_items as get_global_stat_items_internal
from ....api.social.models import GlobalStatItemPagingSlicedResult


@click.command()
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_global_stat_items(
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_global_stat_items_internal.__doc__)
    result, error = get_global_stat_items_internal(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getGlobalStatItems failed: {str(error)}")
    click.echo("getGlobalStatItems success")
