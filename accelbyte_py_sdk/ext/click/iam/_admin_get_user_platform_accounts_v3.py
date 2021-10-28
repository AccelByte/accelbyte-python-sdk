import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_user_platform_accounts_v3 as admin_get_user_platform_accounts_v3_internal
from ....api.iam.models import AccountcommonUserLinkedPlatformsResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_user_platform_accounts_v3(
        user_id: str,
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_user_platform_accounts_v3_internal.__doc__)
    result, error = admin_get_user_platform_accounts_v3_internal(
        user_id=user_id,
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetUserPlatformAccountsV3 failed: {str(error)}")
    click.echo("AdminGetUserPlatformAccountsV3 success")
