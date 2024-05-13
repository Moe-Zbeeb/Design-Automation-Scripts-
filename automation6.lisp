; Selection sort function
defun selection_sort(list)
    set n (length list)
    for(i 0 (- n 2))
        set min_index i
        for(j (+ i 1) (- n 1))
            if(< (nth j list) (nth min_index list))
                set min_index j
            endif
        end
        ; Swap elements
        set temp (nth i list)
        set (nth i list) (nth min_index list)
        set (nth min_index list) temp
    end
    return list
end
