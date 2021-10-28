import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import delete_group_admin_v1 as delete_group_admin_v1_internal
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("group_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_group_admin_v1(
        group_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_group_admin_v1_internal.__doc__)
    result, error = delete_group_admin_v1_internal(
        group_id=group_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteGroupAdminV1 failed: {str(error)}")
    click.echo("deleteGroupAdminV1 success")
