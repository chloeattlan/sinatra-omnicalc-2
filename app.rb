require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params["first_num"]&.to_f
  @second_num = params["second_num"]&.to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/sub_result") do
  @first_num = params["first_num"]&.to_f
  @second_num = params["second_num"]&.to_f
  @result = @first_num - @second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:multiplication_form)
end

get("/wizard multiply") do
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  erb(:div_result)
end
