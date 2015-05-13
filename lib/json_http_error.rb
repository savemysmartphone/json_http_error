class JsonHttpError < StandardError
  attr_accessor :code, :opts

  def initialize(error_code, error_opts = {})
    @code = error_code
    @opts = error_opts.with_indifferent_access
  end

  def code
    @code
  end

  def reply
    reply = { status: 'ERROR', code: code, message: I18n.t("http_status.#{code}", opts) }
    reply = reply.merge(opts[:json]) if opts[:json]
    reply
  end

  def to_proc
    binded_reply = reply
    binded_code  = code
    Proc.new do
      render status: binded_code, json: { error: binded_reply }
    end
  end
end

require 'json_http_error/railtie' if defined?(Rails)
