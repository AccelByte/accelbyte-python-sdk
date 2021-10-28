import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import get_member_roles_list_public_v1 as get_member_roles_list_public_v1_internal
from ....api.group.models import ModelsGetMemberRolesListResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_member_roles_list_public_v1(
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_member_roles_list_public_v1_internal.__doc__)
    result, error = get_member_roles_list_public_v1_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getMemberRolesListPublicV1 failed: {str(error)}")
    click.echo("getMemberRolesListPublicV1 success")
