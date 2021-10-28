import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import exists_any_user_active_entitlement as exists_any_user_active_entitlement_internal
from ....api.platform.models import Ownership


@click.command()
@click.argument("user_id", type=str)
@click.option("--item_ids", "item_ids", type=str)
@click.option("--app_ids", "app_ids", type=str)
@click.option("--skus", "skus", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def exists_any_user_active_entitlement(
        user_id: str,
        item_ids: Optional[str] = None,
        app_ids: Optional[str] = None,
        skus: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(exists_any_user_active_entitlement_internal.__doc__)
    try:
        item_ids_json = json.loads(item_ids)
        item_ids = [str.create_from_dict(i0) for i0 in item_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'itemIds'. {str(e)}")
    try:
        app_ids_json = json.loads(app_ids)
        app_ids = [str.create_from_dict(i0) for i0 in app_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'appIds'. {str(e)}")
    try:
        skus_json = json.loads(skus)
        skus = [str.create_from_dict(i0) for i0 in skus_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'skus'. {str(e)}")
    result, error = exists_any_user_active_entitlement_internal(
        user_id=user_id,
        item_ids=item_ids,
        app_ids=app_ids,
        skus=skus,
        namespace=namespace,
    )
    if error:
        raise Exception(f"existsAnyUserActiveEntitlement failed: {str(error)}")
    click.echo("existsAnyUserActiveEntitlement success")
