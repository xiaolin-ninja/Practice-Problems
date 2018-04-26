def carrot_feast(matrix):
    """calculates number of carrots a bunny will eat in this garden
    >>> carrot_feast([[5, 7, 8, 6, 3], [0, 0, 7, 0, 4], [4, 6, 3, 4, 9], [3, 1, 0, 5, 8]])
    27
    """   
    carrots_eaten = 0
    carrots, center_row, center_column = find_center(matrix)
    carrots_eaten += carrots
    
    matrix = remove_carrots(center_row, center_column, matrix)    
    carrots_eaten = eat_most_carrots(center_row, center_column, carrots_eaten, matrix)

    return carrots_eaten

def remove_carrots(row, column, matrix):
    matrix[row][column] = 0
    return matrix
    
def find_center(matrix):
    """find where the bunny is"""
    rows = len(matrix)
    # use first row since all rows have same length
    columns = len(matrix[0])
    # if odd number of rows
    if rows % 2 != 0:
        center_rows = matrix[rows/2]
        center_row = rows/2
        # if odd number of columns
        if columns % 2 != 0:
            center = center_rows[columns/2]
            center_column = columns/2
        else:
            # if even # of columns,
            # choose larger one from 2 in the center
            centers = center_row[columns/2:columns/2+1]
            center = max(centers)
            center_column = centers.index(center)
    # if even number of rows:
    else:
        center_rows = [matrix[rows/2], matrix[rows/2-1]]
        # if odd number of columns
        if columns % 2 != 0:
            centers = [center_rows[0][columns/2], center_rows[1][columns/2]]
            center = max(centers)
            center_column = columns/2
            # find index of center row
            center_row = rows/2 - centers.index(center)
        # if even number of columns
        else:
            centers = [center_rows[1][columns/2], center_rows[0][columns/2],
                       center_rows[1][columns/2-1], center_rows[0][columns/2-1]]
            center = max(centers)
            if centers.index(center) % 2 == 0:
                center_row = rows/2 - 1
                center_column = columns/2
            else:
                center_row = rows/2
                center_column = columns/2-1

    return [center, center_row, center_column]

def eat_most_carrots(row, column, carrots_eaten, matrix):
    """check if adjacent blocks have carrots"""
    # make dictionary with surrounding carrots as key and position as value
    possible = {}

    # exclude if first row
    if row < len(matrix) - 1:
        possible[matrix[row+1][column]] = {'row': row+1, 'column': column}

    # exclude if first column
    if column < len(matrix) - 1:
        possible[matrix[row][column+1]] = {'row': row, 'column': column+1}

    # exclude if last row
    if row > 0:
        possible[matrix[row-1][column]] = {'row': row-1, 'column': column}

    # exclude if las column
    if column > 0:
        possible[matrix[row][column-1]] = {'row': row, 'column': column-1}

    carrot = max(possible.keys())
    # stop eating if there are no carrots around (max == 0)
    if carrot == 0:
        return carrots_eaten
    # increment carrots eaten
    else:
        carrots_eaten += carrot
        current_row = possible[carrot]['row']
        current_column = possible[carrot]['column']
        matrix = remove_carrots(current_row, current_column, matrix)
        return eat_most_carrots(current_row, current_column, carrots_eaten, matrix)
