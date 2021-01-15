
println("////////////////////")
println("Макрос вывода на экран @show")
##???
@show 5+23
println("////////////////////")
println("Макросы @assert")
println("Предназначен для генерации исключения ести значение будет ложным")
println("@assert false \"this is not true\"")
println("@assert true \"this is not true\"")
#@assert false "this is not true"
@assert true "this is not true"
println("////////////////////")
println("Макросы @debug")
println("Аналог брейкпоинта")
ENV["JULIA_DEBUG"] = "all"
@debug "Привет мир"
ENV["JULIA_DEBUG"] = " "
@debug "Привет мир"
println("////////////////////")
readline()