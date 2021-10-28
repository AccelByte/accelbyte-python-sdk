import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_epic_games_iap_config as update_epic_games_iap_config_internal
from ....api.platform.models import EpicGamesIAPConfigInfo
from ....api.platform.models import EpicGamesIAPConfigRequest


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_epic_games_iap_config(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_epic_games_iap_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = EpicGamesIAPConfigRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_epic_games_iap_config_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateEpicGamesIAPConfig failed: {str(error)}")
    click.echo("updateEpicGamesIAPConfig success")
