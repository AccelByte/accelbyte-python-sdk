import yaml

import click

from accelbyte_py_sdk.api.iam import admin_add_user_role_v3
from accelbyte_py_sdk.api.iam import public_create_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3

from ._utils import login_client


@click.command()
@click.argument("display_name")
@click.argument("email_address")
@click.argument("date_of_birth")
@click.argument("country")
@click.argument("password")
@click.option("--namespace")
@click.option("--role_id")
@click.option("--doc", type=bool)
def register_user(
        display_name,
        email_address,
        date_of_birth,
        country,
        password,
        namespace,
        role_id,
        doc,
):
    login_client()
    if doc:
        click.echo(public_create_user_v3.__doc__)
    result, error = public_create_user_v3(
        body=ModelUserCreateRequestV3.create(
            auth_type="EMAILPASSWD",
            country=country,
            date_of_birth=date_of_birth,
            display_name=display_name,
            email_address=email_address,
            password=password,
            password_md5_sum="",
        ),
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    if role_id:
        result, error = admin_add_user_role_v3(
            user_id=result.user_id,
            role_id=role_id,
            namespace=namespace
        )
        if error:
            raise Exception(str(error))
    click.echo("User registration success.")
    click.echo(yaml.safe_dump(result.to_dict()))
