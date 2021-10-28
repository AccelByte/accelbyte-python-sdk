import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_my_zip_code as get_my_zip_code_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import UserZipCode


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_my_zip_code(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_my_zip_code_internal.__doc__)
    result, error = get_my_zip_code_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"getMyZipCode failed: {str(error)}")
    click.echo("getMyZipCode success")
