from typing import Optional

from tests.integration.test_case import IntegrationTestCase

import accelbyte_py_sdk.api.reporting as reporting_service
import accelbyte_py_sdk.api.reporting.models as reporting_models
from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.core import SDK
from accelbyte_py_sdk.core import generate_id


class ReportingTestCase(IntegrationTestCase):
    sdk: Optional[AccelByteSDK] = None
    reason_id: Optional[str] = None
    user_id: Optional[str] = None

    # noinspection PyMethodMayBeStatic
    def do_create_reason(self, title: str):
        result, error = reporting_service.create_reason(
            body=reporting_models.RestapiCreateReasonRequest.create(
                description=title,
                group_ids=[],
                title=title,
            ),
        )

        reason_id: Optional[str] = None

        if error is None:
            reason_id = result.id_

        return result, error, reason_id

    def tearDown(self) -> None:
        if self.reason_id is not None:
            _, error = reporting_service.delete_reason(
                reason_id=self.reason_id,
            )
            self.log_warning(
                msg=f"Failed to tear down reason. {str(error)}",
                condition=error is not None,
            )
            self.reason_id = None

        if self.user_id:
            self.delete_user(user_id=self.user_id)
            self.user_id = None

        if self.sdk:
            self.sdk.reset()
            self.sdk = None

        super().tearDown()

    def test_create_reason(self):
        # arrange
        reason_title = generate_id(64)

        # act
        result, error, reason_id = self.do_create_reason(title=reason_title)
        if not error:
            self.reason_id = reason_id

        # assert
        self.assertIsNone(error)

    def test_delete_reason(self):
        # arrange
        reason_title = generate_id(64)
        result, error, reason_id = self.do_create_reason(title=reason_title)
        if error:
            self.skipTest(reason=f"Failed to setup reason. {str(error)}")
        else:
            self.reason_id = reason_id

        # act
        _, error = reporting_service.delete_reason(
            reason_id=self.reason_id,
        )

        # assert
        self.assertIsNone(error)
        self.reason_id = None

    def test_submit_report(self):
        logs = []

        # arrange
        (
            generate_user_result,
            error,
        ) = (
            self.generate_user()
        )  # create user to avoid '[84202] user max report reached'
        if error:
            self.skipTest(reason=f"unable to create user: {error}")

        username, password, user_id = generate_user_result
        self.user_id = user_id

        logs.append(f"created user with id: '{user_id}'")

        user_sdk, error = self.create_user_sdk(
            username=username,
            password=password,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user sdk: {error}")
        else:
            self.sdk = user_sdk

        logs.append(f"created user sdk and logged in")

        reason_title = generate_id(64)
        result, error, reason_id = self.do_create_reason(title=reason_title)
        if error:
            self.skipTest(reason=f"Failed to setup reason. {str(error)}")
        else:
            self.reason_id = reason_id

        logs.append(
            f"created reason with id: '{reason_id}' and title: '{reason_title}'"
        )

        logs.append(f"get reasons (public)")

        result, error = reporting_service.public_get_reasons()
        self.assertIsNone(error, error)
        self.assertIsInstance(result, reporting_models.RestapiPublicReasonListResponse)
        self.assertIn(reason_title, [d.title for d in result.data])

        logs.append(
            "- "
            + "\n- ".join(
                f"{d.title} <<< exists!" if d.title == reason_title else d.title
                for d in result.data
            )
        )

        logs.append(
            f"submitting report with reason title: '{reason_title}' with user '{user_id}'"
        )

        # act
        _, error = reporting_service.submit_report(
            body=reporting_models.RestapiSubmitReportRequest.create(
                category=reporting_models.RestapiSubmitReportRequestCategoryEnum.UGC,
                reason=reason_title,
                user_id=user_id,
                object_id=generate_id(64),
                object_type=generate_id(32),
            ),
            sdk=user_sdk,
        )
        if error:
            if isinstance(error, reporting_models.RestapiErrorResponse):
                if error.error_code == 84101:  # reason not found
                    logs.insert(
                        0,
                        f"skipping test due to weird server behavior: {error.error_message}",
                    )
                    self.skipTest(reason="\n".join(logs))

        # assert
        self.assertIsNone(error, error)
