println("Информация взята из Helpa командной строки Julia")
println("##########################################")
x = 10
y = 42.0
@debug "Подробная отладочная информация. Невидимый по умолчанию"
@info  "Информационное сообщение"
@warn  "Что-то было не так.  Вы должны обратить внимание"
@error "Произошла некритическая ошибка"
@info "Некоторые переменные, прикрепленные к сообщению"

#@show ENV["JULIA_DEBUG"] = "all"
  @debug begin
  #здесь ошибка и пока debug отключен в лог ошибка не попадет
      sA = sum(A)
      "sum(A) = $sA is an expensive operation, evaluated only when `shouldlog` returns true"
  end
  for i=1:4
      @info "(i = $i)"
      @info "<<(i = $i)>>" maxlog=2
      @debug "Algorithm1" i progress=i/4
  end
println("##########################################")
println("Видемостью выше перечисленной отладочной информации можно управлять...")
###
@show ENV["JULIA_DEBUG"] = "all"
@debug "@debug"
@show ENV["JULIA_DEBUG"] = " "
@debug "@debug"
###