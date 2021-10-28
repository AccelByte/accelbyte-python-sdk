import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import create_user as create_user_internal
from ....api.iam.models import ModelUserCreateRequest
from ....api.iam.models import ModelUserCreateResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_user(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_user_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelUserCreateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_user_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateUser failed: {str(error)}")
    click.echo("CreateUser success")
