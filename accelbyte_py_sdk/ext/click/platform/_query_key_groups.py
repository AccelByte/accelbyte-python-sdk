import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_key_groups as query_key_groups_internal
from ....api.platform.models import KeyGroupPagingSlicedResult


@click.command()
@click.option("--name", "name", type=str)
@click.option("--tag", "tag", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_key_groups(
        name: Optional[str] = None,
        tag: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_key_groups_internal.__doc__)
    result, error = query_key_groups_internal(
        name=name,
        tag=tag,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryKeyGroups failed: {str(error)}")
    click.echo("queryKeyGroups success")
