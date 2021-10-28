import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import update_client_secret as update_client_secret_internal
from ....api.iam.models import ClientmodelClientUpdateSecretRequest


@click.command()
@click.argument("body", type=str)
@click.argument("client_id", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_client_secret(
        body: str,
        client_id: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_client_secret_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ClientmodelClientUpdateSecretRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_client_secret_internal(
        body=body,
        client_id=client_id,
    )
    if error:
        raise Exception(f"UpdateClientSecret failed: {str(error)}")
    click.echo("UpdateClientSecret success")
