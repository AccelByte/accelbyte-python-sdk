import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import test_xsolla_config_by_id as test_xsolla_config_by_id_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import TestResult


@click.command()
@click.argument("id_", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def test_xsolla_config_by_id(
        id_: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(test_xsolla_config_by_id_internal.__doc__)
    result, error = test_xsolla_config_by_id_internal(
        id_=id_,
    )
    if error:
        raise Exception(f"testXsollaConfigById failed: {str(error)}")
    click.echo("testXsollaConfigById success")
