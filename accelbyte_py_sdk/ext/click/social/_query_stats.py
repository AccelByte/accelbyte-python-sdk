import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import query_stats as query_stats_internal
from ....api.social.models import StatPagingSlicedResult


@click.command()
@click.argument("keyword", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_stats(
        keyword: str,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_stats_internal.__doc__)
    result, error = query_stats_internal(
        keyword=keyword,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryStats failed: {str(error)}")
    click.echo("queryStats success")
