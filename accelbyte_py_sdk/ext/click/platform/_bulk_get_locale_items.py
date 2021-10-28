import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import bulk_get_locale_items as bulk_get_locale_items_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemInfo


@click.command()
@click.argument("item_ids", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--region", "region", type=str)
@click.option("--language", "language", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_get_locale_items(
        item_ids: str,
        store_id: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_get_locale_items_internal.__doc__)
    result, error = bulk_get_locale_items_internal(
        item_ids=item_ids,
        store_id=store_id,
        region=region,
        language=language,
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkGetLocaleItems failed: {str(error)}")
    click.echo("bulkGetLocaleItems success")
