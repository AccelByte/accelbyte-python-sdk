import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import bulk_update_user_stat_item_v2 as bulk_update_user_stat_item_v2_internal
from ....api.social.models import BulkStatItemOperationResult
from ....api.social.models import BulkUserStatItemUpdate
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_update_user_stat_item_v2(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_update_user_stat_item_v2_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [BulkUserStatItemUpdate.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = bulk_update_user_stat_item_v2_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkUpdateUserStatItemV2 failed: {str(error)}")
    click.echo("bulkUpdateUserStatItemV2 success")
