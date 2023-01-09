# frozen_string_literal: true

module Bugsify
  module Reporter
    # Rack
    module Rack
      def notify(event)
        Bugsify.auto_notify({
                              errorClass: event[:error_class],
                              errorBacktrace: event[:error_backtrace],
                              errorFullBacktrace: event[:error_full_backtrace],
                              runtimeVersion: event[:runtime_version],
                              applicationEnvironment: ENV["RACK_ENV"]
                            })
      end
    end
  end
end