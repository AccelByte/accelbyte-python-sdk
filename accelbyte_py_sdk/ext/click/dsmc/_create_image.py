import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import create_image as create_image_internal
from ....api.dsmc.models import ModelsCreateImageRequest
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_image(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_image_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsCreateImageRequest.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_image_internal(
        body=body,
    )
    if error:
        raise Exception(f"CreateImage failed: {str(error)}")
    click.echo("CreateImage success")
