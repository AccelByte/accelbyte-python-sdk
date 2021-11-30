import json

import click

from accelbyte_py_sdk.api.iam import admin_create_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientCreationV3Request

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("client_create_request")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_client(
        client_create_request,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_create_client_v3.__doc__)
    client_create_request = json.loads(client_create_request)
    body = ClientmodelClientCreationV3Request.create_from_dict(client_create_request)
    result, error = admin_create_client_v3(
        body=body,
        namespace=namespace
    )
    if error:
        raise Exception(str(error))
    click.echo("Create client success.")
