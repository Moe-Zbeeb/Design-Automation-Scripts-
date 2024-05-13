; Quick sort function
defun quick_sort(list)
    if(not list)
        return nil ; Empty list
    endif
    set pivot (car list)
    set rest (cdr list)
    append (quick_sort (filter rest (lambda (x) (< x pivot))))
           (cons pivot (quick_sort (filter rest (lambda (x) (>= x pivot)))))
end
