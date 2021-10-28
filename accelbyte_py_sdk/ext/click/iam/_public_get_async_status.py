import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import public_get_async_status as public_get_async_status_internal
from ....api.iam.models import ModelLinkRequest
from ....api.iam.models import RestErrorResponse


@click.command()
@click.argument("request_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_get_async_status(
        request_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_get_async_status_internal.__doc__)
    result, error = public_get_async_status_internal(
        request_id=request_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"PublicGetAsyncStatus failed: {str(error)}")
    click.echo("PublicGetAsyncStatus success")
