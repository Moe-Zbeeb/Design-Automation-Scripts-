; Factorial function (recursive)
defun factorial(n)
    if(= n 0)
        return 1
    else
        return (* n (factorial (- n 1)))
    endif
end
