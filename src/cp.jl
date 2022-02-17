function DiscoDistance(x::Vector{Float64}, y::Vector{Float64}; pd::Int64=1)::Float64
    n = length(x)
    m = length(y)

    p1 = p2 = p3 = 0

    for i in 1:n
        for j in 1:m
            p1 += (abs(x[i] - y[j]))^pd
        end
    end
    p1 = p1*2/(m*n)
    
    for i in 1:(n-1)
        for k in (i+1):n
            p2 += (abs(x[i] - x[k]))^pd
        end
    end
    p2 = p2*2/(n*n)

    for j in 1:(m-1)
        for l in (j+1):m
            p3 += (abs(y[j]-y[l]))^pd
        end
    end
    p3 = p3*2/(m*m)

    c = (m*n) / ((m+n)^2)
    return c*(p1-p2-p3)
end

