class CalculationsController <ApplicationController

  def flex_square
    #Parameters: {"number"=>"5"}
    @user_input = params["number"].to_f #always called params
    @square = @user_input**2
    render ("calculations/flex_square.html.erb")
  end

  def flex_square_root
    #Parameters: {"number"=>"5"}
    @user_input = params["number"].to_f #always called params
    @square_root = (@user_input**0.5).round(4)
    render ("calculations/flex_square_root.html.erb")
  end

  def flex_payment
    @years = params["years"].to_f
    @principal = params["principal"].to_f
    @apr = ((params["apr"].to_f)/100).round(2)
    @monthly_payment = ( ((@apr/100/12)*@principal) /( 1- ((1+(@apr/100/12)) ** (@years*-12)) )).round(2)

    render ("calculations/flex_payment.html.erb")
  end

  def flex_random
    @min = params["min"].to_f
    @max = params["max"].to_f
    @random = rand(@min..@max).round(2)

    render ("calculations/flex_random.html.erb")
  end

  def square_form
    render ("calculations/square_form.html.erb")
  end

  def square
    @user_input = params["user_number"].to_f
    @square = (@user_input**2)
    render ("calculations/square_results.html.erb")
  end

  def square_root_form
    render ("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_input = params["user_number"].to_f
    @square_root = (@user_input**0.5).round(4)
    render ("calculations/square_root_results.html.erb")
  end

  def payment_form
    render ("calculations/payment_form.html.erb")
  end

  def payment
    @years = params["years"].to_f
    @principal = params["principal"].to_f
    @apr = ((params["apr"].to_f)/100).round(2)
    @monthly_payment = ( ((@apr/100/12)*@principal) /( 1- ((1+(@apr/100/12)) ** (@years*-12)) )).round(2)

    render ("calculations/payment_results.html.erb")
  end

  def random_form
    render ("calculations/random_form.html.erb")
  end

  def random_results
    @min = params["min"].to_f
    @max = params["max"].to_f
    @random = rand(@min..@max).round(4)
    render ("calculations/random_results.html.erb")
  end

end
