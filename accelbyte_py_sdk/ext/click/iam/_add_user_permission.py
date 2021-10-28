import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import add_user_permission as add_user_permission_internal
from ....api.iam.models import ModelUpdatePermissionScheduleRequest


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.argument("resource", type=str)
@click.argument("action", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def add_user_permission(
        body: str,
        user_id: str,
        resource: str,
        action: int,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(add_user_permission_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUpdatePermissionScheduleRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = add_user_permission_internal(
        body=body,
        user_id=user_id,
        resource=resource,
        action=action,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AddUserPermission failed: {str(error)}")
    click.echo("AddUserPermission success")
