import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import sync_in_game_item as sync_in_game_item_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import FullItemInfo
from ....api.platform.models import InGameItemSync
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("store_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def sync_in_game_item(
        store_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(sync_in_game_item_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = InGameItemSync.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = sync_in_game_item_internal(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"syncInGameItem failed: {str(error)}")
    click.echo("syncInGameItem success")
