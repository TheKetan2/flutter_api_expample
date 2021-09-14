function histogram(arr, char) {
  let sol = [];
  for (let num of arr) {
    let word = Array.from({ length: num }, () => char);
    sol.push(word.join(""));
  }
  return sol.join("\n");
}
