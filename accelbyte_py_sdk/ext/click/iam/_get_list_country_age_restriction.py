import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_list_country_age_restriction as get_list_country_age_restriction_internal
from ....api.iam.models import AccountcommonCountryAgeRestriction


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_list_country_age_restriction(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_list_country_age_restriction_internal.__doc__)
    result, error = get_list_country_age_restriction_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetListCountryAgeRestriction failed: {str(error)}")
    click.echo("GetListCountryAgeRestriction success")
