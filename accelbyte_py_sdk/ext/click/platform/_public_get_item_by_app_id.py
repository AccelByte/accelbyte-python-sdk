import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_get_item_by_app_id as public_get_item_by_app_id_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ItemInfo


@click.command()
@click.argument("app_id", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--language", "language", type=str)
@click.option("--region", "region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_item_by_app_id(
        app_id: str,
        store_id: Optional[str] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_item_by_app_id_internal.__doc__)
    result, error = public_get_item_by_app_id_internal(
        app_id=app_id,
        store_id=store_id,
        language=language,
        region=region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetItemByAppId failed: {str(error)}")
    click.echo("publicGetItemByAppId success")
