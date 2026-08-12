#TODO (student): define your EXPECTED_BAKE_TIME (required) and PREPARATION_TIME (optional) constants below.
EXPECTED_BAKE_TIME = 40
PREPERATION_TIME = 2

#TODO (student): Remove 'pass' and complete the 'bake_time_remaining()' function below.
def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    Parameters:
        elapsed_bake_time (int): The baking time already elapsed.

    Returns:
        int: The remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time


#TODO (student): Define the 'preparation_time_in_minutes()' function below.
# To avoid the use of magic numbers (see: https://en.wikipedia.org/wiki/Magic_number_(programming)), you should define a PREPARATION_TIME constant.
# You can do that on the line below the 'EXPECTED_BAKE_TIME' constant.
# This will make it easier to do calculations, and make changes to your code.
def preparation_time_in_minutes(layers):
    """Calculate the preparation time in minutes.

    Parameters:
        layers (int): Number of layers in the lasagna.

    Returns:
        int: the number of minutes it takes to prepare the amount of layers specified.

    Function that takes the layers in the lasagna as
    an argument and returns how many minutes the lasagna takes to prepare.
    """
    
    return layers * PREPERATION_TIME


#TODO (student): define the 'elapsed_time_in_minutes()' function below.
def elapsed_time_in_minutes(layers, elapsed_bake_time):
    """Calculate the total elapsed time in minutes.

    parameters:
        layers (int): Number of layers in the lasagna.
        elapsed_bake_time (int): The total number of minutes the lasagna has been in the oven.

    Returns:
        int: The total elapsed time in minutes

    Function that takes the layers in the lasagna and elapsed backing time as arguments
    and returns how many minutes have elapsed since prep of the lasagna began.
    """
    
    return preparation_time_in_minutes(layers) + elapsed_bake_time


# TODO (student): Remember to go back and add docstrings to all your functions
#  (you can copy and then alter the one from bake_time_remaining.)
