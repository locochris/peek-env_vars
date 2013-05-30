module Peek
  module Views
    class EnvVars < View
      def initialize(options = {})
        @names = options.delete(:names) || %w(RAILS_ENV HOSTNAME)
        @format = options.delete(:format) || "%{k}: %{v}"
        @join = options.delete(:join) || ', '
      end

      def env_vars
        @env_vars ||= ENV.reject { |k, v| !@names.include?(k) }
      end

      def to_s
        @s ||= env_vars.map { |k, v| @format % {k: k, v: v} }.join(@join)
      end
    end
  end
end
