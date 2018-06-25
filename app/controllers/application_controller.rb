class ApplicationController < ActionController::API

  class ResponseMessages
    NOT_FOUND = "Record not found"
  end

  def respond_with_data(data)
    render json: {
        status: 'success',
        data: data,
    }, head: :ok
  end

  def respond_with_error(message, status = 400)
    render json: {
        status: 'error',
        message: message
    }, head: status
  end

end
