import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import save_user_roles as save_user_roles_internal


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def save_user_roles(
        body: str,
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(save_user_roles_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [str.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = save_user_roles_internal(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"SaveUserRoles failed: {str(error)}")
    click.echo("SaveUserRoles success")
