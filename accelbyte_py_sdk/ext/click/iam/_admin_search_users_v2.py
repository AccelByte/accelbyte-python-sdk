import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_search_users_v2 as admin_search_users_v2_internal
from ....api.iam.models import ModelSearchUsersByPlatformIDResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--role_id", type=str)
@click.option("--login_id", type=str)
@click.option("--user_id", type=str)
@click.option("--platform_user_id", type=str)
@click.option("--display_name", type=str)
@click.option("--limit", type=str)
@click.option("--before", type=str)
@click.option("--after", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_search_users_v2(
        platform_id: str,
        role_id: Optional[str] = None,
        login_id: Optional[str] = None,
        user_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        display_name: Optional[str] = None,
        limit: Optional[str] = None,
        before: Optional[str] = None,
        after: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_search_users_v2_internal.__doc__)
    result, error = admin_search_users_v2_internal(
        platform_id=platform_id,
        role_id=role_id,
        login_id=login_id,
        user_id=user_id,
        platform_user_id=platform_user_id,
        display_name=display_name,
        limit=limit,
        before=before,
        after=after,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminSearchUsersV2 failed: {str(error)}")
    click.echo("AdminSearchUsersV2 success")
