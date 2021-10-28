import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_app as get_app_internal
from ....api.platform.models import FullAppInfo


@click.command()
@click.argument("item_id", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_app(
        item_id: str,
        store_id: Optional[str] = None,
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_app_internal.__doc__)
    result, error = get_app_internal(
        item_id=item_id,
        store_id=store_id,
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getApp failed: {str(error)}")
    click.echo("getApp success")
