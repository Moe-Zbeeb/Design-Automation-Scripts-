; Merge sort function
defun merge_sort(list)
    if(<= (length list) 1)
        return list ; Already sorted
    endif
    set mid (/ (length list) 2)
    set left (subseq list 0 mid)
    set right (subseq list mid)
    return merge (merge_sort left) (merge_sort right)
end

defun merge(left right)
    if(not left)
        return right
    elseif(not right)
        return left
    elseif(< (car left) (car right))
        return (cons (car left) (merge (cdr left) right))
    else
        return (cons (car right) (merge left (cdr right)))
    endif
end
