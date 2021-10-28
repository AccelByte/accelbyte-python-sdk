import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import admin_get_clientsby_namespaceby_idv3 as admin_get_clientsby_namespaceby_idv3_internal
from ....api.iam.models import ClientmodelClientV3Response
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("client_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def admin_get_clientsby_namespaceby_idv3(
        client_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_get_clientsby_namespaceby_idv3_internal.__doc__)
    result, error = admin_get_clientsby_namespaceby_idv3_internal(
        client_id=client_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"AdminGetClientsbyNamespacebyIDV3 failed: {str(error)}")
    click.echo("AdminGetClientsbyNamespacebyIDV3 success")
