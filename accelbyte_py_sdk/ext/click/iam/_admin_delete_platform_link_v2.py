import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_delete_platform_link_v2 as admin_delete_platform_link_v2_internal


@click.command()
@click.argument("user_id", type=str)
@click.argument("platform_id", type=str)
@click.option("--platform_namespace", "platform_namespace", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_delete_platform_link_v2(
        user_id: str,
        platform_id: str,
        platform_namespace: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_delete_platform_link_v2_internal.__doc__)
    result, error = admin_delete_platform_link_v2_internal(
        user_id=user_id,
        platform_id=platform_id,
        platform_namespace=platform_namespace,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminDeletePlatformLinkV2 failed: {str(error)}")
    click.echo("AdminDeletePlatformLinkV2 success")
