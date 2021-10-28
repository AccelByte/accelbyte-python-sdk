import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import delete_country_group as delete_country_group_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.argument("country_group_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_country_group(
        country_group_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_country_group_internal.__doc__)
    result, error = delete_country_group_internal(
        country_group_code=country_group_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteCountryGroup failed: {str(error)}")
    click.echo("deleteCountryGroup success")
