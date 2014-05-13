class StudentController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: [:poster]
  def index

  end

  def stud_data
     render json: data.to_json
  end

  def poster
    render json: params[:_json].to_json
  end
  private

  def data
    [{name: 'tulasee', email: 'test@pgi.com'},{name: 'Mike', email: 'test2@pgi.com'}]
  end
end
