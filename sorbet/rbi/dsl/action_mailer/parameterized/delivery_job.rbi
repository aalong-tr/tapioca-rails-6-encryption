# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActionMailer::Parameterized::DeliveryJob`.
# Please instead update this file by running `bin/tapioca dsl ActionMailer::Parameterized::DeliveryJob`.


class ActionMailer::Parameterized::DeliveryJob
  class << self
    sig do
      params(
        mailer: T.untyped,
        mail_method: T.untyped,
        delivery_method: T.untyped,
        params: T.untyped,
        args: T.untyped,
        _arg5: T.untyped
      ).returns(T.any(ActionMailer::Parameterized::DeliveryJob, FalseClass))
    end
    def perform_later(mailer, mail_method, delivery_method, params, *args, **_arg5); end

    sig do
      params(
        mailer: T.untyped,
        mail_method: T.untyped,
        delivery_method: T.untyped,
        params: T.untyped,
        args: T.untyped,
        _arg5: T.untyped
      ).returns(T.untyped)
    end
    def perform_now(mailer, mail_method, delivery_method, params, *args, **_arg5); end
  end
end
