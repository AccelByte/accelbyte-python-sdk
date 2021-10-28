import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_list_users_v3 as admin_list_users_v3_internal
from ....api.iam.models import AccountcommonListUsersWithPlatformAccountsResponse
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_list_users_v3(
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_list_users_v3_internal.__doc__)
    result, error = admin_list_users_v3_internal(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminListUsersV3 failed: {str(error)}")
    click.echo("AdminListUsersV3 success")
