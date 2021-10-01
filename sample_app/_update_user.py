import yaml

import click

from accelbyte_py_sdk.api.iam import admin_update_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("user_id")
@click.option("--country")
@click.option("--date_of_birth")
@click.option("--display_name")
@click.option("--language_tag")
@click.option("--user_name")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user(
        user_id,
        country,
        date_of_birth,
        display_name,
        language_tag,
        user_name,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_update_user_v3.__doc__)
    result, error = admin_update_user_v3(
        body=ModelUserUpdateRequestV3.create(
            country=country,
            date_of_birth=date_of_birth,
            display_name=display_name,
            language_tag=language_tag,
            user_name=user_name,
        ),
        user_id=user_id,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Update user success.")
    click.echo(yaml.safe_dump(result.to_dict()))
