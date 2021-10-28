import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_search_items as public_search_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemPagingSlicedResult


@click.command()
@click.argument("language", type=str)
@click.argument("keyword", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--region", "region", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_search_items(
        language: str,
        keyword: str,
        store_id: Optional[str] = None,
        region: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_search_items_internal.__doc__)
    result, error = public_search_items_internal(
        language=language,
        keyword=keyword,
        store_id=store_id,
        region=region,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicSearchItems failed: {str(error)}")
    click.echo("publicSearchItems success")
