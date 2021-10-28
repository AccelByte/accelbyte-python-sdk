import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import create_role as create_role_internal
from ....api.iam.models import AccountcommonRole
from ....api.iam.models import ModelRoleCreateRequest


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_role(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_role_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelRoleCreateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_role_internal(
        body=body,
    )
    if error:
        raise Exception(f"CreateRole failed: {str(error)}")
    click.echo("CreateRole success")
