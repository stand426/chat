class Api::V1::MessageController < ActionController::API
  def send_message
  	puts params.inspect
  	render json: {}
  end

  def subscribe
  	puts params.inspect
  	# TODO: DO NOT allow users to subscribe to other
  	# users' dm 'topic'
  	render json: {}
  end

  def unsubscribe
  	puts params.inspect
  	# render_resource(resource)
  	render json: {}
  end

  private

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end
end
