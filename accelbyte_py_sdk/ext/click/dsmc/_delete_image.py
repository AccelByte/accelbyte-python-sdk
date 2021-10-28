import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import delete_image as delete_image_internal
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("image_uri", type=str)
@click.argument("version", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_image(
        image_uri: str,
        version: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_image_internal.__doc__)
    result, error = delete_image_internal(
        image_uri=image_uri,
        version=version,
        namespace=namespace,
    )
    if error:
        raise Exception(f"DeleteImage failed: {str(error)}")
    click.echo("DeleteImage success")
