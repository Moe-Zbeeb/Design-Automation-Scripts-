; Binary search function
defun binary_search(target list)
    set low 0
    set high (- (length list) 1)
    while(<= low high)
        set mid (/ (+ low high) 2)
        if(= (nth mid list) target)
            return mid ; Element found
        elseif(< (nth mid list) target)
            set low (+ mid 1)
        else
            set high (- mid 1)
        endif
    endwhile
    return nil ; Element not found
end
