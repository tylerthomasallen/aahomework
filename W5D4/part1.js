function madLib(verb, adj, noun) {
  console.log('We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}');
}


function isSubstring(subString, searchString) {
  return searchString.includes(subString);
}


let fizzBuzz = (array) => {
  const fizzBuzzArr = []
  array.forEach(el => {
    if ((el % 3 === 0 ) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });
  console.log(fizzBuzzArr)
}

fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

let isPrime = (n) => {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true
}

console.log(isPrime(10))

let sumOfPrimes = (n) => {
  let sum = 0
  let primeCount = 0
  let i = 2

  while(primeCount < n) {
    if (isPrime(i)) {
      primeCount++;
      sum += i;
    }
    i++;
  }
  console.log(sum);
}

sumOfPrimes(4)
