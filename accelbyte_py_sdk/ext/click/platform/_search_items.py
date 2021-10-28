import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import search_items as search_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemPagingSlicedResult


@click.command()
@click.argument("language", type=str)
@click.argument("keyword", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def search_items(
        language: str,
        keyword: str,
        store_id: Optional[str] = None,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(search_items_internal.__doc__)
    result, error = search_items_internal(
        language=language,
        keyword=keyword,
        store_id=store_id,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"searchItems failed: {str(error)}")
    click.echo("searchItems success")
