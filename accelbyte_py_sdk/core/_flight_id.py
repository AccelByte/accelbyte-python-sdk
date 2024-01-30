from typing import Optional, Tuple
from uuid import uuid4

from ._http_response import HttpResponse
from ._operation import Operation
from ._proto_http_request import ProtoHttpRequest


class FlightIdPreprocessor:
    def __init__(self, flight_id: Optional[str] = None):
        self.flight_id = flight_id or str(uuid4())

    def __call__(
        self,
        proto: ProtoHttpRequest,
        operation: Operation,
        sdk: "AccelByteSDK",
        *args,
        **kwargs
    ) -> Tuple[ProtoHttpRequest, Optional[HttpResponse]]:
        if not proto.headers.has_flight_id():
            flight_id = self.get_flight_id(operation=operation, sdk=sdk, **kwargs)
            proto.headers.add_flight_id(flight_id)
        return proto, None

    def get_flight_id(self, operation: Operation, sdk: "AccelByteSDK", **kwargs) -> str:
        kwargs_flight_id = kwargs.get("x_flight_id", None)
        if kwargs_flight_id and isinstance(kwargs_flight_id, str):
            return kwargs_flight_id

        if operation.x_flight_id:
            return operation.x_flight_id

        sdk_flight_id = sdk.get_flight_id()
        if sdk_flight_id and isinstance(sdk_flight_id, str):
            return sdk_flight_id

        return self.flight_id


FLIGHT_ID_PREPROCESSOR = FlightIdPreprocessor()


def add_flight_id(
    proto: ProtoHttpRequest, operation: Operation, sdk: "AccelByteSDK", *args, **kwargs
) -> Tuple[ProtoHttpRequest, Optional[HttpResponse]]:
    return FLIGHT_ID_PREPROCESSOR(
        proto=proto, operation=operation, sdk=sdk, *args, **kwargs
    )


def get_default_flight_id() -> str:
    return FLIGHT_ID_PREPROCESSOR.flight_id


def set_default_flight_id(flight_id: str) -> None:
    FLIGHT_ID_PREPROCESSOR.flight_id = flight_id


def update_default_flight_id(flight_id: str) -> None:
    set_default_flight_id(flight_id=flight_id)


__all__ = [
    "add_flight_id",
    "get_default_flight_id",
    "set_default_flight_id",
    "update_default_flight_id",
]
