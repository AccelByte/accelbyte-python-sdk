import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import anonymize_payment as anonymize_payment_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def anonymize_payment(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(anonymize_payment_internal.__doc__)
    result, error = anonymize_payment_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"anonymizePayment failed: {str(error)}")
    click.echo("anonymizePayment success")
