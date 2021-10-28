import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import export_stats as export_stats_internal


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def export_stats(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(export_stats_internal.__doc__)
    result, error = export_stats_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"exportStats failed: {str(error)}")
    click.echo("exportStats success")
