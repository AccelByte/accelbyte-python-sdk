import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_item as update_item_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemInfo
from ....api.platform.models import ItemUpdate
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("item_id", type=str)
@click.argument("store_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_item(
        item_id: str,
        store_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_item_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ItemUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_item_internal(
        item_id=item_id,
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateItem failed: {str(error)}")
    click.echo("updateItem success")
