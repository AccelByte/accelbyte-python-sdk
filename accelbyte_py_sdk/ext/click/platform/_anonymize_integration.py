import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import anonymize_integration as anonymize_integration_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def anonymize_integration(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(anonymize_integration_internal.__doc__)
    result, error = anonymize_integration_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"anonymizeIntegration failed: {str(error)}")
    click.echo("anonymizeIntegration success")
