import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import export_rewards as export_rewards_internal


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def export_rewards(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(export_rewards_internal.__doc__)
    result, error = export_rewards_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"exportRewards failed: {str(error)}")
    click.echo("exportRewards success")
