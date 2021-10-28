import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import get_image_detail as get_image_detail_internal
from ....api.dsmc.models import ModelsGetImageDetailResponse
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("version", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_image_detail(
        version: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_image_detail_internal.__doc__)
    result, error = get_image_detail_internal(
        version=version,
        namespace=namespace,
    )
    if error:
        raise Exception(f"GetImageDetail failed: {str(error)}")
    click.echo("GetImageDetail success")
