import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import test_xsolla_config as test_xsolla_config_internal
from ....api.platform.models import TestResult
from ....api.platform.models import XsollaConfig


@click.command()
@click.option("--body", "body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def test_xsolla_config(
        body: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(test_xsolla_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = XsollaConfig.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = test_xsolla_config_internal(
        body=body,
    )
    if error:
        raise Exception(f"testXsollaConfig failed: {str(error)}")
    click.echo("testXsollaConfig success")
