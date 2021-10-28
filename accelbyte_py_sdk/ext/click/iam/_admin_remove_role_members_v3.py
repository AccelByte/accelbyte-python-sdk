import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_remove_role_members_v3 as admin_remove_role_members_v3_internal
from ....api.iam.models import ModelRoleMembersRequestV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("role_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_remove_role_members_v3(
        body: str,
        role_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_remove_role_members_v3_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelRoleMembersRequestV3.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = admin_remove_role_members_v3_internal(
        body=body,
        role_id=role_id,
    )
    if error:
        raise Exception(f"AdminRemoveRoleMembersV3 failed: {str(error)}")
    click.echo("AdminRemoveRoleMembersV3 success")
