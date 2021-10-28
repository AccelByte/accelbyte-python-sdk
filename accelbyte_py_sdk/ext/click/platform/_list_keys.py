import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import list_keys as list_keys_internal
from ....api.platform.models import KeyPagingSliceResult


@click.command()
@click.argument("key_group_id", type=str)
@click.option("--status", "status", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_keys(
        key_group_id: str,
        status: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_keys_internal.__doc__)
    result, error = list_keys_internal(
        key_group_id=key_group_id,
        status=status,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listKeys failed: {str(error)}")
    click.echo("listKeys success")
