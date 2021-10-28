import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import list_admins_v3 as list_admins_v3_internal
from ....api.iam.models import ModelGetUsersResponseWithPaginationV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_admins_v3(
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_admins_v3_internal.__doc__)
    result, error = list_admins_v3_internal(
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListAdminsV3 failed: {str(error)}")
    click.echo("ListAdminsV3 success")
