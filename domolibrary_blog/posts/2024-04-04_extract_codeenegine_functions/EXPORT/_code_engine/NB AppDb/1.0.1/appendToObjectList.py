"""
"""

def appendToObjectList(list_of_object, new_object):
    try:
        # Append the new object to the list
        list_of_object.append(new_object)
        return list_of_object
    except Exception as e:
        print(f"Error appending object to list: {e