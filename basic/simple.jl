#=
   julia 是用來快速處理數值運算的語言
=#

# basic example

struct all_msg
    msgs::Array{String}
end


function say(msg::String)::Int
    len::Int = length(msg)

    print("your input: ")
    for i in 1:len
        print(msg[i])
    end
    println()

    return len
end

function main()

    history::all_msg = all_msg([])

    try
        while true

            print("msg: ")
            msg::String = readline()
            len::Int = say(msg)
            
            if len > 10
                println("long")
            elseif len > 5
                println("middle")
            else
                println("short")
            end

            push!(history.msgs, msg)

            for m in history.msgs
                print(m, " ")
            end
            println()
        end
    catch ex
        if ex isa InterruptException
        end
    end
end

main()
