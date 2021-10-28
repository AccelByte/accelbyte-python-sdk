import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.basic import get_country_groups as get_country_groups_internal
from ....api.basic.models import ErrorEntity
from ....api.basic.models import RetrieveCountryGroupResponse
from ....api.basic.models import ValidationErrorEntity


@click.command()
@click.option("--group_code", "group_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_country_groups(
        group_code: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_country_groups_internal.__doc__)
    result, error = get_country_groups_internal(
        group_code=group_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getCountryGroups failed: {str(error)}")
    click.echo("getCountryGroups success")
