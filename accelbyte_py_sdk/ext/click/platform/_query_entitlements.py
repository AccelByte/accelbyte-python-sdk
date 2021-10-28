import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_entitlements as query_entitlements_internal
from ....api.platform.models import EntitlementPagingSlicedResult


@click.command()
@click.option("--user_id", "user_id", type=str)
@click.option("--entitlement_clazz", "entitlement_clazz", type=str)
@click.option("--app_type", "app_type", type=str)
@click.option("--entitlement_name", "entitlement_name", type=str)
@click.option("--item_id", "item_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_entitlements(
        user_id: Optional[str] = None,
        entitlement_clazz: Optional[str] = None,
        app_type: Optional[str] = None,
        entitlement_name: Optional[str] = None,
        item_id: Optional[str] = None,
        active_only: Optional[bool] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_entitlements_internal.__doc__)
    try:
        item_id_json = json.loads(item_id)
        item_id = [str.create_from_dict(i0) for i0 in item_id_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'itemId'. {str(e)}")
    result, error = query_entitlements_internal(
        user_id=user_id,
        entitlement_clazz=entitlement_clazz,
        app_type=app_type,
        entitlement_name=entitlement_name,
        item_id=item_id,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryEntitlements failed: {str(error)}")
    click.echo("queryEntitlements success")
