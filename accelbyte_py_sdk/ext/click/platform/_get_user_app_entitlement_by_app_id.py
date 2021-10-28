import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_user_app_entitlement_by_app_id as get_user_app_entitlement_by_app_id_internal
from ....api.platform.models import AppEntitlementInfo
from ....api.platform.models import ErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("app_id", type=str)
@click.option("--active_only", "active_only", type=bool)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_user_app_entitlement_by_app_id(
        user_id: str,
        app_id: str,
        active_only: Optional[bool] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_user_app_entitlement_by_app_id_internal.__doc__)
    result, error = get_user_app_entitlement_by_app_id_internal(
        user_id=user_id,
        app_id=app_id,
        active_only=active_only,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getUserAppEntitlementByAppId failed: {str(error)}")
    click.echo("getUserAppEntitlementByAppId success")
