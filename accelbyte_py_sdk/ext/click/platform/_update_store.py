import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_store as update_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreInfo
from ....api.platform.models import StoreUpdate
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("store_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_store(
        store_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_store_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StoreUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_store_internal(
        store_id=store_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateStore failed: {str(error)}")
    click.echo("updateStore success")
