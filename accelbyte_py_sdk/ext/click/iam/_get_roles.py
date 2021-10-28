import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_roles as get_roles_internal
from ....api.iam.models import ModelRoleResponseWithManagers


@click.command()
@click.option("--is_wildcard", "is_wildcard", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_roles(
        is_wildcard: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_roles_internal.__doc__)
    result, error = get_roles_internal(
        is_wildcard=is_wildcard,
    )
    if error:
        raise Exception(f"GetRoles failed: {str(error)}")
    click.echo("GetRoles success")
