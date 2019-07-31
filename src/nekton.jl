
using DataStructures


function find_section(io, header)

    seek(io, 0)
    found = false
    while !eof(io)
        l = uppercase(readline(io))
        if occursin(header, l)
            return l
        end
    end

    error("Section $header not found")
end

            
function read_params(io)
    find_section(io, "PARAMETERS")
    readline(io)
    l = readline(io)
    dim = parse(Int, split(l)[1])
    nparams = parse(Int, split(readline(io))[1])
    params = OrderedDict{String,String}()

    for i in 1:nparams
        l = readline(io)
        par = split(l)
        params[par[2]] = par[1]
    end

    return dim, params
end

struct Element
    
function read_element(io, dim)
    header
end

function read_mesh(io)
    find_section(io, "MESH DATA")

    l = split(readline(io))

    nel = parse(Int, l[1])
    dim = parse(Int, l[2])
    nelv = parse(Int, l[3])

    elements = [read_element(io, dim) for i in 1:nel]
    
end
