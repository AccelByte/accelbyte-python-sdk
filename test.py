import logging
from argparse import ArgumentParser
from pathlib import Path
from typing import Optional


def set_logger_level(level):
    from accelbyte_py_sdk import __name__ as module_name
    logging.basicConfig()
    logging.getLogger(module_name).setLevel(level)


def parse_args():
    def file_path(value: str) -> Optional[str]:
        path = Path(value).resolve()
        path_str = str(path)
        if not path.exists():
            logging.warning(f"FileNotFound: {path_str}")
            path_str = None
        return path_str

    def str_to_bool(value: str) -> bool:
        return value.lower() in ["1", "t", "true", "y", "yes"]

    parser = ArgumentParser()

    parser.add_argument("--test_core", default=True, type=str_to_bool, required=False)
    parser.add_argument("--test_integration", default=False, type=str_to_bool, required=False)
    parser.add_argument("--test_all", action="store_true", default=False, required=False)

    parser.add_argument("--dotenv_file", default="tests/sample_apps/how_to.env", type=file_path, required=False)
    parser.add_argument("--use_dotenv", action="store_true", default=False, required=False)

    result = vars(parser.parse_args())

    if result["test_all"]:
        for k, v in result.items():
            if not k.startswith("test_"):
                continue
            result[k] = True
    del result["test_all"]

    return result


def main(*args, **kwargs) -> None:
    import unittest

    loader = unittest.TestLoader()

    try:
        import tap
        runner = tap.TAPTestRunner()
        runner.set_stream(True)
    except ImportError as e:
        runner = unittest.TextTestRunner()

    results = {
        "test_core": True,
        "test_integration": True
    }

    if kwargs.get("test_core", False):
        import tests.core
        results_core = runner.run(loader.loadTestsFromModule(tests.core))
        results["test_core"] = results_core.wasSuccessful()

    if kwargs.get("test_integration", False):
        import tests.sample_apps.how_to
        dotenv_file = kwargs.get("dotenv_file", None)
        use_dotenv = kwargs.get("use_dotenv", False)
        if dotenv_file and use_dotenv:
            tests.sample_apps.how_to.DOTENV_FILE = dotenv_file
        results_integration = runner.run(loader.loadTestsFromModule(tests.sample_apps.how_to))
        results["test_integration"] = results_integration.wasSuccessful()

    exit(0 if all(results.values()) else 1)


if __name__ == "__main__":
    main(**parse_args())
