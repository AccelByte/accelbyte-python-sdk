from __future__ import annotations
from typing import Any, Dict, Optional

from ._meta_classes import Singleton


class AppInfo(metaclass=Singleton):

    default_name = "AccelBytePythonApp"
    default_version = "0.0.0"

    def __init__(
            self,
            name: Optional[str] = None,
            version: Optional[str] = None,
    ):
        self._name = name or self.default_name
        self._version = version or self.default_version

    @property
    def name(self) -> str:
        return self._name

    @name.setter
    def name(self, value):
        if not isinstance(value, str):
            raise TypeError(f"'{type(value).__name}' is not valid.")
        self._name = value

    @property
    def version(self) -> str:
        return self._version

    @version.setter
    def version(self, value):
        if not isinstance(value, str):
            raise TypeError(f"'{type(value).__name}' is not valid.")
        self._version = value

    def reset(self):
        self._name = self.default_name
        self._version = self.default_version

    @staticmethod
    def create_from_options(options: Dict[str, Any]) -> AppInfo:
        instance = AppInfo(
            name=options.get("app_name", None),
            version=options.get("app_version", None)
        )
        return instance
