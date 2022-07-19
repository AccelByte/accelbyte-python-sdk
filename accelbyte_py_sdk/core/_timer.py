from __future__ import annotations

from threading import RLock
from threading import Timer as ThreadingTimer
from typing import Any, Callable, List, Optional, Union

from ._strenum import StrEnum


class TimerStatus(StrEnum):
    IDLE = "IDLE"
    RUNNING = "RUNNING"
    CANCELLED = "CANCELLED"
    FINISHED = "FINISHED"


class Timer:
    """Call a function repeatedly after a specified number of seconds:

        # name: t.name = "Foo"
        # daemon: t.daemon = True|False
        # repeats: <0: repeat 'inf' times
                   0|None: repeat 0 times
                   >0: repeat n times
        t = Timer(30.0, f, args=None, kwargs=None, name="Foo", daemon=False, repeats=10)
        t.start()
        t.cancel()     # stop the timer's action if it's still waiting

    # Uses 'threading.Timer' internally.
    """

    def __init__(
        self,
        interval: Union[int, float],
        function: Callable,
        /,
        *,
        args=None,
        kwargs=None,
        name: Optional[str] = None,
        daemon: bool = False,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = False,
    ) -> None:
        self._interval = interval
        self._function = function
        self._args = args if args is not None else []
        self._kwargs = kwargs if kwargs is not None else {}

        self._name: Optional[str] = name
        self._daemon: bool = daemon
        self._repeats: Optional[int] = repeats
        self._autostart: bool = autostart
        self._repeat_on_exception: bool = repeat_on_exception

        self._lock: RLock = RLock()
        self._timer: Optional[ThreadingTimer] = None

        self._counter: int = 0
        self.__status: TimerStatus = TimerStatus.IDLE

        self._exception: Optional[Exception] = None
        self._result: Any = None

        self._exceptions: List[Exception] = []
        self._results: List[Any] = []

        if self._autostart:
            self.start()

    # noinspection PyProtectedMember, PyUnresolvedReferences
    def __repr__(self) -> str:
        class_name = "?"
        status = "idle"
        if self._repeats is None or self._repeats == 0:
            repeats = "1"
        elif self._repeats < 0:
            repeats = "inf"
        else:
            repeats = str(self._repeats + 1)
        if self._timer is not None:
            class_name = self._timer.__class__.__name__
            status = "initial"
            if self._timer._started.is_set():
                status = "started"
            self._timer.is_alive()
            if self._timer._is_stopped:
                status = "stopped"
            if self._timer._daemonic:
                status += " daemon"
            if self._timer._ident is not None:
                status += f" {self._timer._ident}"
        return "<{class_container_name}:{class_name}({name}, {status})>[{counter}/{repeats}]".format(
            class_container_name=self.__class__.__name__,
            class_name=class_name,
            name=self.name,
            status=status,
            counter=self._counter,
            repeats=repeats,
        )

    @property
    def exception(self) -> Optional[Exception]:
        return self._exception

    @property
    def exceptions(self) -> List[Exception]:
        return self._exceptions

    # noinspection PyProtectedMember, PyUnresolvedReferences
    @property
    def name(self) -> str:
        if self._timer is not None:
            return self._timer._name
        else:
            default_name = "?"
            if self._name is not None:
                return "{}:{}".format(self._name, default_name)
            else:
                return default_name

    @property
    def result(self) -> Any:
        return self._result

    @property
    def results(self) -> List[Any]:
        return self._results

    @property
    def status(self) -> TimerStatus:
        return self._status

    @property
    def _status(self) -> TimerStatus:
        with self._lock:
            return self.__status

    @_status.setter
    def _status(self, s: TimerStatus) -> None:
        with self._lock:
            self.__status = s

    def start(self, *args, **kwargs) -> Timer:
        self.reset()

        self._timer = self._create_timer(*args, **kwargs)
        self._timer.start()
        self._status = TimerStatus.RUNNING

        return self

    def cancel(self) -> Timer:
        if self._timer is not None:
            self._timer.cancel()
            self._status = TimerStatus.CANCELLED

        return self

    def reset(self) -> Timer:
        self._status = TimerStatus.IDLE

        self._result = None
        self._exception = None

        self._results = []
        self._exceptions = []

        return self

    def clone(self, **kwargs) -> Timer:
        interval = kwargs.pop("interval", self._interval)

        kw = {
            "args": self._args,
            "kwargs": self._kwargs,
            "name": self._name,
            "daemon": self._daemon,
            "repeats": self._repeats,
            "autostart": self._autostart,
            "repeat_on_exception": self._repeat_on_exception,
        }

        for k, v in kwargs.items():
            if k not in kw:
                raise KeyError(k)
            kw[k] = v

        return Timer(interval, self._function, **kw)

    def _create_timer(self, *args, **kwargs) -> ThreadingTimer:
        timer = ThreadingTimer(
            self._interval, self._execute_function, args=args, kwargs=kwargs
        )

        if self._name is not None:
            timer.name = "{}:{}".format(self._name, timer.name)

        timer.daemon = self._daemon

        return timer

    def _execute_function(self, *args, **kwargs) -> None:
        self._counter += 1

        fargs = []
        fargs.extend(self._args)
        fargs.extend(args)

        fkwargs = {}
        fkwargs.update(self._kwargs)
        fkwargs.update(kwargs)

        has_exception = False
        try:
            result = self._function(*fargs, **fkwargs)
            self._result = result
            self._results.append(result)
        except Exception as exception:
            has_exception = True
            self._exception = exception
            self._exceptions.append(exception)

        if self._should_repeat(has_exception=has_exception):
            self.start()
        else:
            self._status = TimerStatus.FINISHED

    def _should_repeat(self, has_exception: bool) -> bool:
        if self._status == TimerStatus.CANCELLED:
            return False
        if has_exception and not self._repeat_on_exception:
            return False
        if self._repeats is None or self._repeats == 0:
            return False
        if self._repeats < 0:
            return True
        return self._counter <= self._repeats
