// @ts-check

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  switch(name) {
    case 'Pure Strawberry Joy':
      return .5;
    case 'Energizer':
    case 'Green Garden':
      return 1.5;
    case 'Tropical Island':
      return 3;
    case 'All or Nothing':
      return 5;
    default:
      return 2.5;
  }
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  let index = 0;
  let wedgesCut = 0;
  while (wedgesCut < wedgesNeeded && index < limes.length) {
    let limeSize = limes[index];
    if (limeSize == 'small') {
      wedgesCut += 6;
    } else if (limeSize == 'medium') {
      wedgesCut += 8;
    } else {
      wedgesCut += 10;
    }
    index += 1;
  }
  return index;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  let index = 0;
  while (timeLeft > 0 && index < orders.length) {
    let time = timeToMixJuice(orders[index]);
    timeLeft -= time;
    index += 1;
  }
  return orders.splice(index);
}
