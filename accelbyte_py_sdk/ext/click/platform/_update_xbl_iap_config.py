import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_xbl_iap_config as update_xbl_iap_config_internal
from ....api.platform.models import XblIAPConfigInfo
from ....api.platform.models import XblIAPConfigRequest


@click.command()
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_xbl_iap_config(
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_xbl_iap_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = XblIAPConfigRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_xbl_iap_config_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateXblIAPConfig failed: {str(error)}")
    click.echo("updateXblIAPConfig success")
