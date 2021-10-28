import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import create_codes as create_codes_internal
from ....api.platform.models import CodeCreate
from ....api.platform.models import CodeCreateResult
from ....api.platform.models import ErrorEntity
from ....api.platform.models import ValidationErrorEntity


@click.command()
@click.argument("campaign_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def create_codes(
        campaign_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(create_codes_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = CodeCreate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = create_codes_internal(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"createCodes failed: {str(error)}")
    click.echo("createCodes success")
