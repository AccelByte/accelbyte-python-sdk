import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import list_user_wallet_transactions as list_user_wallet_transactions_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import WalletTransactionPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("wallet_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def list_user_wallet_transactions(
        user_id: str,
        wallet_id: str,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(list_user_wallet_transactions_internal.__doc__)
    result, error = list_user_wallet_transactions_internal(
        user_id=user_id,
        wallet_id=wallet_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"listUserWalletTransactions failed: {str(error)}")
    click.echo("listUserWalletTransactions success")
