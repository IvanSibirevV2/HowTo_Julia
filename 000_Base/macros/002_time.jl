println("############")
println("Макросы @time")
#Выволит времяисполнения лямбда дерева
#Шедевральное средство оценки производительности
#В разы лучше того что есть в шарпах
println("############")
@time rand(10^6);
println("############")
@time (println(4,";");rand(10^6);)
println("############")