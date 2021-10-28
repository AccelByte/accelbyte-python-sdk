import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import debit_user_wallet as debit_user_wallet_internal
from ....api.platform.models import DebitRequest
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ValidationErrorEntity
from ....api.platform.models import WalletInfo


@click.command()
@click.argument("user_id", type=str)
@click.argument("wallet_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def debit_user_wallet(
        user_id: str,
        wallet_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(debit_user_wallet_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = DebitRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = debit_user_wallet_internal(
        user_id=user_id,
        wallet_id=wallet_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"debitUserWallet failed: {str(error)}")
    click.echo("debitUserWallet success")
