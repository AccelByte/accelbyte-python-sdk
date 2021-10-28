import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import bulk_fetch_stat_items as bulk_fetch_stat_items_internal
from ....api.social.models import UserStatItemInfo
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.argument("stat_code", type=str)
@click.argument("user_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def bulk_fetch_stat_items(
        stat_code: str,
        user_ids: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(bulk_fetch_stat_items_internal.__doc__)
    result, error = bulk_fetch_stat_items_internal(
        stat_code=stat_code,
        user_ids=user_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"bulkFetchStatItems failed: {str(error)}")
    click.echo("bulkFetchStatItems success")
