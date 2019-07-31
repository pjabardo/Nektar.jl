

mutable struct Element
    id::Int
    etype::Char
    x::Vector{Float64}
    y::Vector{Float64}
    z::Vector{Float64}
    connect::Vector{Int}
    ctype::Int
    nfaces::Int
    nverts::Int
end
