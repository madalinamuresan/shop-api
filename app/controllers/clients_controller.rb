class ClientsController < ApplicationController
  def index
    clients = Client.all
    render json: clients
  end

  def create
    client = Client.new(client_params)
    client.save
    render json: client
  end

  private

  def client_params
    params.require(:client).permit(:nume, :prenume)
  end
end