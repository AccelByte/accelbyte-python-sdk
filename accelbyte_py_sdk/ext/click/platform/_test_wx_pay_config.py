import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import test_wx_pay_config as test_wx_pay_config_internal
from ....api.platform.models import TestResult
from ....api.platform.models import WxPayConfigRequest


@click.command()
@click.option("--body", "body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def test_wx_pay_config(
        body: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(test_wx_pay_config_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = WxPayConfigRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = test_wx_pay_config_internal(
        body=body,
    )
    if error:
        raise Exception(f"testWxPayConfig failed: {str(error)}")
    click.echo("testWxPayConfig success")
