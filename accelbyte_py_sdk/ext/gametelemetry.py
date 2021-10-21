from .utils import randomize

from ..api.gametelemetry.models import HTTPValidationError
from ..api.gametelemetry.models import TelemetryBody
from ..api.gametelemetry.models import ValidationError


def create_http_validation_error_example() -> HTTPValidationError:
    instance = HTTPValidationError()
    instance.detail = [create_validation_error_example()]
    return instance


def create_telemetry_body_example() -> TelemetryBody:
    instance = TelemetryBody()
    instance.event_id = randomize()
    instance.event_name = randomize()
    instance.event_namespace = randomize("slug")
    instance.event_timestamp = randomize("date")
    instance.payload = {randomize(): randomize()}
    return instance


def create_validation_error_example() -> ValidationError:
    instance = ValidationError()
    instance.loc = [randomize()]
    instance.msg = randomize()
    instance.type_ = randomize()
    return instance
