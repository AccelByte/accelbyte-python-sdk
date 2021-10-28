import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import enable_user as enable_user_internal


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def enable_user(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(enable_user_internal.__doc__)
    result, error = enable_user_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"EnableUser failed: {str(error)}")
    click.echo("EnableUser success")
