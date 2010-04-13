module Whenever
  module Job
    class RailsScript < Whenever::Job::Default

      def output
        path_required
        "cd #{@path} && RAILS_ENV=#{@environment} #{task}"
      end

    end
  end
end
