module Api
  module v1

    class AirlinesController < ApplicationController
      def index
        airlines = Airline.all

        render json: AirlineSerializer.new(airlines, options).serialized_json
      end

      def show
        airline = Airline.find_by(slug: params[:slug])

        render json: AirlineSerializer.new(airline, options).serialized_json
      end

      def create
        airline = Airline.new(airline_params)

        if(airline.save)
          render json: AirlineSerializer.new(airline).serialized_json
        else 
          json: { error: airline.errors.messages }, status: :unprocessable_entity
        end
      end

      def update
        airline = Airline.find_by(slug: params[:slug])

        if(airline.update)
          render json: AirlineSerializer.new(airline, options).serialized_json
        else 
          render json: { error: airline.errors.messages }, status: :unprocessable_entity
        end
      end

      def destroy
        airline = Airline.find_by(slug: params[:slug])

        if(airline.destroy)
          render json: AirlineSerializer.new(airline, options).serialized_json
        else 
          render json: { error: airline.errors.messages }, status: :unprocessable_entity
        end
      end

      private

      def airline_params
        params.require(:airline).permit(:name, :description, :image_url)
      end

      def options
        @options ||= { include: %i[reviews] }
      end

    end
  end
end