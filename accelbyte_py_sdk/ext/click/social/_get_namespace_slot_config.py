import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import get_namespace_slot_config as get_namespace_slot_config_internal
from ....api.social.models import NamespaceSlotConfigInfo


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_namespace_slot_config(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_namespace_slot_config_internal.__doc__)
    result, error = get_namespace_slot_config_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getNamespaceSlotConfig failed: {str(error)}")
    click.echo("getNamespaceSlotConfig success")
