import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_fulfillment_histories as query_fulfillment_histories_internal
from ....api.platform.models import FulfillmentHistoryPagingSlicedResult


@click.command()
@click.option("--status", "status", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_fulfillment_histories(
        status: Optional[str] = None,
        user_id: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_fulfillment_histories_internal.__doc__)
    result, error = query_fulfillment_histories_internal(
        status=status,
        user_id=user_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryFulfillmentHistories failed: {str(error)}")
    click.echo("queryFulfillmentHistories success")
