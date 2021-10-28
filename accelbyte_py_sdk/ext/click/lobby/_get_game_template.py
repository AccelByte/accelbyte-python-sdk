import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import get_game_template as get_game_template_internal
from ....api.lobby.models import ModelTemplateResponse
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_game_template(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_game_template_internal.__doc__)
    result, error = get_game_template_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getGameTemplate failed: {str(error)}")
    click.echo("getGameTemplate success")
