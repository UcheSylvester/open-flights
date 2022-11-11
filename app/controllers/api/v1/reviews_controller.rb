module Api
  module v1

    class ReviewsController < ApplicationController
      def index
        reviews = Review.all

        render json: ReviewSerializer.new(reviews).serialized_json
      end

      def create
        review = Review.new(review_params)

        if(review.save)
          render json: ReviewSerializer.new(review).serialized_json
        else
          render json: { error: review.errors.messages }, status: :unprocessable_entity
        end
      end

      def destroy
        review = Review.find(params[:id])

        if(review.destroy)
          render json: ReviewSerializer.new(review).serialized_json
        else
          render json: { error: review.errors.messages }, status: :unprocessable_entity
        end
      end

      private

      def review_params
        params.require(:review).permit(:title, :description, :score, :airline_id)
      end

    end
  end
end