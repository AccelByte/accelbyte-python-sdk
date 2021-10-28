import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_user_entitlements_by_app_type as query_user_entitlements_by_app_type_internal
from ....api.platform.models import AppEntitlementPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("app_type", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_user_entitlements_by_app_type(
        user_id: str,
        app_type: str,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_user_entitlements_by_app_type_internal.__doc__)
    result, error = query_user_entitlements_by_app_type_internal(
        user_id=user_id,
        app_type=app_type,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryUserEntitlementsByAppType failed: {str(error)}")
    click.echo("queryUserEntitlementsByAppType success")
