# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `turbolinks` gem.
# Please instead update this file by running `bin/tapioca gem turbolinks`.


# source://turbolinks//lib/turbolinks/version.rb#1
module Turbolinks; end

# source://turbolinks//lib/turbolinks/assertions.rb#2
module Turbolinks::Assertions
  # source://turbolinks//lib/turbolinks/assertions.rb#5
  def assert_redirected_to(options = T.unsafe(nil), message = T.unsafe(nil)); end

  # source://turbolinks//lib/turbolinks/assertions.rb#13
  def assert_turbolinks_visited(options = T.unsafe(nil), message = T.unsafe(nil)); end

  # Rough heuristic to detect whether this was a Turbolinks request:
  # non-GET request with a text/javascript response.
  #
  # Technically we'd check that Turbolinks-Referrer request header is
  # also set, but that'd require us to pass the header from post/patch/etc
  # test methods by overriding them to provide a `turbolinks:` option.
  #
  # We can't check `request.xhr?` here, either, since the X-Requested-With
  # header is cleared after controller action processing to prevent it
  # from leaking into subsequent requests.
  #
  # @return [Boolean]
  #
  # source://turbolinks//lib/turbolinks/assertions.rb#36
  def turbolinks_request?; end

  # source://turbolinks//lib/turbolinks/assertions.rb#40
  def turbolinks_visit_location_and_action; end
end

# source://turbolinks//lib/turbolinks/assertions.rb#3
Turbolinks::Assertions::TURBOLINKS_VISIT = T.let(T.unsafe(nil), Regexp)

# source://turbolinks//lib/turbolinks.rb#7
module Turbolinks::Controller
  extend ::ActiveSupport::Concern
  include ::Turbolinks::Redirection
end

# source://turbolinks//lib/turbolinks.rb#15
class Turbolinks::Engine < ::Rails::Engine
  class << self
    # source://activesupport/6.1.7.7/lib/active_support/callbacks.rb#67
    def __callbacks; end
  end
end

# source://turbolinks//lib/turbolinks/redirection.rb#2
module Turbolinks::Redirection
  extend ::ActiveSupport::Concern

  # source://turbolinks//lib/turbolinks/redirection.rb#9
  def redirect_to(url = T.unsafe(nil), options = T.unsafe(nil)); end

  private

  # source://turbolinks//lib/turbolinks/redirection.rb#43
  def set_turbolinks_location_header_from_session; end

  # source://turbolinks//lib/turbolinks/redirection.rb#39
  def store_turbolinks_location_in_session(location); end

  # source://turbolinks//lib/turbolinks/redirection.rb#24
  def visit_location_with_turbolinks(location, action); end
end

# source://turbolinks//lib/turbolinks/version.rb#2
Turbolinks::VERSION = T.let(T.unsafe(nil), String)
