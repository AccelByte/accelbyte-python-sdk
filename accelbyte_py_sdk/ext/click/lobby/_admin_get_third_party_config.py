import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.lobby import admin_get_third_party_config as admin_get_third_party_config_internal
from ....api.lobby.models import ModelsGetConfigResponse
from ....api.lobby.models import RestapiErrorResponseV1


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_third_party_config(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_third_party_config_internal.__doc__)
    result, error = admin_get_third_party_config_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"adminGetThirdPartyConfig failed: {str(error)}")
    click.echo("adminGetThirdPartyConfig success")
