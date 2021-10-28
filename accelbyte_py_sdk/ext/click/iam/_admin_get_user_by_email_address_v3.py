import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_user_by_email_address_v3 as admin_get_user_by_email_address_v3_internal
from ....api.iam.models import ModelUserResponseV3
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--email_address", "email_address", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_user_by_email_address_v3(
        email_address: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_user_by_email_address_v3_internal.__doc__)
    result, error = admin_get_user_by_email_address_v3_internal(
        email_address=email_address,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetUserByEmailAddressV3 failed: {str(error)}")
    click.echo("AdminGetUserByEmailAddressV3 success")
