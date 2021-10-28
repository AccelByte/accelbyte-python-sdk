import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_xbl_ap_config as delete_xbl_ap_config_internal


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_xbl_ap_config(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_xbl_ap_config_internal.__doc__)
    result, error = delete_xbl_ap_config_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteXblAPConfig failed: {str(error)}")
    click.echo("deleteXblAPConfig success")
