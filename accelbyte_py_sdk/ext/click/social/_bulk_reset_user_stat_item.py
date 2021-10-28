import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import bulk_reset_user_stat_item as bulk_reset_user_stat_item_internal
from ....api.social.models import BulkStatItemOperationResult
from ....api.social.models import BulkUserStatItemReset
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_reset_user_stat_item(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_reset_user_stat_item_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [BulkUserStatItemReset.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = bulk_reset_user_stat_item_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkResetUserStatItem failed: {str(error)}")
    click.echo("bulkResetUserStatItem success")
