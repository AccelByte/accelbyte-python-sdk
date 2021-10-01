import json
import yaml

import click

from accelbyte_py_sdk.api.iam import admin_update_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateV3Request

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("client_id")
@click.argument("client_update_request")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_client(
        client_id,
        client_update_request,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_client_v3.__doc__)
    client_update_request = json.loads(client_update_request)
    body = ClientmodelClientUpdateV3Request.create_from_dict(client_update_request)
    result, error = admin_update_client_v3(
        body=body,
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Update client success.")
    click.echo(yaml.safe_dump(result.to_dict()))
