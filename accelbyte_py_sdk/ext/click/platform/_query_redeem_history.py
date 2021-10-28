import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_redeem_history as query_redeem_history_internal
from ....api.platform.models import RedeemHistoryPagingSlicedResult


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--code", "code", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_redeem_history(
        campaign_id: str,
        user_id: Optional[str] = None,
        code: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_redeem_history_internal.__doc__)
    result, error = query_redeem_history_internal(
        campaign_id=campaign_id,
        user_id=user_id,
        code=code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryRedeemHistory failed: {str(error)}")
    click.echo("queryRedeemHistory success")
