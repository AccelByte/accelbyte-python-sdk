import json

import click

from accelbyte_py_sdk.api.iam import admin_get_bulk_user_by_email_address_v3
from accelbyte_py_sdk.api.iam.models import ModelListEmailAddressRequest

from ._utils import login_client


@click.command()
@click.argument("body")
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_users_by_email_addresses(
        body,
        namespace,
        doc,
):
    login_client()
    if doc:
        click.echo(admin_get_bulk_user_by_email_address_v3.__doc__)
    body = json.loads(body)
    body = ModelListEmailAddressRequest.create_from_dict(body)
    result, error = admin_get_bulk_user_by_email_address_v3(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get users by email addresses success.")
