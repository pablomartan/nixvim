local hooks = {
    --
    -- HOOKS
    --

    -- useState
    s(
        "ust",
        fmt([[
        const [<>, <>] = useState(<>);
        ]], {
            i(1, ''),
            f(function(args)
                local state_var = args[1][1]

                return "set" .. state_var:gsub("^%l", string.upper)
            end, { 1 }),
            i(0, '')
        }, {
            delimiters = "<>"
        })
    ),

    -- useEffect
    s(
        "uef",
        fmt([[
            useEffect(function <>() {
                <>
            }, [<>]);
        ]], {
            i(1, 'functionName'),
            i(2),
            i(3, 'deps')
        }, {
            delimiters = "<>"
        })
    )
}

return hooks
