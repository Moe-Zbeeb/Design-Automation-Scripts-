; GCD function (iterative)
defun gcd(a b)
    while(not (= b 0))
        set temp b
        set b (% a b)
        set a temp
    endwhile
    return a
end
