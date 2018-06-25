require 'json'

class Api::MessagesController < ApplicationController

  before_action :find_message, only: [:update]

  def index
    messages = Message.all.to_json
    respond_with_data messages
  end

  def show
    message = Message.where(id: params[:id]).first
    unless message.present?
      respond_with_error ResponseMessages::NOT_FOUND, 404
      return
    end
    respond_with_data message
  end

  def create
    data = JSON.parse(params['data'])
    render json: {status: 'error', message: 'insufficient data'}, status: 422 unless valid_params?(data)
    message = Message.create(data)
    respond_with_data message.to_json
  end

  def update

  end

  private

  def valid_params?(params)
    required_params = []
    required_params.each do |param|
      return false unless params.include? param
    end
    true
  end

  def find_message
    @message = Message.find(params['id'])
  end

end