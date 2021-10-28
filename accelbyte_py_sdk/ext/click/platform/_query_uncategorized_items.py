import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_uncategorized_items as query_uncategorized_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemPagingSlicedResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--store_id", "store_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_uncategorized_items(
        store_id: Optional[str] = None,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        sort_by: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_uncategorized_items_internal.__doc__)
    result, error = query_uncategorized_items_internal(
        store_id=store_id,
        active_only=active_only,
        offset=offset,
        limit=limit,
        sort_by=sort_by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryUncategorizedItems failed: {str(error)}")
    click.echo("queryUncategorizedItems success")
