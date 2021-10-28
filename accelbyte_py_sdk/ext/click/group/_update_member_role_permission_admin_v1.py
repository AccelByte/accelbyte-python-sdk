import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import update_member_role_permission_admin_v1 as update_member_role_permission_admin_v1_internal
from ....api.group.models import ModelsUpdateMemberRolePermissionsRequestV1
from ....api.group.models import ModelsUpdateMemberRoleResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("member_role_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_member_role_permission_admin_v1(
        body: str,
        member_role_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_member_role_permission_admin_v1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsUpdateMemberRolePermissionsRequestV1.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_member_role_permission_admin_v1_internal(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateMemberRolePermissionAdminV1 failed: {str(error)}")
    click.echo("updateMemberRolePermissionAdminV1 success")
