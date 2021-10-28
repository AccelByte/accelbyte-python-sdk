import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import update_user as update_user_internal
from ....api.iam.models import ModelUserResponse
from ....api.iam.models import ModelUserUpdateRequest


@click.command()
@click.argument("body", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user(
        body: str,
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_user_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUserUpdateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_user_internal(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"UpdateUser failed: {str(error)}")
    click.echo("UpdateUser success")
