import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.dsmc import update_image as update_image_internal
from ....api.dsmc.models import ModelsImageRecordUpdate
from ....api.dsmc.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_image(
        body: str,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_image_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsImageRecordUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_image_internal(
        body=body,
    )
    if error:
        raise Exception(f"UpdateImage failed: {str(error)}")
    click.echo("UpdateImage success")
