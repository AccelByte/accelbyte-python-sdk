from enum import Enum


# TODO: Replace placeholder when we upgrade to Python 3.10
class StrEnum(str, Enum):
    def __str__(self) -> str:
        return str.__str__(self)
