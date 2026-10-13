/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(timeLeft) {
  if (timeLeft == 0) {
    return 'Lasagna is done.';
  } else if (timeLeft > 0) {
    return 'Not done, please wait.';
  } else if (timeLeft === null || timeLeft === undefined) {
    return 'You forgot to set the timer.';
  }
}

export function preparationTime(layers, minutes = 2) {
  return layers.length * minutes;
}

export function quantities(layers) {
  const quants = { noodles: 0, sauce: 0 };
  for (var layer of layers) {
    if (layer == 'sauce')
      quants.sauce += 0.2;

    if (layer == 'noodles')
      quants.noodles += 50;
  }
  return quants;
}

export function addSecretIngredient(friendsList, myList) {
  myList.push(friendsList[friendsList.length - 1]);
}

export function scaleRecipe(recipe, scale) {
  const multiplier = scale / 2;
  const multipleRecipe = {};
  for (var ingredient in recipe) {
    multipleRecipe[ingredient] = recipe[ingredient] * multiplier;
  }
  return multipleRecipe;
}
