import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_list_country_age_restriction_v3 as admin_get_list_country_age_restriction_v3_internal
from ....api.iam.models import ModelCountryV3Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_list_country_age_restriction_v3(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_list_country_age_restriction_v3_internal.__doc__)
    result, error = admin_get_list_country_age_restriction_v3_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetListCountryAgeRestrictionV3 failed: {str(error)}")
    click.echo("AdminGetListCountryAgeRestrictionV3 success")
