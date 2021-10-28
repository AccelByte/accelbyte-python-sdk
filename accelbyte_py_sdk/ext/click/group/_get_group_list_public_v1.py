import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import get_group_list_public_v1 as get_group_list_public_v1_internal
from ....api.group.models import ModelsGetGroupsListResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--group_name", "group_name", type=str)
@click.option("--group_region", "group_region", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_group_list_public_v1(
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        group_name: Optional[str] = None,
        group_region: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_group_list_public_v1_internal.__doc__)
    result, error = get_group_list_public_v1_internal(
        limit=limit,
        offset=offset,
        group_name=group_name,
        group_region=group_region,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getGroupListPublicV1 failed: {str(error)}")
    click.echo("getGroupListPublicV1 success")
