import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import get_single_member_role_admin_v1 as get_single_member_role_admin_v1_internal
from ....api.group.models import ModelsGetMemberRoleResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("member_role_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_single_member_role_admin_v1(
        member_role_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_single_member_role_admin_v1_internal.__doc__)
    result, error = get_single_member_role_admin_v1_internal(
        member_role_id=member_role_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getSingleMemberRoleAdminV1 failed: {str(error)}")
    click.echo("getSingleMemberRoleAdminV1 success")
