Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:apr/:years/:principal", {:controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})

  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/payment_results/results", {:controller => "calculations", :action => "payment"})

  get("/random/new", {:controller => "calculations", :action => "random_form"})
  get("/random_results", {:controller => "calculations", :action => "random_results"})

  #the :number above is accepting everything as a string
end
