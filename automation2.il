; Bubble sort function
defun bubble_sort(list)
    set n length(list)
    for(i 0 (- n 1))
        for(j 0 (- n i 1))
            if(> (nth j list) (nth (+ j 1) list))
                ; Swap elements
                set temp (nth j list)
                set (nth j list) (nth (+ j 1) list)
                set (nth (+ j 1) list) temp
            endif
        end
    end
    return list
end
