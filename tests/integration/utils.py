import logging
from pathlib import Path

import yaml

from accelbyte_py_sdk.core import DotEnvFileConfigRepository

from .values import DOTENV_FILE


def format_request_response_as_yaml(data: dict) -> str:
    if "headers" in data and "Authorization" in data["headers"]:
        data["headers"]["Authorization"] = "****"

    return "\n".join(
        [
            "---",
            yaml.safe_dump(data, sort_keys=False).rstrip(),
            "...",
        ]
    )


def get_init_options() -> dict:
    options = {
        "log_files": {
            "http": {
                "capacity": 3,
                "filename": "http.log",
                "level": logging.DEBUG,
            }
        }
    }

    dotenv_file = Path(DOTENV_FILE).resolve()
    if dotenv_file.exists():
        options["config"] = DotEnvFileConfigRepository(
            dotenv_file=dotenv_file,
            set_env_var=True,
        )

    return options
