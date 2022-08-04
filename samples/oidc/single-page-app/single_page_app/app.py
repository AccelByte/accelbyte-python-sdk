from __future__ import annotations

import json
import logging
import os
import urllib.parse
from typing import Any, Dict, Optional

import requests

from flask import Flask, jsonify, render_template, redirect, request, url_for
from flask_login import (
    LoginManager,
    UserMixin,
    login_user,
    logout_user,
)

import accelbyte_py_sdk as ab
import accelbyte_py_sdk.core as ab_core
import accelbyte_py_sdk.services.auth as auth_service


class User(UserMixin):

    DB: Dict[str, User] = {}

    def __init__(self, id_: str) -> None:
        self.id = id_

    @staticmethod
    def get(user_id: str) -> Optional[User]:
        return User.DB.get(user_id)

    @staticmethod
    def create(id_: str) -> User:
        user = User(id_=id_)
        User.DB[id_] = user
        return user


app = Flask(__name__)

logger = logging.getLogger("SinglePageApp")

login_manager = LoginManager()
login_manager.init_app(app)


@login_manager.user_loader
def load_user(user_id: str) -> Optional[User]:
    return User.get(user_id=user_id)


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/login")
def login():
    query_params = {
        "client_id": os.environ["OIDC_CLIENT_ID"],
        "redirect_uri": os.environ["APP_REDIRECT_ENDPOINT"].format(
            base_url=request.url_root.removesuffix("/")
        ),
        "response_type": "code",
        "scope": "openid",
    }

    if app.config.get("WITH_PKCE", False):
        pkce = ab_core.create_pkce_verifier_and_challenge_s256()
        (
            _,
            code_challenge,
            code_challenge_method,
        ) = pkce
        query_params["code_challenge"] = code_challenge
        query_params["code_challenge_method"] = code_challenge_method
        app.config.update(pkce=pkce)
        logger.info(pkce)

    location = os.environ["OIDC_AUTHORIZE_ENDPOINT"].format(
        base_url=os.environ["OIDC_BASE_URL"].removesuffix("/"),
        query_params=urllib.parse.urlencode(
            query=query_params,
        ),
    )

    return redirect(location=location)


@app.route("/login/callback")
def login_callback():
    authorization_code = request.args["code"]

    form_data = {
        "redirect_uri": os.environ["APP_REDIRECT_ENDPOINT"].format(
            base_url=request.url_root.removesuffix("/")
        ),
        "client_id": os.environ["OIDC_CLIENT_ID"],
        "client_secret": os.environ["OIDC_CLIENT_SECRET"],
        "grant_type": "authorization_code",
        "code": authorization_code,
    }

    if app.config.get("WITH_PKCE", False):
        (
            code_verifier,
            _,
            _,
        ) = app.config["pkce"]
        form_data["code_verifier"] = code_verifier
        app.config.update(pkce=None)

    response = requests.post(
        url=os.environ["OIDC_TOKEN_ENDPOINT"].format(
            base_url=os.environ["OIDC_BASE_URL"].removesuffix("/"),
        ),
        data=form_data,
    )

    response.raise_for_status()

    oidc_token = response.json()

    logger.info(json.dumps(oidc_token, indent=2))

    id_token = oidc_token["id_token"]

    ab_token, error = auth_service.login_platform(
        platform_id=os.environ["AB_PLATFORM_ID"], platform_token=id_token
    )
    if error is not None:
        error_value = error.to_dict() if hasattr(error, "to_dict") else str(error)
        return jsonify(error=error_value), 404

    ab_token = ab_token.to_dict()

    logger.info(json.dumps(ab_token, indent=2))

    ab_user_id = ab_token["user_id"]

    user = User.get(ab_user_id)
    if not user:
        user = User.create(ab_user_id)

    login_user(user)

    return redirect(location=url_for("home"))


@app.route("/logout")
def logout():
    logout_user()
    return redirect(location=url_for("home"))


def parse_args() -> Dict[str, Any]:
    from argparse import ArgumentParser

    parser = ArgumentParser()

    parser.add_argument(
        "-u",  # should have been '-h'/'--host' but '-h'/'--help' is already taken
        "--url",
        default="localhost",
        type=str,
        required=False,
    )

    parser.add_argument("-p", "--port", default=8080, type=int, required=False)

    parser.add_argument(
        "-d",
        "--debug",
        action="store_true",
        required=False,
    )

    parser.add_argument(
        "-e",
        "--env",
        type=str,
        required=True,
    )

    parser.add_argument(
        "--secret_key",
        default="MyNotSoSecretKey",
        type=str,
        required=False,
    )

    parser.add_argument(
        "--with_pkce",
        action="store_true",
        required=False,
    )

    result = vars(parser.parse_args())

    result["host"] = result.pop("url")

    return result


def run(
    *,
    host: str,
    port: int,
    debug: bool,
    env: str,
    secret_key: str,
    with_pkce: bool,
    **kwargs,
) -> None:
    if debug:
        logger.setLevel(logging.DEBUG)
        logger.addHandler(logging.StreamHandler())

    app.config.update(
        {
            "SECRET_KEY": secret_key,
            "WITH_PKCE": with_pkce,
        }
    )

    ab.initialize(
        options={
            "config": "DotEnvFileConfigRepository",                            # Loads config repository values from the argument 'dotenv_file'.
            "config_params": ([], {"dotenv_file": env, "set_env_var": True}),  # Setting 'set_env_var' to 'True' will also set the values found
        }                                                                      #   in the 'dotenv_file' as environment variables. (os.environ)
    )

    app.run(host=host, port=port, debug=debug)


if __name__ == "__main__":
    run(**parse_args())
