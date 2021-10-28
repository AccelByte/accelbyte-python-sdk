import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import public_reconcile_play_station_store as public_reconcile_play_station_store_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import PlayStationReconcileResult


@click.command()
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_reconcile_play_station_store(
        user_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_reconcile_play_station_store_internal.__doc__)
    result, error = public_reconcile_play_station_store_internal(
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicReconcilePlayStationStore failed: {str(error)}")
    click.echo("publicReconcilePlayStationStore success")
