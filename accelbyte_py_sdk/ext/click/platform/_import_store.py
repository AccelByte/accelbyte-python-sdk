import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import import_store as import_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import StoreInfo


@click.command()
@click.option("--file", "file", type=str)
@click.option("--store_id", "store_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def import_store(
        file: Optional[str] = None,
        store_id: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(import_store_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = import_store_internal(
        file=file,
        store_id=store_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"importStore failed: {str(error)}")
    click.echo("importStore success")
