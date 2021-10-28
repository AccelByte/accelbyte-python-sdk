import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_bans_type as get_bans_type_internal
from ....api.iam.models import AccountcommonBans


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_bans_type(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_bans_type_internal.__doc__)
    result, error = get_bans_type_internal(
    )
    if error:
        raise Exception(f"GetBansType failed: {str(error)}")
    click.echo("GetBansType success")
