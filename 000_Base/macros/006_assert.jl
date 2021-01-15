println("###################")
println("Макросы @assert")
println("Генерации исключение если false,")
if(true)
	println("@assert true \"Ok!\"")
	@assert true "Ok!"
end
if(true)
	println("@assert false \"Не Ok!\"")
	@assert false "Ok!"
end
println("###################")
