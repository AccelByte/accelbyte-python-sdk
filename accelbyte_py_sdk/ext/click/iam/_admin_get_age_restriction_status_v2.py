import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_age_restriction_status_v2 as admin_get_age_restriction_status_v2_internal
from ....api.iam.models import ModelAgeRestrictionResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_age_restriction_status_v2(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_age_restriction_status_v2_internal.__doc__)
    result, error = admin_get_age_restriction_status_v2_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetAgeRestrictionStatusV2 failed: {str(error)}")
    click.echo("AdminGetAgeRestrictionStatusV2 success")
