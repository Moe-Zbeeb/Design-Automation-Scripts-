; Linear search function
defun linear_search(target list)
    foreach elem list
        if(= target elem)
            return t ; Element found
        endif
    end
    return nil ; Element not found
end
