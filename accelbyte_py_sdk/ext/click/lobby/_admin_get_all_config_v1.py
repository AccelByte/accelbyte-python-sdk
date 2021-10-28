import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_all_config_v1 as admin_get_all_config_v1_internal
from ....api.lobby.models import ModelsConfigList
from ....api.lobby.models import RestapiErrorResponseBody


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_all_config_v1(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_all_config_v1_internal.__doc__)
    result, error = admin_get_all_config_v1_internal(
    )
    if error:
        raise Exception(f"adminGetAllConfigV1 failed: {str(error)}")
    click.echo("adminGetAllConfigV1 success")
