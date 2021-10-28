import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import create_client_by_namespace as create_client_by_namespace_internal
from ....api.iam.models import ClientmodelClientCreateRequest
from ....api.iam.models import ClientmodelClientCreationResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_client_by_namespace(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_client_by_namespace_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ClientmodelClientCreateRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_client_by_namespace_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"CreateClientByNamespace failed: {str(error)}")
    click.echo("CreateClientByNamespace success")
