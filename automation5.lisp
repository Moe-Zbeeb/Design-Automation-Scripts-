; Insertion sort function
defun insertion_sort(list)
    for(i 1 (- (length list) 1))
        set key (nth i list)
        set j (- i 1)
        while(and (>= j 0) (> (nth j list) key))
            set (nth (+ j 1) list) (nth j list)
            set j (- j 1)
        endwhile
        set (nth (+ j 1) list) key
    end
    return list
end
