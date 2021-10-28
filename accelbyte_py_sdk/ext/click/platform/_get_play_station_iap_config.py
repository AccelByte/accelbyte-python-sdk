import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_play_station_iap_config as get_play_station_iap_config_internal
from ....api.platform.models import PlayStationIAPConfigInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_play_station_iap_config(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_play_station_iap_config_internal.__doc__)
    result, error = get_play_station_iap_config_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getPlayStationIAPConfig failed: {str(error)}")
    click.echo("getPlayStationIAPConfig success")
