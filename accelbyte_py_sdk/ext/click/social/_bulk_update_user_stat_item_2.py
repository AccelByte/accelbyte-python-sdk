import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import bulk_update_user_stat_item_2 as bulk_update_user_stat_item_2_internal
from ....api.social.models import BulkStatItemOperationResult
from ....api.social.models import BulkStatItemUpdate
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--additional_key", "additional_key", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_update_user_stat_item_2(
        user_id: str,
        body: Optional[str] = None,
        additional_key: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_update_user_stat_item_2_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [BulkStatItemUpdate.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = bulk_update_user_stat_item_2_internal(
        user_id=user_id,
        body=body,
        additional_key=additional_key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkUpdateUserStatItem_2 failed: {str(error)}")
    click.echo("bulkUpdateUserStatItem_2 success")
