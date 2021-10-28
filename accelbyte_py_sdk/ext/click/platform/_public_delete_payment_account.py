import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_delete_payment_account as public_delete_payment_account_internal


@click.command()
@click.argument("user_id", type=str)
@click.argument("type_", type=str)
@click.argument("id_", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_delete_payment_account(
        user_id: str,
        type_: str,
        id_: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_delete_payment_account_internal.__doc__)
    result, error = public_delete_payment_account_internal(
        user_id=user_id,
        type_=type_,
        id_=id_,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicDeletePaymentAccount failed: {str(error)}")
    click.echo("publicDeletePaymentAccount success")
