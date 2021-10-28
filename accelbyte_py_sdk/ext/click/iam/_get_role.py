import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_role as get_role_internal
from ....api.iam.models import ModelRoleResponse


@click.command()
@click.argument("role_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_role(
        role_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_role_internal.__doc__)
    result, error = get_role_internal(
        role_id=role_id,
    )
    if error:
        raise Exception(f"GetRole failed: {str(error)}")
    click.echo("GetRole success")
