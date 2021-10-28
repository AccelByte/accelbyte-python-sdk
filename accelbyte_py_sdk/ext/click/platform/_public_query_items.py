import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_query_items as public_query_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemPagingSlicedResult
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--store_id", "store_id", type=str)
@click.option("--language", "language", type=str)
@click.option("--region", "region", type=str)
@click.option("--category_path", "category_path", type=str)
@click.option("--item_type", "item_type", type=str)
@click.option("--app_type", "app_type", type=str)
@click.option("--base_app_id", "base_app_id", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--features", "features", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_query_items(
        store_id: Optional[str] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
        category_path: Optional[str] = None,
        item_type: Optional[str] = None,
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        tags: Optional[str] = None,
        features: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        sort_by: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_query_items_internal.__doc__)
    result, error = public_query_items_internal(
        store_id=store_id,
        language=language,
        region=region,
        category_path=category_path,
        item_type=item_type,
        app_type=app_type,
        base_app_id=base_app_id,
        tags=tags,
        features=features,
        offset=offset,
        limit=limit,
        sort_by=sort_by,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicQueryItems failed: {str(error)}")
    click.echo("publicQueryItems success")
