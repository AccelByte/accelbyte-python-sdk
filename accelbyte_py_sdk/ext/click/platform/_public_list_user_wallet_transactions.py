import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_list_user_wallet_transactions as public_list_user_wallet_transactions_internal
from ....api.platform.models import WalletTransactionPagingSlicedResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("currency_code", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_list_user_wallet_transactions(
        user_id: str,
        currency_code: str,
        offset: Optional[int] = None,
        limit: Optional[int] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_list_user_wallet_transactions_internal.__doc__)
    result, error = public_list_user_wallet_transactions_internal(
        user_id=user_id,
        currency_code=currency_code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicListUserWalletTransactions failed: {str(error)}")
    click.echo("publicListUserWalletTransactions success")
