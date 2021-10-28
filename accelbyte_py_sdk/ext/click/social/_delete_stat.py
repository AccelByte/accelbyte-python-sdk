import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import delete_stat as delete_stat_internal
from ....api.social.models import ErrorEntity


@click.command()
@click.argument("stat_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_stat(
        stat_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_stat_internal.__doc__)
    result, error = delete_stat_internal(
        stat_code=stat_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteStat failed: {str(error)}")
    click.echo("deleteStat success")
