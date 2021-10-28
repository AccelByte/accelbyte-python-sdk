import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_get_roles_v3 as public_get_roles_v3_internal
from ....api.iam.models import ModelRoleNamesResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--is_wildcard", "is_wildcard", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_roles_v3(
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        is_wildcard: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_roles_v3_internal.__doc__)
    result, error = public_get_roles_v3_internal(
        limit=limit,
        after=after,
        before=before,
        is_wildcard=is_wildcard,
    )
    if error:
        raise Exception(f"PublicGetRolesV3 failed: {str(error)}")
    click.echo("PublicGetRolesV3 success")
