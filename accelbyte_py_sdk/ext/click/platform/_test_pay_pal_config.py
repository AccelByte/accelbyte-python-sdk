import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import test_pay_pal_config as test_pay_pal_config_internal
from ....api.platform.models import PayPalConfig
from ....api.platform.models import TestResult


@click.command()
@click.option("--body", "body", type=str)
@click.option("--sandbox", "sandbox", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def test_pay_pal_config(
        body: Optional[str] = None,
        sandbox: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(test_pay_pal_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = PayPalConfig.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = test_pay_pal_config_internal(
        body=body,
        sandbox=sandbox,
    )
    if error:
        raise Exception(f"testPayPalConfig failed: {str(error)}")
    click.echo("testPayPalConfig success")
