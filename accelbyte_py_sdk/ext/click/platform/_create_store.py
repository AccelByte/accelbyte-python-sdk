import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_store as create_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreCreate
from ....api.platform.models import StoreInfo
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_store(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_store_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StoreCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_store_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createStore failed: {str(error)}")
    click.echo("createStore success")
