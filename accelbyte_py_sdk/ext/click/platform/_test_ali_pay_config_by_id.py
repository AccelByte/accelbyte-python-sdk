import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import test_ali_pay_config_by_id as test_ali_pay_config_by_id_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import TestResult


@click.command()
@click.argument("id_", type=str)
@click.option("--sandbox", "sandbox", type=bool)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def test_ali_pay_config_by_id(
        id_: str,
        sandbox: Optional[bool] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(test_ali_pay_config_by_id_internal.__doc__)
    result, error = test_ali_pay_config_by_id_internal(
        id_=id_,
        sandbox=sandbox,
    )
    if error:
        raise Exception(f"testAliPayConfigById failed: {str(error)}")
    click.echo("testAliPayConfigById success")
