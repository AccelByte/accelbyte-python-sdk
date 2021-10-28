import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import defeature_item as defeature_item_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemInfo


@click.command()
@click.argument("item_id", type=str)
@click.argument("feature", type=str)
@click.argument("store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def defeature_item(
        item_id: str,
        feature: str,
        store_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(defeature_item_internal.__doc__)
    result, error = defeature_item_internal(
        item_id=item_id,
        feature=feature,
        store_id=store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"defeatureItem failed: {str(error)}")
    click.echo("defeatureItem success")
