hi = fn({msg, name}) -> IO.puts("#{msg}, #{name}!") end

hi.({"Welcome", "Ann"})
