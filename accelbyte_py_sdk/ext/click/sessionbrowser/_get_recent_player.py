import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.sessionbrowser import get_recent_player as get_recent_player_internal
from ....api.sessionbrowser.models import ModelsRecentPlayerQueryResponse
from ....api.sessionbrowser.models import ResponseError


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_recent_player(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_recent_player_internal.__doc__)
    result, error = get_recent_player_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetRecentPlayer failed: {str(error)}")
    click.echo("GetRecentPlayer success")
