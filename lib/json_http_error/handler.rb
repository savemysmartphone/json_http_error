class JsonHttpError
  module Handler
    def included(base)
      base.rescue_from JsonHttpError do |ex|
        instance_eval(&ex)
      end

      base.rescue_from StandardError do |ex|
        reply = {
          error: {
            status: 'ERROR',
            code: 500,
            message: Rails.env.development? ? ex.message : 'Server error'
          }
        }
        render status: 500, json: reply
      end
    end
  end
end
