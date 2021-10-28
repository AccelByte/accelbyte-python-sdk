import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_stats as get_stats_internal
from ....api.social.models import StatPagingSlicedResult


@click.command()
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_stats(
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_stats_internal.__doc__)
    result, error = get_stats_internal(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getStats failed: {str(error)}")
    click.echo("getStats success")
