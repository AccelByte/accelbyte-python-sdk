import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_stat as get_stat_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatInfo


@click.command()
@click.argument("stat_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_stat(
        stat_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_stat_internal.__doc__)
    result, error = get_stat_internal(
        stat_code=stat_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getStat failed: {str(error)}")
    click.echo("getStat success")
