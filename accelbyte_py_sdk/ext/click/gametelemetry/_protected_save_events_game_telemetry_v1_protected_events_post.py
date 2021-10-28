import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.gametelemetry import protected_save_events_game_telemetry_v1_protected_events_post as protected_save_events_game_telemetry_v1_protected_events_post_internal
from ....api.gametelemetry.models import HTTPValidationError
from ....api.gametelemetry.models import TelemetryBody


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def protected_save_events_game_telemetry_v1_protected_events_post(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(protected_save_events_game_telemetry_v1_protected_events_post_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = [TelemetryBody.create_from_dict(i0) for i0 in body_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = protected_save_events_game_telemetry_v1_protected_events_post_internal(
        body=body,
    )
    if error:
        raise Exception(f"protected_save_events_game_telemetry_v1_protected_events_post failed: {str(error)}")
    click.echo("protected_save_events_game_telemetry_v1_protected_events_post success")
