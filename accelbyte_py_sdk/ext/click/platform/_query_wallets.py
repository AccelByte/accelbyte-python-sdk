import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import query_wallets as query_wallets_internal
from ....api.platform.models import WalletPagingSlicedResult


@click.command()
@click.option("--user_id", "user_id", type=str)
@click.option("--currency_code", "currency_code", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_wallets(
        user_id: Optional[str] = None,
        currency_code: Optional[str] = None,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(query_wallets_internal.__doc__)
    result, error = query_wallets_internal(
        user_id=user_id,
        currency_code=currency_code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"queryWallets failed: {str(error)}")
    click.echo("queryWallets success")
