// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */
export function twoSum(array1, array2) {
  return Number(array1.join('')) + Number(array2.join(''));
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean} whether the number is a palindrome or not
 */
export function luckyNumber(value) {
  const stringValue = String(value);
  const reverseStringValue = stringValue.split('').reverse().join('');
  return stringValue == reverseStringValue;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  // Check if the input is null, undefined, or an empty string after trimming whitespace
  if (input === null || input === undefined || input.trim() === '') {
    return 'Required field';
  }

  const num = Number(input);

  // Check if it's not a valid number (e.g., "abc")
  if (isNaN(num)) {
    return 'Must be a number besides 0';
  }

  // Check if the number is exactly 0
  if (num === 0) {
    return 'Must be a number besides 0';
  }
  
  // Return an empty string if there are no errors
  return '';
}
