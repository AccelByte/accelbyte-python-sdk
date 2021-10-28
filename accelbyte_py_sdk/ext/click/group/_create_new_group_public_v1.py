import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import create_new_group_public_v1 as create_new_group_public_v1_internal
from ....api.group.models import ModelsGroupResponseV1
from ....api.group.models import ModelsPublicCreateNewGroupRequestV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_new_group_public_v1(
        body: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_new_group_public_v1_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = ModelsPublicCreateNewGroupRequestV1.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_new_group_public_v1_internal(
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createNewGroupPublicV1 failed: {str(error)}")
    click.echo("createNewGroupPublicV1 success")
