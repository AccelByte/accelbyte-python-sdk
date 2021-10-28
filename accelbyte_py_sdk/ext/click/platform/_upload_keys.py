import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import upload_keys as upload_keys_internal
from ....api.platform.models import BulkOperationResult
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--file", "file", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def upload_keys(
        key_group_id: str,
        file: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(upload_keys_internal.__doc__)
    try:
        file_json = json.loads(file)
        file = Any.create_from_dict(file_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'file'. {str(e)}")
    result, error = upload_keys_internal(
        key_group_id=key_group_id,
        file=file,
        namespace=namespace,
    )
    if error:
        raise Exception(f"uploadKeys failed: {str(error)}")
    click.echo("uploadKeys success")
