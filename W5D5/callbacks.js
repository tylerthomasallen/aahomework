const readLine = require('readline');

window.setTimeout(function () {
  alert('HAMMER TIME!');
}, 5000);

function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  });
}

const reader = readLine.createInterface( {
  input: process.stdin,
  output: process.stdout
});

reader.question('Would you like some team?', (res) => {
  first = res;
  console.log(`You replied ${res}.`);
});

const firstRes = (first === 'yes') ? 'do' : 'don\'t';
  const secondRes = (second === 'yes') ? 'do' : 'don\'t';
  console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
  reader.close();
