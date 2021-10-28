import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_locale_item as get_locale_item_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PopulatedItemInfo


@click.command()
@click.argument("item_id", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--region", "region", type=str)
@click.option("--language", "language", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--populate_bundle", "populate_bundle", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_locale_item(
        item_id: str,
        store_id: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        active_only: Optional[bool] = None,
        populate_bundle: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_locale_item_internal.__doc__)
    result, error = get_locale_item_internal(
        item_id=item_id,
        store_id=store_id,
        region=region,
        language=language,
        active_only=active_only,
        populate_bundle=populate_bundle,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getLocaleItem failed: {str(error)}")
    click.echo("getLocaleItem success")
