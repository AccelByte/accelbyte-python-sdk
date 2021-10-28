import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_clients_by_namespace_v3 as admin_get_clients_by_namespace_v3_internal
from ....api.iam.models import ClientmodelClientsV3Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--after", "after", type=str)
@click.option("--before", "before", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_clients_by_namespace_v3(
        limit: Optional[int] = None,
        after: Optional[str] = None,
        before: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_clients_by_namespace_v3_internal.__doc__)
    result, error = admin_get_clients_by_namespace_v3_internal(
        limit=limit,
        after=after,
        before=before,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetClientsByNamespaceV3 failed: {str(error)}")
    click.echo("AdminGetClientsByNamespaceV3 success")
